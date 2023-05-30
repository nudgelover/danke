package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Curri {
    private int id;
    private String stdnId;
    private Integer lecId;
    private String rdate;
    private String isOpen;


    private String stdnName;
    private String lecTitle;
    private String lecTopic;
    private int lecPrice;
    private String lecTarget;
    private String lecImg;
    private int cnt;

    //Insert
    public Curri(String stdnId, Integer lecId, String isOpen) {
        this.stdnId = stdnId;
        this.lecId = lecId;
    }

    //Update
    public Curri(int id, String isOpen) {
        this.id = id;
        this.isOpen = isOpen;
    }

}