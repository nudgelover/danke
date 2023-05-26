package com.myservice.cpn;

import com.myservice.dto.Cpn;
import com.myservice.service.CpnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    CpnService service;

    @Test
    void contextLoads() {
        Cpn obj = new Cpn("id001", "2023.06.01");
        Cpn obj2 = new Cpn("id001", "2023.07.01");
        Cpn obj3 = new Cpn("id001", "2024.01.01");
        Cpn obj4 = new Cpn("id002", "2023.06.01");

        try {
            service.register(obj4);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
