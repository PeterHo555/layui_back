package com.peterho.layui.controller;

import com.peterho.layui.service.DistrictService;
import com.peterho.layui.service.TemperatureService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FileController {

    @Autowired
    private DistrictService districtService;

    @Autowired
    private TemperatureService temperatureService;

    @RequestMapping("/file")
    public DataVO list(Integer page, Integer limit){
        return temperatureService.findData(page, limit);
    }

    @RequestMapping("/temperature")
    public DataVO temperature(){
        return temperatureService.getTemperature();
    }

    @RequestMapping("/writedata")
    public String writeData(String date, Integer msgId, Integer sensorId, String temperature){
        temperatureService.writeData(date, msgId, sensorId, temperature);
        return "200";
    }

    @RequestMapping("/getnewtemperature")
    public DataVO getNewTemperature(){
        System.out.println("555555");
        return temperatureService.getNewTemperature();
    }


}
