package com.peterho.layui.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Alarm {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer alarmId;
    private Integer hostId;
    private String alarmTime;
    private Integer districtId;
    private String temperature;
    private Integer state;

}
