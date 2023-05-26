package com.myservice.prz;

import com.myservice.service.PrzService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMyPrzTest {

    @Autowired
    PrzService service;

    @Test
    void contextLoads() {
        try {
            service.getMyPrz("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

