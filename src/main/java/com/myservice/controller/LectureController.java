package com.myservice.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/lecture")
public class LectureController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "lecture/";

    @RequestMapping("/all")
    public String all(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"all");
        return "index";
    }

    @RequestMapping("/pay")
    public String pay(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"pay");
        return "index";
    }


    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"detail");
        return "index";
    }
}
