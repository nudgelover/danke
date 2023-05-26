package com.myservice.mrk;

import com.myservice.service.MrkService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectKeywordTest {

    @Autowired
    MrkService service;

    @Test
    void contextLoads() {
        try {
            service.getKeyword("C");
        } catch (Exception e) {
            log.info("select keyword error-----------------------------");
            e.printStackTrace();
        }
        }
    }

