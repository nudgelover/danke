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
        Anc obj2 = new Anc("adm1", "안녕하세요", "안녕하세요","img2.jpg");
        Anc obj1 = new Anc("adm1", "감사합니다", "감사합니다","img2.jpg");
        Anc obj3 = new Anc("adm1", "반갑습니다", "반갑습니다","img2.jpg");
        try {
            service.register(obj3);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
