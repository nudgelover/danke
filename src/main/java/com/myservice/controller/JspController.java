package com.myservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class JspController {
    @RequestMapping("/activity")
    public String activity(Model model) throws Exception {
//페이지 안뜸.. 우선 어딨는지 버튼도 못찾겠다 ㅋㅋㅋㅋㅋ
        return "account/activity";
    }


    @RequestMapping("/api_keys")
    public String api_keys(Model model) throws Exception {
//페이지 안뜸.. 우선 어딨는지 버튼도 못찾겠다 ㅋㅋㅋㅋㅋ
        return "account/api_keys";
    }


    @RequestMapping("/calendar")
    public String calendar(Model model) throws Exception {
        model.addAttribute("center", "apps/calendar");
        return "index";
    }

    @RequestMapping("/inbox")
    public String inbox(Model model) throws Exception {
        model.addAttribute("center", "apps/inbox");
        return "index";
    }

    @RequestMapping("/private")
    public String privatechat(Model model) throws Exception {
        model.addAttribute("center", "apps/chat/private");
        return "index";
    }

    @RequestMapping("/drawer")
    public String drawer(Model model) throws Exception {
        model.addAttribute("center", "apps/chat/drawer");
        return "index";
    }

    @RequestMapping("/group")
    public String group(Model model) throws Exception {
        model.addAttribute("center", "apps/chat/group");
        return "index";
    }

    @RequestMapping("/product")
    public String product(Model model) throws Exception {
        model.addAttribute("center", "apps/shop/product");
        return "index";

    }

    @RequestMapping("/shop1")
    public String shop1(Model model) throws Exception {
        model.addAttribute("center", "apps/shop/shop-1");
        return "index";
    }

    @RequestMapping("/shop2")
    public String shop2(Model model) throws Exception {
        model.addAttribute("center", "apps/shop/shop-2");
        return "index";
    }



    @RequestMapping("/login")
    public String login(Model model) throws Exception {

        return "general/login";
    }

    @RequestMapping("/errorpage")
    public String error(Model model) throws Exception {

        return "general/error";
    }

    @RequestMapping("/faq")
    public String faq(Model model) throws Exception {
        model.addAttribute("center", "general/faq");
        return "index";
    }

    @RequestMapping("/pricing")
    public String pricing(Model model) throws Exception {
        model.addAttribute("center", "general/pricing");
        return "index";
    }
    @RequestMapping("/invoice")
    public String invoice(Model model) throws Exception {
        model.addAttribute("center", "general/invoice");
        return "index";
    }

    @RequestMapping("/wizard")
    public String wizard(Model model) throws Exception {
        model.addAttribute("center", "general/wizard");
        return "index";
    }

    @RequestMapping("/overview")
    public String overview(Model model) throws Exception {
        model.addAttribute("center", "profile/overview");
        return "index";
    }

    @RequestMapping("/account")
    public String account(Model model) throws Exception {
        model.addAttribute("center", "profile/account");
        return "index";
    }

    @RequestMapping("/settings")
    public String setting(Model model) throws Exception {
        model.addAttribute("center", "profile/settings");
        return "index";
    }
}