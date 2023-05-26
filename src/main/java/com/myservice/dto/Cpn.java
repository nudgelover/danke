package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Cpn {
    private int id;
    private String stdnId;
    private String giveDate;
    private String validDate;
    private String isUsed;

    //Insert
    public Cpn(String stdnId, String validDate) {
        this.stdnId = stdnId;
        this.validDate = validDate;
    }

    //Update
    public Cpn(int id, String isUsed) {
        this.id = id;
        this.isUsed = isUsed;
    }
}