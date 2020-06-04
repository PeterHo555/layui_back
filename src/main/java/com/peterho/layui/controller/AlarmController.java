package com.peterho.layui.controller;

import com.peterho.layui.service.AlarmService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AlarmController {
    @Autowired
    private AlarmService alarmService;

    @RequestMapping("/alarmlist")
    public DataVO list(Integer page, Integer limit){
        return alarmService.findData(page, limit);
    }

}
