package com.myservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class LecSearch {
    private String title;
    private String teacher;
    private String topic;
    private String rdate;
    private Integer miniPrice;
    private Integer maxPrice;
    private Integer rating;


}
