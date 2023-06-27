package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.*;
import com.myservice.service.*;
import com.myservice.dto.Stdn;
import com.myservice.service.MyPageService;
import com.myservice.service.SbjDetailService;
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
import java.time.LocalDate;
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

    @Value("${adminserver}")
    String adminserver;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    StdnService stdnService;
    @Autowired
    MyPageService myPageService;
    @Autowired
    SbjDetailService sbjDetailService;
    @Autowired
    MrkService mrkService;
    @Autowired
    StdyService stdyService;
    @Autowired
    LecService lecService;

    @RequestMapping("/")
    public String main(Model model, HttpSession session) throws Exception {
        //최근순 맛집리스트
        List<Mrk> list;
        //별점순 맛집리스트
        List<Mrk> rlist;
        //댓글순 맛집리스트
        List<Mrk> clist;
        List<Lec> leclist;

        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM");
        String monthFormattedDate = currentDate.format(formatter);
        log.info("---------날짜" + monthFormattedDate);
        //2023.06 으로 로그 잘찍힘.
        try {
            list = mrkService.getRecent();
            rlist = mrkService.getRating();
            clist = mrkService.getComment();
            leclist = lecService.getRank();

            if (session != null && session.getAttribute("loginStdn") != null) {
                Stdn stdn = (Stdn) session.getAttribute("loginStdn");
                String writer = stdn.getId();

                Integer did = 0;
                Stdy today = stdyService.stdyStartOrNot(writer);
                if(today!=null&& today.getContents()!=null){
                    did=1;
                }

                Stdy stdy = (Stdy) stdyService.myMonthlyResult(writer);

                model.addAttribute("did", did);

                model.addAttribute("monthStudy", stdy);

            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("시스템 장애: ER0001");

        }

        model.addAttribute("recent", list);
        model.addAttribute("rating", rlist);
        model.addAttribute("comment", clist);
        model.addAttribute("leclist", leclist);
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("nav", "nav");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) throws Exception {

        return "login";
    }

    @RequestMapping("/register")
    public String register(Model model) throws Exception {
        List<SbjDetail> smallList = sbjDetailService.searchSmallAll();
        log.info("여기"+smallList.toString());

        model.addAttribute("smallList", smallList);
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
                model.addAttribute("contents", "존재하지 않는 ID입니다.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==0){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "관리자 승인 후 로그인 가능합니다.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==2){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "비밀번호 5회 실패로 로그인이 차단되었습니다.");
                return "login";
            }

            if(Integer.parseInt(stdn.getIsJoin())==3){
                model.addAttribute("msg","error");
                model.addAttribute("contents", "관리자에 의하여 차단되었습니다.");
                return "login";
            }

            if (stdn != null && encoder.matches(pwd, stdn.getPwd())) {
                LocalDateTime now = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
                String lastVisit = now.format(formatter);
                stdn.setLastVisit(lastVisit);
                stdn.setLoginError("0");
                stdnService.updateAdm(stdn);

                session.setMaxInactiveInterval(12000000);
                session.setAttribute("loginStdn", stdn);
            } else if (!encoder.matches(pwd, stdn.getPwd())) {
                int num = Integer.parseInt(stdn.getLoginError());
                if(num==4){
                    num+=1;
                    stdn.setIsJoin("2");
                    stdn.setLoginError(num+"");
                    stdnService.updateAdm(stdn);
                    model.addAttribute("msg","error");
                    model.addAttribute("contents", "비밀번호 5회 실패로 로그인이 차단되었습니다.");
                    return "login";
                }
                num+=1;
                stdn.setLoginError(num+"");
                stdnService.updateAdm(stdn);
                model.addAttribute("msg","error");
                model.addAttribute("contents", "로그인 실패. ("+num+"회 오류)");
                return "login";
            }
        model.addAttribute("loginStdn", stdn);
        model.addAttribute("center", "center");
        return "redirect:/";
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
        return "redirect:/register2";

    }

    @RequestMapping("/register2")
    public String register2(Model model) throws Exception {
        model.addAttribute("center", "register2");
        return "index";
    }


    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session) throws Exception {
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/";
    }

    @RequestMapping("/attd")
    public String attd(Model model) throws Exception {
        model.addAttribute("center", "attd");
        return "index";
    }

    @RequestMapping("/toall")
    public String websocket(Model model){
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("center", "toall");
        return "index";
    }
    @RequestMapping("/oneonone")
    public String oneonone(Model model){
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("center", "oneonone");
        return "index";
    }
    @RequestMapping("/chatbot")
    public String chatbot(Model model){
        model.addAttribute("adminserver", adminserver);
        log.info("adminserver={}", adminserver);
        model.addAttribute("center", "chatbot");
        return "index";
    }

    @RequestMapping("/clova")
    public String clova(Model model){

        model.addAttribute("center", "clova");
        return "index";
    }

}