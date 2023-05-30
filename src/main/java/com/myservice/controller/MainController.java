package com.myservice.controller;

import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;


@Slf4j
@Controller
public class MainController {

    @Value("${uploadimgdir}")
    String imgpath;

    @Value("${download.path}")
    String downloadPath;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    StdnService stdnService;

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

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, String pwd, HttpSession session) throws Exception {

        Stdn stdn = null;
        stdn = stdnService.get(id);

            if(stdn==null){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "The ID does not exist.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==0){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "After admin approval, you can log in.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==2){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "Login blocked after 5 failed attempts.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==3){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "Login blocked by Admin");
                return "login";
            }

            if(!encoder.matches(pwd, stdn.getPwd())) {
                int num = Integer.parseInt(stdn.getLoginError())+1;
                if(num==5){
                    stdn.setIsJoin("2");
                    stdn.setLoginError(num+"");
                    stdnService.updateAdm(stdn);
                    model.addAttribute("msg","error");
                    model.addAttribute("contents", "Login blocked after 5 failed attempts.");
                    return "login";
                }
                stdn.setLoginError(num+"");
                stdnService.updateAdm(stdn);
                model.addAttribute("msg","error");
                model.addAttribute("contents", "Login Failed. ("+num+" attempt)");
                return "login";
            }

            if (stdn != null && encoder.matches(pwd, stdn.getPwd())) {
                LocalDateTime now = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
                String lastVisit = now.format(formatter);
                stdn.setLastVisit(lastVisit);
                stdn.setLoginError("0");
                stdnService.modify(stdn);

                session.setMaxInactiveInterval(12000000);
                session.setAttribute("loginStdn", stdn);
            }

        model.addAttribute("loginStdn", stdn);
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/registerimpl")
    public String registerimpl(@RequestParam List<String> sbj,@RequestParam List<String> date_of_birth, Model model, Stdn stdn, HttpSession session) throws Exception {
        try {
            String birthday= date_of_birth.get(0)+"."+date_of_birth.get(1)+"."+date_of_birth.get(2);
            stdn.setBirthday(birthday);
            String sbj1 = sbj.get(0);
            String sbj2 = sbj.get(1);
            String sbj3 = sbj.get(2);
            stdn.setSbj1(sbj1);
            stdn.setSbj2(sbj2);
            stdn.setSbj3(sbj3);
            stdn.setPwd(encoder.encode(stdn.getPwd()));
            stdnService.register(stdn);
            session.setAttribute("loginStdn", stdn);
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0006");
        }
        model.addAttribute("loginStdn", stdn);
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session) throws Exception {
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/";
    }

}