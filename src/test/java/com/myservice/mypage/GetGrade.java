package com.myservice.mypage;

import com.myservice.service.CartService;
import com.myservice.service.MyPageService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class GetGrade {

    @Autowired
    MyPageService myPageService;
    @Test
    void contextLoads() {
        try {
            myPageService.getGrade("20230201");
        } catch (Exception e) {
            log.info("select one error-----------------------------");
            e.printStackTrace();
        }
        }
    }

