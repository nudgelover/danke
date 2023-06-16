package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Stdy {
    private int id;
    private String writer;
    private String startTime;
    private String endTime;
    private String contents;
    private String rdate;
    private String filename;
    private String filenameOrg;

    private MultipartFile filenameFile;

    private String stdnName;
    private String stdnImg;
    private String duration;
    private String month;
    private int studyCount;
    private String shortVer;

    //Insert
    public Stdy(String writer, String startTime, String endTime, String contents, String filename, String filenameOrg) {
        this.writer = writer;
        this.startTime = startTime;
        this.endTime = endTime;
        this.contents = contents;
        this.filename = filename;
        this.filenameOrg = filenameOrg;
    }

    //Update
    public Stdy(int id, String contents, String filename, String filenameOrg) {
        this.id = id;
        this.contents = contents;
        this.filename = filename;
        this.filenameOrg = filenameOrg;
    }

    public Stdy(String writer, String startTime) {
        this.writer = writer;
        this.startTime = startTime;
    }
}