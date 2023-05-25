package com.myservice.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/study")
public class StudyController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "study/";

    @RequestMapping("/add")
    public String add(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/add2")
    public String add2(Model model, Integer id) throws Exception {
//페이지 맘에 드는 것으로 고르시오
        model.addAttribute("center", dir + "add2");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "all");
        return "index";
    }

}
