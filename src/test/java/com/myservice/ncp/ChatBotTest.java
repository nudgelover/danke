package com.myservice.ncp;

import com.myservice.utill.ChatBotUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@Slf4j
@SpringBootTest
class ChatBotTest {
	@Test
	void contextLoads() throws IOException {
		String txt = "안녕하세요";
		String result = ChatBotUtil.chat(txt);
		log.info(result+"------------------------------------test");

	}

}
