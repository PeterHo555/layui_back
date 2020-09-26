package com.peterho.layui.vo;

import lombok.Data;

@Data
public class HostVO {

    private Integer hostId;
    private Integer districtId;
    private String districtName;
    private Integer adminId;
    private String adminName;
    private String hostState;
    private String lastAlarmTime;

}
