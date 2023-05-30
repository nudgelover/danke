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
        Anc obj2 = new Anc("adm1", "test2", "contents2","img2.jpg");
        Anc obj3= new Anc(3,"adm1", "test3", "contents3","img3.jpg","");
        Anc obj = new Anc(1,"adm1", "test1", "contents1","img1.jpg","");
        try {
            service.register(obj2);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
