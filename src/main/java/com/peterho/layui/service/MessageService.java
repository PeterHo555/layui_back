package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.MessageVO;
import com.peterho.layui.vo.UserVO;

public interface MessageService {
    public DataVO<MessageVO> findData(Integer page, Integer limit);
}
