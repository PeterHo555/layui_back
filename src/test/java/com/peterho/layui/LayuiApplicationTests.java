package com.peterho.layui;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@MapperScan("com.peterho.layui.mapper")
class LayuiApplicationTests {

	@Test
	void contextLoads() {
	}

}
