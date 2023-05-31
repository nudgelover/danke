package com.myservice.ord;

import com.myservice.dto.Ord;
import com.myservice.service.OrdService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    OrdService service;

    @org.junit.jupiter.api.Test
    void contextLoads() {
        Ord obj = new Ord(301);
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(301);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
