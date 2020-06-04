package com.peterho.layui.vo;

import lombok.Data;

@Data
public class UserVO {

    private Integer id;
    private String loginName;
    private String password;
    private String username;
    private String email;
    private String phone;
    private Integer userType;

}
