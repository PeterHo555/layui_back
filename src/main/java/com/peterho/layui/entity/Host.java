package com.peterho.layui.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Host {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer hostId;
    private Integer districtId;
    private Integer adminId;
    private Integer hostState;
    private String lastAlarmTime;
}
