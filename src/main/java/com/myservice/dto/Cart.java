package com.myservice.dto;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cart {
    private String stdnId;
    private Integer lecId;
    private int id;
    private String rdate;


//    private String student_name;
//    private String lecture_title;
//    private String lecture_topic;
//    private int lecture_price;
//    private String lecture_target;
//    private String lecture_img;
//    private int cnt;

}
