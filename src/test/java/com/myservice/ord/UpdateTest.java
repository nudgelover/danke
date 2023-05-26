package com.myservice.ord;

import com.myservice.dto.OrdDetail;
import com.myservice.service.OrdDetailService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    OrdDetailService service;

    @Test
    void contextLoads() {
        OrdDetail obj= new OrdDetail(101,"60");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(101);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
