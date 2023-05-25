package com.myservice.stdn;


import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class DeleteTest {

    @Autowired
    StdnService service;
    @Test
    void contextLoads() {
        try {
            service.remove("id003");
            log.info("remove OK--------------------------------");
            service.get();
        } catch (Exception e) {
            log.info("register error-----------------------------");
        }
    }

}
