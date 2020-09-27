package com.peterho.layui.service;

import com.peterho.layui.entity.Host;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.HostVO;

public interface HostService {
    public DataVO<HostVO> findData(Integer page, Integer limit);

    public String addHost(Host host);

    public String updateHostState(Integer hostId, Integer hostState);
}
