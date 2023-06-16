package com.myservice.utill;

import lombok.extern.slf4j.Slf4j;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.model.StorageType;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.service.DefaultMessageService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.util.Random;


@Slf4j

public class SendSMSUtil {
    @Value("${adminsms.api}")
    private String api;
    @Value("${adminsms.secret}")
    private String secret;


    final DefaultMessageService messageService;

    public SendSMSUtil(DefaultMessageService messageService) {
        this.messageService = NurigoApp.INSTANCE.initialize("나한테물어", "나한테물어", "https://api.coolsms.co.kr");
    }

    public Integer sendCode(String contact) {
        Message message = new Message();
        String from = "나한테물어";
        Random r = new Random();
        Integer code = r.nextInt(888888)+111111;
        String text ="[DIGICampus Danke] 1회용인증번호: ["+ code +"] (유효기한 5분내에 입력 바랍니다.)";
        log.info("여기"+text);
        message.setFrom(from);
        message.setTo(contact);
        message.setText(text);

        messageService.sendOne(new SingleMessageSendingRequest(message));

        return code;
    }

    public void sendQr(String contact, String name, String qr_name) throws Exception {
        String from = "나한테물어";
        File qrFile = ResourceUtils.getFile("file:C:/project/uimg/" + qr_name);
        String imageId = messageService.uploadFile(qrFile, StorageType.MMS, null);

        Message message = new Message();
        message.setFrom(from);
        message.setTo(contact);
        message.setText("[DIGICampus Danke] " + name + "님 QR코드가 발급되었습니다. 더 편리해진 Danke를 이용하세요!");
        message.setImageId(imageId);

        messageService.sendOne(new SingleMessageSendingRequest(message));
    }

}
