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


    public Anc(int id, String title, String writer, String contents, String rdate, String img) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.contents = contents;
        this.rdate = rdate;
        this.img = img;
    }

    private MultipartFile imgfile;
}