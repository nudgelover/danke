package com.myservice.curri;


import com.myservice.dto.Curri;
import com.myservice.service.CurriService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    CurriService service;

    @Test
    void contextLoads() {
        Curri obj = new Curri(1, "0");
        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(1);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
