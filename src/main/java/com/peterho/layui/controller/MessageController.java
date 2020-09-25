package com.peterho.layui.controller;

import com.peterho.layui.entity.Message;
import com.peterho.layui.service.MessageService;
import com.peterho.layui.vo.DataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {
    @Autowired
    private MessageService messageService;

    @RequestMapping("/messagelist")
    public DataVO list(Integer page, Integer limit){
        return messageService.findData(page, limit);
    }
    @RequestMapping("/addmessage")
    public String addMessage(Integer thisUserId, Integer districtId, String msg){
        Message message = new Message();
        message.setUserId(thisUserId);
        message.setDistrictId(districtId);
        message.setMessage(msg);
        return messageService.addMessage(message);
    }
}
