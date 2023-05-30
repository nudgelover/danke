package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
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
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/marker")
public class MarkerController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "marker/";


    @Autowired
    MrkService mrkService;

    @RequestMapping("/add")
    public String add(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Mrk mrk, HttpSession session) throws Exception {
//        Student loginStudent = (Student) session.getAttribute("loginStudent");
        MultipartFile mf = mrk.getImgfile();
        String img = mf.getOriginalFilename();

        mrk.setImg(img);
//        marker.setWriter(loginStudent.getId());
        try {
            mrkService.register(mrk);
            FileUploadUtil.saveFile(mf, imgpath);
        } catch (Exception e) {
            throw new Exception(e);
        }

//        model.addAttribute("loginStudent", loginStudent);
        return "redirect:/marker/all";
    }


    @RequestMapping("/all")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Mrk> p;
        List<Mrk> list;
        try {
            p = new PageInfo<>(mrkService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
            list = mrkService.getRecent();
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }

        model.addAttribute("recent", list);
        model.addAttribute("mpage", p);
        model.addAttribute("center", dir + "all");
        return "index";
    }


    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        Mrk mrk = null;
        mrk = mrkService.get(id);
        model.addAttribute("marker", mrk);
        model.addAttribute("center", dir + "detail");
        return "index";
    }

    @RequestMapping("/edit")
    public String edit(Model model, @RequestParam("id") int id) throws Exception {

        Mrk mrk  = mrkService.get(id);

        model.addAttribute("center", dir + "edit");
        model.addAttribute("marker", mrk);
        return "index";
    }


    @RequestMapping("/editimpl")
    public String editimpl(Model model, Mrk mrk) throws Exception {
        // id를 사용하여 해당 marker 정보를 가져옴
        MultipartFile mf = mrk.getImgfile();
        String img = mf.getOriginalFilename();

        int markerId = mrk.getId();
        log.info(markerId+"이거");
        Mrk Origin = mrkService.get(markerId);
        log.info(Origin.toString()+"이거");
        String OriginImg = Origin.getImg();
        log.info(OriginImg+"이거");

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


}
