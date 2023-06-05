package com.myservice.controller;


import com.myservice.dto.*;
import com.myservice.service.BlahService;
import com.myservice.service.LikesService;
import com.myservice.service.MrkService;
import com.myservice.service.MyPageService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@Slf4j
@RestController
public class AjaxImplController {

    @Value("${uploadimgdir}")
    String imgdir;

    @Autowired
    BlahService blahService;
    @Autowired
    LikesService likesService;
    @Autowired
    MrkService mrkService;
    @Autowired
    MyPageService myPageService;

    @RequestMapping("/markers")
    public Object markers(String keyword) throws Exception {
        log.info("오냐" + keyword);
        List<Mrk> list = null;
        try {
            list = mrkService.getKeyword(keyword);
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0003");
        }

        JSONArray ja = new JSONArray();
        for (Mrk obj : list) {
            JSONObject jo = new JSONObject();
            jo.put("id", obj.getId());
            jo.put("writer", obj.getWriter());
            jo.put("keyword", obj.getKeyword());
            jo.put("title", obj.getTitle());
            jo.put("lat", obj.getLat());
            jo.put("lng", obj.getLng());
            jo.put("img", obj.getImg());
            jo.put("star", obj.getRating());
            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/getGrade")
    public Object selectMember(String digidate) throws Exception {
        List<MyPage> list = null;

        try {
            list = myPageService.getGrade(digidate);
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0003");
        }

        JSONArray ja = new JSONArray();
        for (MyPage obj : list) {
            JSONObject jo = new JSONObject();
            jo.put("id", obj.getId());
            jo.put("name", obj.getName());
            jo.put("img", obj.getImg());
            jo.put("birthday",obj.getBirthday());
            jo.put("insta",obj.getInsta());
            jo.put("facebook", obj.getFacebook());
            jo.put("contact",obj.getContact());
            jo.put("email", obj.getEmail());
            jo.put("comdate", obj.getComdate());
            jo.put("digidate", obj.getDigidate());
            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/likeblah")
    public Object likeblah(Integer postId) throws Exception {
        Likes likes = null;
        Blah blah =null;
        likesService.register(likes);
        blahService.updateLikes(blah);

        return null;
    }
}
