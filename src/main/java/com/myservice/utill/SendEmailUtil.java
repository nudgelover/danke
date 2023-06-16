package com.myservice.utill;

import lombok.extern.slf4j.Slf4j;;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;
import java.util.Random;

@Slf4j
public class SendEmailUtil {


    private JavaMailSender mailSender;

    public SendEmailUtil() {
        mailSender = new JavaMailSenderImpl();
        ((JavaMailSenderImpl) mailSender).setHost("smtp.naver.com");
        ((JavaMailSenderImpl) mailSender).setPort(587);
        ((JavaMailSenderImpl) mailSender).setUsername("나한테물어");
        ((JavaMailSenderImpl) mailSender).setPassword("나한테물어!");

        Properties props = ((JavaMailSenderImpl) mailSender).getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");
    }

    public Integer sendCode(String to) {
        SimpleMailMessage message = new SimpleMailMessage();
        String subject = "[DIGICampus Danke]회원가입 인증번호입니다.";
        Random r = new Random();
        Integer code = r.nextInt(888888)+111111;
        String text ="[DIGICampus Danke] 1회용인증번호: "+ code +" (유효기한 5분내에 입력 바랍니다.)";
        log.info("여기"+text);
        message.setTo(to);
        message.setFrom("나한테물어");
        message.setSubject(subject);
        message.setText(text);

        mailSender.send(message);

        return code;
    }
}