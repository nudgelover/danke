package com.myservice.ordDetail;

import com.myservice.dto.Ord;
import com.myservice.service.OrdService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    OrdService service;

    @Test
    void contextLoads() {
        Ord obj = new Ord(101);
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(101);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
