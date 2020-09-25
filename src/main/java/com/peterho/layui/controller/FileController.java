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
    private TemperatureService fileService;

    @RequestMapping("/file")
    public DataVO list(Integer page, Integer limit){
        return fileService.findData(page, limit);
    }

    @RequestMapping("/temperature")
    public DataVO temperature(){
        return fileService.getTemperature();
    }
}
