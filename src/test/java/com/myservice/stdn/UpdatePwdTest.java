package com.myservice.stdn;


import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdatePwdTest {

    @Autowired
    StdnService service;

    @Test
    void contextLoads() {
        Stdn obj = new Stdn("id001", "pwd");

        try {
            service.updatePwd(obj);
            log.info("update OK--------------------------------");
            service.get("id001");
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }
}
