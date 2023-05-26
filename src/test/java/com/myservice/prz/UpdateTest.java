package com.myservice.prz;

import com.myservice.dto.Prz;
import com.myservice.service.PrzService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    PrzService service;

    @Test
    void contextLoads() {
        Prz obj = new Prz(201, "C++", "1", "2023/05/27");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(201);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
