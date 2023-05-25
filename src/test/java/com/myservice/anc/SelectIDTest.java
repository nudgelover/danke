package com.myservice.anc;

import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectIDTest {

    @Autowired
    StdnService service;
    @Test
    void contextLoads() {
        try {
            service.get("id001");
        } catch (Exception e) {
            log.info("select one error-----------------------------");
            e.printStackTrace();
        }
        }
    }

