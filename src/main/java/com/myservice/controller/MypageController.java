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

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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
    AttdService attdService;

    @Autowired
    SbjDetailService sbjDetailService;


    @Autowired
    OrdDetailService ordDetailService;
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
        List<SbjDetail> smallList = null;
//        log.info("여기"+smallList.toString());
        try {
           smallList = sbjDetailService.searchSmallAll();

            mypage = myPageService.get(id);
            stdn = stdnService.get(id);

        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }


        model.addAttribute("smallList", smallList);
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
        int cntGetMyComm;
        int cntGetMylikes;

        try {
            myrank = blahService.getMyBlahRank(id);
            mypage = myPageService.get(id);
            stdn = stdnService.get(id);
            blahList = blahService.getMyBlah(id); // 모든 Blah 게시글 조회
            cntGetMyComm = blahService.cntGetMyComm(id);
            cntGetMylikes = blahService.cntGetMylikes(id);
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
        model.addAttribute("cntGetMyComm", cntGetMyComm);
        model.addAttribute("cntGetMylikes", cntGetMylikes);
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

    @RequestMapping("/logs")
    public String logs(Model model, String id) throws Exception {
        Stdn stdn = null;
        MyPage mypage = null;

        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM");

        //이번달
        String monthFormattedDate = currentDate.format(formatter);
        List<Stdy> stdy = stdyService.getStudyByMonth(id, monthFormattedDate);
        List<Attd> attd = attdService.getMyAttdByMonth(id, monthFormattedDate);

        for (Stdy study : stdy) {
            String startTime = study.getStartTime();
            String endTime = study.getEndTime();

            // startTime과 endTime을 적절한 형식으로 파싱하여 시간 차이 계산
            SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
            Date startDate = format.parse(startTime);
            Date endDate = format.parse(endTime);
            long durationMillis = endDate.getTime() - startDate.getTime();
            String durationMinutes = String.valueOf(durationMillis / (1000 * 60));

            // duration 속성을 study 객체에 추가
            study.setDuration(durationMinutes);
        }

        // 지난 달
        LocalDate lastMonth = currentDate.minusMonths(1);
        String lastMonthFormattedDate = lastMonth.format(formatter);
        List<Stdy> stdy2 = stdyService.getStudyByMonth(id, lastMonthFormattedDate);
        List<Attd> attd2 = attdService.getMyAttdByMonth(id, lastMonthFormattedDate);


        for (Stdy study : stdy2) {
            String startTime = study.getStartTime();
            String endTime = study.getEndTime();

            // startTime과 endTime을 적절한 형식으로 파싱하여 시간 차이 계산
            SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
            Date startDate = format.parse(startTime);
            Date endDate = format.parse(endTime);
            long durationMillis = endDate.getTime() - startDate.getTime();
            String durationMinutes = String.valueOf(durationMillis / (1000 * 60));

            // duration 속성을 study 객체에 추가
            study.setDuration(durationMinutes);
        }

        // 지지난 달
        LocalDate twoMonthsAgo = currentDate.minusMonths(2);
        String twoMonthsAgoFormattedDate = twoMonthsAgo.format(formatter);
        List<Stdy> stdy3 = stdyService.getStudyByMonth(id, twoMonthsAgoFormattedDate);
        List<Attd> attd3 = attdService.getMyAttdByMonth(id, twoMonthsAgoFormattedDate);

        for (Stdy study : stdy3) {
            String startTime = study.getStartTime();
            String endTime = study.getEndTime();

            // startTime과 endTime을 적절한 형식으로 파싱하여 시간 차이 계산
            SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
            Date startDate = format.parse(startTime);
            Date endDate = format.parse(endTime);
            long durationMillis = endDate.getTime() - startDate.getTime();
            String durationMinutes = String.valueOf(durationMillis / (1000 * 60));

            // duration 속성을 study 객체에 추가
            study.setDuration(durationMinutes);
        }

        List<OrdDetail> ordDetail = ordDetailService.getMyPageOrdDetail(id);

        mypage = myPageService.get(id);
        stdn = stdnService.get(id);

        model.addAttribute("student", stdn);
        model.addAttribute("mypage", mypage);
        model.addAttribute("lastMonthFormattedDate", lastMonthFormattedDate);
        model.addAttribute("twoMonthsAgoFormattedDate", twoMonthsAgoFormattedDate);

        model.addAttribute("thisMonthStdy", stdy);
        model.addAttribute("lastMonthStdy", stdy2);
        model.addAttribute("twoMonthsAgoStdy", stdy3);

        model.addAttribute("thistMonthAttd", attd);
        model.addAttribute("lastMonthAttd", attd2);
        model.addAttribute("twoMonthsAgoAttd", attd3);

        model.addAttribute("ordDetail", ordDetail);
        model.addAttribute("center", dir + "main");
        model.addAttribute("mpcenter", "logs");
        return "index";
    }
}
