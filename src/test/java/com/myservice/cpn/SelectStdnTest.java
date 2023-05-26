package com.myservice.cpn;

import com.myservice.service.CpnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectStdnTest {

    @Autowired
    CpnService service;

    @Test
    void contextLoads() {
        try {
            service.getMyCpn("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

