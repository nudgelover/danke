package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.*;
import com.myservice.service.AncService;
import com.myservice.service.MyPageService;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;


@Slf4j
@Controller
@RequestMapping("/digicam")
public class DigicamController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "digicam/";

    @Value("${kakaoshare}")
    private String kakaoshare;

    @Value("${google.cal-key}")
    private String googlecalkey;


    @Value("${serviceserver}")
    String serviceserver;

    @Autowired
    AncService ancService;
    @Autowired
    StdnService stdnService;

    @Autowired
    MyPageService myPageService;

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "detail");
        return "index";
    }

    @RequestMapping("/member")
    public String member(Model model, MyPage myPage) throws Exception {
        List<MyPage> list = null;
        try {
            list = myPageService.get();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        model.addAttribute("studentList", list);
        model.addAttribute("center", dir + "member");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model, Integer id) throws Exception {
        model.addAttribute("googlecalkey", googlecalkey);
        model.addAttribute("center", dir + "calendar");
        return "index";
    }


    @RequestMapping("/anc/all")
    public String ancAll(Model model, Search search, @RequestParam(required = false, defaultValue = "1") int pageNo) throws Exception {
        PageInfo<Anc> p = new PageInfo<>(ancService.getFindPage(pageNo, search), 5);
        int totalCount = ancService.getTotalCount();

        // 게시글 리스트에 "New" 뱃지를 추가하는 로직을 추가합니다.

        List<Anc> ancList = p.getList();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate currentDate = LocalDate.now();
        for (Anc anc : ancList) {
            LocalDate postDate = LocalDate.parse(anc.getRdate(), formatter);
            long diffInDays = ChronoUnit.DAYS.between(postDate, currentDate);
            if (diffInDays <= 7) {
                anc.setNewPost(true);
            } else {
                anc.setNewPost(false);
            }
        }
        model.addAttribute("totalcount", totalCount);
        model.addAttribute("target", "digicam/anc");
        model.addAttribute("apage", p);
        model.addAttribute("center", dir + "ancAll");
        model.addAttribute("search", search);
        return "index";
    }

    @RequestMapping("/anc/findimpl")
    public String findimpl(Model model, Search search, @RequestParam(required = false, defaultValue = "1") int pageNo) throws Exception {
        PageInfo<Anc> p = new PageInfo<>(ancService.getFindPage(pageNo, search), 5);
        int totalCount = ancService.getTotalCount();

        List<Anc> ancList = p.getList();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate currentDate = LocalDate.now();
        for (Anc anc : ancList) {
            LocalDate postDate = LocalDate.parse(anc.getRdate(), formatter);
            long diffInDays = ChronoUnit.DAYS.between(postDate, currentDate);
            if (diffInDays <= 7) {
                anc.setNewPost(true);
            } else {
                anc.setNewPost(false);
            }
        }
        model.addAttribute("totalcount", totalCount);
        model.addAttribute("target", "digicam/anc");
        model.addAttribute("apage", p);
        model.addAttribute("center", dir + "ancAll");
        model.addAttribute("search", search);
        return "index";
    }


    @RequestMapping("/anc/detail")
    public String ancDetail(Model model, Integer id) throws Exception {
        Anc anc = ancService.get(id);
        //최근 1주일 전 게시글 new 배찌


        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate currentDate = LocalDate.now();

        LocalDate postDate = LocalDate.parse(anc.getRdate(), formatter);
        long diffInDays = ChronoUnit.DAYS.between(postDate, currentDate);
        if (diffInDays <= 7) {
            anc.setNewPost(true);
        } else {
            anc.setNewPost(false);
        }


        //몇일전 게시글
        String timeAgo;
        if (diffInDays <= 0) {
            timeAgo = "Today";
        } else if (diffInDays == 1) {
            timeAgo = "1 day ago";
        } else {
            timeAgo = diffInDays + " days ago";
        }

        anc.setTimeAgo(timeAgo);

        model.addAttribute("serviceserver", serviceserver);
        model.addAttribute("kakaoshare", kakaoshare);
        model.addAttribute("anc", anc);
        model.addAttribute("center", dir + "ancDetail");
        return "index";
    }


}
