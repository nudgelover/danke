package com.myservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Likes {
    private int likeId;
    private int postId;
    private String stdnId;
    private String board;


    //Insert
    public Likes(int postId, String stdnId, String board) {
        this.postId = postId;
        this.stdnId = stdnId;
        this.board = board;
    }
}
