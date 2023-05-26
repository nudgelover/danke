package com.myservice.cart;

import com.myservice.dto.Cart;
import com.myservice.service.CartService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    CartService service;

    @Test
    void contextLoads() {
        Cart cart1 = new Cart("id001",1);
        Cart cart2 = new Cart("id001",101);
        Cart cart3 = new Cart("id002",1);
        Cart cart4 = new Cart("id002",101);
        Cart cart5 = new Cart("id003",1);
        try {
            service.register(cart5);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }

}
