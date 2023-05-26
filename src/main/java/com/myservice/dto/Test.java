package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Test {
    private int id;
    private String stdnId;
    private String rdate;
    private String target;
    private int score;
    private String sbj;

    private String stdnName;

    //Insert
    public Test(String stdnId, String target, int score, String sbj) {
        this.stdnId = stdnId;
        this.target = target;
        this.score = score;
        this.sbj = sbj;
    }

    //Update
    public Test(int id, String target, int score, String sbj) {
        this.id = id;
        this.target = target;
        this.score = score;
        this.sbj = sbj;
    }
}