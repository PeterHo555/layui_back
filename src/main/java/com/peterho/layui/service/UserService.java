package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.UserVO;

public interface UserService {
    public DataVO<UserVO> findData(Integer page, Integer limit);

    public String userLogin(String loginName,String password);


}
