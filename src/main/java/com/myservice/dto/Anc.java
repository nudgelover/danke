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
    public Anc(int id, String title, String writer, String contents, String rdate, String img) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.contents = contents;
        this.rdate = rdate;
        this.img = img;
    }

    //Without id, rdate, imgfile(sequence)
    public Anc(String writer, String title, String contents, String img) {
        this.writer = writer;
        this.title = title;
        this.contents = contents;
        this.img = img;
    }

}