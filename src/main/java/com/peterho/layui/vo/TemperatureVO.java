package com.peterho.layui.vo;

import lombok.Data;

@Data
public class TemperatureVO {
    private Integer id;
    private String Date;
    private Integer msgid;
    private Integer sensorid;
    private String temperature;
}
