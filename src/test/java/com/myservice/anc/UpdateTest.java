package com.myservice.anc;

import com.myservice.dto.Anc;
import com.myservice.service.AncService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    AncService service;

    @Test
    void contextLoads() {
        Anc obj = new Anc(101,"adm1", "테스트", "컨텐츠","img1.jpg","");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(101);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
