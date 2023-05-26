package com.myservice.curri;

import com.myservice.dto.Curri;
import com.myservice.service.CurriService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    CurriService service;

    @Test
    void contextLoads() {
        Curri obj = new Curri("id001", 1, "1");
        Curri obj2 = new Curri("id001", 101, "1");
        Curri obj3 = new Curri("id002", 1, "1");
        Curri obj4 = new Curri("id002", 101, "1");
        try {
            service.register(obj4);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }

}
