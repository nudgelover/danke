package com.myservice.lecReview;


import com.myservice.dto.LecReview;
import com.myservice.service.LecReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateLikesTest {

    @Autowired
    LecReviewService service;

    @Test
    void contextLoads() {


        try {
            service.updateLikes(501);
            log.info("update OK--------------------------------");
            service.get(501);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
