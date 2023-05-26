package com.myservice.ordDetail;

import com.myservice.service.OrdService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class DeleteTest {

    @Autowired
    OrdService service;
    @Test
    void contextLoads() {
        try {
            service.remove(201);
            log.info("remove OK--------------------------------");
            service.get();
        } catch (Exception e) {
            log.info("remove error-----------------------------");
        }
    }

}
