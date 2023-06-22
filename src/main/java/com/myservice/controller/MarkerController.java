package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.*;
import com.myservice.service.MrkCommService;
import com.myservice.service.MrkService;
import com.myservice.service.StdnService;
import com.myservice.utill.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Marker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/marker")
public class MarkerController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "marker/";

    @Value("${kakaoshare}")
    private String kakaoshare;


    @Autowired
    MrkService mrkService;
    @Autowired
    StdnService stdnService;
    @Autowired
    MrkCommService mrkCommService;

    @RequestMapping("/add")
    public String add(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Mrk mrk) throws Exception {
        MultipartFile mf = mrk.getImgfile();
        String img = mf.getOriginalFilename();

        mrk.setImg(img);

        try {
            mrkService.register(mrk);
            FileUploadUtil.saveFile(mf, imgpath);
        } catch (Exception e) {
            log.info(e.getMessage() + "--------------에러");
            throw new Exception(e);
        }

        return "redirect:/marker/all";
    }


    @RequestMapping("/all")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        //최신순
        PageInfo<Mrk> p;
        //최근다섯개
        List<Mrk> list;
        try {
            p = new PageInfo<>(mrkService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
            list = mrkService.getRecent();
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }
        for (Mrk mrk : p.getList()) {
            int commentCount = mrkCommService.cntComm(mrk.getId()); // Retrieve the comment count from the service
            mrk.setCommentCount(commentCount); // Set the comment count in the Mrk object
        }
        model.addAttribute("recent", list);
        model.addAttribute("mpage", p);

        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/allrating")
    public String allrating(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        //인기순
        PageInfo<Mrk> r;
        //최근다섯개
        List<Mrk> list;
        try {
            r = new PageInfo<>(mrkService.getPageRating(pageNo), 5);
            list = mrkService.getRecent();
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }

        for (Mrk mrk : r.getList()) {
            int commentCount = mrkCommService.cntComm(mrk.getId()); // Retrieve the comment count from the service
            mrk.setCommentCount(commentCount); // Set the comment count in the Mrk object
        }
        model.addAttribute("recent", list);
        model.addAttribute("rpage", r);
        model.addAttribute("center", dir + "allrating");
        return "index";
    }

    @RequestMapping("/allcomment")
    public String allcomment(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        //인기순
        PageInfo<Mrk> c;
        //최근다섯개
        List<Mrk> list;
        try {
            c = new PageInfo<>(mrkService.getPageComment(pageNo), 5);
            list = mrkService.getRecent();
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }

        for (Mrk mrk : c.getList()) {
            int commentCount = mrkCommService.cntComm(mrk.getId()); // Retrieve the comment count from the service
            mrk.setCommentCount(commentCount); // Set the comment count in the Mrk object
        }
        model.addAttribute("recent", list);
        model.addAttribute("cpage", c);
        model.addAttribute("center", dir + "allcomment");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        Mrk mrk = null;
        mrk = mrkService.get(id);
        Stdn stdn = stdnService.get(mrk.getWriter());

        List<MrkComm> mrkCommList = mrkCommService.getPostComm(mrk.getId());
        //최근 게시글 new 뱃찌
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
        LocalDate currentDate = LocalDate.now();

        LocalDate postDate = LocalDate.parse(mrk.getRdate(), formatter);
        long diffInDays = ChronoUnit.DAYS.between(postDate, currentDate);
        if (diffInDays <= 7) {
            mrk.setNewPost(true);
        } else {
            mrk.setNewPost(false);
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

        mrk.setTimeAgo(timeAgo);


        model.addAttribute("kakaoshare", kakaoshare);
        model.addAttribute("marker", mrk);
        model.addAttribute("mrkComm", mrkCommList);
        model.addAttribute("student", stdn);
        model.addAttribute("center", dir + "detail");
        return "index";
    }

    @RequestMapping("/edit")
    public String edit(Model model, @RequestParam("id") int id) throws Exception {

        Mrk mrk = mrkService.get(id);

        model.addAttribute("center", dir + "edit");
        model.addAttribute("marker", mrk);
        return "index";
    }


    @RequestMapping("/editimpl")
    public String editimpl(Model model, Mrk mrk) throws Exception {
        // id를 사용하여 해당 marker 정보를 가져옴
        MultipartFile mf = mrk.getImgfile();
        String img = "";
        if (mf != null) {
            img = mf.getOriginalFilename();
        }

        int markerId = mrk.getId();
        log.info(markerId + "이거");
        Mrk Origin = mrkService.get(markerId);
        log.info(Origin.toString() + "이거");
        String OriginImg = Origin.getImg();
        log.info(OriginImg + "이거");

        if (img.equals("") || img == null) {

            mrk.setImg(OriginImg);
            mrkService.modify(mrk);

        } else {
            mrk.setImg(img);
            mrkService.modify(mrk);
            FileUploadUtil.saveFile(mf, imgpath);
        }

        return "redirect:/marker/all";
    }

    @RequestMapping("/delete")
    public String delete(Model model, Integer id) throws Exception {
        mrkService.remove(id);
        return "redirect:/marker/all";
    }

    @RequestMapping("/findimpl")
    public String findimpl(Model model, Search search, @RequestParam(required = false, defaultValue = "1") int pageNo) throws Exception {
        PageInfo<Mrk> p = new PageInfo<>(mrkService.getFindPage(pageNo, search), 5);
        for (Mrk mrk : p.getList()) {
            int commentCount = mrkCommService.cntComm(mrk.getId()); // Retrieve the comment count from the service
            mrk.setCommentCount(commentCount); // Set the comment count in the Mrk object
        }
        model.addAttribute("target", "marker");
        model.addAttribute("mrkpage", p);
        model.addAttribute("center", dir + "allsearch");
        model.addAttribute("search", search);
        return "index";
    }

    @RequestMapping("/addcomm")
    public String addcomm(Model model, MrkComm mrkComm, @RequestParam("postId") Integer postId) throws Exception {

        try {
            mrkCommService.register(mrkComm);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/marker/detail?id=" + postId;
    }

    @RequestMapping("/delcomm")
    public String delcomm(Integer id, @RequestParam("postId") Integer postId) throws Exception {

        try {
            mrkCommService.remove(id);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/marker/detail?id=" + postId;
    }
}
