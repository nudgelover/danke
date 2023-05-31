package com.myservice.controller;


import com.myservice.dto.Stdn;
import com.myservice.service.StdnService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Slf4j
@Controller
@RequestMapping("/settings")
public class SettingsController {
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

    @RequestMapping("/pwdimpl")
    public String pwdimpl(Model model, String id, String pwd) throws Exception {
        log.info("여기"+ id);
        log.info("여기"+ pwd);
        Stdn stdn = (Stdn) stdnService.get(id);
        log.info("여기"+stdn.toString());
        log.info("여기"+encoder.encode(pwd));
        stdn.setPwd(encoder.encode(pwd));
        stdnService.updatePwd(stdn);

        model.addAttribute("center", dir+"success");
        return "index";
    }

}
