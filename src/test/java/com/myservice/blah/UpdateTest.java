package com.myservice.blah;

import com.myservice.dto.Blah;
import com.myservice.service.BlahService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    BlahService service;

    @Test
    void contextLoads() {
        Blah obj = new Blah(1, "컨텐츠수정");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
