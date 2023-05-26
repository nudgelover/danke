package com.myservice.ordDetail;


import com.myservice.dto.OrdDetail;
import com.myservice.service.OrdDetailService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    OrdDetailService service;

    @Test
    void contextLoads() {
        OrdDetail obj = new OrdDetail(1,1);
        OrdDetail obj2 = new OrdDetail(101,1);
        OrdDetail obj3 = new OrdDetail(1,301);
        OrdDetail obj4 = new OrdDetail(101,301);
        try {
                service.register(obj4);
                log.info("register OK--------------------------------");
            } catch (Exception e)  {
                e.printStackTrace();
                log.info("시스템 장애--------------------------------");
            }
        }
    }
