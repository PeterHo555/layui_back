package com.peterho.layui.vo;

import lombok.Data;

@Data
public class MessageVO {

    private Integer id;
    private Integer userId;
    private String userName;
    private String districtName;
    private String message;
    private String msgTime;

}
