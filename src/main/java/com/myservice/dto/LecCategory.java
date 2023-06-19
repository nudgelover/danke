package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LecCategory {
    private Integer lecCode;
    private String sbjCode;
    private String sbjCode2;
    private String sbjCode3;

    private String sbjName;
    private String topic;
    private Integer parent;

}