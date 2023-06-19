package com.myservice.stdy;

import com.myservice.dto.Stdy;
import com.myservice.service.StdyService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    StdyService service;

    @Test
    void contextLoads() {
        Stdy obj = new Stdy("rlawls2422", "2023.06.14 13:00:00", "2023.06.14 14:00:00", "스터디테스트", "스터디.txt", "스터디.txt");
        Stdy obj2 = new Stdy("id001", "2023.05.27 15:00:00", "2023.05.27 16:00:00", "스터디테스트", "스터디.txt", "스터디.txt");
        Stdy obj3 = new Stdy("id002", "2023.05.27 13:00:00", "2023.05.27 14:00:00", "스터디테스트", "스터디.txt", "스터디.txt");

//yyyy.MM.dd HH:mm:ss
        try {
                service.register(obj);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
