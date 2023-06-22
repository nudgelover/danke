package com.myservice.controller;

import com.github.pagehelper.PageInfo;
import com.myservice.dto.*;
import com.myservice.service.*;
import com.myservice.utill.FileUploadUtil;
import com.myservice.utill.YoutubeUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.*;

import static org.eclipse.jdt.core.compiler.CharOperation.parseInt;

@Slf4j
@Controller
@RequestMapping("/lecture")
public class LectureController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "lecture/";

    @Value("${upload.path}")
    String uploadPath;

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

    @Autowired
    ReviewCntService reviewCntService;

    @Autowired
    SbjDetailService sbjDetailService;

    @Autowired
    LecCategoryService lecCategoryService;

    @RequestMapping("/all")
    public String all(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> p;
        try {
            p = new PageInfo<>(lecService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctAll();
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("target", "lecture");
        model.addAttribute("cpage", p);
        model.addAttribute("cate", cate);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/findimpl")
    public String findimpl(LecSearch lecSearch, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> p;
        try {
            p = new PageInfo<>(lecService.getFindPage(pageNo, lecSearch), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctAll();
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("target", "lecture");
        model.addAttribute("cpage", p);
        model.addAttribute("cate", cate);
        model.addAttribute("center", dir + "all");
        model.addAttribute("lecSearch", lecSearch);
        return "index";
    }

    @RequestMapping("/{sbjBigCode}/all")
    public String sbjBigCode(@PathVariable Integer sbjBigCode, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {

        PageInfo<Lec> p = new PageInfo<>(lecService.getSbjCode2Page(pageNo,sbjBigCode), 5);

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctByParent(sbjBigCode);
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("sbjBigCode",sbjBigCode);
        model.addAttribute("target", "lecture");
        model.addAttribute("target2", sbjBigCode);
        model.addAttribute("cpage", p);
        model.addAttribute("cate", cate);
        model.addAttribute("center", dir + "all");

        return "index";
    }

    @RequestMapping("/{sbjBigCode}/{sbjMediumCode}/all")
    public String sbjMediumCode(@PathVariable Integer sbjBigCode, @PathVariable Integer sbjMediumCode, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        SbjDetail sbjDetail = sbjDetailService.getThisSbjDetail(sbjMediumCode);
        String sbjName = sbjDetail.getSbjName();
        PageInfo<Lec> p = new PageInfo<>(lecService.getTopicPage(pageNo,sbjName), 5);

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctByTopic(sbjName);
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("sbjBigCode",sbjBigCode);
        model.addAttribute("sbjMediumCode", sbjMediumCode);
        model.addAttribute("target", "lecture");
        model.addAttribute("target2", sbjBigCode);
        model.addAttribute("target3", sbjMediumCode);
        model.addAttribute("cate", cate);
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "all");

        return "index";
    }

    @RequestMapping("/spec{spec}/all")
    public String spec(@PathVariable Integer spec, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> pre = new PageInfo<>(lecService.getPage(pageNo), 5);
        List<Lec> lecs = pre.getList();

        PageInfo<Lec> p = new PageInfo<>();
        List<Lec> pLecs = new ArrayList<>();

        SbjDetail specDetail = sbjDetailService.getThisSbjDetail(spec);
        String specName = specDetail.getSbjName();

        try {
            log.info("여기까지오나");
            for (Lec lec : lecs) {
                if (lec.getSpec1().equals(specName) || lec.getSpec2().equals(specName) || lec.getSpec3().equals(specName)) {
                    pLecs.add(lec);
                    log.info("여기피랙스투스트링"+pLecs.toString());
                }
            }
        } catch (Exception e){
            e.printStackTrace();
            throw new Exception();
        }
        log.info("여기 트라이캐치나옴");
        p.setList(pLecs);

        log.info("여기+교정된 p"+p.toString());

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctAll();
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("spec",spec);
        model.addAttribute("target", "lecture");
        model.addAttribute("target2","spec"+spec);
        model.addAttribute("cate", cate);
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "all");

        return "index";
    }

    @RequestMapping("/{sbjBigCode}/spec{spec}/all")
    public String bigSpec(@PathVariable Integer sbjBigCode, @PathVariable Integer spec, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Lec> pre = new PageInfo<>(lecService.getSbjCode2Page(pageNo,sbjBigCode), 5);
        List<Lec> lecs = pre.getList();

        PageInfo<Lec> p = new PageInfo<>();
        List<Lec> pLecs = new ArrayList<>();

        SbjDetail specDetail = sbjDetailService.getThisSbjDetail(spec);
        String specName = specDetail.getSbjName();

        try {
            log.info("여기까지오나");
            for (Lec lec : lecs) {
                if (lec.getSpec1().equals(specName) || lec.getSpec2().equals(specName) || lec.getSpec3().equals(specName)) {
                    pLecs.add(lec);
                    log.info("여기피랙스투스트링"+pLecs.toString());
                }
            }
        } catch (Exception e){
            e.printStackTrace();
            throw new Exception();
        }
        log.info("여기 트라이캐치나옴");
        p.setList(pLecs);

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctByParent(sbjBigCode);
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("sbjBigCode",sbjBigCode);
        model.addAttribute("spec",spec);
        model.addAttribute("target", "lecture");
        model.addAttribute("target2", sbjBigCode);
        model.addAttribute("target3","spec"+spec);
        model.addAttribute("cpage", p);
        model.addAttribute("cate", cate);
        model.addAttribute("center", dir + "all");

        return "index";
    }

    @RequestMapping("/{sbjBigCode}/{sbjMediumCode}/spec{spec}/all")
    public String bigMediumSpec(@PathVariable Integer sbjBigCode, @PathVariable Integer sbjMediumCode, @PathVariable Integer spec, @RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        SbjDetail sbjDetail = sbjDetailService.getThisSbjDetail(sbjMediumCode);
        String sbjName = sbjDetail.getSbjName();
        SbjDetail specDetail = sbjDetailService.getThisSbjDetail(spec);
        String specName = specDetail.getSbjName();
        PageInfo<Lec> pre = new PageInfo<>(lecService.getTopicPage(pageNo,sbjName), 5);
        PageInfo<Lec> p = new PageInfo<>();
        List<Lec> lecs = pre.getList();
        log.info("여기pre투스트링"+pre.toString());
        List<Lec> pLecs = new ArrayList<>();

        try {
            log.info("여기까지오나");
            for (Lec lec : lecs) {
                if (lec.getSpec1().equals(specName) || lec.getSpec2().equals(specName) || lec.getSpec3().equals(specName)) {
                    pLecs.add(lec);
                }
            }
        } catch (Exception e){
            e.printStackTrace();
            throw new Exception();
        }
        log.info("여기 트라이캐치나옴");
        p.setList(pLecs);

        log.info("여기+교정된 p"+p.toString());

        List<SbjDetail> sideBig = sbjDetailService.searchBig();

        Map<Integer, List<SbjDetail>> sideMedium = new HashMap<>();
        for(int n = 0; n < sideBig.size(); n++) {
            Integer index = sideBig.get(n).getSbjCode();
            sideMedium.put(index, sbjDetailService.searchMedium(index));
        }

        List<LecCategory> cate = new ArrayList<>();
        try {
            cate = lecCategoryService.getDistinctByTopic(sbjName);
            log.info("여기" + cate.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }

        log.info("여기"+sideBig.toString());
        log.info("여기"+sideMedium.toString());
        model.addAttribute("sideBig",sideBig);
        model.addAttribute("sideMedium",sideMedium);
        model.addAttribute("sbjBigCode",sbjBigCode);
        model.addAttribute("sbjMediumCode", sbjMediumCode);
        model.addAttribute("spec",spec);
        model.addAttribute("target", "lecture");
        model.addAttribute("target2", sbjBigCode);
        model.addAttribute("target3", sbjMediumCode);
        model.addAttribute("target4","spec"+spec);
        model.addAttribute("cate", cate);
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "all");

        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, Integer id, String stdnId) throws Exception {
        List<LecReview> list = new ArrayList<>();
        LecReview wrote = null;
        if (stdnId == null || stdnId =="") {
            list = lecReviewService.getByLecId(id);
        } else {
            list = lecReviewService.getByLecIdWithLikes(id, stdnId);
            wrote = lecReviewService.getThisLecReview(stdnId,id);
        }
        Integer bought = 0;
        OrdDetail ordDetail = ordDetailService.boughtOrNot(id,stdnId);
        if(ordDetail==null){
            bought = 1;
            log.info("여기 산 적없다 bought: "+bought);
        }

        Lec lec = lecService.get(id);
        List<ReviewCnt> ratingCnt = reviewCntService.getCntByReview(id);
        log.info("여기"+ ratingCnt.toString());
        model.addAttribute("bought", bought);
        model.addAttribute("ratingCnt", ratingCnt);
        model.addAttribute("wrote",wrote);
        model.addAttribute("list", list);
        model.addAttribute("lec", lec);
        model.addAttribute("center", dir + "detail");
        return "index";
    }

    @RequestMapping("/cart")
    public String cart(Model model, String id) throws Exception {
        List<Cart> list = cartService.getMyCart(id);
        int cnt = cartService.cntMyCart(id);
        model.addAttribute("cart", list);
        model.addAttribute("cnt", cnt);
        model.addAttribute("center", dir + "cart");
        return "index";
    }

    @RequestMapping("/cartdelete")
    public String cartdelete(Integer id, HttpSession session) throws Exception {

        cartService.remove(id);
        if (session != null) {
            Stdn stdn = (Stdn) session.getAttribute("loginStdn");
            return "redirect:/lecture/cart?id=" + stdn.getId();
        }
        return "redirect:/";
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(@RequestParam List<Integer> del_lecs, HttpSession session) throws Exception {

        for (int cartId : del_lecs) {
            cartService.remove(cartId);
        }
        if (session != null) {
            Stdn stdn = (Stdn) session.getAttribute("loginStdn");
            return "redirect:/lecture/cart?id=" + stdn.getId();
        }
        return "redirect:/";
    }

    @RequestMapping("/order")
    public String order(@RequestParam List<Integer> del_lecs, Model model, HttpSession session) throws Exception {
        List<Cart> list = new ArrayList<>();
        for (int cartId : del_lecs) {
            Cart cart = (Cart) cartService.get(cartId);
            list.add(cart);
        }
        int cnt = list.size();

        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        List<Cpn> clist = cpnService.getMyCpn(stdnId);

        model.addAttribute("order", list);
        model.addAttribute("cnt", cnt);
        model.addAttribute("cpn", clist);
        model.addAttribute("center", dir + "order");
        return "index";
    }

    @RequestMapping("/orderthis")
    public String orderthis(Model model, Integer id, HttpSession session) throws Exception {
        Lec lec = lecService.get(id);
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        List<Cpn> list = cpnService.getMyCpn(stdnId);

        model.addAttribute("lec", lec);
        model.addAttribute("cpn", list);
        model.addAttribute("center", dir + "orderthis");
        return "index";
    }

    @RequestMapping("/pay")
    public String pay(@RequestParam List<Integer> lecId, @RequestParam List<Integer> price, @RequestParam List<Integer> discRate, Integer cpnId, Integer ordPrice, String payMethod, Integer useCpn, Model model, HttpSession session) throws Exception {
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

        Ord ord = new Ord();
        ord.setStdnId(stdnId);
        ord.setOrdPrice(ordPrice);
        ord.setPayMethod(payMethod);
        ord.setUseCpn(useCpn);
        ordService.register(ord);

        Integer ordId = ordService.getLastOrdId();

        log.info("여기lecId여기" + lecId.toString());
        log.info("discRate여기" + discRate.toString());
        log.info("여기price여기" + price.toString());

        for (int i = 0; i < lecId.size(); i++) {
            OrdDetail ordDetail = new OrdDetail();
            Lec lec = lecService.get(lecId.get(i));
            int hit = lec.getHit();
            lec.setHit(hit + 1);
            lecService.modify(lec);
            ordDetail.setLecId(lecId.get(i));
            ordDetail.setPrice(price.get(i));
            ordDetail.setDiscRate(discRate.get(i));
            ordDetail.setOrdId(ordId);
            log.info("여기" + ordDetail.toString());
            ordDetailService.register(ordDetail);
        }

        log.info("여기" + lecId.toString());
        for (Integer lecid : lecId) {
            Cart cart = (Cart) cartService.thisCart(lecid, stdnId);
            int cartId = cart.getId();
            cartService.remove(cartId);
        }
        log.info("여기" + cpnId);
        if (cpnId != 0) {
            Cpn cpn = (Cpn) cpnService.get(cpnId);
            cpnService.modify(cpn);
        }

        model.addAttribute("ordId", ordId);
        model.addAttribute("ordPrice", ordPrice);
        model.addAttribute("center", dir + "success");
        return "index";
    }

    @RequestMapping("/paythis")
    public String paythis(Integer lecId, Integer price, Integer discRate, Integer payMethod, Integer cpnId, Integer useCpn, Integer ordPrice, Model model, HttpSession session) throws Exception {
        //  주문에 필요한 것들 개많아... 주문하지 마 오프라인 구매 해...
        // 1. ord_table insert : ordPrice, payMethod, useCpn(쿠폰적용금액)
        // 2. ord_detail insert ( 각 강의별로 생성 ) : 각 강의 lecId 필요, 방금 insert한 ord Id 필요
        // 3. cart delete : 각 강의 lecId로 for문 돌려 remove XXXXXXXX 바로구매는 카트에서 안 지워요~~~
        // 4. cpn update : 사용여부 '1'

        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        String stdnId = stdn.getId();
        log.info("여기sntdId"+stdnId);
        Ord ord = new Ord();
        ord.setStdnId(stdnId);
        ord.setOrdPrice(ordPrice);
        ord.setPayMethod(payMethod+"");
        ord.setUseCpn(useCpn);
        log.info("여기오알디투스트링"+ord.toString());
        ordService.register(ord);

        Integer ordId = ordService.getLastOrdId();

        log.info("여기" + lecId.toString());
        Lec lec = lecService.get(lecId);
        int hit = lec.getHit();
        lec.setHit(hit + 1);
        lecService.modify(lec);
        OrdDetail ordDetail = new OrdDetail();
        ordDetail.setOrdId(ordId);
        ordDetail.setLecId(lecId);
        ordDetail.setPrice(price);
        ordDetail.setDiscRate(discRate);
        log.info("여기" + ordDetail.toString());
        ordDetailService.register(ordDetail);

        log.info("여기" + cpnId);
        if (cpnId != 0) {
            Cpn cpn = (Cpn) cpnService.get(cpnId);
            cpnService.modify(cpn);
        }
        model.addAttribute("ordId", ordId);
        model.addAttribute("ordPrice", ordPrice);
        model.addAttribute("center", dir + "success");
        return "index";
    }

    @RequestMapping("/orddetail")
    public String orddetail(Model model, Integer id) throws Exception {
        log.info("여기아이디" + id);
        Ord ord = (Ord) ordService.get(id);
        log.info("여기Ord잇다" + ord.toString());
        List<OrdDetail> list = new ArrayList<>();
        list = ordDetailService.getByOrd(id);
        model.addAttribute("ord", ord);
        model.addAttribute("list", list);
        model.addAttribute("center", dir + "orddetail");
        return "index";
    }

    @RequestMapping("/curri")
    public String curri(Model model, String id) throws Exception {
        List<Curri> list = curriService.getMyCurris(id);
        model.addAttribute("curri", list);
        model.addAttribute("center", dir + "curri");
        return "index";
    }

    @RequestMapping("/reviewdelete")
    public String reviewdelete(Integer id) throws Exception {

        LecReview lecReview = (LecReview) lecReviewService.get(id);
        Integer lecId = lecReview.getLecId();
        lecReviewService.updateDelete(id);

        return "redirect:/lecture/detail?id=" + lecId;
    }

    @RequestMapping("/curridel")
    public String curridel(Integer id, HttpSession session) throws Exception {
        curriService.remove(id);
        Stdn stdn = (Stdn) session.getAttribute("loginStdn");
        return "redirect:/lecture/curri?id=" + stdn.getId();
    }

    @RequestMapping("/curri/all")
    public String curriall(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Curri> p;
        try {
            p = new PageInfo<>(curriService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        model.addAttribute("target", "curri");
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/ordhistory")
    public String ordhistory(Model model, String stdnId) throws Exception {

        List<Ord> ord = ordService.getMyOrd(stdnId);
        Map<Integer, List<OrdDetail>> ordDetailByOrd = new HashMap<>();
        for(int n = 0; n < ord.size(); n++){
            Integer index = ord.get(n).getId();
            ordDetailByOrd.put(index, ordDetailService.getByOrd(index));
        }
        model.addAttribute("ordDetailByOrd", ordDetailByOrd);
        model.addAttribute("ord",ord);
        model.addAttribute("center", dir + "ordhistory");
        return "index";
    }

    @RequestMapping("/playlecture")
    public String playlecture(Integer id,String stdnId,Model model) throws Exception {
        Lec lec = lecService.get(id);
        //콜드콜 뿌릴 시간 구하는 랜덤, 프로젝트 때는 setTimemout 상수로 하기로 함.
        //String duration = lec.getLength();
        //Integer length = Integer.parseInt(duration);
        //Random r = new Random();
        //Integer coldcall = r.nextInt(49)+51;
        //log.info("임의의 coldcall 시간"+coldcall);
        //Integer timing = length * (coldcall / 100) * 1000;
        String rdate = lec.getRdate().substring(0,10);
        lec.setRdate(rdate);
        OrdDetail ordDetail = ordDetailService.getThisOrd(id,stdnId);
        model.addAttribute("lec",lec);
        //model.addAttribute("timing", timing);
        model.addAttribute("ordDetail", ordDetail);
        model.addAttribute("center", dir + "playlecture");
        return "index";
    }

    @RequestMapping("/mylecture")
    public String mylecture(Model model, String id) throws Exception {
        List<OrdDetail> ordDetail = ordDetailService.getMyOrdDetail(id);
        Integer cnt = cartService.cntMyCart(id);
        model.addAttribute("cnt", cnt);
        model.addAttribute("ordDetail", ordDetail);
        model.addAttribute("center", dir + "mylecture");
        return "index";
    }


    @RequestMapping("/search")
    public String searchvideo(Model model, String id) throws Exception {
        model.addAttribute("center", dir + "search");
        return "index";
    }

    @RequestMapping("/searchimpl")
    public String searchimpl(Model model, String search) throws Exception {
        JSONObject obj = (JSONObject) YoutubeUtil.search(search);
        JSONArray result = (JSONArray) YoutubeUtil.getYoutube(obj);

        model.addAttribute("center", dir + "searchresult");
        model.addAttribute("result", result);
        model.addAttribute("search", search);
        return "index";
    }

    @RequestMapping("/searchplay")
    public String searchplay(Model model, String title, String rdate, String description, String channelTitle, String videoId) throws Exception {
        log.info("타이틀"+title +"알데이트"+ rdate +"디스크립션"+ description +"채널아이디"+ channelTitle +"비디오아이디"+ videoId);

        JSONObject obj = new JSONObject();
        obj.put("title", title);
        obj.put("rdate", rdate);
        obj.put("videoId", videoId);
        obj.put("channelTitle", channelTitle);
        obj.put("description", description);

        log.info("여기"+obj.toJSONString());

        model.addAttribute("center", dir + "searchplay");
        model.addAttribute("video", obj);
        return "index";
    }


}
