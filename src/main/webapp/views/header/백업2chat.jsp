<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    let onechat = {
        id         : null,
        stompClient: null,
        init       : function () {
            this.id = $('#stdn_id').val();
            $("#connect_onechat").click(function () {
                onechat.connect();
            });
            $("#kt_drawer_chat_close").click(function () {
                onechat.disconnect();
                //     아니면 연결을 누르면 연결종료라는 버튼 나와서 토글로 켰다껐다 할수 있게,,,
            });
            $("#msgsend").click(function () {
                onechat.sendTo();
                const receiver = $("#receivetarget").val(); // 입력한 받는 사람 값 가져오기
                $("#reciever").text(receiver); // 받는 사람 텍스트 변경

            });

        },

        // 메시지 로컬 스토리지에 추가하는 함수
        addMessageToStorage: function (msg) {
            const messages = JSON.parse(localStorage.getItem("messages")) || [];
            messages.push(msg);
            //             messages.push(JSON.stringify(msg));

            localStorage.setItem("messages", JSON.stringify(messages));

        },

        // 메시지 로컬 스토리지에서 가져와 출력하는 함수
        loadMessagesFromStorage: function () {
            const messages = JSON.parse(localStorage.getItem("messages")) || [];
            for (const msg of messages) {
                if (msg.body) {
                    //내가 받은 메세지 파싱
                    const parseMsg = JSON.parse(msg.body);
                    // console.log(parseMsg, "parseMsg");
                    console.log(parseMsg.sendid + ": sendid");
                    console.log(parseMsg.receiveid + ": receiveid");
                    console.log(parseMsg.content + ": content")

                } else {
                    // 내가 보낸 메시지 파싱
                    // console.log(msg + "msg")
                    // {"sendid":"rlawls2422","receiveid":"wlsgml2422","content":"안녕넛지야"}msg
                    const parseMsg2 = JSON.parse(msg);
                    // console.log(parseMsg2 + " @-----parseMsg2")
                    //[object Object] @-----parseMsg2
                    console.log(parseMsg2.sendid + "@------parseMsg2.sendid")
                    console.log(parseMsg2.receiveid + "@------parseMsg2.receiveid")
                    console.log(parseMsg2.content + "@------parseMsg2.content")
                }
            }
        },
        connect                : function () {
            var sid = this.id;
            var socket = new SockJS('${serviceserver}/ws');
            // SockJS는 웹소켓을 지원하지 않는 브라우저에서도 웹소켓과 유사한 방식으로 통신할 수 있게 해주는 js라이브러리
            this.stompClient = Stomp.over(socket);
            // Stomp는 웹소켓 프로토콜을 사용하는 메시징 서비스를 제공.(Simple Text Oriented Messaging Protocol)

            this.stompClient.connect({}, function (frame) {
                //첫 번째 매개변수는 연결 설정 객체, STOMP 메시지 브로커와의 인증을 위한 정보를 제공합니다.
                //두 번째 매개변수는 연결이 성공했을 때 실행될 콜백 함수입니다. 서버에서 전송한 메시지를 수신하기 위해 콜백 함수를 등록합니다.
                onechat.setConnected(true);//단순히 connected, disconnected 적히게 하는 함수.
                console.log('Connected: ' + frame);
                onechat.loadMessagesFromStorage();

                this.subscribe('/send/to/' + sid, function (msg) {
                    $.ajax({
                        url    : '/getstdnimg',
                        method : 'GET',
                        data   : {stdnId: JSON.parse(msg.body).sendid}, // 이미지를 가져올 학생의 ID를 전달합니다.
                        success: function (response) {
                            const imgUrl = response.img; // 서버에서 조회한 stdn dto
                            const stdnName = response.name;
                            // console.log(imgUrl);
                            localStorage.setItem("messengerModalShown", "true");
                            $('.badge-dot').show();
                            $("#message").append(
                                '<div class="d-flex justify-content-start mb-10"><div class="d-flex flex-column align-items-start"> <div class="d-flex align-items-center mb-2"> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/uimg/' + imgUrl + '"/> </div> <div class="ms-3"> <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">' + stdnName + '<span style="font-weight: 200; font-size: small; color:gray"> @' + JSON.parse(msg.body).sendid + '</span></a></div> </div> <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start">' + JSON.parse(msg.body).content + '</div></div></div>'
                            );
                            // 메시지 로컬 스토리지에 추가
                            onechat.addMessageToStorage(msg);

                            //메세지 오면 스크롤 내려가기 - 작동 안됨
                            var messageContainer = $("#kt_drawer_chat_messenger_body");
                            messageContainer.scrollTop = messageContainer.scrollHeight;
                            // console.log('messageContainer', messageContainer)
                            // console.log('scrollheight',messageContainer.scrollHeight);
                            // console.log('messageContainerScrollTop', messageContainer.scrollTop)
                            //왜!!!! undefined이냐!!

                        },
                        error  : function (xhr, status, error) {
                            console.log('에러가 발생했습니다.');
                        }
                    });
                });

            });
        },

        disconnect  : function () {
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            onechat.setConnected(false);
            console.log("Disconnected");
        },
        setConnected: function (connected) {
            if (connected) {
                $("#status_onechat").text("연결됨");
            } else {
                $("#status_onechat").text("연결종료");
            }
        },
        sendTo      : function () {
            var msg = JSON.stringify({
                'sendid'   : this.id,
                'receiveid': $('#receivetarget').val(),
                'content'  : $('#sendtext').val()
            });
            this.stompClient.send('/receiveto', {}, msg);

            this.stompClient.send("/receiveme", {}, msg);

            $('#message').append(
                '<div class="d-flex justify-content-end mb-10"><div class="d-flex flex-column align-items-end"> <div class="d-flex align-items-center mb-2"> <div class="me-3"> <a href="#"class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">나</a> </div> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/uimg/${loginStdn.img}"/> </div> </div> <div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end"data-kt-element="message-text">' + $('#sendtext').val() + '</div></div></div>'
            );
            $('#sendtext').val('');
            //메세지를 로컬스토리지에 저장
            onechat.addMessageToStorage(msg);
            var messageContainer = $("#kt_drawer_chat_messenger_body");
            messageContainer.scrollTop = messageContainer.scrollHeight;
            // console.log('messageContainer', messageContainer)
            // console.log('scrollheight',messageContainer.scrollHeight);
            // console.log('messageContainerScrollTop', messageContainer.scrollTop)

        }

    };

    $(function () {
        onechat.init();
        setTimeout(function () {
            onechat.connect();
        }, 1000); // 1초 후에 connect 함수 호출, 되간하는데 종료하고 다시 키면 작동안함..
    })

</script>


<div id="kt_drawer_chat" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="chat" data-kt-drawer-activate="true"
     data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'md': '500px'}"
     data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_drawer_chat_toggle"
     data-kt-drawer-close="#kt_drawer_chat_close">
    <!--begin::Messenger-->
    <input type="hidden" id="stdn_id" value="${loginStdn.id}">
    <div class="card w-100 rounded-0 border-0" id="kt_drawer_chat_messenger">
        <!--begin::Card header-->
        <div class="card-header pe-5" id="kt_drawer_chat_messenger_header">
            <!--begin::Title-->
            <div class="card-title">
                <!--begin::User-->
                <div class="d-flex justify-content-center flex-column me-3">
                    <p id="reciever">받는 사람</p>
                    <!--begin::Info-->
                    <div class="mb-0 lh-1">
                        <span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
                        <span id="status_onechat" class="fs-7 fw-semibold text-muted">연결대기</span>
                    </div>
                    <!--end::Info-->
                </div>
                <!--end::User-->
            </div>
            <!--end::Title-->
            <!--begin::Card toolbar-->
            <div class="card-toolbar">
                <!--begin::Menu-->
                <div class="me-2">
                    <button class="btn btn-sm btn-icon btn-active-light-primary" id="connect_onechat">
                        연결
                    </button>
                </div>
                <!--end::Menu-->
                <!--begin::Close-->
                <div class="btn btn-sm btn-icon btn-active-light-primary" id="kt_drawer_chat_close">
                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                    <span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                          transform="rotate(-45 6 17.3137)" fill="currentColor"/>
									<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                          transform="rotate(45 7.41422 6)" fill="currentColor"/>
								</svg>
							</span>
                    <!--end::Svg Icon-->
                </div>
                <!--end::Close-->
            </div>
            <!--end::Card toolbar-->
        </div>
        <!--end::Card header-->
        <!--begin::Card body-->
        <div class="card-body" id="kt_drawer_chat_messenger_body" onscroll="scrollFn()">
            <!--begin::Messages-->
            <div class="scroll-y me-n5 pe-5" data-kt-element="messages" data-kt-scroll="true"
                 data-kt-scroll-activate="true" data-kt-scroll-height="auto"
                 data-kt-scroll-dependencies="#kt_drawer_chat_messenger_header, #kt_drawer_chat_messenger_footer"
                 data-kt-scroll-wrappers="#kt_drawer_chat_messenger_body" data-kt-scroll-offset="0px">
                <!--begin::Message(in)-->
                <div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            <!--begin::Avatar-->
                            <div class="symbol symbol-35px symbol-circle">
                                <img alt="Pic" src="/img/logo.png"/>
                            </div>
                            <!--end::Avatar-->
                            <!--begin::Details-->
                            <div class="ms-3">
                                <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">관리자</a>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-warning text-dark fw-semibold mw-lg-400px text-start">
                            📢서로를 존중하는 마음으로 함께하는 디지캠퍼스라이프를 만들어주세요. 연결이 종료 된 경우 상단의 <span class="text-primary fw-bold">연결버튼</span>을
                            눌러주세요.
                        </div>
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Message(in)-->
                <div id="message"></div>
            </div>
            <!--end::Messages-->
        </div>
        <!--end::Card body-->
        <!--begin::Card footer-->
        <div class="card-footer pt-4" id="kt_drawer_chat_messenger_footer">
            <!--begin::Input-->
            <input class="form-control form-control-flush" type="text" id="receivetarget"
                   placeholder="메세지를 받으실 분의 아이디를 적어주세요">
            <textarea id="sendtext" class="form-control form-control-flush mb-3" rows="1"
                      placeholder="메세지를 입력해주세요"></textarea>
            <!--end::Input-->
            <!--begin:Toolbar-->
            <div class="d-flex flex-stack">
                <div class="d-flex align-items-center me-2">
                </div>
                <button id="msgsend" class="btn btn-primary">Send</button>
                <!--end::Send-->
            </div>
            <!--end::Toolbar-->
        </div>
        <!--end::Card footer-->
    </div>
    <!--end::Messenger-->
</div>
