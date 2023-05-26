package com.myservice.likes;

import com.myservice.service.LikesService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectStdnTest {

    @Autowired
    LikesService service;

    @Test
    void contextLoads() {
        try {
            service.getMyLikes("id001");
        } catch (Exception e) {
            log.info("select stdn error-----------------------------");
            e.printStackTrace();
        }
        }
    }

