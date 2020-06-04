package com.peterho.layui.controller;

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
}
