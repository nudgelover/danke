package com.myservice.anc;


import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    StdnService service;

    @Test
    void contextLoads() {
        Stdn obj = new Stdn("id001", "박선미", "id001@digicam.com", "01011111111","id001.jpg","1990/10/13", "JAVA", "C++", "C#");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get("id001");
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
