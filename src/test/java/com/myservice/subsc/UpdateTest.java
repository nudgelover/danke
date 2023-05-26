package com.myservice.subsc;

import com.myservice.dto.Subsc;
import com.myservice.service.SubscService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    SubscService service;

    @Test
    void contextLoads() {
        Subsc obj = new Subsc(1, "2023.12.31", "");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
