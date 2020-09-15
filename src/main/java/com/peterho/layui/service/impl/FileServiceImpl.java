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
        //写文件读写操作
        //将其信息存入数据库
        //并且封装成JSON返回前端
        IPage<Temperature> temperatureIPage = new Page<>(page, limit);
        IPage<Temperature> result = temperatureMapper.selectPage(temperatureIPage, null);

        //设置当前返回数据总条数
        dataVO.setCount(result.getTotal());

        List<Temperature> temperatureList = result.getRecords();
        List<TemperatureVO> temperatureVOList = new ArrayList<>();

        // 将数据转成VO数据
        for (Temperature temperature : temperatureList) {
            // 读取硬件部分探测到的日志数据，根据sensorid分成不同的数据集
            // 将数据填充到VO中
            TemperatureVO temperatureVO = new TemperatureVO();
            BeanUtils.copyProperties(temperature, temperatureVO);


            // 读取文件部分

            String filePath = "data.txt";
            FileOperation fileOperation = new FileOperation();

            File file = new File(filePath);

            List<String> lastNLineString = fileOperation.readLastNLine(file, 5);

            JSONArray json = new JSONArray();
            for(String temp : lastNLineString){
                JSONObject jo = new JSONObject();
                jo = JSONObject.fromObject(temp);
                temperatureVO.setDate(jo.get("date").toString());
                temperatureVO.setMsgid((Integer) jo.get("msgid"));
                temperatureVO.setSensorid((Integer) jo.get("sensorid"));
                temperatureVO.setTemperature(jo.get("temperature").toString());
//                System.out.println(jo.get("temperature"));
                json.add(jo);
            }
//        JSONArray array= JSONArray.parseArray(JSON.toJSONString(ans));
//        JSONObject jsonObject = new JSONObject();
//        jsonObject = JSONObject.parseObject(ans.toString());
//        for (int i = 0; i < ans.size(); i++) {
//            System.out.println(i+":"+ans.get(i));
//        }
            System.out.println(":::"+((JSONObject) json.get(1)).get("date"));

//            while (true){
//                ReadThread readThread = new ReadThread(filePath, fileOperation);
//                readThread.start();
//                readThread.sleep(3000);
//            }


            //将VO加入list
            temperatureVOList.add(temperatureVO);
        }

        dataVO.setData(temperatureVOList);
        return dataVO;
    }

}
