package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class ReviewCnt {
    private int rating;
    private int ratingCnt;
}