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
    public String addHost(String hostId,String districtId, String adminId, String hostState){
        Host host = new Host();
//        host.setId(8);
        if (!hostId.equals(null)){
            host.setId(Integer.valueOf(hostId));
            host.setHostId(Integer.valueOf(hostId));
        }else {
            return "100";
        }
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
        if (!hostState.equals(null)){
            if (hostState.equals("on")){
                host.setHostState(1);
            }else {
                host.setHostState(0);
            }
        }else {
            return "100";
        }



        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        host.setLastAlarmTime(df.format(new Date()));

        System.out.println(host);

        return hostService.addHost(host);
    }

}
