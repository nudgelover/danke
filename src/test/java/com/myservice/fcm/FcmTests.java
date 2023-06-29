//package com.myservice.fcm;
//
//import com.myservice.utill.PushNotificationUtil;
//import lombok.extern.slf4j.Slf4j;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import java.io.IOException;
//
//@Slf4j
//@SpringBootTest
//class FcmTests {
//
//    @Autowired
//    private PushNotificationUtil pushNotificationUtil;
//    String userToken = "ep1v6XKJSQaFSsxltZrNsX:APA91bGeABICUUAmlNuUC4A950EgkdV_W4X3l_R-oUGmdrkLNdbztz2yEVlM-CkcpzU7p7shHlknJXSmlNJ5L6JD_B4Ux3CCcUKGNAgZQPGOgYpxtLpC0eVW6LSD4_4VLKHG0Rh2_-1n";
//    String imgUrl = "https://www.w3schools.com/css/img_5terre.jpg";
//    @Test
//    void contextLoads() throws IOException {
//
//        pushNotificationUtil.sendCommonMessage("SPRING ", "hello", "/register", imgUrl);
////        pushNotificationUtil.sendTargetMessage("SPRING title4tti", "hello", "/register", userToken);
//        pushNotificationUtil.sendCommonMessage("SPRING ", "hello", "/register", userToken);
//        //pushNotificationUtil.sendTargetMessage("SPRING title4tti", "hello", "/register", userToken);
//
//    }
//
//}