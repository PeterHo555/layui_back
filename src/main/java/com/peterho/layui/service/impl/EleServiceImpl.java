package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.peterho.layui.entity.Alarm;
import com.peterho.layui.entity.Temperature;
import com.peterho.layui.file.FileOperation;
import com.peterho.layui.service.EleService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.EleDataVO;
import com.peterho.layui.vo.TemperatureVO;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Service
public class EleServiceImpl implements EleService {


    // CentOS上的电表数据日志绝对路径
    private final String absEleFilePath = "//project/log/eleData.txt";

    @Override
    public DataVO getEleData(){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("200");

        // 读取文件部分
        List<EleDataVO> eleDataVOList = new ArrayList<>();
        FileOperation fileOperation = new FileOperation();
        // 读取绝对路径中的日志数据
        File file = new File(absEleFilePath);
        // 读取最后一行数据
        List<String> lastNLineString = fileOperation.readLastNLine(file, 1);
        for(String temp : lastNLineString){
            EleDataVO eleDataVO = new EleDataVO();
            JSONObject jo = new JSONObject();
            jo = JSONObject.fromObject(temp);
            eleDataVO.setDate(jo.get("date").toString());
            eleDataVO.setMsgId((Integer) jo.get("msgid"));
            eleDataVO.setSensorId((Integer) jo.get("sensorid"));
            eleDataVO.setElectricity(jo.get("voltage").toString());
            eleDataVO.setElectricity(jo.get("electricity").toString());
            eleDataVO.setElectricity(jo.get("power").toString());
            eleDataVOList.add(eleDataVO);
        }
        dataVO.setData(eleDataVOList);
        return dataVO;
    }

    @Override
    public String writeEleData(String data) {
        // 写入电表数据日志文件
        try{
            File file = new File(absEleFilePath);
            //if file doesnt exists, then create it
            if(!file.exists()){
                file.createNewFile();
            }
            //绝对路径
            FileWriter fileWritter = new FileWriter(file,true);
            BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
            bufferWritter.write(data);
            bufferWritter.newLine();
            bufferWritter.close();
            System.out.println("write data absolute file path Done!");
            return "200";
        }catch(IOException e){
            e.printStackTrace();
            return "100";
        }
    }
}
