package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.TemperatureVO;

public interface TemperatureService {
    public DataVO<TemperatureVO> findData(Integer page, Integer limit);
    public DataVO<TemperatureVO> getTemperature();
}
