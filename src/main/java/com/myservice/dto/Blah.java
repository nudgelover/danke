package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Blah {
    private int id;
    private String stdnId;
    private String contents;
    private String rdate;
    private int likes;

}