package com.myservice.ord;

import com.myservice.dto.Ord;
import com.myservice.service.OrdService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    OrdService service;

    @Test
    void contextLoads() {
        Ord obj = new Ord("id001", 100000, "1",0);
        Ord obj2 = new Ord("id001", 200000, "1",0);
        Ord obj3 = new Ord("id002", 100000, "1",0);

        try {
                service.register(obj3);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
