package com.myservice.dto;

import lombok.*;


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

//    private MultipartFile file;
//
//    private String studentName;
//    private String studentImg;
//
//    public Stdy(String writer, String startTime, String endTime, String contents, String filename, String filenameOrg) {
//        this.writer = writer;
//        this.startTime = startTime;
//        this.endTime = endTime;
//        this.contents = contents;
//        this.filename = filename;
//        this.filenameOrg = filenameOrg;
//    }
//
//    public Stdy(int id, String writer, String startTime, String endTime, String contents, String rdate, String filename, String filenameOrg) {
//        this.id = id;
//        this.writer = writer;
//        this.startTime = startTime;
//        this.endTime = endTime;
//        this.contents = contents;
//        this.rdate = rdate;
//        this.filename = filename;
//        this.filenameOrg = filenameOrg;
//    }
//
//    public Stdy(int id, String writer, String startTime, String endTime, String contents, String filename, String filenameOrg) {
//        this.id = id;
//        this.writer = writer;
//        this.startTime = startTime;
//        this.endTime = endTime;
//        this.contents = contents;
//        this.filename = filename;
//        this.filenameOrg = filenameOrg;
//    }

}