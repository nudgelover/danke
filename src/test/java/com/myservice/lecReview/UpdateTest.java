package com.myservice.lecReview;


import com.myservice.dto.Curri;
import com.myservice.dto.LecReview;
import com.myservice.service.CurriService;
import com.myservice.service.LecReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    LecReviewService service;

    @Test
    void contextLoads() {
        LecReview obj = new LecReview(101, "리뷰수정", "리뷰내용수정", 4, "리뷰수정.jpg" );

        try {
            service.modify(obj);
            log.info("update OK--------------------------------");
            service.get(101);
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }

}
