package com.myservice.cpn;

import com.myservice.dto.Cpn;
import com.myservice.service.CpnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    CpnService service;

    @Test
    void contextLoads() {
        Cpn obj = new Cpn(1,"1");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
