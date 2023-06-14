package com.myservice.likes;

import com.myservice.dto.Likes;
import com.myservice.service.LikesService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    LikesService service;

    @Test
    void contextLoads() {
        Likes obj = new Likes(101, "id001", "LR");
        Likes obj2 = new Likes(101, "id002", "LR");
        Likes obj3 = new Likes(1, "id001", "L");
        Likes obj4 = new Likes(23, "id001", "b");
        try {
            service.register(obj4);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
