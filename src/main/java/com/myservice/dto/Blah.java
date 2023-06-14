package com.myservice.dto;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Blah {
    private int id;
    private String stdnId;
    private String name;
    private String img;
    private String contents;
    private String rdate;
    private int likes;
    private List<Comm> commList;
    private int commentCount;
    private int likeCount;

    // Getter and Setter methods for other fields

    public List<Comm> getCommList() {
        return commList;
    }

    public void setCommList(List<Comm> commList) {
        this.commList = commList;
    }

    public void addComm(Comm comm) {
        if (commList == null) {
            commList = new ArrayList<>();
        }
        commList.add(comm);
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commList != null ? commList.size() : 0;
    }

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
    public Blah(int id) {
        this.id = id;
    }


}