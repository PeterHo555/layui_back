package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.Temperature;
import com.peterho.layui.file.FileOperation;
import com.peterho.layui.file.ReadThread;
import com.peterho.layui.mapper.TemperatureMapper;
import com.peterho.layui.mapper.UserMapper;
import com.peterho.layui.service.FileService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.TemperatureVO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private TemperatureMapper temperatureMapper;

    public DataVO<TemperatureVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");

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

            System.out.println(Double.valueOf(jo.get("temperature").toString()));
            // 30 度以上存入数据库
            if (Double.valueOf(jo.get("temperature").toString()) >= 30.0) {
                System.out.println("温度过高");
                //做插入操作
                Temperature temperature = new Temperature();
                temperature.setDate(jo.get("date").toString());
                temperature.setMsgId((Integer) jo.get("msgid"));
                temperature.setSensorId((Integer) jo.get("sensorid"));
                temperature.setTemperature(jo.get("temperature").toString());
                System.out.println("构造数据成功");
                temperatureMapper.insert(temperature);
            }
        }

        dataVO.setData(temperatureVOList);
        return dataVO;
    }

}
