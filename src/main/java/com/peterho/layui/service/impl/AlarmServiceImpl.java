package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.Alarm;
import com.peterho.layui.entity.User;
import com.peterho.layui.mapper.AlarmMapper;
import com.peterho.layui.service.AlarmService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.UserVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AlarmServiceImpl implements AlarmService {
    @Autowired
    private AlarmMapper alarmMapper;


    @Override
    public DataVO<AlarmVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");
        //分页操作
        IPage<Alarm> alarmIPage = new Page<>(page,limit);
        IPage<Alarm> result = alarmMapper.selectPage(alarmIPage,null);

        dataVO.setCount(result.getTotal());

        List<Alarm> alarmList = result.getRecords();
        List<AlarmVO> alarmVOList = new ArrayList<>();

        for (Alarm alarm : alarmList){
            AlarmVO alarmVO = new AlarmVO();
            BeanUtils.copyProperties(alarm, alarmVO);

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("id",alarm.getId());
            Alarm tempAlarm = alarmMapper.selectOne(wrapper);

            if (tempAlarm!=null){
                alarmVO.setId(tempAlarm.getId());
                alarmVO.setAlarmId(tempAlarm.getAlarmId());
                alarmVO.setAlarmTime(tempAlarm.getAlarmTime());
                alarmVO.setDistrictId(tempAlarm.getDistrictId());
                alarmVO.setHostId(tempAlarm.getHostId());
                alarmVO.setTemperature(tempAlarm.getTemperature());
            }
            alarmVOList.add(alarmVO);
        }

        dataVO.setData(alarmVOList);
        return dataVO;
    }
}
