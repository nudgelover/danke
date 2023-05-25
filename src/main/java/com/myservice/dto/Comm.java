package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Comm {
    private int id;
    private int postId;
    private String content;
    private String rdate;
    private String stdnId;

}