package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.UserVO;

import javax.servlet.http.HttpSession;

public interface UserService {
    public DataVO<UserVO> findData(Integer page, Integer limit);

    public String userLogin(String loginName, String password);

    public String userUpdate(String loginName, String userName, String email, String phone, String userType);

    public String users();

}
