package com.myservice.controller;


import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


@Slf4j
@Controller
@RequestMapping("/settings")
public class SettingsController {
    @Value("${download.path}")
    String downloadPath;

    @Autowired
    StdnService stdnService;

    @Value("${uploadimgdir}")
    String imgpath;

    String dir = "settings/";

    @Autowired
    private BCryptPasswordEncoder encoder;

    @RequestMapping("/pwd")
    public String pwd(Model model, String id) throws Exception {

        model.addAttribute("center", dir + "pwd");
        return "index";
    }

    @RequestMapping("/pwdreset")
    public String pwdreset(Model model) throws Exception {

        model.addAttribute("center", dir + "pwdreset");
        return "index";
    }

    @RequestMapping("/pwdimpl")
    public String pwdimpl(Model model, String id, String pwd,  HttpSession session) throws Exception {
        log.info("여기"+ id);
        log.info("여기"+ pwd);
        Stdn stdn = (Stdn) stdnService.get(id);
        log.info("여기"+stdn.toString());
        log.info("여기"+encoder.encode(pwd));
        stdn.setPwd(encoder.encode(pwd));
        stdnService.updatePwd(stdn);
        String name = stdn.getName();
        if (session != null) {
            session.invalidate();
        }

        model.addAttribute("name", name);
        model.addAttribute("center", dir+"success");
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

    @RequestMapping("/authentication")
    public String authentication(Model model) throws Exception {
        model.addAttribute("center", dir + "authentication");
        return "index";
    }

    @RequestMapping("/generateqr")
    public String generateqr(Model model) throws Exception {
        model.addAttribute("center", dir + "generateqr");
        return "index";
    }

}
