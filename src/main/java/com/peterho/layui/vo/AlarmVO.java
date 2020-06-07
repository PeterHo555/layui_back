package com.peterho.layui.vo;

import lombok.Data;

@Data
public class AlarmVO {

    private Integer id;
    private Integer alarmId;
    private Integer hostId;
    private String alarmTime;
    private Integer districtId;
    private String districtName;
    private String temperature;
    private String adminName;

}
