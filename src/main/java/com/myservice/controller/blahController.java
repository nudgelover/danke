package com.myservice.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Slf4j
@Controller
@RequestMapping("/blah")
public class blahController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "blah/";

    @RequestMapping("")
    public String member(Model model) throws Exception {

        model.addAttribute("center", dir+"blah");
        return "index";
    }


    @RequestMapping("/group")
    public String group(Model model) throws Exception {

        model.addAttribute("center", dir+"group");
        return "index";
    }


    @RequestMapping("/private")
    public String privatechat(Model model) throws Exception {
        model.addAttribute("center", dir+"private");
        return "index";
    }



}
