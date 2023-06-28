package com.myservice.controller;

import com.myservice.dto.*;
import com.myservice.service.*;
import com.myservice.utill.FileUploadUtil;
import com.myservice.utill.MakeQrUtil;
import com.myservice.utill.SendEmailUtil;
import com.myservice.utill.SendSMSUtil;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.service.DefaultMessageService;
import org.apache.catalina.Context;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;


@Slf4j

@org.springframework.web.bind.annotation.RestController
public class RestController {
    @Value("${adminsms.api}")
    private String api;
    @Value("${adminsms.secret}")
    private String secret;

    @Value("${imgdir}")
    String imgpath;

    @Value("${upload.path}")
    String uploadPath;

    @Autowired
    StdnService stdnService;

    @Autowired
    CartService cartService;

    @Autowired
    CurriService curriService;

    @Autowired
    OrdDetailService ordDetailService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    LecReviewService lecReviewService;

    @Autowired
    LikesService likesService;

    @Autowired
    AttdService attdService;

    @Autowired
    StdyService stdyService;

    @Autowired
    MyPageService myPageService;

    @Autowired
    CpnService cpnService;

    final DefaultMessageService messageService;

    public RestController() {
        // 하 이걸 컨트롤러에서 안 쓰고 어떻게 할 수 잇을까 개빡치네
        this.messageService = NurigoApp.INSTANCE.initialize("NCSZZYRXWU2OLFTF", "YTAMPJCZUWT8XIOA2EUH59GPWPEM0UJO", "https://api.coolsms.co.kr");
    }


    @RequestMapping("/checkid")
    public Object checkid(String id) throws Exception {

        int result = 0;
        Stdn stdn = null;
        try {
            stdn = stdnService.get(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("시스템 장애: ER0005");
        }
        if (stdn != null) {
            result = 1;
        }
        return result;
    }

    @RequestMapping("/cartimpl")
    public Object cartimpl(Cart cart) throws Exception {
        int result = 0;
        String stdnId = cart.getStdnId();
        int lecId = cart.getLecId();
        if (cartService.thisCart(lecId, stdnId) == null) {
            result = 1;
            cartService.register(cart);
        }
        return result;
    }

    @RequestMapping("/curriimpl")
    public Object curriimpl(Curri curri) throws Exception {
        int result = 0;
        String stdnId = curri.getStdnId();
        log.info("학생" + stdnId);
        int lecId = curri.getLecId();
        log.info("강의" + lecId);
        log.info("여기" + curri.toString());
        if (curriService.thisCurri(stdnId, lecId) == null) {
            result = 1;
            curriService.register(curri);
        }
        return result;
    }

    @RequestMapping("/currilecsimpl")
    public Object currilecsimpl(@RequestParam List<Integer> curri_lecs, String stdnId) throws Exception {
        int result = 0;
        for (int lecId : curri_lecs) {
            if (curriService.thisCurri(stdnId, lecId) == null) {
                Curri curri = new Curri(stdnId, lecId, "1");
                curriService.register(curri);
            } else {
                result += 1;
            }
        }
        return result;
    }

    @RequestMapping("/currisettingsimpl")
    public Object currisettingsimpl(String stdnId, Integer curriId, Integer checked) throws Exception {
        int result = 0;
        log.info("여기 checked" + checked);
        Curri curri = curriService.getMyCurri(curriId);
        log.info("여기" + curri.toString());
        if (checked == 1) {
            curri.setIsOpen("1");
            curriService.modify(curri);
            log.info("여기 바꾼 이즈 오픈 1나와라" + curri.getIsOpen());
        } else {
            curri.setIsOpen("0");
            curriService.modify(curri);
            log.info("여기 바꾼 이즈 오픈 0나와라" + curri.getIsOpen());
        }
        return result;
    }

    @RequestMapping("/pwdconfirm")
    public Object pwdconfirm(String id, String pwd) throws Exception {
        int result = 0;
        Stdn stdn = (Stdn) stdnService.get(id);
        if (!encoder.matches(pwd, stdn.getPwd())) {
            result = 1;
        }
        return result;
    }

    @RequestMapping("/reviewimpl")
    public Object reviewimpl(String stdnId, Integer lecId) throws Exception {
        int result = 0;
        OrdDetail ordDetail = (OrdDetail) ordDetailService.getThisOrd(lecId, stdnId);
        if (ordDetail == null) {
            result = 1;
        }
        log.info("여기" + result);
        return result;
    }

    @RequestMapping("/reviewaddimpl")
    public Object reviewaddimpl(String stdnId, Integer lecId) throws Exception {
        int result = 0;
        LecReview lecReview = (LecReview) lecReviewService.getThisLecReview(stdnId, lecId);
        if (lecReview == null) {
            result = 1;
        }
        log.info("여기" + result);
        return result;
    }

    @RequestMapping("/lecreviewlikeaddimpl")
    public Object lecreviewlikeaddimpl(Integer postId, String stdnId) throws Exception {
        ;
        int result = 0;
        log.info("여기" + postId);
        log.info("여기" + stdnId);
        Likes likes = (Likes) likesService.getThisLikes(postId, stdnId, "R");
        if (likes == null) {
            result = 1;
            Likes likesAdd = new Likes(postId, stdnId, "R");
            likesService.register(likesAdd);
        } else {
            log.info("여기" + likes.toString());
            Integer likeId = likes.getLikeId();
            likesService.remove(likeId);
        }
        return result;
    }

    @RequestMapping("/studylikesaddimpl")
    public Object studylikesaddimpl(Integer postId, String stdnId) throws Exception {

        int result = 0;
        log.info("여기" + postId);
        log.info("여기" + stdnId);
        Likes likes = (Likes) likesService.getThisLikes(postId, stdnId, "S");
        if (likes == null) {
            result = 1;
            Likes likesAdd = new Likes(postId, stdnId, "S");
            likesService.register(likesAdd);
        } else {
            log.info("여기" + likes.toString());
            Integer likeId = likes.getLikeId();
            likesService.remove(likeId);
        }
        return result;
    }

    @RequestMapping("/qrimpl")
    public Object qrimpl(@RequestParam String stdnId) throws Exception {

        try {
            String result = "";

            BufferedImage qrCodeImage = MakeQrUtil.generateQrCodeWithImage(encoder.encode(stdnId), "/root/uimg/logo3.png", 150, 35);

            String imageDir = "/root/uimg/";
            String imageName = "qr_" + stdnId + ".jpg";
            String imagePath = imageDir + imageName;
            File qrCodeFile = new File(imagePath);
            ImageIO.write(qrCodeImage, "jpg", qrCodeFile);

            result = imageName;

            return result;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
    }

    @RequestMapping("/sendcodeimpl")
    public Object sendcodeimpl(String stdnId, int method) throws Exception {
        Integer result = 0;
        Stdn stdn = (Stdn) stdnService.get(stdnId);
        log.info("여기" + method);
        if (method == 1) {
            String email = stdn.getEmail();
            log.info("여기" + email);
            SendEmailUtil emailUtil = new SendEmailUtil();
            result = emailUtil.sendCode(email);

        } else if (method == 2) {
            String contact = stdn.getContact();
            SendSMSUtil sendSMSUtil = new SendSMSUtil(messageService);
            result = sendSMSUtil.sendCode(contact);
        }

        return result;
    }

    @RequestMapping("/registercodeimpl")
    public Object registercodeimpl(String contact_auth) throws Exception {
        Integer result = 0;
        log.info("여기" + contact_auth);
        try {
            SendSMSUtil sendSMSUtil = new SendSMSUtil(messageService);
            result = sendSMSUtil.sendCode(contact_auth);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        return result;
    }

    @RequestMapping("/pwdresetcodeimpl")
    public Object pwdresetcodeimpl(String stdnId, String contact_auth) throws Exception {
        Integer result = 0;
        log.info("여기 정보오나" + contact_auth + stdnId);
        Stdn stdn = (Stdn) stdnService.get(stdnId);
        if(stdn.getContact().equals(contact_auth)) {
            try {
                SendSMSUtil sendSMSUtil = new SendSMSUtil(messageService);
                result = sendSMSUtil.sendCode(contact_auth);
            } catch (Exception e) {
                e.printStackTrace();
                throw new Exception();
            }
        } else {
            result = 1;
        }
        return result;
    }


    @RequestMapping("/send-mms")
    public Object mms(String stdnId, String qr_name) throws Exception {
        Integer result = 0;
        Stdn stdn = stdnService.get(stdnId);
        String contact = stdn.getContact();
        String name = stdn.getName();
        try {
            SendSMSUtil sendSMSUtil = new SendSMSUtil(messageService);
            sendSMSUtil.sendQr(contact, name, qr_name);
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        return result;
    }

    @RequestMapping("/attdimpl")
    public Object attdimpl(String stdnId, String code_value, Integer on_off) throws Exception {
        String result = "";
        //코드벨류는 큐알 인식 값
        log.info("여기" + code_value);
        log.info("여기" + on_off);

        //오전 9시랑 비교한다
        Timestamp current = new Timestamp(System.currentTimeMillis());
        String now = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(current);
        String compare = new SimpleDateFormat("yyyy.MM.dd").format(current).concat(" 09:00:00");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
        LocalDateTime now_str = LocalDateTime.parse(now, formatter);
        LocalDateTime compare_str = LocalDateTime.parse(compare, formatter);

        //출근일 때
        if (on_off == 1) {
            //큐알값이 일치할 때
            if (encoder.matches(stdnId, code_value)) {
                //하 노몰이프,,,
                //stdnId로 오늘자 row가 없고, 9시 전일 때
                if (attdService.attdOrNot(stdnId) == null && now_str.isBefore(compare_str)) {
                    //정상적으로 row insert
                    Attd attd = new Attd(stdnId, "1");
                    attdService.register(attd);
                    log.info("여기" + attd.toString());
                    result = stdnId + "님! " + now + " 출석 완료";
                    log.info("여기" + result);

                //9시 전인데 , stdnId로 오늘자 row가 있어! 즉, 제시간에 와서 출석도 이미 찍은 애가 또 찍어
                } else if (now_str.isBefore(compare_str) && attdService.attdOrNot(stdnId) != null) {
                    result = "금일 이미 출석 처리되었습니다.";
                    log.info("여기" + result);

                //9시 지낫고, 일단 지나면 스케줄링이든, 지가 찍든 stdnId로 오늘자 row가 있어
                } else if (attdService.attdOrNot(stdnId) != null && !(now_str.isBefore(compare_str))) {
                    Attd late = (Attd) attdService.attdOrNot(stdnId);
                    log.info("여기 late" + late.toString());

                    //이때 startTime이 있냐 없냐로 갈라서 있으면
                    if (late.getStartTime() != null) {
                        result = "금일 이미 출석 처리되었습니다.";
                        log.info("여기" + result);

                    //없으면 지각한 거지 뭐 insert
                    } else {
                        Integer lateId = late.getId();
                        log.info("여기 lateId" + lateId);
                        attdService.late(lateId);
                        Duration term = Duration.between(compare_str, now_str);
                        long minutes = term.toMinutes();
                        String lateterm = Long.toString(minutes);
                        result = stdnId + "님! " + now + " 출석(" + lateterm + "분 지각)";
                    } //아홉시 지난 데서 열린 이프 닫고
                }// 시간으로 가른 이프 닫고

            //큐알값이 불일치할 때
            } else {
                result = "수강생 정보와 일치하지 않는 QR입니다";
                log.info("여기" + result);
            }

        //on_off가 2일 때, 즉, 퇴근
        } else {
            //퇴근 누르고 찍었는데 시작 값이 있어 그럼 퇴근 진행시켜
            if (attdService.attdOrNot(stdnId) != null && attdService.attdOrNot(stdnId).getStartTime()!=null) {
                Attd attdOrNot = (Attd) attdService.attdOrNot(stdnId);
                attdService.modify(attdOrNot);
                result = stdnId + "님! " + now + " 퇴근 완료";
                log.info("여기" + result);

            //출근도 안 한 놈이 퇴근을 할 순 없어...
            } else {
                result = "오늘의 출석이력이 존재하지 않습니다.";
                log.info("여기" + result);
            }
        }
        return result;
    }


    @RequestMapping("/studyqrimpl")
    public Object studyqrimpl(String stdnId, String code_value, Integer start_end) throws Exception {
        String result = "";
        log.info("여기" + code_value);
        log.info("여기" + start_end);

        Timestamp current = new Timestamp(System.currentTimeMillis());
        String now = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(current);
        log.info("여기" + now);
        if (encoder.matches(stdnId, code_value)) {
            if (start_end == 1) {
                Stdy stdy = new Stdy(stdnId, now);
                stdyService.register(stdy);
                result = stdnId + "님! " + now + " 스터디 시작";
            } else {
                Stdy stdy = stdyService.stdyEndOrNot(stdnId);
                stdy.setEndTime(now);
                stdyService.modify(stdy);
                result = stdnId + "님! " + now + " 스터디 종료";
            }
        } else {
            result = "수강생 정보와 일치하지 않는 QR입니다";
        }
        return result;
    }

    @RequestMapping("/getservertime")
    public Object getservertime() {
        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int day = calendar.get(Calendar.DAY_OF_WEEK);

        JSONObject current = new JSONObject();
        SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        String now = format.format(date);
        current.put("now", now);
        current.put("day", day);

        return current;
    }

    @RequestMapping("/studyendornot")
    public Object studyendornot(String stdnId) throws Exception {
        Integer result = 0;
        log.info("여기" + stdnId);
        if (stdyService.stdyStartOrNot(stdnId) == null) {
            result = 1;
            log.info("오늘날짜로 시작한 적도 없는 애들은 스터디 시작창 " + result);
            //오늘날짜로 시작한 적도 없는 애들은 스터디 시작창
        } else if (stdyService.stdyEndOrNot(stdnId) == null) {
            //종료시간이 없는 애들이 없다 => 종료 햇어 컨텐츠잇는지물어
            if (stdyService.stdyContentsUpdate(stdnId) == null) {
                //컨텐츠가 없는 애들이 없다 => 컨텐츠 썼어 내일하도록
                result = 2;
                log.info("컨텐츠가 없는 애들이 없다 => 컨텐츠 썼어 내일하도록 " + result);
                //내일하도록
            } else {
                //컨텐츠가 없는애들
                result = 3;
                log.info("컨텐츠가 없는애들 카메라띠우지말고 에디터에 컨텐츠 쓰라해 " + result);
                //카메라띠우지말고 에디터에 컨텐츠 쓰라해
            }
        } else {
            //이게 맞나 모르겟는데 얘네는 스터디를 종료한 적이 없어
            result = 4;
            log.info("이게 맞나 모르겟는데 얘네는 스터디를 종료한 적이 없어 " + result);
        }

        return result;
    }


    @RequestMapping("/study/addimpl")
    public String studyaddimpl(Stdy stdy, HttpSession session) throws Exception {
        log.info("여기" + stdy.toString());
        String contents = stdy.getContents();
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        log.info("여기 stdnId " + stdnId);
        MultipartFile filenameFile = stdy.getFilenameFile();
        String filenameOrg = filenameFile.getOriginalFilename();
        log.info("여기 오리지날 네임 " + filenameOrg);
        Stdy noContents = stdyService.stdyContentsUpdate(stdnId);
        log.info("여기 내용없는 애 " + noContents.toString());

        String filename = FileUploadUtil.uploadFile(filenameFile, uploadPath);
        noContents.setFilename(filename);
        noContents.setFilenameOrg(filenameOrg);
        noContents.setContents(contents);
        stdyService.modify(noContents);
        return "redirect:/";

    }

    @RequestMapping("/study/editimpl")
    public String editimpl(Stdy stdy) throws Exception {
        String stdnId = stdy.getWriter();

        MultipartFile filenameFile = stdy.getFilenameFile();
        String filenameOrg = "";
        if (filenameFile != null) {
            filenameOrg = filenameFile.getOriginalFilename();
            log.info("여기파일네임오리진추출" + filenameOrg);
        }
        Integer id = stdy.getId();
        log.info("여기아아디추출" + id);
        Stdy Org = stdyService.get(id);
        log.info("여기원래스터디추출" + Org.toString());
        String prefilename = Org.getFilename();
        log.info("여기이전네임추출" + prefilename);
        String preFilenameOrg = Org.getFilenameOrg();
        log.info("여기이전오리진추출" + preFilenameOrg);

        if (filenameOrg == "" || filenameOrg == null) {
            stdy.setFilename(prefilename);
            stdy.setFilenameOrg(preFilenameOrg);
            stdyService.modify(stdy);
            log.info("여기없을때수정완");
        } else {
            String filename = FileUploadUtil.uploadFile(filenameFile, uploadPath);
            stdy.setFilename(filename);
            stdy.setFilenameOrg(filenameOrg);
            stdyService.modify(stdy);
            log.info("여기잇을때수정완");

        }
        return "/study/detail?id=" + id + "&&stdnId=" + stdnId;
    }

    @RequestMapping("/registerimpl2")
    public Object registerimpl2(MyPage myPage,  HttpSession session) throws Exception {
        Integer result = 0;
        log.info("여기 마이페이지다" + myPage);

        try {
            myPageService.register(myPage);
            result = 1;
            if (session != null) {
                session.invalidate();
            }

        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0006");
        }
        return result;
    }


    @RequestMapping("/boughtornot")
    public Object boughtornot(String stdnId, Integer lecId) throws Exception {
        Integer result = 0;
        OrdDetail ordDetail = ordDetailService.boughtOrNot(lecId, stdnId);
        if (ordDetail == null) {
            result = 1;
            log.info("여기 산 적없다 result: " + result);
        }
        return result;
    }

    @RequestMapping("/lecture/reviewaddimpl")
    public Object lecturereviewaddimpl(LecReview lecReview) throws Exception {
        Integer result = 0;
        log.info("여기" + lecReview.toString());
        Integer lecId = lecReview.getLecId();

        MultipartFile imgfile = lecReview.getImgfile();
        String imgOrg = imgfile.getOriginalFilename();
        log.info("여기" + imgOrg);
        String img = FileUploadUtil.uploadFile(imgfile, uploadPath);
        log.info("여기" + img);
        lecReview.setImg(img);
        lecReview.setImgOrg(imgOrg);
        try {
            lecReviewService.register(lecReview);
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        return result;
    }

    @RequestMapping("/coldcall")
    public Object coldcall(Integer lecId, String stdnId) throws Exception {
        Integer result = 0;
        OrdDetail ordDetail = ordDetailService.boughtOrNot(lecId, stdnId);
        try {
            ordDetail.setStdyHour("100");
            ordDetailService.modify(ordDetail);
            Cpn cpn = new Cpn(1020, stdnId, "2023.12.31");
            cpnService.register(cpn);
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        return result;
    }

    @RequestMapping("/coldcallfail")
    public Object coldcallfail(Integer lecId, String stdnId) throws Exception {
        OrdDetail ordDetail = ordDetailService.boughtOrNot(lecId, stdnId);
        Random r = new Random();
        Integer stdyPercent = r.nextInt(98) + 1;
        String stdyHour = stdyPercent + "";
        log.info("여기" + stdyHour);
        ordDetail.setStdyHour(stdyHour);
        ordDetailService.modify(ordDetail);
        return null;
    }
}


