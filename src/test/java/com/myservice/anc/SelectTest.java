package com.myservice.anc;

import com.myservice.service.AncService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest {

    @Autowired
    AncService service;

    @Test
    void contextLoads() {
        try {
            service.get();
        } catch (Exception e) {
            log.info("select error-----------------------------");
            e.printStackTrace();
        }
        }
    }

