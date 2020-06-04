package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DistrictVO;

public interface DistrictService {
    public DataVO<DistrictVO> findData(Integer page, Integer limit);
}
