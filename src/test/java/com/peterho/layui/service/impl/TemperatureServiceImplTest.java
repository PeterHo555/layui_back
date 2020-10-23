package com.peterho.layui.service.impl;

import com.peterho.layui.service.TemperatureService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.TemperatureVO;
import org.junit.jupiter.api.Test;

import javax.xml.crypto.Data;

import static org.junit.jupiter.api.Assertions.*;

class TemperatureServiceImplTest {

    private TemperatureService temperatureService;

    @Test
    void getNewTemperature() {
        DataVO<TemperatureVO> temp = temperatureService.getNewTemperature();
    }
}
