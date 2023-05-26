package com.myservice.subsc;

import com.myservice.dto.Subsc;
import com.myservice.service.SubscService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    SubscService service;

    @Test
    void contextLoads() {
        Subsc obj = new Subsc("id001", "2023.07.31", "");
        Subsc obj2 = new Subsc("id002", "2023.07.31", "");
        Subsc obj3 = new Subsc("id003", "2023.07.31", "");

        try {
                service.register(obj3);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
