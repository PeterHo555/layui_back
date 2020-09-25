package com.peterho.layui.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class User {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private String loginName;
    private String password;
    private String username;
    private String email;
    private String phone;
    private Integer userType;

}
