package com.peterho.layui.controller;

import com.peterho.layui.service.DistrictService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DistrictController {
    @Autowired
    private DistrictService districtService;

    @RequestMapping("/districtlist")
    public DataVO list(Integer page, Integer limit){
        return districtService.findData(page, limit);
    }

}
