package com.myservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Search {
    private String keyword;
    private String search;
}
