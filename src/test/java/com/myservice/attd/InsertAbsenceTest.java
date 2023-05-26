package com.myservice.attd;

import com.myservice.dto.Attd;
import com.myservice.service.AttdService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    AttdService service;

    @Test
    void contextLoads() {
        Attd obj= new Attd("id004");
        try {
            service.insertAbsence(obj);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}