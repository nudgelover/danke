package com.myservice.test;

import com.myservice.service.TestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMyTestTest {

    @Autowired
    TestService service;

    @org.junit.jupiter.api.Test
        void contextLoads() {
        try {
            service.getMyTest("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

