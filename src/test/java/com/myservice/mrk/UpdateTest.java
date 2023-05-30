package com.myservice.mrk;

import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    MrkService service;

    @Test
    void contextLoads() {
        Mrk obj = new Mrk(153,36, 128, "수정.jpg", 5,"존노맛","C"," botbotbot");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(153);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
