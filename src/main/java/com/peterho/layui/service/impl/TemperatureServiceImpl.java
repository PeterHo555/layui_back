package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.*;
import com.peterho.layui.file.FileOperation;
import com.peterho.layui.mapper.*;
import com.peterho.layui.service.TemperatureService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.TemperatureVO;
import net.sf.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class TemperatureServiceImpl implements TemperatureService {

    // CentOS上的日志绝对路径
    private final String absFilePath = "//project/log/data.txt";

    @Autowired
    private TemperatureMapper temperatureMapper;

    @Autowired
    private AlarmMapper alarmMapper;


    @Override
    public DataVO<TemperatureVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("200");
        //分页操作
        IPage<Temperature> temperatureIPage = new Page<>(page, limit);
        IPage<Temperature> temperatureResult = temperatureMapper.selectPage(temperatureIPage,null);

        dataVO.setCount(temperatureResult.getTotal());


        List<Temperature> temperatureList = temperatureResult.getRecords();
        List<TemperatureVO> temperatureVOList = new ArrayList<>();

        // 构造前端json
        for (Temperature temperature : temperatureList) {
            TemperatureVO temperatureVO = new TemperatureVO();
            BeanUtils.copyProperties(temperature, temperatureVO);

            QueryWrapper tempWrapper = new QueryWrapper();
            tempWrapper.eq("id", temperature.getId());
            Temperature tempTemperature = temperatureMapper.selectOne(tempWrapper);
            // 构造temperatureVOList
        }

        dataVO.setData(temperatureVOList);
        return dataVO;
    }


//    @Override
//    public DataVO<TemperatureVO> getNewTemperature(){
//        System.out.println("in");
//        DataVO dataVO = new DataVO();
//        dataVO.setCode(0);
//        dataVO.setMessage("300");
//        dataVO.setCount((long) 5);
////        // 读取文件部分
////        List<TemperatureVO> temperatureVOList = new ArrayList<>();
////        String filePath = "data.txt";
////        FileOperation fileOperation = new FileOperation();
////        File file = new File(filePath);
////        List<String> lastNLineString = fileOperation.readLastNLine(file, 5);
//
//        //SELECT * FROM user（表名） order by user_id（字段） DESC limit 5;
//        QueryWrapper tempWrapper = new QueryWrapper();
//        tempWrapper.orderByDesc("id");
//        tempWrapper.last("limit 5");
//
//
//        // 从数据库读取
////        List<AllTemperature> allTemperatureList = allTemperatureMapper.selectList(tempWrapper);
//        List<Temperature> allTemperatureList = temperatureMapper.selectList(tempWrapper);
//
//
//        System.out.println(allTemperatureList.toString());
//
//        List<TemperatureVO> temperatureVOList = new ArrayList<>();
//        for (Temperature at : allTemperatureList) {
//            TemperatureVO temperatureVO = new TemperatureVO();
//            temperatureVO.setId(at.getId());
//            temperatureVO.setTemperature(at.getTemperature());
//            temperatureVO.setMsgId(at.getMsgId());
//            temperatureVO.setDate(at.getDate());
//            temperatureVO.setSensorId(at.getSensorId());
//            temperatureVOList.add(temperatureVO);
//        }
//        dataVO.setData(temperatureVOList);
//        return dataVO;
//    }


    @Override
    public DataVO<TemperatureVO> getTemperature(){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("200");
        dataVO.setCount((long) 5);
        // 读取文件部分
        List<TemperatureVO> temperatureVOList = new ArrayList<>();
        FileOperation fileOperation = new FileOperation();
        // 读取绝对路径中的日志数据
        File file = new File(absFilePath);
        List<String> lastNLineString = fileOperation.readLastNLine(file, 5);
        for(String temp : lastNLineString){
            TemperatureVO temperatureVO = new TemperatureVO();
            JSONObject jo = new JSONObject();
            jo = JSONObject.fromObject(temp);
            temperatureVO.setDate(jo.get("date").toString());
            temperatureVO.setMsgId((Integer) jo.get("msgid"));
            temperatureVO.setSensorId((Integer) jo.get("sensorid"));
            temperatureVO.setTemperature(jo.get("temperature").toString());

            //将VO加入list
            temperatureVOList.add(temperatureVO);

            // 30 度以上存入数据库temperature表
            if (Double.valueOf(jo.get("temperature").toString()) >= 30.0) {
                System.out.println("温度过高：" + Double.valueOf(jo.get("temperature").toString()));
                //做插入操作
                Temperature temperature = new Temperature();
                temperature.setDate(jo.get("date").toString());
                temperature.setMsgId((Integer) jo.get("msgid"));
                temperature.setSensorId((Integer) jo.get("sensorid"));
                temperature.setTemperature(jo.get("temperature").toString());
                System.out.println("构造数据成功");
                temperatureMapper.insert(temperature);
            }

            // 30 度以上存入数据库alarm表
            if (Double.valueOf(jo.get("temperature").toString()) >= 30.0) {
                System.out.println("温度过高：" + Double.valueOf(jo.get("temperature").toString()));
                //做插入操作
                Alarm alarm = new Alarm();
                alarm.setAlarmTime(jo.get("date").toString());
                alarm.setAlarmId((Integer) jo.get("msgid"));
                alarm.setHostId((Integer) jo.get("sensorid"));
                alarm.setDistrictId((Integer) jo.get("sensorid"));
                alarm.setTemperature(jo.get("temperature").toString());
                // 处理状态默认为00
                alarm.setState(0);
                System.out.println("构造数据成功");
                alarmMapper.insert(alarm);
            }
        }

        dataVO.setData(temperatureVOList);
        return dataVO;
    }

    @Override
    public String writeData(String data) {
        // 写入温度日志文件
        try{
            File file = new File(absFilePath);
            //if file doesnt exists, then create it
            if(!file.exists()){
                file.createNewFile();
            }
            //绝对路径
            FileWriter fileWritter1 = new FileWriter(file,true);
            BufferedWriter bufferWritter1 = new BufferedWriter(fileWritter1);
            bufferWritter1.write(data);
            bufferWritter1.newLine();
            bufferWritter1.close();
            System.out.println("write data absolute file path Done!");
            return "200";

        }catch(IOException e){
            e.printStackTrace();
            return "100";
        }
    }

}
