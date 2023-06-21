package com.myservice.youtube;

import com.myservice.utill.YoutubeUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class YoutubeTest {

    @Value("${uploadimgdir}")
    String imgpath;
    @Autowired
    YoutubeUtil youtubeUtil;



    @Test
    void contextLoads() throws Exception{
        String search = "리액트";
        JSONObject result = (JSONObject) YoutubeUtil.search(search);
        JSONArray fianl = (JSONArray) YoutubeUtil.getYoutube(result);

        log.info(fianl.toString());

        log.info(fianl.toJSONString());
    }
}