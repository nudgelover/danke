package com.myservice.mrk;

import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectRecentTest {

    @Autowired
    MrkService service;

    @Test
    void contextLoads() {
        Mrk obj = new Mrk(1,36, 128, "수정.jpg", 5,"존노맛","C"," botbotbot");

        try {
            service.getRecent();
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

