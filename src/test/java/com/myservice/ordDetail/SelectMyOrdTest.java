package com.myservice.ordDetail;

import com.myservice.service.OrdDetailService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMyOrdTest {

    @Autowired
    OrdDetailService service;

    @Test
    void contextLoads() {
        try {
            service.getMyOrdDetail("12345");
        } catch (Exception e) {
            log.info("select one error-----------------------------");
            e.printStackTrace();
        }
        }
    }

