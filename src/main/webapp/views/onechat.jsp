<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
    #onechat_box{
        width: 400px;
        height : 500px;
        position : fixed;
        bottom: 13%;
        right: 9%;
        display : none;
        z-index: 9999;

    }
    #to {
        width: 300px;
        height: 200px;
        overflow: auto;
        border: 2px solid green;

    }
</style>

<script>
    let onechat = {
        id:null,
        stompClient:null,
        init:function(){
            this.id = $('#adm_id_onechat').text();//adm_id에서 적힌 글씨를 id로 뿌려줄 예정이다.
            $("#connect_onechat").click(function() {
                onechat.connect();
            });
            $("#disconnect_onechat").click(function() {
                onechat.disconnect();
            });
            $("#sendto").click(function() {
                onechat.sendTo();
            });
        },
        connect:function(){
            var sid = this.id;
            var socket = new SockJS('${serviceserver}/ws');
            // SockJS는 웹소켓을 지원하지 않는 브라우저에서도 웹소켓과 유사한 방식으로 통신할 수 있게 해주는 js라이브러리
            this.stompClient = Stomp.over(socket);
            // Stomp는 웹소켓 프로토콜을 사용하는 메시징 서비스를 제공.(Simple Text Oriented Messaging Protocol)

            this.stompClient.connect({}, function(frame) {
                //첫 번째 매개변수는 연결 설정 객체, STOMP 메시지 브로커와의 인증을 위한 정보를 제공합니다.
                //두 번째 매개변수는 연결이 성공했을 때 실행될 콜백 함수입니다. 서버에서 전송한 메시지를 수신하기 위해 콜백 함수를 등록합니다.
                onechat.setConnected(true);//단순히 connected, disconnected 적히게 하는 함수.
                console.log('Connected: ' + frame);

                this.subscribe('/send/to/'+sid, function(msg) {
                    $("#to").append(
                        "<h4>" + JSON.parse(msg.body).sendid +":"+
                        JSON.parse(msg.body).content
                        + "</h4>");
                });
            });
        },

        disconnect:function(){
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            onechat.setConnected(false);
            console.log("Disconnected");
        },
        setConnected:function(connected){
            if (connected) {
                $("#status_onechat").text("Connected");
            } else {
                $("#status_onechat").text("Disconnected");
            }
        },
        sendTo:function(){
            var msg = JSON.stringify({
                'sendid' : this.id,
                'receiveid' : $('#target').val(),
                'content' : $('#totext').val()
            });
            this.stompClient.send('/receiveto', {}, msg);

            this.stompClient.send("/receiveme", {}, msg);
            $('#to').append(
                '<h4>'+this.id+':'+ $('#totext').val()+'</h4>'
            );
            $('#totext').val('');
        }

    };
    $(function(){
        onechat.init();
    })

</script>


    <!-- DataTales Example -->
    <div class="card shadow mb-4" id = "onechat_box">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">1:1 Chat</h6>
        </div>
        <div class="card-body">
            <div id="container"></div>
            <div class="col-sm-12">
                <h3 id="adm_id_onechat">${loginStdn.id}</h3>
                <H3 id="status_onechat">Status</H3>
                <button id="connect_onechat" class="btn btn-info">Connect</button>
                <button id="disconnect_onechat" class="btn btn-info">Disconnect</button>

                <div id="to"></div>
                <input type="text" id="target">
                <input type="text" id="totext"><button id="sendto" class="btn btn-info">Send</button>

            </div>
        </div>
    </div>



<div class="d-flex justify-content-end mb-10 d-none" data-kt-element="template-out">
    <!--begin::Wrapper-->
    <div class="d-flex flex-column align-items-end">
        <!--begin::User-->
        <div class="d-flex align-items-center mb-2">
            <!--begin::Details-->
            <div class="me-3">
                <span class="text-muted fs-7 mb-1">Just now</span>
                <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">You</a>
            </div>
            <!--end::Details-->
            <!--begin::Avatar-->
            <div class="symbol symbol-35px symbol-circle">
                <img alt="Pic" src="/assets/media/avatars/300-1.jpg"/>
            </div>
            <!--end::Avatar-->
        </div>
        <!--end::User-->
        <!--begin::Text-->
        <div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end"
             data-kt-element="message-text"></div>
        <!--end::Text-->
    </div>
    <!--end::Wrapper-->
</div>