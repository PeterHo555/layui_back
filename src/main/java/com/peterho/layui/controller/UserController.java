package com.peterho.layui.controller;

import com.peterho.layui.service.UserService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/userList")
    public DataVO list(Integer page, Integer limit){
        return userService.findData(page, limit);
    }

    @RequestMapping("/userLogin")
    public String userLogin(String loginName, String password){
        return userService.userLogin(loginName, password);
    }

    @RequestMapping("/userUpdate")
    public String userUpdate(String loginName,String username, String email, String phone, String userType){
        return userService.userUpdate(loginName, username, email, phone, userType);
    }

    @RequestMapping("/users")
    public String users(){
        return userService.users();
    }



}
