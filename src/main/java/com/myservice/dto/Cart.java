package com.myservice.dto;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cart {
    private String stdnId;
    private Integer lecId;
    private int id;
    private String rdate;


    private String stdnName;
    private String lecTitle;
    private String lecTopic;
    private int lecPrice;
    private String lecTarget;
    private String lecImg;
    private int cnt;

    public Cart(String stdnId, Integer lecId) {
        this.stdnId = stdnId;
        this.lecId = lecId;
    }
}
