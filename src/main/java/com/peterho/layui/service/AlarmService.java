package com.peterho.layui.service;

import com.peterho.layui.entity.Alarm;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;

public interface AlarmService {
    public DataVO<AlarmVO> findData(Integer page, Integer limit);

    public DataVO<AlarmVO> getSearch(Alarm alarm);

    public String updateState(Integer id);

    public DataVO<AlarmVO> getAlarm();
}
