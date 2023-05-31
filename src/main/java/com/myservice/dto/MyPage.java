package com.myservice.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MyPage {
    private String id;
    private String name;
    private String email;
    private String contact;
    private String img;
    private String birthday;
    private String mbti;
    private String comdate;
    private String digidate;
    private String rdate;
    private String detail;
    private String insta;
    private String facebook;

    public MyPage(String id, String mbti, String comdate, String digidate, String rdate, String detail, String insta, String facebook) {
        this.id = id;
        this.mbti = mbti;
        this.comdate = comdate;
        this.digidate = digidate;
        this.rdate = rdate;
        this.detail = detail;
        this.insta = insta;
        this.facebook = facebook;
    }
}
