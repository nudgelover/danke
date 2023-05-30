package com.myservice.cpnSpec;

import com.myservice.dto.CpnSpec;
import com.myservice.service.CpnSpecService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    CpnSpecService service;

    @Test
    void contextLoads() {
        CpnSpec obj = new CpnSpec("누적수강생 10만기념 쿠폰",0, 25);
        CpnSpec obj2 = new CpnSpec("누적수강생 10만기념 쿠폰",30000, 0);

        try {
            service.register(obj2);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
