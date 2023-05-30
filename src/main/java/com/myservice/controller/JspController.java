package com.myservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class JspController {


    @RequestMapping("/notice")
    public String notice(Model model) throws Exception {
        model.addAttribute("center", "home/notice");
        return "index";
    }
    @RequestMapping("/calendar")
    public String calendar(Model model) throws Exception {
        model.addAttribute("center", "home/calendar");
        return "index";
    }
    @RequestMapping("/member")
    public String drawer(Model model) throws Exception {
        model.addAttribute("center", "home/member");
        return "index";
    }

//    lectcure page--------------------------------------------------------------
    @RequestMapping("/inbox")
    public String inbox(Model model) throws Exception {
        model.addAttribute("center", "lecture/inbox");
        return "index";
    }

    @RequestMapping("/invoice")
    public String invoice(Model model) throws Exception {
        model.addAttribute("center", "lecture/invoice");
        return "index";
    }

    @RequestMapping("/product")
    public String product(Model model) throws Exception {
        model.addAttribute("center", "lecture/product");
        return "index";

    }

    @RequestMapping("/shop1")
    public String shop1(Model model) throws Exception {
        model.addAttribute("center", "lecture/shop-1");
        return "index";
    }

    @RequestMapping("/shop2")
    public String shop2(Model model) throws Exception {
        model.addAttribute("center", "lecture/shop-2");
        return "index";
    }





    @RequestMapping("/private")
    public String privatechat(Model model) throws Exception {
        model.addAttribute("center", "apps/chat/private");
        return "index";
    }



    @RequestMapping("/group")
    public String group(Model model) throws Exception {
        model.addAttribute("center", "apps/chat/group");
        return "index";
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

    @RequestMapping("/wizard")
    public String wizard(Model model) throws Exception {
        model.addAttribute("center", "general/wizard");
        return "index";
    }

    @RequestMapping("/overview")
    public String overview(Model model) throws Exception {
        model.addAttribute("center", "blahblah/overview");
        return "index";
    }

    @RequestMapping("/account")
    public String account(Model model) throws Exception {
        model.addAttribute("center", "profile/account");
        return "index";
    }




    @RequestMapping("/compose")
    public String compose(Model model) throws Exception {
        model.addAttribute("center", "general/compose");
        return "index";
    }

    @RequestMapping("/listing")
    public String listing(Model model) throws Exception {
        model.addAttribute("center", "general/listing");
        return "index";
    }

    @RequestMapping("/reply")
    public String reply(Model model) throws Exception {
        model.addAttribute("center", "general/reply");
        return "index";
    }
}