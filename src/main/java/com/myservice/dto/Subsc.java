package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Subsc {
    private int id;
    private String stdnId;
    private String startDate;
    private String endDate;
    private String validDate;

    private String stdnName;

    //Insert
    public Subsc(String stdnId, String endDate, String validDate) {
        this.stdnId = stdnId;
        this.endDate = endDate;
        this.validDate = validDate;
    }

    //Update
    public Subsc(int id, String endDate, String validDate) {
        this.id = id;
        this.endDate = endDate;
        this.validDate = validDate;
    }
}