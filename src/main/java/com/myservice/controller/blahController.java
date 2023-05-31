package com.myservice.controller;

import com.myservice.dto.Blah;
import com.myservice.dto.Comm;
import com.myservice.dto.MyPage;
import com.myservice.service.BlahService;
import com.myservice.service.CommService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Slf4j
@Controller
@RequestMapping("/blah")
public class blahController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "blah/";
    @Autowired
    BlahService blahService;
    @Autowired
    CommService commService;

//    @RequestMapping("")
//    public String member(Model model, Integer postId) throws Exception {
//        List<Blah> list = null;
//        List<Comm> comlist = null;
//        comlist = commService.getPostComm(postId);
//        try {
//            list = blahService.get();
//
//        } catch (Exception e) {
//            throw new Exception(e.getMessage());
//        }
//        model.addAttribute("blahList", list);
//        model.addAttribute("center", dir + "blah");
//        return "index";
//
//    }
    @RequestMapping("")
    public String blah(Model model) throws Exception {
        List<Blah> blahList = null;

        try {
            blahList = blahService.get();  // 모든 Blah 게시글 조회
            for (Blah blah : blahList) {
                List<Comm> commList = commService.getPostComm(blah.getId());  // 해당 Blah 게시글의 댓글 조회
                blah.setCommList(commList);  // Blah 게시글에 댓글 리스트 추가
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }

        model.addAttribute("blahList", blahList);  // 모든 Blah 게시글 추가
        model.addAttribute("center", dir + "blah");
        return "index";
    }


    @RequestMapping("/group")
    public String group(Model model) throws Exception {

        model.addAttribute("center", dir + "group");
        return "index";
    }


    @RequestMapping("/private")
    public String privatechat(Model model) throws Exception {
        model.addAttribute("center", dir + "private");
        return "index";
    }


}
