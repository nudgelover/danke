package com.myservice.mrk;

import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    MrkService service;

    @Test
    void contextLoads() {
        Mrk obj = new Mrk("id001",37.123456, 127.123456, "img.jpg", 5,"존맛","C","oninon");
        Mrk obj2 = new Mrk("id001",37.123456, 127.123456, "img.jpg", 5,"존맛","C","oninon");
        Mrk obj3 = new Mrk("id002",37.123456, 127.123456, "img.jpg", 5,"존맛","R","oninon");
        Mrk obj4 = new Mrk("id002",37.123456, 127.123456, "img.jpg", 5,"존맛","R","oninon");
        Mrk obj5 = new Mrk("id001",37.123456, 127.123456, "img.jpg", 5,"존맛","R","oninon");


        try {
            service.register(obj5);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
