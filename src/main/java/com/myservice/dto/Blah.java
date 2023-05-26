package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Blah {
    private int id;
    private String stdnId;
    private String contents;
    private String rdate;
    private int likes;

    //insert
    public Blah(String stdnId, String contents) {
        this.stdnId = stdnId;
        this.contents = contents;
    }

    //Update
    public Blah(int id, String contents) {
        this.id = id;
        this.contents = contents;
    }

    //like Update
    public Blah(int id, int likes) {
        this.id = id;
        this.likes = likes;
    }
}