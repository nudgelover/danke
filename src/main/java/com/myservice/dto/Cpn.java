package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Cpn {
    private int id;
    private int specId;
    private String stdnId;
    private String giveDate;
    private String validDate;
    private String isUsed;

    private String cpnTitle;
    private int fixed;
    private int percent;

    //Insert
    public Cpn(int specId, String stdnId, String validDate) {
        this.specId = specId;
        this.stdnId = stdnId;
        this.validDate = validDate;
    }

    //Update
    public Cpn(int id, String isUsed) {
        this.id = id;
        this.isUsed = isUsed;
    }
}