package com.myservice.dto;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MrkComm {
    private int id;
    private int postId;
    private String contents;
    private String rdate;
    private String stdnId;
    private String stdnName;
    private String stdnImg;


    //Insert
    public MrkComm(int postId, String contents, String stdnId) {
        this.postId = postId;
        this.contents = contents;
        this.stdnId = stdnId;
    }

    //Update
    public MrkComm(int id, String contents) {
        this.id = id;
        this.contents = contents;
    }


}