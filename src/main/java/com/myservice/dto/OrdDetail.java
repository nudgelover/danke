package com.myservice.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class OrdDetail {
    private int id;
    private Integer lecId;
    private int ordId;
    private String stdyHour;
    private Integer discRate;
    private Integer price;


    private String lecCode;
    private String lecTitle;
    private String lecTeacher;
    private String lecTopic;
    private String lecTarget;
    private String lecLength;
    private String img;
    private String stdnId;
    private String stdnName;

    private MultipartFile imgfile;

    //Insert
    public OrdDetail(Integer lecId, int ordId) {
        this.lecId = lecId;
        this.ordId = ordId;
    }

    //Update
    public OrdDetail(int id, String stdyHour) {
        this.id = id;
        this.stdyHour = stdyHour;
    }
}