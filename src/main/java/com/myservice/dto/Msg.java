package com.myservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
public class Msg {
    private String postid;
    private String sendid;
    private String receiveid;
    private String content;
}
