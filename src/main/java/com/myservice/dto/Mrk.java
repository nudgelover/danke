package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Mrk {
    private int id;
    private String writer;
    private double lat;
    private double lng;
    private String img;
    private double rating;
    private String detail;
    private String keyword;
    private String title;
    private String rdate;
    private boolean NewPost;
    private String TimeAgo;
    private int commentCount;

    private MultipartFile imgfile;


    public Mrk(int id, String writer, double lat, double lng, String img, double rating, String detail, String keyword, String title, String rdate) {
        this.id = id;
        this.writer = writer;
        this.lat = lat;
        this.lng = lng;
        this.img = img;
        this.rating = rating;
        this.detail = detail;
        this.keyword = keyword;
        this.title = title;
        this.rdate = rdate;
    }

    //Insert
    public Mrk(String writer, double lat, double lng, String img, double rating, String detail, String keyword, String title) {
        this.writer = writer;
        this.lat = lat;
        this.lng = lng;
        this.img = img;
        this.rating = rating;
        this.detail = detail;
        this.keyword = keyword;
        this.title = title;
    }

    //Update
    public Mrk(int id, double lat, double lng, String img, double rating, String detail, String keyword, String title) {
        this.id = id;
        this.lat = lat;
        this.lng = lng;
        this.img = img;
        this.rating = rating;
        this.detail = detail;
        this.keyword = keyword;
        this.title = title;
    }
}
