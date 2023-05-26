package com.myservice.attd;

import com.myservice.dto.Attd;
import com.myservice.service.AttdService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    AttdService service;

    @Test
    void contextLoads() {
        Attd obj = new Attd("id001");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
