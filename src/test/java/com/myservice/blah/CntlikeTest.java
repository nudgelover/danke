package com.myservice.blah;

import com.myservice.service.BlahService;
import com.myservice.service.CommService;
import com.myservice.service.LikesService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class CntlikeTest {

    @Autowired
    BlahService service;

    @Test
    void contextLoads() {
        try {
            service.cntLike(21);
        } catch (Exception e) {
            log.info("select one error-----------------------------");
            e.printStackTrace();
        }
        }
    }

