package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.*;
import com.myservice.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/lecture")
public class LectureController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "lecture/";

    @Autowired
    LecService lecService;

    @Autowired
    CartService cartService;

    @Autowired
    CpnService cpnService;

    @Autowired
    OrdService ordService;

    @Autowired
    OrdDetailService ordDetailService;

    @RequestMapping("/all")
    public String all(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> p;
        try {
            p = new PageInfo<>(lecService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        model.addAttribute("target","lecture");
        model.addAttribute("cpage",p);
        model.addAttribute("center",dir+"all");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        Lec lec = lecService.get(id);
        model.addAttribute("lec",lec);
        model.addAttribute("center", dir+"detail");
        return "index";
    }

    @RequestMapping("/cart")
    public String cart(Model model, String id) throws Exception {
        List<Cart> list = cartService.getMyCart(id);
        int cnt = cartService.cntMyCart(id);
        model.addAttribute("cart",list);
        model.addAttribute("cnt",cnt);
        model.addAttribute("center", dir+"cart");
        return "index";
    }

    @RequestMapping("/cartdelete")
    public String cartdelete(Model model,Integer id, HttpSession session) throws Exception {

        cartService.remove(id);
        if(session != null){
            Stdn stdn = (Stdn) session.getAttribute("loginStdn");
            return "redirect:/lecture/cart?id="+stdn.getId();
        }
        return "redirect:/";
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(@RequestParam List<Integer> del_lecs, Model model,HttpSession session) throws Exception {

        for (int cartId : del_lecs) {
            cartService.remove(cartId);
            }
        if(session != null){
            Stdn stdn = (Stdn) session.getAttribute("loginStdn");
            return "redirect:/lecture/cart?id="+stdn.getId();
        }
        return "redirect:/";
    }

    @RequestMapping("/order")
    public String order(@RequestParam List<Integer> del_lecs, Model model,HttpSession session) throws Exception {
        List<Cart> list = new ArrayList<>();
        for(int cartId : del_lecs) {
            Cart cart = (Cart) cartService.get(cartId);
            list.add(cart);
        }
        int cnt = list.size();

        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        List<Cpn> clist = cpnService.getMyCpn(stdnId);

        model.addAttribute("order",list);
        model.addAttribute("cnt",cnt);
        model.addAttribute("cpn",clist);
        model.addAttribute("center", dir+"order");
        return "index";
    }

    @RequestMapping("/orderthis")
    public String orderthis(Model model, Integer id, HttpSession session) throws Exception {
        Lec lec = lecService.get(id);
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        List<Cpn> list = cpnService.getMyCpn(stdnId);

        model.addAttribute("lec",lec);
        model.addAttribute("cpn",list);
        model.addAttribute("center", dir+"orderthis");
        return "index";
    }

    @RequestMapping("/pay")
    public String pay(@RequestParam List<Integer> lecId, int cpnId, Ord ord, Model model, HttpSession session) throws Exception {
        //  주문에 필요한 것들 개많아... 주문하지 마 오프라인 구매 해...
        // 1. ord_table insert : ordPrice, payMethod, useCpn(쿠폰적용금액)
        // 2. ord_detail insert ( 각 강의별로 생성 ) : for문을 돌려 (각 강의 lecId 필요) 방금 insert한 ord Id 필요
        // 3. cart delete : 각 강의 lecId로 for문 돌려 remove
        // 4. cpn update : 사용여부 '1'
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();

        log.info("여기"+ord.toString());
        ord.setStdnId(stdnId);
        ordService.register(ord);
        Integer ordId = ordService.getLastOrdId();
        Integer ordPrice=ord.getOrdPrice();

        log.info("여기"+lecId.toString());
        for(Integer lecid:lecId){
            OrdDetail ordDetail = new OrdDetail();
            ordDetail.setOrdId(ordId);
            ordDetail.setLecId(lecid);
            log.info("여기"+ordDetail.toString());
            ordDetailService.register(ordDetail);
        }

        log.info("여기"+lecId.toString());
        for(Integer lecid : lecId) {
            Cart cart = (Cart) cartService.thisCart(lecid, stdnId);
            int cartId = cart.getId();
            cartService.remove(cartId);
        }
        log.info("여기"+cpnId);
        if( cpnId != 0) {
            Cpn cpn = (Cpn) cpnService.get(cpnId);
            cpnService.modify(cpn);
        }

        model.addAttribute("ordId", ordId);
        model.addAttribute("ordPrice", ordPrice);
        model.addAttribute("center", dir+"success");
        return "index";
    }

    @RequestMapping("/paythis")
    public String paythis(Integer lecId, int cpnId, Ord ord, Model model, HttpSession session) throws Exception {
        //  주문에 필요한 것들 개많아... 주문하지 마 오프라인 구매 해...
        // 1. ord_table insert : ordPrice, payMethod, useCpn(쿠폰적용금액)
        // 2. ord_detail insert ( 각 강의별로 생성 ) : 각 강의 lecId 필요, 방금 insert한 ord Id 필요
        // 3. cart delete : 각 강의 lecId로 for문 돌려 remove XXXXXXXX 바로구매는 카트에서 안 지워요~~~
        // 4. cpn update : 사용여부 '1'
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();

        log.info("여기"+ord.toString());
        ord.setStdnId(stdnId);
        ordService.register(ord);
        Integer ordId = ordService.getLastOrdId();
        Integer ordPrice=ord.getOrdPrice();

        log.info("여기"+lecId.toString());
        OrdDetail ordDetail = new OrdDetail();
        ordDetail.setOrdId(ordId);
        ordDetail.setLecId(lecId);
        log.info("여기"+ordDetail.toString());
        ordDetailService.register(ordDetail);

        log.info("여기"+cpnId);
        if( cpnId != 0) {
            Cpn cpn = (Cpn) cpnService.get(cpnId);
            cpnService.modify(cpn);
        }
        model.addAttribute("ordId", ordId);
        model.addAttribute("ordPrice", ordPrice);
        model.addAttribute("center", dir+"success");
        return "index";
    }

    @RequestMapping("/orddetail")
    public String orddetail(Model model, Integer id) throws Exception {
        Lec lec = lecService.get(id);
        model.addAttribute("lec",lec);
        model.addAttribute("center", dir+"orddetail");
        return "index";
    }

}
