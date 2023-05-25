package com.myservice.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Slf4j
@Controller
@RequestMapping("/digicam")
public class DigicamController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "digicam/";

    @RequestMapping("/detail")
    public String detail(Model model,Integer id) throws Exception {
//        model.addAttribute("center", dir+"detail");
//        아직 페이지 없음
        return "index";
    }

    @RequestMapping("/member")
    public String member(Model model,Integer id) throws Exception {

        model.addAttribute("center", dir+"member");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model,Integer id) throws Exception {

        model.addAttribute("center", dir+"calendar");
        return "index";
    }

    @RequestMapping("/anc")
    public String notice(Model model,Integer id) throws Exception {

        model.addAttribute("center", dir+"anc");
        return "index";
    }
}
