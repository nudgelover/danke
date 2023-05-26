package com.myservice.stdy;

import com.myservice.service.StdyService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectMyStdyTest {

    @Autowired
    StdyService service;

    @Test
    void contextLoads() {
        try {
            service.getMyStdy("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

