package com.myservice.controller;

import com.myservice.dto.Mrk;
import com.myservice.service.MrkService;
import com.myservice.utill.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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

        model.addAttribute("center", dir+"add");
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
    public String all(Model model, Integer id) throws Exception {
        List<Mrk> list = mrkService.getRecent();
        model.addAttribute("marker", list);
        model.addAttribute("center", dir+"all");
        return "index";
    }


    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        Mrk mrk = null;
        mrk = mrkService.get(id);
        model.addAttribute("marker", mrk);
        model.addAttribute("center", dir+"detail");
        return "index";
    }
}
