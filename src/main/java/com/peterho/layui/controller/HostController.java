package com.peterho.layui.controller;

import com.peterho.layui.service.HostService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HostController {
    @Autowired
    private HostService hostService;

    @RequestMapping("/hostlist")
    public DataVO list(Integer page, Integer limit){
        return hostService.findData(page, limit);
    }

}
