package com.myservice.comm;

import com.myservice.dto.Comm;
import com.myservice.service.CommService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    CommService service;

    @Test
    void contextLoads() {
        Comm obj = new Comm(101,"comment1","id001");
        Comm obj2 = new Comm(101,"comment2","id001");
        Comm obj3 = new Comm(201,"comment3","id001");
        Comm obj4 = new Comm(101,"comment4","id002");
        try {
            service.register(obj4);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
