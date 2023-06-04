package com.myservice.blah;

import com.myservice.dto.Blah;
import com.myservice.service.BlahService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateLikesTest {

    @Autowired
    BlahService service;

    @Test
    void contextLoads() {
        Blah obj = new Blah(23);
        try {
            service.updateLikes(obj);
            log.info("update OK--------------------------------");
            service.get(23);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
