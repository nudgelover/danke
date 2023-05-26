package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Ord {
    private int id;
    private String stdnId;
    private String rdate;
    private String isDone;
    private int ordPrice;
    private String payMethod;
    private String upDate;
    private int useCpn;

    //Insert
    public Ord(String stdnId, int ordPrice, String payMethod, int useCpn) {
        this.stdnId = stdnId;
        this.ordPrice = ordPrice;
        this.payMethod = payMethod;
        this.useCpn = useCpn;
    }

    //Update
    public Ord(int id) {
        this.id = id;
    }
}