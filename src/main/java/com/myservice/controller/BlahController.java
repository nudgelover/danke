package com.myservice.controller;

import com.myservice.dto.Blah;
import com.myservice.dto.Comm;
import com.myservice.dto.Likes;
import com.myservice.service.BlahService;
import com.myservice.service.CommService;
import com.myservice.service.LikesService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Slf4j
@Controller
@RequestMapping("/blah")
public class BlahController {

    @Value("${uploadimgdir}")
    String imgpath;
    String dir = "blah/";
    @Autowired
    BlahService blahService;
    @Autowired
    CommService commService;
    @Autowired
    LikesService likesService;

    @RequestMapping("")
    public String blah(Model model) throws Exception {
        List<Blah> blahList = null;

        try {
            blahList = blahService.get();  // 모든 Blah 게시글 조회
            for (Blah blah : blahList) {
                List<Comm> commList = commService.getPostComm(blah.getId());  // 해당 Blah 게시글의 댓글 조회
                blah.setCommList(commList);  // Blah 게시글에 댓글 리스트 추가
                int commentCount = commService.cntComm(blah.getId());  // Get the count of comments for the postId
                blah.setCommentCount(commentCount);  // Set the comment count in the Blah object
                int likeCount = blahService.cntLike(blah.getId());
                blah.setLikeCount(likeCount);
            }

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        model.addAttribute("blahList", blahList);  // 모든 Blah 게시글 추가
        model.addAttribute("center", dir + "blah");
        return "index";
    }


    @RequestMapping("/addimpl")
    public String addimpl(Model model, Blah blah) throws Exception {

        try {
            blahService.register(blah);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/blah";
    }

    @RequestMapping("/delete")
    public String delete(Model model, Integer id) throws Exception {

        try {
            blahService.remove(id);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/blah";
    }


    @RequestMapping("/addcomm")
    public String addcomm(Model model, Comm comm) throws Exception {

        try {
            commService.register(comm);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/blah";
    }

    @RequestMapping("/deletecom")
    public String deletecom(Model model, Integer id) throws Exception {

        try {
            commService.remove(id);
        } catch (Exception e) {
            throw new Exception(e);
        }
        return "redirect:/blah";

    }


    @RequestMapping("/addlike")
    public String addlike(Model model, Likes likes) throws Exception {

        try {
            likesService.register(likes);
        } catch (Exception e) {
            throw new Exception(e);
        }

        return "redirect:/blah";
    }


    @RequestMapping("/deletelike")
    public String deletelike(Integer postId, String stdnId, String board) throws Exception {
        try {
            Likes likes = likesService.getThisLikes(postId, stdnId, board);
            if (likes != null) {
                int likeId = likes.getLikeId();
                likesService.remove(likeId);
            }
        } catch (Exception e) {
            throw new Exception(e);
        }
        return "redirect:/blah";
    }


    @RequestMapping("/group")
    public String group(Model model) throws Exception {

        model.addAttribute("center", dir + "group");
        return "index";
    }


    @RequestMapping("/private")
    public String privatechat(Model model) throws Exception {
        model.addAttribute("center", dir + "private");
        return "index";
    }


}
