package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.District;
import com.peterho.layui.entity.Host;
import com.peterho.layui.mapper.DistrictMapper;
import com.peterho.layui.mapper.HostMapper;
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

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("id",host.getId());
            Host tempHost = hostMapper.selectOne(wrapper);

            if (tempHost!=null){
                //相关字段
                hostVO.setId(tempHost.getId());
                hostVO.setHostId(tempHost.getHostId());
                hostVO.setDistrictId(tempHost.getDistrictId());
                hostVO.setAdminId(tempHost.getAdminId());
                hostVO.setHostState(tempHost.getHostState());
                hostVO.setLastAlarmTime(tempHost.getLastAlarmTime());
            }
            hostVOList.add(hostVO);
        }

        dataVO.setData(hostVOList);
        return dataVO;
    }
}
