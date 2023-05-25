package com.myservice.stdn;


import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateAdmTest {

    @Autowired
    StdnService service;

    @Test
    void contextLoads() {
        Stdn obj = new Stdn("id001", "박선미", "id001@digicam.com", "01011111111","id001.jpg","1990/10/13"
                ,"1","1","0","","2023/05/25 18:00:00", "2023/05/25", "JAVA", "C++", "C", "");

        try {
            service.updateAdm(obj);
            log.info("update OK--------------------------------");
            service.get("id001");
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
