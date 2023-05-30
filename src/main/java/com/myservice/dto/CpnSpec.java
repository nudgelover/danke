package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CpnSpec {
    private int id;
    private String title;
    private int fixed;
    private int percent;

    //Insert
    public CpnSpec(String title, int fixed, int perent) {
        this.title = title;
        this.fixed = fixed;
        this.percent = perent;
    }

    //Update
    public CpnSpec(int id, int fixed, int percent) {
        this.id = id;
        this.fixed = fixed;
        this.percent = percent;
    }
}



