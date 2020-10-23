package com.peterho.layui.vo;

import lombok.Data;

@Data
public class TemperatureVO {
    private Integer id;
    private String Date;
    private Integer msgId;
    private Integer sensorId;
    private String temperature;
}
