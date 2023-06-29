package com.myservice.ncp;


//import com.myservice.controller.ChatController;
import com.myservice.controller.ChatController;
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
		 String secretKey = "T1RwTWtVV0tKaU1UVnRhVFpQTUtFRklYdVFtY3BkSFE=";
		String result = ChatController.sendMessage(txt);
//		String result = ChatController.makeSignature(txt, secretKey);
		log.info(result+"------------------------------------test");

	}

}
