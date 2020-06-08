package com.peterho.layui.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class HostControllerTest {

    @Autowired
    private HostController hostController;

    @Test
    void test(){
        String falg = hostController.addHost("8","2","2","on");

        System.out.println(falg);
        int i = 0;
    }

}
