package com.myservice.subsc;

import com.myservice.service.SubscService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMySubscTest {

    @Autowired
    SubscService service;

    @Test
    void contextLoads() {
        try {
            service.getMySubsc("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

