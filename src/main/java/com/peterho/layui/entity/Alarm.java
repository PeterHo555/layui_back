package com.peterho.layui.entity;

import lombok.Data;

@Data
public class Alarm {

    private Integer id;
    private Integer alarmId;
    private Integer hostId;
    private String alarmTime;
    private Integer districtId;
    private String temperature;

}
