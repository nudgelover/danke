package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Prz {
    private int id;
    private String stdnId;
    private String prz;
    private String przCategory;
    private String rdate;


    private String stdnName;

    //Insert
    public Prz(String stdnId, String prz, String przCategory, String rdate) {
        this.stdnId = stdnId;
        this.prz = prz;
        this.przCategory = przCategory;
        this.rdate = rdate;
    }

    //Update
    public Prz(int id, String prz, String przCategory, String rdate) {
        this.id = id;
        this.prz = prz;
        this.przCategory = przCategory;
        this.rdate = rdate;
    }
}