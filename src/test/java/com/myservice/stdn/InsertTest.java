package com.myservice.stdn;

import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    StdnService service;
    @Test
    void contextLoads() {
        Stdn obj2 = new Stdn("id002", "pwd002", "김진희", "id002@digicam.com", "01022222222","JAVA", "SECURE", "React");
        Stdn obj3 = new Stdn("id003", "pwd003", "이여진", "id003@digicam.com", "01033333333","JAVA", "SECURE", "React");
        Stdn obj = new Stdn("id001", "pwd001", "박선미", "id001@digicam.com", "01011111111","JAVA", "SECURE", "React");

        try {
            service.register(obj2);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
