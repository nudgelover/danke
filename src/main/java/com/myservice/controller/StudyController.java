package com.myservice.controller;


import com.github.pagehelper.PageInfo;
import com.myservice.dto.Stdy;
import com.myservice.dto.StdySearch;
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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        for (Stdy one : stdy) {
            String start = one.getStartTime();
            String end = one.getEndTime();

            one.setStartTime(start.substring(11));
            one.setEndTime(end.substring(11));

            one.setDuration(GetTimeUtil.getTime(start, end));

            String shortVer = "";
            int firstIndex = one.getContents().indexOf(">");
            int secondIndex = one.getContents().indexOf(">", firstIndex + 1);

            if( secondIndex > 25 ){
                shortVer =  one.getContents().substring(0, Math.min(one.getContents().length(), 25))+"...</p>";
            } else {
                shortVer = one.getContents().substring(0,secondIndex+1);
            };
            log.info("여기 shortVer"+shortVer);
            shortVer = shortVer.substring(3, shortVer.length() - 4);
            log.info("여기 shorVer"+shortVer);
            one.setShortVer(shortVer);

            LocalDate rdate = LocalDate.parse(one.getRdate(), formatter);
            Integer newly = (ChronoUnit.DAYS.between(rdate, now) <= 3) ? 1:0;
            one.setNewly(newly);
        }
        List<Stdy> rank = stdyService.getRank3();
        log.info("여기 투스트링"+stdyService.getRank3());

        model.addAttribute("target", "study");
        model.addAttribute("cpage", p);
        model.addAttribute("rank", rank);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/findimpl")
    public String findimpl(Model model, StdySearch stdySearch, @RequestParam(required = false, defaultValue = "1") int pageNo) throws Exception {
        PageInfo<Stdy> p = new PageInfo<>(stdyService.getFindPage(pageNo, stdySearch), 3);
        List<Stdy> stdy = p.getList();
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        for (Stdy one : stdy) {
            String start = one.getStartTime();
            String end = one.getEndTime();

            one.setStartTime(start.substring(11));
            one.setEndTime(end.substring(11));

            one.setDuration(GetTimeUtil.getTime(start, end));

            String shortVer = "";
            int firstIndex = one.getContents().indexOf(">");
            int secondIndex = one.getContents().indexOf(">", firstIndex + 1);

            if( secondIndex > 25 ){
                shortVer =  one.getContents().substring(0, Math.min(one.getContents().length(), 25))+"...</p>";
            } else {
                shortVer = one.getContents().substring(0,secondIndex+1);
            };
            log.info("여기 shortVer"+shortVer);
            shortVer = shortVer.substring(3, shortVer.length() - 4);
            log.info("여기 shorVer"+shortVer);
            one.setShortVer(shortVer);

            LocalDate rdate = LocalDate.parse(one.getRdate(), formatter);
            Integer newly = (ChronoUnit.DAYS.between(rdate, now) <= 3) ? 1:0;
            one.setNewly(newly);

        }
        List<Stdy> rank = stdyService.getRank3();
        log.info("여기 투스트링"+stdyService.getRank3());

        model.addAttribute("target","study");
        model.addAttribute("cpage",p);
        model.addAttribute("rank", rank);
        model.addAttribute("center",dir+"all");
        model.addAttribute("stdySearch", stdySearch);
        return "index";
    }

    @RequestMapping("/mine/{writer}/all")
    public String mine(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model,  @PathVariable String writer) throws Exception {
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        String thisMonth = now.format(DateTimeFormatter.ofPattern("yyyy.MM"));
        log.info("여기 디스만스"+thisMonth);
        Integer did = 0;
        Stdy today = stdyService.stdyStartOrNot(writer);
        if(today!=null&& today.getContents()!=null){
            did=1;
        }

        Stdy myResult = (Stdy) stdyService.myMonthlyResult(writer);

        PageInfo<Stdy> p;
        p = new PageInfo<>(stdyService.getMyPage(pageNo, writer), 5);
        List<Stdy> stdy = p.getList();

        for (Stdy one : stdy) {
            String start = one.getStartTime();
            String end = one.getEndTime();

            one.setStartTime(start.substring(11));
            one.setEndTime(end.substring(11));

            one.setDuration(GetTimeUtil.getTime(start, end));

            String shortVer = "";
            int firstIndex = one.getContents().indexOf(">");
            int secondIndex = one.getContents().indexOf(">", firstIndex + 1);

            if( secondIndex > 25 ){
                shortVer =  one.getContents().substring(0, Math.min(one.getContents().length(), 25))+"...</p>";
            } else {
                shortVer = one.getContents().substring(0,secondIndex+1);
            };
            log.info("여기 shortVer"+shortVer);
            shortVer = shortVer.substring(3, shortVer.length() - 4);
            log.info("여기 shorVer"+shortVer);
            one.setShortVer(shortVer);

            LocalDate rdate = LocalDate.parse(one.getRdate(), formatter);
            Integer newly = (ChronoUnit.DAYS.between(rdate, now) <= 3) ? 1:0;
            one.setNewly(newly);
        }

        model.addAttribute("myResult", myResult);
        model.addAttribute("target","study");
        model.addAttribute("target2","mine");
        model.addAttribute("target3",writer);
        model.addAttribute("cpage",p);
        model.addAttribute("did",did);
        model.addAttribute("center", dir + "mine");
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
    public String detail(Model model, Integer id, String stdnId) throws Exception {
        Stdy stdy = new Stdy();
        if(stdnId == null || stdnId== ""){
            stdy = stdyService.get(id);
        } else {
            stdy = stdyService.getWithLikes(id,stdnId);
        }

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

}
