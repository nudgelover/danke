package com.myservice.comm;

import com.myservice.dto.Comm;
import com.myservice.service.CommService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    CommService service;

    @Test
    void contextLoads() {
        Comm obj = new Comm(1, "comm수정수정");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
