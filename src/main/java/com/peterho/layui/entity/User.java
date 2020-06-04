package com.peterho.layui.entity;


import lombok.Data;

@Data
public class User {

    private Integer id;
    private String loginName;
    private String password;
    private String username;
    private String email;
    private String phone;
    private Integer userType;

}
