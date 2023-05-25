package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Attd {
    private int id;
    private String stdnId;
    private String rdate;
    private String startTime;
    private String endTime;
    private String isAttend;

}