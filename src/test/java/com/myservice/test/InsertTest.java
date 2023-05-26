package com.myservice.test;

import com.myservice.dto.Test;
import com.myservice.service.TestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    TestService service;

    @org.junit.jupiter.api.Test
    void contextLoads() {
        Test obj = new Test("id001", "www.naver.com", 100, "JAVA");
        Test obj2 = new Test("id001", "www.naver.com", 100, "JAVA");
        Test obj3 = new Test("id002", "www.naver.com", 100, "JAVA");

     try {
                service.register(obj3);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
