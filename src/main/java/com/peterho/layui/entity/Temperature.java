package com.peterho.layui.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Temperature {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private String date;
    private Integer msgId;
    private Integer sensorId;
    private String temperature;

}
