package com.myservice.controller;

import com.myservice.dto.MyPage;
import com.myservice.dto.Stdn;
import com.myservice.service.MyPageService;
import com.myservice.service.StdnService;
import com.myservice.utill.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.time.format.DateTimeFormatter;


@Slf4j
@Controller
@RequestMapping("/mypage")
public class MypageController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "mypage/";

    @Autowired
    StdnService stdnService;
    @Autowired
    MyPageService myPageService;



    @RequestMapping("")
    public String mypage(Model model, String id) throws Exception {
        Stdn stdn = null;
        MyPage mypage = null;
        try {
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);
            //DIGI Dday만들기
            LocalDate currentDate = LocalDate.now();
            LocalDate digiDate = LocalDate.parse(mypage.getDigidate(), DateTimeFormatter.ofPattern("yyyyMMdd"));
            long daysElapsed = ChronoUnit.DAYS.between(digiDate, currentDate);
            model.addAttribute("DigiDday", daysElapsed);

            //DIGIDATE 년 월 일 형식으로 변환
            String formattedDate = digiDate.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
            model.addAttribute("startDigi", formattedDate);

            //KBDday
            LocalDateTime comDateTime = LocalDateTime.parse(mypage.getComdate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDate comDate = comDateTime.toLocalDate();
            long daysElapsed2 = ChronoUnit.DAYS.between(comDate, currentDate);
            model.addAttribute("kbDday", daysElapsed2);

            //DIGIDATE 년 월 일 형식으로 변환
            String formattedDate2 = comDate.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
            model.addAttribute("startKb", formattedDate2);

            System.out.println(formattedDate); // 출력: 2023년 02월 01일



        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("center", dir + "main");
        return "index";
    }

    @RequestMapping("/settings")
    public String settings(Model model, String id) throws Exception {
        Stdn stdn = null;
        MyPage mypage = null;
        try {
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);

        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "settings");
        return "index";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, MyPage myPage, Stdn stdn) throws Exception {
        MultipartFile mf = stdn.getImgfile();
        String img = mf.getOriginalFilename();
        log.info("-------------test----------------");
        log.info(stdn.toString()+"-------------test");
        log.info(myPage.toString()+"--------------------tostring");


//        String sbj1 = sbj.get(0);
//        String sbj2 = sbj.get(1);
//        String sbj3 = sbj.get(2);
//        stdn.setSbj1(sbj1);
//        stdn.setSbj2(sbj2);
//        stdn.setSbj3(sbj3);

        if (img.equals("") || img == null) {
            stdnService.modify(stdn);
            myPageService.modify(myPage);
            // 사진 없을 때
        } else {
            stdn.setImg(img);
            stdnService.modify(stdn);
            myPageService.modify(myPage);
            FileUploadUtil.saveFile(mf, imgpath);
        }


        return "redirect:/mypage?id=" + stdn.getId();

    }

    @RequestMapping("/myblah")
    public String myblah(Model model, String id) throws Exception {
        Stdn stdn = null;
        MyPage mypage = null;
        try {
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);

        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "myblah");
        return "index";
    }

    @RequestMapping("/activity")
    public String mypage(Model model) throws Exception {
        model.addAttribute("center", dir + "activity");
        return "index";
    }

    @RequestMapping("/api-keys")
    public String apikeys(Model model) throws Exception {
        model.addAttribute("center", dir + "api-keys");
        return "index";
    }

    @RequestMapping("/billing")
    public String billing(Model model) throws Exception {
        model.addAttribute("center", dir + "billing");
        return "index";
    }

    @RequestMapping("/logs")
    public String logs(Model model) throws Exception {
        model.addAttribute("center", dir + "logs");
        return "index";
    }


    @RequestMapping("/referrals")
    public String referrals(Model model) throws Exception {
        model.addAttribute("center", dir + "referrals");
        return "index";
    }

    @RequestMapping("/security")
    public String security(Model model) throws Exception {
        model.addAttribute("center", dir + "security");
        return "index";
    }


    @RequestMapping("/statements")
    public String statements(Model model) throws Exception {
        model.addAttribute("center", dir + "statements");
        return "index";
    }

}
