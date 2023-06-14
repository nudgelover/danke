package com.myservice.controller;

import com.myservice.dto.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class MsgController {
    @Autowired
    SimpMessagingTemplate template;


    @MessageMapping("/receiveto") // 특정 Id에게 전송
    public void receiveto(Msg msg, SimpMessageHeaderAccessor headerAccessor) {
//        String id = msg.getSendid();

        String target = msg.getReceiveid();
        template.convertAndSend("/send/to/" + target, msg);
    }
}


//    @MessageMapping("/receiveall") // 모두에게 전송
//    public void receiveall(Msg msg, SimpMessageHeaderAccessor headerAccessor) {
////      StompHeaderAccessor [headers={simpMessageType=MESSAGE, stompCommand=SEND, nativeHeaders={destination=[/receiveall], content-length=[39]}, simpSessionAttributes={}, simpHeartbeat=[J@4e65daa4, lookupDestination=/receiveall, simpSessionId=uunjqber, simpDestination=/receiveall}]
//        System.out.println("headerAccessor------------------------------------------");
//        template.convertAndSend("/send", msg);
//    }
