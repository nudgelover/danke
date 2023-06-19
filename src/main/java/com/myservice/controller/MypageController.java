package com.myservice.controller;

import com.myservice.dto.*;
import com.myservice.service.*;
import com.myservice.utill.FileUploadUtil;
import com.myservice.utill.GetTimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.time.format.DateTimeFormatter;
import java.util.List;


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
    @Autowired
    BlahService blahService;
    @Autowired
    CommService commService;

    @Autowired
    StdyService stdyService;
    @Autowired
    private BCryptPasswordEncoder encoder;

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
            String comDateStr = mypage.getComdate();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate comDate = LocalDate.parse(comDateStr, formatter);

            long daysUntilKbDday = ChronoUnit.DAYS.between(comDate, currentDate);
            model.addAttribute("kbDday", daysUntilKbDday);

            //KBDday 년 월 일 형식으로 변환

            String startKb = comDate.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
            model.addAttribute("startKb", startKb);


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
    public String updateimpl(@RequestParam List<String> sbj, Model model, MyPage myPage, Stdn stdn) throws Exception {
        MultipartFile mf = stdn.getImgfile();
        String img = mf.getOriginalFilename();
//        log.info("-------------test----------------");
//        log.info(stdn.toString() + "-------------test");
//        log.info(myPage.toString() + "--------------------tostring");

        String sbj1 = sbj.get(0);
        String sbj2 = sbj.get(1);
        String sbj3 = sbj.get(2);
        stdn.setSbj1(sbj1);
        stdn.setSbj2(sbj2);
        stdn.setSbj3(sbj3);

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
        List<Blah> blahList = null;
        Blah myrank = null;
        int cntblah;

        try {
            myrank = blahService.getMyBlahRank(id);
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);
            blahList = blahService.getMyBlah(id); // 모든 Blah 게시글 조회
            cntblah= blahService.cntGetMyBlah(id);
            log.info("blahList: " + blahList.toString());
            for (Blah blah : blahList) {
                List<Comm> commList = commService.getPostComm(blah.getId());  // 해당 Blah 게시글의 댓글 조회
                blah.setCommList(commList);  // Blah 게시글에 댓글 리스트 추가
                int commentCount = commService.cntComm(blah.getId());  // Get the count of comments for the postId
                blah.setCommentCount(commentCount);  // Set the comment count in the Blah object
                int likeCount = blahService.cntLike(blah.getId());
                blah.setLikeCount(likeCount);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("blahList", blahList);  // 모든 Blah 게시글 추가
        model.addAttribute("cntblah", cntblah);
        model.addAttribute("myrank", myrank);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "myblah");
        return "index";
    }


    @RequestMapping("/pwd")
    public String pwd(Model model, String id) throws Exception {
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
        model.addAttribute("mpcenter", "pwd");
        return "index";
    }

    @RequestMapping("/pwdimpl")
    public String pwdimpl(Model model, String id, String pwd) throws Exception {

        log.info("여기" + id);
        log.info("여기" + pwd);
        Stdn stdn = (Stdn) stdnService.get(id);
        log.info("여기" + stdn.toString());
        log.info("여기" + encoder.encode(pwd));
        stdn.setPwd(encoder.encode(pwd));
        stdnService.updatePwd(stdn);

        MyPage mypage = myPageService.get(id);

        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "success");
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
    public String logs(Model model, String id) throws Exception {
        Stdn stdn = null;
        MyPage mypage = null;
        List<Stdy> stdy= stdyService.getMyStdy(id);

        try {
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);

            for (Stdy one : stdy) {
                String start = one.getStartTime();
                String end = one.getEndTime();

                String shortVer = "";
                int firstIndex = one.getContents().indexOf(">");
                int secondIndex = one.getContents().indexOf(">", firstIndex + 1);

                if( secondIndex > 30 ){
                    shortVer =  one.getContents().substring(0, Math.min(one.getContents().length(), 30))+"...</p>";
                } else {
                    shortVer = one.getContents().substring(0,secondIndex+1);
                };

                one.setShortVer(shortVer);
                one.setDuration(GetTimeUtil.getTime(end,start));
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }

        model.addAttribute("mypage", mypage);
        model.addAttribute("student", stdn);
        model.addAttribute("stdy",stdy);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "logs");
        return "index";
    }



}
