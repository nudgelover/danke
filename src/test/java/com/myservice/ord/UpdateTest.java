package com.myservice.ord;

import com.myservice.dto.Test;
import com.myservice.service.TestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    TestService service;

    @org.junit.jupiter.api.Test
    void contextLoads() {
        Test obj = new Test(1, "www.google.com", 100, "React");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(101);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
