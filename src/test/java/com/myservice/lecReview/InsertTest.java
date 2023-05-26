package com.myservice.lecReview;

import com.myservice.dto.LecReview;
import com.myservice.service.LecReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    LecReviewService service;
    @Test
    void contextLoads() {
        LecReview obj = new LecReview(1,"id001", "리뷰1", "리뷰내용1", 5, "리뷰.jpg", "" );
        LecReview obj2 = new LecReview(101,"id001", "리뷰2", "리뷰내용2", 5, "리뷰.jpg", "" );
        LecReview obj3 = new LecReview(202,"id001", "리뷰3", "리뷰내용3", 5, "리뷰.jpg", "" );
        LecReview obj4 = new LecReview(1,"id002", "리뷰4", "리뷰내용4", 5, "리뷰.jpg", "" );

        try {
            service.register(obj);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }

}
