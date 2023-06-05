package com.myservice.dto;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class ReviewCnt {
    private double rating;
    private int ratingCnt;
}