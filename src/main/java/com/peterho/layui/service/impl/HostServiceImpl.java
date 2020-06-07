package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.District;
import com.peterho.layui.entity.Host;
import com.peterho.layui.entity.User;
import com.peterho.layui.mapper.DistrictMapper;
import com.peterho.layui.mapper.HostMapper;
import com.peterho.layui.mapper.UserMapper;
import com.peterho.layui.service.HostService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DistrictVO;
import com.peterho.layui.vo.HostVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HostServiceImpl implements HostService {
    @Autowired
    private HostMapper hostMapper;

    @Autowired
    private DistrictMapper districtMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    public DataVO<HostVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");
        //分页操作
        IPage<Host> hostIPage = new Page<>(page,limit);
        IPage<Host> result = hostMapper.selectPage(hostIPage,null);

        dataVO.setCount(result.getTotal());

        List<Host> hostList = result.getRecords();
        List<HostVO> hostVOList = new ArrayList<>();

        for (Host host : hostList){
            HostVO hostVO = new HostVO();
            BeanUtils.copyProperties(host, hostVO);

            QueryWrapper hostwrapper = new QueryWrapper();
            hostwrapper.eq("id",host.getId());
            Host tempHost = hostMapper.selectOne(hostwrapper);

            if (tempHost!=null){
                //相关字段
                hostVO.setId(tempHost.getId());
                hostVO.setHostId(tempHost.getHostId());
                hostVO.setDistrictId(tempHost.getDistrictId());
                hostVO.setAdminId(tempHost.getAdminId());
                if (tempHost.getHostState()==1){
                    hostVO.setHostState("主机已开启");
                }else {
                    hostVO.setHostState("主机已关闭");
                }
                hostVO.setLastAlarmTime(tempHost.getLastAlarmTime());
                //用来查找地区名
                if(tempHost.getDistrictId()!=null){
                    QueryWrapper districtWrapper = new QueryWrapper();
                    districtWrapper.eq("district_id",tempHost.getDistrictId());
                    District tempDistrict = districtMapper.selectOne(districtWrapper);
                    if (tempDistrict!=null){
                        hostVO.setDistrictName(tempDistrict.getDistrictName());
                    }else{
                        hostVO.setDistrictName("暂无");
                    }
                }else {
                    hostVO.setDistrictName("暂无");
                }

                //用来查找所属管理员用户名
                if (tempHost.getHostId()!=null){
                    QueryWrapper userWrapper = new QueryWrapper();
                    userWrapper.eq("id",tempHost.getAdminId());
                    User tempUser = userMapper.selectOne(userWrapper);
                    if (tempUser!=null){
                        hostVO.setAdminName(tempUser.getUsername());
                    }else{
                        hostVO.setAdminName("暂无");
                    }
                }else {
                    hostVO.setAdminName("暂无");
                }

            }
            hostVOList.add(hostVO);
        }

        dataVO.setData(hostVOList);
        return dataVO;
    }
}
