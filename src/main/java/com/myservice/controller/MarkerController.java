package com.myservice.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/marker")
public class MarkerController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "marker/";


    @RequestMapping("/add")
    public String add(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"all");
        return "index";
    }


    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir+"detail");
        return "index";
    }
}
