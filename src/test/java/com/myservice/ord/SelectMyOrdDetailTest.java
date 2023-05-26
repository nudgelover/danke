package com.myservice.ord;

import com.myservice.service.OrdDetailService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMyOrdDetailTest {

    @Autowired
    OrdDetailService service;

    @Test
    void contextLoads() {
        try {
            service.getMyOrdDetail("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

