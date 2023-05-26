package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LecReview {
    private int id;
    private Integer lecId;
    private String stdnId;
    private String title;
    private String contents;
    private String rdate;
    private double rating;
    private String img;
    private String isDelete;
    private String delDate;
    private String upReview;
    private int likes;

    private MultipartFile imgfile;

    //Insert
    public LecReview(Integer lecId, String stdnId, String title, String contents, double rating, String img, String upReview) {
        this.lecId = lecId;
        this.stdnId = stdnId;
        this.title = title;
        this.contents = contents;
        this.rating = rating;
        this.img = img;
        this.upReview = upReview;
    }

    //Update
    public LecReview(int id, String title, String contents, double rating, String img) {
        this.id = id;
        this.title = title;
        this.contents = contents;
        this.rating = rating;
        this.img = img;
    }

    //DeleteUpdate
    public LecReview(int id, String isDelete) {
        this.id = id;
        this.isDelete = isDelete;
    }

}