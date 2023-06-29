package com.myadmin.dto;

import lombok.*;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Adm implements Serializable {
    @NotEmpty(message = "아이디는 필수항목입니다.")
    @Size(min=4, max=15, message = "ID는 최소 4글자, 최대 15글자입니다.")
    private String id;
    @NotEmpty(message = "비밀번호는 필수항목입니다.")
//    @Size(min=4, max=15, message = "PWD는 최소 4글자, 최대 15글자입니다.")
    private String pwd;
    private Integer lev;
//    @NotEmpty(message = "이메일은 필수항목입니다.")
    private String email;
    private String rdate;
//    @NotEmpty(message = "연락처는 필수항목입니다.")
    private String contact;
//    @NotEmpty(message = "주소는 필수항목입니다.")
    private String addr;
    private String isDelete;
    private String delDate;
    private String name;

    public Adm(String id, String pwd, Integer lev, String email) {
        this.id = id;
        this.pwd = pwd;
        this.lev = lev;
        this.email = email;
    }

    public Adm(String id, String pwd, Integer lev, String email, String name) {
        this.id = id;
        this.pwd = pwd;
        this.lev = lev;
        this.email = email;
        this.name = name;
    }
}
