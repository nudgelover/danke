package com.myservice.blah;

import com.myservice.service.BlahService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectStdnTest {

    @Autowired
    BlahService service;

    @Test
    void contextLoads() {
        try {
            service.getMyBlah("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

