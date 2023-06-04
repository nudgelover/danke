package com.myservice.mypage;


import com.myservice.dto.MyPage;
import com.myservice.dto.Stdn;
import com.myservice.service.MyPageService;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    MyPageService service;

    @Test
    void contextLoads() {
        MyPage obj = new MyPage("id001", "ISTJ","2023-05-01","20220201", "TEST", "NO", "NO");

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get("id001");
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
