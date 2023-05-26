package com.myservice.lec;

import com.myservice.dto.Anc;
import com.myservice.dto.Lec;
import com.myservice.service.AncService;
import com.myservice.service.LecService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    LecService service;

    @Test
    void contextLoads() {
        Lec lec = new Lec(0, "관리자2", 2, "서울대 코딩", "이진만", "스프링", "www.daum.net", null, "9시간", 0, 9999, "b.img", 0.0, "0", null, 0);
        Lec lec2 = new Lec(3, "관리자1", 001, "알파코 스프링수업", "이진만", "자바", "www.naver.com", null, "100시간", 0, 100000, "a.img", 0, "0", "1111", 1);
        try {
            service.register(lec2);
            log.info(service.get().toString());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
