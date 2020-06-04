package com.peterho.layui.vo;

import lombok.Data;

@Data
public class HostVO {

    private Integer id;
    private Integer hostId;
    private Integer districtId;
    private Integer adminId;
    private Integer hostState;
    private String lastAlarmTime;

}
