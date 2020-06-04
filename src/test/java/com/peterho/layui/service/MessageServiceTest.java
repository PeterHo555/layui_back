package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MessageServiceTest {

    @Autowired
    private MessageService messageService;

    @Test
    void test(){
        DataVO dataVO = messageService.findData(1,2);
        System.out.println(dataVO);
        int i =0;
    }
}
