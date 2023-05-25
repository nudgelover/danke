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

        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model) throws Exception {

        return "apps/calendar";
    }
    @RequestMapping("/login")
    public String login(Model model) throws Exception {

        return "general/login";
    }
    @RequestMapping("/errorpage")
    public String error(Model model) throws Exception {

        return "general/error";
    }
    @RequestMapping("/overview")
    public String overview(Model model) throws Exception {

        return "profile/overview";
    }
    @RequestMapping("/account")
    public String account(Model model) throws Exception {

        return "profile/account";
    }
    @RequestMapping("/settings")
    public String setting(Model model) throws Exception {

        return "profile/settings";
    }
}