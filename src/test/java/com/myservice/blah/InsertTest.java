package com.myservice.blah;


import com.myservice.dto.Blah;
import com.myservice.service.BlahService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    BlahService service;

    @Test
    void contextLoads() {
        Blah obj3= new Blah("id003", "blah3");
        Blah obj2= new Blah("id002", "blah2");
        Blah obj= new Blah("id001", "테스틉니당222~~~");
        try {
            service.register(obj);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }
}
