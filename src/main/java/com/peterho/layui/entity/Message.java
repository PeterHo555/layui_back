package com.peterho.layui.entity;

import lombok.Data;

@Data
public class Message {

    private Integer id;
    private Integer userId;
    private String message;
    private String msgTime;

}
