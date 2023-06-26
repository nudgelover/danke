package com.myservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class LecTopicSearch {
    private String lecTopic;
    private Integer spec;
}
