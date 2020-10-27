package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.Alarm;
import com.peterho.layui.entity.District;
import com.peterho.layui.entity.Host;
import com.peterho.layui.entity.User;
import com.peterho.layui.mapper.AlarmMapper;
import com.peterho.layui.mapper.DistrictMapper;
import com.peterho.layui.mapper.HostMapper;
import com.peterho.layui.mapper.UserMapper;
import com.peterho.layui.service.AlarmService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AlarmServiceImpl implements AlarmService {

    @Autowired
    private AlarmMapper alarmMapper;

    @Autowired
    private DistrictMapper districtMapper;

    @Autowired
    private HostMapper hostMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    public DataVO<AlarmVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");
        //分页操作
        IPage<Alarm> alarmIPage = new Page<>(page,limit);
        QueryWrapper<Alarm> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        IPage<Alarm> result = alarmMapper.selectPage(alarmIPage,queryWrapper);

        dataVO.setCount(result.getTotal());

        List<Alarm> alarmList = result.getRecords();
        List<AlarmVO> alarmVOList = new ArrayList<>();

        for (Alarm alarm : alarmList){
            AlarmVO alarmVO = new AlarmVO();
            BeanUtils.copyProperties(alarm, alarmVO);

            QueryWrapper alarmWrapper = new QueryWrapper();
            alarmWrapper.eq("id",alarm.getId());
            Alarm tempAlarm = alarmMapper.selectOne(alarmWrapper);

            if (tempAlarm!=null){
                alarmVO.setId(tempAlarm.getId());
                alarmVO.setAlarmId(tempAlarm.getAlarmId());
                alarmVO.setAlarmTime(tempAlarm.getAlarmTime());
                alarmVO.setDistrictId(tempAlarm.getDistrictId());
                alarmVO.setHostId(tempAlarm.getHostId());
                alarmVO.setTemperature(tempAlarm.getTemperature());
                if (tempAlarm.getState() == 1){
                    alarmVO.setState("已排查");
                }else{
                    alarmVO.setState("未排查");
                }
                //用来查找地区名
                if (alarm.getDistrictId()!=null){
                    QueryWrapper districtWrapper = new QueryWrapper();
                    districtWrapper.eq("district_id", alarm.getDistrictId());
                    District tempDistrict = districtMapper.selectOne(districtWrapper);
                    if (tempDistrict!=null){
                        alarmVO.setDistrictName(tempDistrict.getDistrictName());
                    }else{
                        alarmVO.setDistrictName("暂无");
                    }
                }else {
                    alarmVO.setDistrictName("暂无");
                }

                //用来查找主机所属管理员id，并用该id查出管理员用户名
                if (alarm.getHostId()!=null){
                    QueryWrapper hostWrapper = new QueryWrapper();
                    hostWrapper.eq("host_id",alarm.getHostId());
                    Host tempHost = hostMapper.selectOne(hostWrapper);

                    User tempUser = new User();
                    if (tempHost!=null){
                        QueryWrapper userWrapper = new QueryWrapper();
                        userWrapper.eq("id", tempHost.getAdminId());
                        tempUser = userMapper.selectOne(userWrapper);
                    }
                    if (tempUser!=null){
                        alarmVO.setAdminName(tempUser.getUsername());
                    }else {
                        alarmVO.setAdminName("暂无");
                    }
                }else {
                    alarmVO.setAdminName("暂无");
                }

            }
            alarmVOList.add(alarmVO);
        }

        dataVO.setData(alarmVOList);
        return dataVO;
    }

    @Override
    public DataVO<AlarmVO> getSearch(Alarm alarm){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("200");
        //分页操作
        System.out.println("hostId："+alarm.getHostId());
        System.out.println("disID："+alarm.getDistrictId());
        QueryWrapper alarmWrapper = new QueryWrapper();
        alarmWrapper.eq("host_id",alarm.getHostId());
        alarmWrapper.eq("district_id",alarm.getDistrictId());



        List<Alarm> alarmList = alarmMapper.selectList(alarmWrapper);
        List<AlarmVO> alarmVOList = new ArrayList<>();


        dataVO.setCount((long)alarmList.size());

        for (Alarm tempAlarm : alarmList){
            AlarmVO alarmVO = new AlarmVO();
            BeanUtils.copyProperties(alarm, alarmVO);

            if (tempAlarm!=null){
                alarmVO.setId(tempAlarm.getId());
                alarmVO.setAlarmId(tempAlarm.getAlarmId());
                alarmVO.setAlarmTime(tempAlarm.getAlarmTime());
                alarmVO.setDistrictId(tempAlarm.getDistrictId());
                alarmVO.setHostId(tempAlarm.getHostId());
                alarmVO.setTemperature(tempAlarm.getTemperature());
                if (tempAlarm.getState() == 1){
                    alarmVO.setState("已排查");
                }else{
                    alarmVO.setState("未排查");
                }
                //用来查找地区名
                if (alarm.getDistrictId()!=null){
                    QueryWrapper districtWrapper = new QueryWrapper();
                    districtWrapper.eq("district_id", alarm.getDistrictId());
                    District tempDistrict = districtMapper.selectOne(districtWrapper);
                    if (tempDistrict!=null){
                        alarmVO.setDistrictName(tempDistrict.getDistrictName());
                    }else{
                        alarmVO.setDistrictName("暂无");
                    }
                }else {
                    alarmVO.setDistrictName("暂无");
                }

                //用来查找主机所属管理员id，并用该id查出管理员用户名
                if (alarm.getHostId()!=null){
                    QueryWrapper hostWrapper = new QueryWrapper();
                    hostWrapper.eq("host_id",alarm.getHostId());
                    Host tempHost = hostMapper.selectOne(hostWrapper);

                    User tempUser = new User();
                    if (tempHost!=null){
                        QueryWrapper userWrapper = new QueryWrapper();
                        userWrapper.eq("id", tempHost.getAdminId());
                        tempUser = userMapper.selectOne(userWrapper);
                    }
                    if (tempUser!=null){
                        alarmVO.setAdminName(tempUser.getUsername());
                    }else {
                        alarmVO.setAdminName("暂无");
                    }
                }else {
                    alarmVO.setAdminName("暂无");
                }

            }
            alarmVOList.add(alarmVO);
        }
        System.out.println(alarmVOList.toString());
        dataVO.setData(alarmVOList);

        return dataVO;
    }

    @Override
    public String updateState(Integer id){
        System.out.println(id);

        Alarm alarm = new Alarm();
        alarm.setId(id);
        alarm.setState(1);
        UpdateWrapper<Alarm> alarmUpdateWrapper = new UpdateWrapper<>();
        alarmUpdateWrapper.eq("id",id);

        alarmMapper.update(alarm, alarmUpdateWrapper);

        return "200";
    }

}
