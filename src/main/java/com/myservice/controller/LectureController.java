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

    @Autowired
    LecReviewService lecReviewService;

    @Autowired
    CurriService curriService;

    @RequestMapping("/all")
    public String all(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> p;
        try {
            p = new PageInfo<>(lecService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        List <Lec> rank = lecService.getRank();

        model.addAttribute("rank", rank);
        model.addAttribute("target","lecture");
        model.addAttribute("cpage",p);
        model.addAttribute("center",dir+"all");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, Integer id) throws Exception {
        int cnt = lecReviewService.cntLecReview(id);
        List<LecReview> list = lecReviewService.getLecReview(id);
        Lec lec = lecService.get(id);
        model.addAttribute("list", list);
        model.addAttribute("lec",lec);
        model.addAttribute("cnt", cnt);
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
    public String pay(@RequestParam List<Integer> lecId, @RequestParam List<Integer> price, @RequestParam List<Integer> discRate, int cpnId, Ord ord, Model model, HttpSession session) throws Exception {
        //  주문에 필요한 것들 개많아... 주문하지 마 오프라인 구매 해...
        // 1. ord_table insert : ordPrice, payMethod, useCpn(쿠폰적용금액)
        // 2. ord_detail insert ( 각 강의별로 생성 ) : for문을 돌려 (각 강의 lecId 필요) 방금 insert한 ord Id 필요
        // 3. cart delete : 각 강의 lecId로 for문 돌려 remove
        // 4. cpn update : 사용여부 '1'
        //수정 사항 발생: 주문번호로 과거 주문 상세 내역 조회 시, 구매시점 가격 및 할인 정보를 남기지 않아 join해오면 오차가 있음
        //결과: ord_detail에 price, disc_rate column을 추가하여 구매시점 가격 및 할인 정보 insert
        //controller에서 할 사항: 화면에서 forEach로 나열된 각 요소들을 Jquery .each로  Array에 담아 전송하면 List로 빼내어 for문 안에서
        //ord_detail에 각 List의 index값에 해당하는 values들을 set Attribute해준 뒤, register
        //단일 상품 바로 구매하는 url paythis도 수정 예정
        // 5. lec table의 hit column: 수강생 수 update

        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();

        log.info("여기"+ord.toString());
        ord.setStdnId(stdnId);
        ordService.register(ord);
        Integer ordId = ordService.getLastOrdId();
        Integer ordPrice=ord.getOrdPrice();

        log.info("여기lecId여기"+lecId.toString());
        log.info("discRate여기"+discRate.toString());
        log.info("여기price여기"+price.toString());

        for(int i=0;i <lecId.size();i++) {
            OrdDetail ordDetail = new OrdDetail();
            Lec lec = lecService.get(lecId.get(i));
            int hit = lec.getHit();
            lec.setHit(hit+1);
            lecService.modify(lec);
            ordDetail.setLecId(lecId.get(i));
            ordDetail.setPrice(price.get(i));
            ordDetail.setDiscRate(discRate.get(i));
            ordDetail.setOrdId(ordId);
            log.info("여기" + ordDetail.toString());
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
    public String paythis(Integer lecId, Integer price, Integer discRate, int cpnId, Ord ord, Model model, HttpSession session) throws Exception {
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
        Lec lec = lecService.get(lecId);
        int hit = lec.getHit();
        lec.setHit(hit+1);
        lecService.modify(lec);
        OrdDetail ordDetail = new OrdDetail();
        ordDetail.setOrdId(ordId);
        ordDetail.setLecId(lecId);
        ordDetail.setPrice(price);
        ordDetail.setDiscRate(discRate);
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
        log.info("여기아이디"+id);
        Ord ord = (Ord) ordService.get(id);
        log.info("여기Ord잇다"+ord.toString());
        List<OrdDetail> list = new ArrayList<>();
        list =  ordDetailService.getByOrd(id);
        model.addAttribute("ord",ord);
        model.addAttribute("list", list);
        model.addAttribute("center", dir+"orddetail");
        return "index";
    }

    @RequestMapping("/curri")
    public String curri(Model model, String id) throws Exception {
        List<Curri> list = curriService.getMyCurri(id);
        model.addAttribute("curri",list);
        model.addAttribute("center", dir+"curri");
        return "index";
    }

}
