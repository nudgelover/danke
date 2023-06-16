package com.myservice.controller;


import com.myservice.dto.*;
import com.myservice.service.*;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@Slf4j
@RestController
public class AjaxImplController {

    @Value("${uploadimgdir}")
    String imgdir;

    @Autowired
    StdnService stdnService;
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
            jo.put("birthday", obj.getBirthday());
            jo.put("insta", obj.getInsta());
            jo.put("facebook", obj.getFacebook());
            jo.put("contact", obj.getContact());
            jo.put("email", obj.getEmail());
            jo.put("comdate", obj.getComdate());
            jo.put("digidate", obj.getDigidate());
            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/blah/checklike")
    public String checkLike(Integer postId, String board, String stdnId) throws Exception {
        // 해당 포스트와 사용자의 좋아요 여부를 조회하는 로직을 구현합니다.
        String result = "";
        if (likesService.getThisLikes(postId, stdnId, board) != null) {
            result = "liked";
        }
        log.info(result);
        return result;
    }


    @RequestMapping("/getstdnimg")
    public ResponseEntity<?> getStudentImage(@RequestParam String stdnId) throws Exception {
        Stdn stdn = stdnService.get(stdnId);
        return ResponseEntity.ok(stdn);
    }


}