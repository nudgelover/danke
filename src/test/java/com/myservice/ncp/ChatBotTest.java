package com.myservice.ncp;

import com.myservice.controller.ChatController;
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
		String txt = "문의";
		 String secretKey = "RE1xbWNibVRVQWRoS0xTd1lacG5JSU5NQXJJRXNLc2M=";
//		String result = ChatBotUtil.chat(txt);
		String result = ChatController.sendMessage(txt);
		log.info(result+"------------------------------------test");

	}

}
