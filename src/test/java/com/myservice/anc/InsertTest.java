package com.myservice.anc;

import com.myservice.dto.Anc;
import com.myservice.service.AncService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    AncService service;

    @Test
    void contextLoads() {
        Anc obj2 = new Anc("guava", "스터디 현황 및 만족도 조사", "","open.jpg");
        Anc obj1 = new Anc("guava", "실습과제 안내", "감사합니다","2차스터디.jpg");
        Anc obj3 = new Anc("adm1", "반갑습니다", "반갑습니다","img2.jpg");
        try {
            service.register(obj1);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
