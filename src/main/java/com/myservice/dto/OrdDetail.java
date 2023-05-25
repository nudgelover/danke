package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class OrdDetail {
    private int id;
    private Integer lecId;
    private int ordId;
    private String stdyHour;

}