package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Subsc {
    private int id;
    private String stdnId;
    private String startDate;
    private String endDate;
    private String validDate;

}