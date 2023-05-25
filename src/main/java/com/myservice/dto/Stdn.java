package com.myservice.dto;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Stdn {
    //@Size(min=5, max=10, message="ID는 5자리 이상 10자리 이하입니다.")
    //@NotEmpty(message="PASSWORD는 5이상 12자리 이하입니다.")
    private String id;
    //@Size(min=5, max=12, message="PASSWORD는 5이상 12자리 이하입니다.")
    //@NotEmpty(message="PASSWORD는 5이상 12자리 이하입니다.")
    private String pwd;
    //@NotEmpty(message="이름을 입력하세요.")
    private String name;
    private String email;
    private String contact;
    private String img;
    private String birthday;
    private String isSubscribe;
    private String cpn;
    private String isExit;
    private String exitDate;
    private String lastVisit;
    private String isJoin;
    private String sbj1;
    private String sbj2;
    private String sbj3;
    private String loginError;



    private MultipartFile imgfile;


    public Stdn(String id, String pwd, String name, String email, String contact) {
        this.id = id;
        this.pwd = pwd;
        this.name = name;
        this.email = email;
        this.contact = contact;
    }


}
