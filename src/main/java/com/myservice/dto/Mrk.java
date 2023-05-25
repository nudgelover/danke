package com.myservice.dto;

import lombok.*;


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


    //private MultipartFile imgfile;

}
