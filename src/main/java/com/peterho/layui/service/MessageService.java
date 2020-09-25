package com.peterho.layui.service;

import com.peterho.layui.entity.Message;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.MessageVO;


public interface MessageService {
    public DataVO<MessageVO> findData(Integer page, Integer limit);

    public String addMessage(Message message);
}
