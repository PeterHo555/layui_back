package com.peterho.layui.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;



@SpringBootTest

class UserMapperTest {

    @Autowired
    private UserMapper mapper;

    @Test
    void test(){
        mapper.selectList(null).forEach(System.out::println);
    }

    @Test
    void test1(){
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("id",1);
        System.out.println(mapper.selectOne(wrapper));
    }
}
