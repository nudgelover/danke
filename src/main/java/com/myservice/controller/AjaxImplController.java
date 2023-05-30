package com.myservice.controller;


import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
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
    MrkService mrkService;

    @RequestMapping("/markers")
    public Object markers(String keyword) throws Exception {
        log.info("오냐"+keyword);
        List<Mrk> list = null;
        try {
            list = mrkService.getKeyword(keyword);
        }catch (Exception e) {
            throw new Exception("시스템 장애: ER0003");
        }

        JSONArray ja = new JSONArray();
        for(Mrk obj:list){
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


}
