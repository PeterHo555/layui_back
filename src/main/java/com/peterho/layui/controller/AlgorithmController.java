package com.peterho.layui.controller;

import com.peterho.layui.service.AlgorithmService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DecomposeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AlgorithmController {

    @Autowired
    AlgorithmService algorithmService;

    @RequestMapping("/decompose")
    public DataVO decompose(){
        return algorithmService.getDecompose();
    }

    @RequestMapping("/edgedetection")
    public DecomposeVO edgeDetection(float averagePowerOld){
        System.out.println("first");
        return algorithmService.edgeDetection(averagePowerOld);
    }




}
