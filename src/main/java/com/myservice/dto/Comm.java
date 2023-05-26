package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Comm {
    private int id;
    private int postId;
    private String content;
    private String rdate;
    private String stdnId;

    //Insert
    public Comm(int postId, String content, String stdnId) {
        this.postId = postId;
        this.content = content;
        this.stdnId = stdnId;
    }

    //Update
    public Comm(int id, String content) {
        this.id = id;
        this.content = content;
    }
}