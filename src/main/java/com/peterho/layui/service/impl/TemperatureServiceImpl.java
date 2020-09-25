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

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class TemperatureServiceImpl implements TemperatureService {

    @Autowired
    private TemperatureMapper temperatureMapper;

    @Autowired
    private AlarmMapper alarmMapper;

    @Autowired
    private DistrictMapper districtMapper;

    @Autowired
    private HostMapper hostMapper;

    @Autowired
    private UserMapper userMapper;

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


    public DataVO<TemperatureVO> getTemperature(){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("200");
        dataVO.setCount((long) 5);
        // 读取文件部分
        List<TemperatureVO> temperatureVOList = new ArrayList<>();
        String filePath = "data.txt";
        FileOperation fileOperation = new FileOperation();
        File file = new File(filePath);
        List<String> lastNLineString = fileOperation.readLastNLine(file, 5);
        for(String temp : lastNLineString){
            TemperatureVO temperatureVO = new TemperatureVO();
            JSONObject jo = new JSONObject();
            jo = JSONObject.fromObject(temp);
            temperatureVO.setDate(jo.get("date").toString());
            temperatureVO.setMsgid((Integer) jo.get("msgid"));
            temperatureVO.setSensorid((Integer) jo.get("sensorid"));
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
                System.out.println("构造数据成功");
                alarmMapper.insert(alarm);
            }
        }

        dataVO.setData(temperatureVOList);
        return dataVO;
    }

}
