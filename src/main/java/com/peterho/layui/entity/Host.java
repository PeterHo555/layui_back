package com.peterho.layui.entity;


import lombok.Data;

@Data
public class Host {

    private Integer id;
    private Integer hostId;
    private Integer districtId;
    private Integer adminId;
    private Integer hostState;
    private String lastAlarmTime;
}
