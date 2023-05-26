package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Anc {
    private int id;
    private String writer;
    private String title;
    private String contents;
    private String img;
    private String rdate;

    private MultipartFile imgfile;

    //Without imgfile


    public Anc(int id, String writer, String title, String contents, String img, String rdate) {
        this.id = id;
        this.writer = writer;
        this.title = title;
        this.contents = contents;
        this.img = img;
        this.rdate = rdate;
    }
}