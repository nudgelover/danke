package com.myservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.Message;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionConnectedEvent;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Component
public class WebSocketEventListener {
    @Autowired
    SimpMessagingTemplate template;

    private Map<String, Map<String, String>> userSession = new HashMap<>();

    @EventListener
    public void handleWebSocketConnectListener(SessionConnectedEvent event) {
        SimpMessageHeaderAccessor headerAccessor = SimpMessageHeaderAccessor.wrap((Message<?>) event.getMessage().getHeaders().get("simpConnectMessage"));
        List<String> typeList = headerAccessor.getNativeHeader("websocket-type");
        List<String> userList = headerAccessor.getNativeHeader("user-id");
        String sessionId = headerAccessor.getSessionId();


        if (typeList != null && userList != null) {
            Map<String, String> sessionData = new HashMap<>();
            sessionData.put("type", typeList.get(0));
            sessionData.put("userId", userList.get(0));
            userSession.put(sessionId, sessionData);
        }
// 그룹채팅방 접속한 사람
        int sessionCount = userSession.size();
        if (userSession.get(sessionId).get("type").equals("groupChat")) {
            List<String> currentUesrList = new ArrayList<>();
            for (String key : userSession.keySet()) {
                if (!sessionId.equals(key)) {
                    currentUesrList.add(userSession.get(key).get("userId"));
                }
            }
            template.convertAndSend("/send/current/user", currentUesrList);
        }
////1:1 채팅 가능한 사람
//        if (userSession.get(sessionId).get("type").equals("chat")) {
//            List<String> currentStudentList = new ArrayList<>();
//            for (String key : userSession.keySet()) {
//                if (!sessionId.equals(key)) {
//                    currentStudentList.add(userSession.get(key).get("userId"));
//                }
//            }
//            template.convertAndSend("/send/current/student", currentStudentList);
//        }


        log.info("Session Count: " + sessionCount);
    }

    @EventListener
    public void handleWebSocketDisconnectListener(SessionDisconnectEvent event) {
        SimpMessageHeaderAccessor headerAccessor = SimpMessageHeaderAccessor.wrap(event.getMessage());
        String sessionId = headerAccessor.getSessionId();

        // Decrement the session count for the user
        if (userSession.get(sessionId) != null) {
            userSession.remove(sessionId);
        }
    }
}
