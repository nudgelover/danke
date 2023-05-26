package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Lec {
    private Integer id;
    private String admId;
    private Integer lecCode;
    private String title;
    private String teacher;
    private String topic;
    private String target;
    private String rdate;
    private String length;
    private double rating;
    private Integer price;
    private String img;
    private double discRate;
    private String isDelete;
    private String delDate;
    private Integer hit;

    public Lec(Integer id, String admId, Integer lecCode, String title, String teacher, String topic, String target, String rdate, String length, double rating, Integer price, String img, double discRate, String isDelete, String delDate, Integer hit) {
        this.id = id;
        this.admId = admId;
        this.lecCode = lecCode;
        this.title = title;
        this.teacher = teacher;
        this.topic = topic;
        this.target = target;
        this.rdate = rdate;
        this.length = length;
        this.rating = rating;
        this.price = price;
        this.img = img;
        this.discRate = discRate;
        this.isDelete = isDelete;
        this.delDate = delDate;
        this.hit = hit;
    }

    private MultipartFile imgfile;
}