package com.peterho.layui.entity;

import lombok.Data;

@Data
public class Temperature {

    private Integer id;
    private String date;
    private Integer msgId;
    private Integer sensorId;
    private String temperature;

}
