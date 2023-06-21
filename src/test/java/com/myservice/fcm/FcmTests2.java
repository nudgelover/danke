package com.myservice.fcm;

import com.myservice.utill.PushNotificationUtil2;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@Slf4j
@SpringBootTest
class FcmTests2 {

    @Autowired
    private PushNotificationUtil2 pushNotificationUtil;

    @Test
    void contextLoads() throws IOException {

        pushNotificationUtil.sendCommonMessage("SPRING title", "SPRING body", "/login");
    }

}
