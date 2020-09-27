package com.peterho.layui.controller;

import com.peterho.layui.entity.Host;
import com.peterho.layui.service.HostService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
public class HostController {
    @Autowired
    private HostService hostService;

    @RequestMapping("/hostlist")
    public DataVO list(Integer page, Integer limit){
        return hostService.findData(page, limit);
    }

    @RequestMapping("addhost")
    public String addHost(String districtId, String adminId, Integer hostState){
        Host host = new Host();
        if (!districtId.equals(null)){
            host.setDistrictId(Integer.valueOf(districtId));
        }else {
            return "100";
        }
        if (!adminId.equals(null)){
            host.setAdminId(Integer.valueOf(adminId));
        }else {
            return "100";
        }
        if (hostState == 1){
            host.setHostState(1);
        }else {
            host.setHostState(0);
        }

        System.out.println(host.getHostState());


        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        host.setLastAlarmTime(df.format(new Date()));
        return hostService.addHost(host);
    }

    @RequestMapping("updatehoststate")
    public String updateHostState(Integer hostId, Integer hostState){
        System.out.println(hostId);
        return hostService.updateHostState(hostId, hostState);
    }

}
