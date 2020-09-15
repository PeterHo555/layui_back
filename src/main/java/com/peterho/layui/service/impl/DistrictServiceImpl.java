package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.Alarm;
import com.peterho.layui.entity.District;
import com.peterho.layui.mapper.DistrictMapper;
import com.peterho.layui.service.DistrictService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DistrictVO;
import net.sf.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Service
public class DistrictServiceImpl implements DistrictService {
    @Autowired
    private DistrictMapper districtMapper;


    @Override
    public DataVO<DistrictVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");
        //分页操作
        IPage<District> districtIPage = new Page<>(page,limit);
        IPage<District> result = districtMapper.selectPage(districtIPage,null);

        dataVO.setCount(result.getTotal());

        List<District> districtList = result.getRecords();
        List<DistrictVO> districtVOList = new ArrayList<>();

        for (District district : districtList){
            DistrictVO districtVO = new DistrictVO();
            BeanUtils.copyProperties(district, districtVO);

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("id", district.getId());
            District tempDistrict = districtMapper.selectOne(wrapper);

            if (tempDistrict!=null){
                //相关字段
                districtVO.setId(tempDistrict.getId());
                districtVO.setDistrictId(tempDistrict.getDistrictId());
                districtVO.setDistrictName(tempDistrict.getDistrictName());
            }
            districtVOList.add(districtVO);
        }

        dataVO.setData(districtVOList);
        return dataVO;
    }

    @Override
    public String districts(){
        List<District> districtList = districtMapper.selectList(null);
        JSONObject data = new JSONObject();
        List<String> dataList = new LinkedList<>();
        for (District district : districtList) {
            data.put("districtId",district.getDistrictId());
            data.put("districtName",district.getDistrictName());
            dataList.add(data.toString());
        }
        return dataList.toString();
    }


}
