package com.myservice.controller;


import com.github.pagehelper.PageInfo;
import com.myservice.dto.Curri;
import com.myservice.dto.Stdy;
import com.myservice.service.StdyService;
import com.myservice.utill.GetTimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


@Slf4j
@Controller
@RequestMapping("/study")
public class StudyController {
    @Value("${download.path}")
    String downloadPath;

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "study/";

    @Value("${upload.path}")
    String uploadPath;

    @Autowired
    StdyService stdyService;

    @RequestMapping("/add")
    public String add(Model model, Integer id) throws Exception {

        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/all")
    public String all(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Stdy> p;
        p = new PageInfo<>(stdyService.getPage(pageNo), 5);
        List<Stdy> stdy = p.getList();
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

        model.addAttribute("target", "study");
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/download/{filename}")
    public ResponseEntity<byte[]> downloadFile(@PathVariable("filename") String filename, HttpServletRequest request) throws IOException {
        String filePath = downloadPath;

        Path file = Paths.get(filePath, filename);

        byte[] fileContent = Files.readAllBytes(file);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        headers.setContentDispositionFormData("attachment", filename);
        return ResponseEntity.ok().headers(headers).body(fileContent);
    }

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
         Stdy stdy = stdyService.get(id);
         model.addAttribute("stdy", stdy);
         model.addAttribute("center", dir + "detail");
         return "index";
    }

    @RequestMapping("/delete")
    public String delete(Model model, Integer id) throws Exception {
        stdyService.remove(id);

        return "redirect:/study/all";
    }

    @RequestMapping("/edit")
    public String edit(Model model, Integer id) throws Exception {
        Stdy stdy = stdyService.get(id);

        model.addAttribute("stdy",stdy);
        model.addAttribute("center", dir + "edit");
        return "index";
    }

    @RequestMapping("/mine")
    public String mine(Model model, String writer) throws Exception {
        List<Stdy> stdy= stdyService.getMyStdy(writer);

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
        model.addAttribute("stdy",stdy);
        model.addAttribute("center", dir + "mine");
        return "index";
    }

}
