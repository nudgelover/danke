package com.myservice.controller;

import com.myservice.dto.*;
import com.myservice.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

    @Autowired
    OrdDetailService ordDetailService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    LecReviewService lecReviewService;

    @Autowired
    LikesService likesService;

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

    @RequestMapping("/pwdconfirm")
    public Object pwdconfirm(String id,String pwd) throws Exception {
        int result = 0;
        Stdn stdn= (Stdn) stdnService.get(id);
        if(!encoder.matches(pwd, stdn.getPwd())){
            result=1;
        }
        return result;
    }

    @RequestMapping("/reviewimpl")
    public Object reviewimpl(String stdnId, Integer lecId) throws Exception {
        int result = 0;
        OrdDetail ordDetail = (OrdDetail) ordDetailService.getThisOrd(lecId, stdnId);
        if(ordDetail==null){
            result=1;
        }
        log.info("여기"+result);
        return result;
    }

    @RequestMapping("/reviewaddimpl")
    public Object reviewaddimpl(String stdnId, Integer lecId) throws Exception {
        int result = 0;
        LecReview lecReview = (LecReview) lecReviewService.getThisLecReview(stdnId, lecId);
        if(lecReview==null){
            result=1;
        }
        log.info("여기"+result);
        return result;
    }

    @RequestMapping("/lecreviewlikeaddimpl")
    public Object lecreviewlikeaddimpl(Integer postId, String stdnId) throws Exception {
;
        int result = 0;
        log.info("여기"+postId);
        log.info("여기"+stdnId);
        Likes likes = (Likes) likesService.getThisLikes(postId, stdnId, "R");
        if(likes==null){
            result = 1;
            Likes likesAdd = new Likes(postId, stdnId, "R");
            likesService.register(likesAdd);
        } else {
            log.info("여기"+likes.toString());
            Integer likeId = likes.getLikeId();
            likesService.remove(likeId);
        }
        return result;
    }

}
