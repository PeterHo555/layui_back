package com.peterho.layui.service;

import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;

public interface AlarmService {
    public DataVO<AlarmVO> findData(Integer page, Integer limit);
}
