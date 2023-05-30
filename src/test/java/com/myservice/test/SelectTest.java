package com.myservice.test;

import com.myservice.service.TestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest {

    @Autowired
    TestService service;

    @org.junit.jupiter.api.Test
    void contextLoads() {
        try {
            service.get();
        } catch (Exception e) {
            log.info("select error-----------------------------");
            e.printStackTrace();
        }
        }
    }

