package com.myservice.controller;

import com.myservice.dto.Msg;
import com.myservice.utill.ChatBotUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.io.IOException;

@Controller
public class ChatbotController {
    @Autowired
    SimpMessagingTemplate template;


    @MessageMapping("/chatbotme") // 나에게만 전송 ex)Chatbot
    public void chatbotme(Msg msg, SimpMessageHeaderAccessor headerAccessor) throws IOException {
        String target = msg.getSendid();
        //NCP Chatbot 연동해서 message 던져주기
        String txt = msg.getContent();
        String result = ChatBotUtil.chat(txt);
        msg.setContent(result);

        template.convertAndSend("/chsend/" + target, msg);
    }
}