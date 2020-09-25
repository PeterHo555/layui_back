package com.peterho.layui.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Message {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer userId;
    private String message;
    private String msgTime;
    private Integer districtId;

}
