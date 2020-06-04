package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.HostVO;

public interface HostService {
    public DataVO<HostVO> findData(Integer page, Integer limit);
}
