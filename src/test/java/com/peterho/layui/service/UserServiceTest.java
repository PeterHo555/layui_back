package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class UserServiceTest {

    @Autowired
    private UserService service;

    @Test
    void findData(){
        DataVO dataVO = service.findData(1,2);
        System.out.println(dataVO);
        int i = 0;
    }
}
