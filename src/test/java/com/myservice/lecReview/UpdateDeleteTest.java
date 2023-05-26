package com.myservice.lecReview;


import com.myservice.dto.LecReview;
import com.myservice.service.LecReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateDeleteTest {

    @Autowired
    LecReviewService service;

    @Test
    void contextLoads() {
        LecReview obj = new LecReview(401, "1" );

        try {
            service.updateDelete(obj);
            log.info("update OK--------------------------------");
            service.get(401);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
