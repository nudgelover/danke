package com.myservice.cpnSpec;

import com.myservice.dto.CpnSpec;
import com.myservice.service.CpnSpecService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    CpnSpecService service;

    @Test
    void contextLoads() {
        CpnSpec obj = new CpnSpec(1001, 10000, 0);
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1001);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
