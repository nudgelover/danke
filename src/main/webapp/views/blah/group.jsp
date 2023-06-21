<!--begin::Vendor Stylesheets(used for this page only)-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->
<style>
    #groupchat_body {
        overflow-y: scroll;
        height: 300px; /* 스크롤 높이를 조정해 필요에 맞게 설정하세요 */
    }
</style>
<script>
    let group = {
        id            : null,
        stompClient   : null,
        init          : function () {
            this.id = $('#group_chat_stdn_id').text();//adm_id에서 적힌 글씨를 id로 뿌려줄 예정이다.
            $("#connect_groupchat").click(function () {
                group.connect();
            });
            $("#disconnect_groupchat").click(function () {
                group.disconnect();
            });
            $("#sendgroup").click(function () {
                group.sendgroup();
            });
        },
        scrollToBottom: function () {
            const messengerBody = document.getElementById('groupchat_body');
            messengerBody.scrollTop = messengerBody.scrollHeight;
        },
        connect       : function () {
            var sid = this.id;
            var socket = new SockJS('${serviceserver}/ws');
            // SockJS는 웹소켓을 지원하지 않는 브라우저에서도 웹소켓과 유사한 방식으로 통신할 수 있게 해주는 js라이브러리
            this.stompClient = Stomp.over(socket);
            // Stomp는 웹소켓 프로토콜을 사용하는 메시징 서비스를 제공.(Simple Text Oriented Messaging Protocol)

            this.stompClient.connect({}, function (frame) {
                //첫 번째 매개변수는 연결 설정 객체, STOMP 메시지 브로커와의 인증을 위한 정보를 제공합니다.
                //두 번째 매개변수는 연결이 성공했을 때 실행될 콜백 함수입니다. 서버에서 전송한 메시지를 수신하기 위해 콜백 함수를 등록합니다.
                group.setConnected(true);//단순히 connected, disconnected 적히게 하는 함수.
                console.log('Connected: ' + frame);
                // 상대방 접속 메시지를 전송
                var joinMessage = JSON.stringify({
                    'sendid' : sid,
                    'content': sid + '님께서 채팅방에 참여하셨습니다.'
                });
                this.send("/receiveall", {}, joinMessage);
                group.scrollToBottom();
                //스크롤 안먹음...

                this.subscribe('/send', function (msg) {
                    //두번째 매개변수 function(msg)는
                    //메시지가 도착했을 때 호출할 콜백 함수입니다. 이 함수는 서버에서 보낸 메시지를 전달받습니다
                    if (JSON.parse(msg.body).sendid != sid) {

                        $.ajax({
                            url    : '/getstdnimg',
                            method : 'GET',
                            data   : {stdnId: JSON.parse(msg.body).sendid}, // 이미지를 가져올 학생의 ID를 전달합니다.
                            success: function (response) {
                                const imgUrl = response.img; // 서버에서 조회한 stdn dto
                                const stdnName = response.name;

                                $("#groupallmsg").append(
                                    '<div class="d-flex justify-content-start mb-10"> <div class="d-flex flex-column align-items-start"> <div class="d-flex align-items-center mb-2"> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/uimg/' + imgUrl + '"/> </div> <div class="ms-3"> <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">' + stdnName + '<span style="font-size: small" class="text-muted">@' + JSON.parse(msg.body).sendid + '</span></a></div> </div> <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start"data-kt-element="message-text">' + JSON.parse(msg.body).content + ' </div> </div> </div>');

                                // 메시지 로컬 스토리지에 추가
                                onechat.scrollToBottom();

                            },
                            error  : function (xhr, status, error) {
                                console.log('에러가 발생했습니다.');
                            }
                        });
                    }
                    group.scrollToBottom();

                });

            });
        },
        disconnect    : function () {

            var exitMessage = JSON.stringify({
                'sendid' : this.id,
                'content': this.id + '님께서 채팅방에서 퇴장하셨습니다.',
            });//로컬스토리지 저장 안되게...
            group.scrollToBottom();
            //스크롤 안먹음...
            this.stompClient.send("/receiveall", {}, exitMessage);

            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            group.setConnected(false);
            console.log("Disconnected");
        },
        setConnected  : function (connected) {
            if (connected) {
                $("#status_group").text("연결됨");
                $("#groupallmsg").append(
                    '<h4>' + this.id + '님, 채팅방에 입장되셨습니다.</h4>');
                group.scrollToBottom();
            } else {
                $("#status_group").text("연결종료");
                $("#groupallmsg").append(
                    '<h4>' + this.id + '님, 채팅방에서 퇴장하셨습니다.</h4>');
                group.scrollToBottom();

            }
        },
        sendgroup     : function () {
            var msg = JSON.stringify({
                'sendid' : this.id,
                'content': $("#grouptext").val()
            });
            this.stompClient.send("/receiveall", {}, msg);
            $('#groupallmsg').append(
                '<div class="d-flex justify-content-end mb-10"><div class="d-flex flex-column align-items-end"> <div class="d-flex align-items-center mb-2"> <div class="me-3"> <a href="#"class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">나</a> </div> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/uimg/${loginStdn.img}"/> </div> </div> <div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end"data-kt-element="message-text">' + $('#grouptext').val() + '</div></div></div>'
            );
            //자동으로 스크롤 내려가는 스크립트
            group.scrollToBottom();
            $('#grouptext').val('');
        }
    };
    $(function () {
        group.init();
    })

</script>
<!--end::Head-->

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">디지챗</h3>
                <p class="text-muted"><img style="height: 30px; padding-bottom: 4px"
                                           src="https://cdn-icons-png.flaticon.com/512/3776/3776770.png"> 실시간 소통이 가능한
                    디지챗에서 멤버들의 참여와 열정을 통해 더욱 활기찬 공간을 만들어보세요.</p>
                <p style="display: none" id="group_chat_stdn_id">${loginStdn.id}</p>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/blah" class="btn btn-active-accent fw-bold">블라블라</a>
                <a href="/blah/group" class="btn btn-active-accent active fw-bold">디지챗</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Layout-->

            <div class="d-flex flex-column flex-lg-row">
                <div class="flex-column flex-lg-row-auto w-100 w-lg-150px w-xl-200px mb-10 mb-lg-0">
                    <!--begin::Contacts-->
                    <div class="card card-flush">
                        <div style="padding: 10px" class="card-body pt-5" id="kt_chat_contacts_body">
                            <!--begin::List-->
                            <img src="/img/디지라이브.png" class="w-100">
                            <!--end::List-->
                        </div>
                        <!--end::Card body-->
                    </div>
                    <!--end::Contacts-->
                </div>
                <!--begin::Content-->
                <div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
                    <!--begin::Messenger-->
                    <div class="card" id="kt_chat_messenger">
                        <!--begin::Card header-->
                        <div class="card-header" id="kt_chat_messenger_header">
                            <!--begin::Title-->
                            <div class="card-title">
                                <!--begin::Users-->
                                <div class="symbol-group symbol-hover">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/uimg/${loginStdn.img}"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem6.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem2.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem3.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem4.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-35px symbol-circle">
                                        <img alt="Pic" src="/img/digimem5.jpg"/>
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::All users-->
                                    <a href="#" class="symbol symbol-35px symbol-circle" data-bs-toggle="modal"
                                       data-bs-target="#kt_modal_view_users">
                                        <span class="symbol-label fs-8 fw-bold">+24</span>
                                    </a>
                                    <!--end::All users-->
                                </div>
                                <!--end::Users-->
                            </div>
                            <!--end::Title-->
                            <!--begin::Card toolbar-->
                            <div class="card-toolbar">
                                <div style="margin: 0 10px 0.5px 0" class="lh-1">
                                    <span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
                                    <span id="status_group" class="fs-7 fw-semibold text-muted">연결대기</span>
                                </div>
                                <button class="btn btn-sm btn-icon btn-active-light-primary mb-0 text-muted "
                                        id="connect_groupchat">
                                    연결
                                </button>
                                <button class="btn btn-sm btn-icon btn-active-light-primary mb-0 text-muted"
                                        id="disconnect_groupchat">
                                    해제
                                </button>
                            </div>
                            <!--end::Card toolbar-->
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body" id="kt_chat_messenger_body">
                            <!--begin::Messages-->
                            <div id="groupchat_body">
                                <!--begin::Message(in)-->
                                <div class="d-flex justify-content-start mb-10">
                                    <div class="d-flex flex-column align-items-start">
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="symbol symbol-35px symbol-circle">
                                                <img alt="Pic" src="/img/logo.png"/>
                                            </div>
                                            <div class="ms-3">
                                                <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">당케
                                                    관리자</a>
                                            </div>
                                        </div>
                                        <div class="p-5 rounded bg-light-warning text-dark fw-semibold mw-lg-700px text-start"
                                             data-kt-element="message-text">디지챗에 오신 것을 환영합니다!👏 오른쪽 상단을 <span
                                                class="text-primary fw-bold">연결버튼</span>을 클릭하시어 채팅방에 참여해주세요. 연결이 끊겨
                                            <span
                                                    class="text-primary fw-bold">연결 종료</span> 또는 <span
                                                    class="text-primary fw-bold">연결 대기</span>로 되어있을 시, <span
                                                    class="text-primary fw-bold">연결버튼</span>을 다시 눌러주시기 바랍니다. 그럼 즐거운 채팅시간을 보내세요!
                                        </div>
                                    </div>
                                </div>
                                <!--end::Message(in)-->
                                <!--end::Message(out)-->
                                <div id="groupallmsg"></div>
                            </div>
                            <!--end::Messages-->
                        </div>
                        <!--end::Card body-->
                        <!--begin::Card footer-->
                        <div class="d-flex card-footer pt-4" id="kt_chat_messenger_footer">
                            <!--begin::Input-->
                            <textarea id="grouptext" class="form-control form-control-flush mb-3" rows="1"
                                      placeholder="Type a message"></textarea>
                            <button id="sendgroup" class="btn btn-primary">Send</button>
                        </div>
                        <!--end::Card footer-->
                    </div>
                    <!--end::Messenger-->
                </div>
                <!--end::Content-->
            </div>
            <!--end::Layout-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
