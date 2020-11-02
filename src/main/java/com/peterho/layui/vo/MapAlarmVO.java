package com.peterho.layui.vo;

import lombok.Data;

@Data
public class MapAlarmVO {
    private Integer id;
    private Integer alarmId;
    private Integer hostId;
    private String alarmTime;
    private Integer districtId;
    private String districtName;
    private String temperature;
    private String adminName;
    private String state;
    private String longitude;
    private String latitude;
}
