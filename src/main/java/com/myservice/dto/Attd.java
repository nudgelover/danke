package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Attd {
    private int id;
    private String stdnId;
    private String rdate;
    private String startTime;
    private String endTime;
    private String isAttend;
    private String month;

    //Insert
    public Attd(String stdnId, String isAttend) {
        this.stdnId = stdnId;
        this.isAttend = isAttend;
    }

    //Absence Insert, endTime Update
    public Attd(String stdnId) {
        this.stdnId = stdnId;
    }
}