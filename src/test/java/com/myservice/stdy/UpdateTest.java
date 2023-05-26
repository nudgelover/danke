package com.myservice.stdy;

import com.myservice.dto.Stdy;
import com.myservice.service.StdyService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    StdyService service;

    @Test
    void contextLoads() {
        Stdy obj = new Stdy(1,"수정내용", "file.txt","org.txt");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
