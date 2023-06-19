<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #oneonone_box{
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
    let oneonone = {
        id:null,
        stompClient:null,
        init:function(){
            this.id = $('#adm_id_oneonone').text();//adm_id에서 적힌 글씨를 id로 뿌려줄 예정이다.
            $("#connect_oneonone").click(function() {
                oneonone.connect();
            });
            $("#disconnect_oneonone").click(function() {
                oneonone.disconnect();
            });
            $("#sendto").click(function() {
                oneonone.sendTo();
            });
        },
        connect:function(){
            var sid = this.id;
            var socket = new SockJS('${adminserver}/ws');
            // SockJS는 웹소켓을 지원하지 않는 브라우저에서도 웹소켓과 유사한 방식으로 통신할 수 있게 해주는 js라이브러리
            this.stompClient = Stomp.over(socket);
            // Stomp는 웹소켓 프로토콜을 사용하는 메시징 서비스를 제공.(Simple Text Oriented Messaging Protocol)

            this.stompClient.connect({}, function(frame) {
                //첫 번째 매개변수는 연결 설정 객체, STOMP 메시지 브로커와의 인증을 위한 정보를 제공합니다.
                //두 번째 매개변수는 연결이 성공했을 때 실행될 콜백 함수입니다. 서버에서 전송한 메시지를 수신하기 위해 콜백 함수를 등록합니다.
                oneonone.setConnected(true);//단순히 connected, disconnected 적히게 하는 함수.
                console.log('Connected: ' + frame);

                this.subscribe('/send/to/'+sid, function(msg) {
                    $("#to").append(
                        "<h4>" + JSON.parse(msg.body).sendid +":"+
                        JSON.parse(msg.body).content1
                        + "</h4>");
                });
            });
        },

        disconnect:function(){
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            oneonone.setConnected(false);
            console.log("Disconnected");
        },
        setConnected:function(connected){
            if (connected) {
                $("#status_oneonone").text("Connected");
            } else {
                $("#status_oneonone").text("Disconnected");
            }
        },
        sendTo:function(){
            var msg = JSON.stringify({
                'sendid' : this.id,
                'receiveid' : $('#target').val(),
                'content1' : $('#totext').val()
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
        oneonone.init();
    })

</script>


    <!-- DataTales Example -->
    <div class="card shadow mb-4" id = "oneonone_box">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">1:1 Chat 관리자 아이디 박아놓고, 관리자하고만 채팅할 수있도록?</h6>
        </div>
        <div class="card-body">
            <div id="container"></div>
            <div class="col-sm-12">
                <h3 id="adm_id_oneonone">${loginStdn.id}</h3>
                <H3 id="status_oneonone">Status</H3>
                <button id="connect_oneonone" class="btn btn-info">Connect</button>
                <button id="disconnect_oneonone" class="btn btn-info">Disconnect</button>

                <div id="to"></div>
                <input type="text" id="target">
                <input type="text" id="totext"><button id="sendto" class="btn btn-info">Send</button>

            </div>
        </div>
    </div>
