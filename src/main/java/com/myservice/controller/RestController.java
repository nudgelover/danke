package com.myservice.controller;

import com.myservice.dto.Cart;
import com.myservice.dto.Curri;
import com.myservice.dto.Stdn;
import com.myservice.service.CartService;
import com.myservice.service.CurriService;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j

@org.springframework.web.bind.annotation.RestController
public class RestController {

    @Autowired
    StdnService stdnService;

    @Autowired
    CartService cartService;

    @Autowired
    CurriService curriService;

    @RequestMapping("/checkid")
    public Object checkid(String id) throws Exception {

        int result = 0;
        Stdn stdn = null;
        try {
            stdn = stdnService.get(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("시스템 장애: ER0005");
        }
        if(stdn!=null){
            result = 1;
        }
        return result;
    }

    @RequestMapping("/cartimpl")
    public Object cartimpl(Cart cart) throws Exception {
        int result = 0;
        String stdnId = cart.getStdnId();
        int lecId = cart.getLecId();
        if(cartService.thisCart(lecId, stdnId) == null){
            result = 1;
            cartService.register(cart);
        }
        return result;
    }

    @RequestMapping("/curriimpl")
    public Object curriimpl(Curri curri) throws Exception {
        int result = 0;
        String stdnId = curri.getStdnId();
        int lecId = curri.getLecId();
        if(curriService.thisCurri(stdnId, lecId) == null){
            result = 1;
            curriService.register(curri);
        }
        return result;
    }

}
