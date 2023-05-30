package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.Anc;
import com.myservice.dto.Mrk;
import com.myservice.service.AncService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Slf4j
@Controller
@RequestMapping("/digicam")
public class DigicamController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "digicam/";

    @Autowired
    AncService ancService;

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
//        model.addAttribute("center", dir+"detail");
//        아직 페이지 없음
        return "index";
    }

    @RequestMapping("/member")
    public String member(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "member");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "calendar");
        return "index";
    }

    @RequestMapping("/anc/all")
    public String ancAll(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Anc> p;
        try {
            p = new PageInfo<>(ancService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }

        model.addAttribute("apage", p);
        model.addAttribute("center", dir + "ancAll");
        return "index";
    }


    @RequestMapping("/anc/detail")
    public String ancDetail(Model model, Integer id) throws Exception {
        Anc anc = null;
        anc = ancService.get(id);
        model.addAttribute("anc", anc);
        model.addAttribute("center", dir + "ancDetail");
        return "index";
    }




}
