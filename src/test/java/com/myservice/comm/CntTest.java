package com.myservice.comm;

import com.myservice.service.CommService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class CntTest {

    @Autowired
    CommService service;

    @Test
    void contextLoads() {
        try {
            service.cntComm(1);
        } catch (Exception e) {
            log.info("select one error-----------------------------");
            e.printStackTrace();
        }
        }
    }

