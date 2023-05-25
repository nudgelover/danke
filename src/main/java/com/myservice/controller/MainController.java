package com.myservice.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Slf4j
@Controller
public class MainController {

    @Value("${uploadimgdir}")
    String imgpath;

    @Value("${download.path}")
    String downloadPath;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        model.addAttribute("nav", "nav");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) throws Exception {

        return "login";
    }

    @RequestMapping("/register")
    public String register(Model model) throws Exception {
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/settings")
    public String setting(Model model) throws Exception {
        model.addAttribute("center", "settings");
        return "index";
    }


}