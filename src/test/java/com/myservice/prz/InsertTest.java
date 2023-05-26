package com.myservice.prz;

import com.myservice.dto.Prz;
import com.myservice.service.PrzService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    PrzService service;

    @Test
    void contextLoads() {
        Prz obj = new Prz("id001", "SQLD", "0", "2023/03/19");
        Prz obj2 = new Prz("id002", "SQLD", "0", "2023/03/19");
        Prz obj3 = new Prz("id003", "SQLD", "0", "2023/03/19");
        Prz obj4 = new Prz("id001", "JAVA", "1", "2023/03/19");


        try {
                service.register(obj4);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
