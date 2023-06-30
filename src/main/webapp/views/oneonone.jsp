<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #oneonone_box {
        width: 400px;
        height: 500px;
        position: fixed;
        bottom: 13%;
        right: 9%;
        display: none;
        z-index: 9999;
    }

    #to {
        height: 320px;
        overflow: auto;
        overflow-y: scroll;
    }
</style>

<script>
    let oneonone = {
        id            : null,
        stompClient   : null,
        connected     : false,
        init          : function () {
            this.id = $('#adm_id_oneonone').text();//adm_id에서 적힌 글씨를 id로 뿌려줄 예정이다.
            const oneononebox = $('#oneonone_box');
            $("#connect_oneonone").click(function () {
                if(!oneonone.connected){
                    oneonone.connect();
                }
            });
            $("#connect_oneonone2").click(function () {
                if(!oneonone.connected){
                    oneonone.connect();
                }
            });
            $("#disconnect_oneonone").click(function () {
                oneononebox.hide();
                if(oneonone.connected){
                    oneonone.disconnect();
                }
            });
            $("#sendto").click(function () {
                oneonone.sendTo();
            });
        },
        scrollToBottom: function () {
            const messengerBody = document.getElementById('to');
            messengerBody.scrollTop = messengerBody.scrollHeight;
        },
        connect       : function () {
            var sid = this.id;
            var socket = new SockJS('${adminserver}/ws');
            // SockJS는 웹소켓을 지원하지 않는 브라우저에서도 웹소켓과 유사한 방식으로 통신할 수 있게 해주는 js라이브러리
            this.stompClient = Stomp.over(socket);
            // Stomp는 웹소켓 프로토콜을 사용하는 메시징 서비스를 제공.(Simple Text Oriented Messaging Protocol)

            this.stompClient.connect({}, function (frame) {
                //첫 번째 매개변수는 연결 설정 객체, STOMP 메시지 브로커와의 인증을 위한 정보를 제공합니다.
                //두 번째 매개변수는 연결이 성공했을 때 실행될 콜백 함수입니다. 서버에서 전송한 메시지를 수신하기 위해 콜백 함수를 등록합니다.
                oneonone.connected = true;
                oneonone.setConnected(true);//단순히 connected, disconnected 적히게 하는 함수.
                console.log('Connected: ' + frame);

                this.subscribe('/send/to/' + sid, function (msg) {
                    $('#oneonone-badge-dot').show();
                    $("#to").append(
                        // "<h4>" + JSON.parse(msg.body).sendid +":"+
                        // JSON.parse(msg.body).content1
                        // + "</h4>"

                        '<div class="d-flex justify-content-start mb-10"><div class="d-flex flex-column align-items-start"> <div class="d-flex align-items-center mb-2"> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/img/logo.png"/> </div> <div class="ms-3"> <a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">' + "당케관리자" + '</a></div> </div> <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start">' + JSON.parse(msg.body).content1 + '</div></div></div>'
                    );
                });
            }, function (error) {
                $('#to').append(`<p>죄송합니다. 연결이 정상적으로 이루어지지 않았습니다. 상단의 연결버튼을 다시 눌러주세요.</p>`);
                messengerBody.scrollTop = messengerBody.scrollHeight;
                console.log('Error: ' + error);
            });
        },
        disconnect    : function () {
            oneonone.connected = false;
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            oneonone.setConnected(false);
            console.log("Disconnected");
        },
        setConnected  : function (connected) {
            if (connected) {
                $("#status_oneonone").text("연결됨");
            } else {
                $("#status_oneonone").text("연결종료");
            }
        },
        sendTo        : function () {
            var msg = JSON.stringify({
                'sendid'   : this.id,
                'receiveid': $('#target').val(),
                'content1' : $('#totext').val()
            });
            this.stompClient.send('/receiveto', {}, msg);

            this.stompClient.send("/receiveme", {}, msg);
            $('#to').append(
                // '<h4>'+this.id+':'+ $('#totext').val()+'</h4>'
                '<div class="d-flex justify-content-end mb-10"><div class="d-flex flex-column align-items-end"> <div class="d-flex align-items-center mb-2"> <div class="me-3"> <a href="#"class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">나</a> </div> <div class="symbol symbol-35px symbol-circle"> <img alt="Pic" src="/uimg/${loginStdn.img}"/> </div> </div> <div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end"data-kt-element="message-text">' + $('#totext').val() + '</div></div></div>'
            );
            oneonone.scrollToBottom();
            $('#totext').val('');
        }
    };
    $(function () {
        oneonone.init();
    })

</script>


<!-- DataTales Example -->
<div class="card shadow mb-4" id="oneonone_box">
    <div class="card-header py-3">
        <!--begin::Title-->
        <div class="card-title">
            <!--begin::User-->
            <div class="d-flex justify-content-center flex-column me-3">
                <h3>1:1 고객센터 <i class="bi-chat-square-dots text-gray-600"></i></h3>
                <p style="display: none" id="adm_id_oneonone">${loginStdn.id}</p>
                <!--begin::Info-->
                <div class="mb-0 lh-1">
                    <span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
                    <span id="status_oneonone" class="fs-7 fw-semibold text-muted">연결대기</span>
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
                <button class="btn btn-sm btn-icon btn-active-light-primary" id="connect_oneonone">
                    연결
                    <%--                </button>--%>
            </div>
            <!--end::Menu-->
            <!--begin::Close-->
            <div id="disconnect_oneonone" class="btn btn-sm btn-icon btn-active-light-primary">
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
    <div class="card-body">
        <div id="container"></div>
        <div class="col-sm-12">
            <div id="to">
                <div class="d-flex justify-content-start mb-5">
                    <div class="d-flex flex-column align-items-start">
                        <%--                        <div class="d-flex align-items-center mb-2">--%>
                        <%--                            <div class="symbol symbol-35px symbol-circle"><img alt="Pic" src="/img/logo.png"/></div>--%>
                        <%--                            <div class="ms-3"><a href="#"--%>
                        <%--                                                 class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">당케 관리자</a>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start"> 안녕하세요, 1:1--%>
                        <%--                            고객센터입니다. 무엇을 도와드릴까요?--%>
                        <%--                        </div>--%>
                        <div>
                            <a href="#" class="btn btn-icon-success btn-text-success" id="faq"><span
                                    class="svg-icon svg-icon-1"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                     height="16" fill="currentColor"
                                                                     class="bi bi-card-list" viewBox="0 0 16 16">
  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
  <path d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
</svg></span>자주 묻는 질문</a>
                            <a href="#" class="btn btn-icon-success btn-text-success" id="connect_oneonone2"><span
                                    class="svg-icon svg-icon-1"><svg xmlns="http://www.w3.org/2000/svg" width="10"
                                                                     height="10" fill="currentColor"
                                                                     class="bi bi-telephone-forward"
                                                                     viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zm10.762.135a.5.5 0 0 1 .708 0l2.5 2.5a.5.5 0 0 1 0 .708l-2.5 2.5a.5.5 0 0 1-.708-.708L14.293 4H9.5a.5.5 0 0 1 0-1h4.793l-1.647-1.646a.5.5 0 0 1 0-.708z"/>
</svg></span>상담원 연결하기</a>

                        </div>

                    </div>
                </div>
            </div>
            <input type="hidden" id="target" value="qwer">

            <div class="d-flex mt-2">
                <input type="text" class="form-control form-control-flush mb-3" id="totext"
                       placeholder="문의하실 내용을 입력해주세요.">
                <button id="sendto" class="btn btn-sm btn-success">Send</button>
            </div>
        </div>
    </div>
</div>

<script>
    const messengerBody = document.getElementById('to');
    const statusOneonone = document.getElementById('status_oneonone');

    // 1뎁스
    $(document).ready(function () {
        $('#faq').click(function () {
            // Append the buttons to the container div
            $('#to').append(`<div class="d-flex justify-content-center mb-2">
                    <button id="faqattend" class="w-50 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">출결</button>
                    <button id="faqstudy" class="w-50  btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">스터디</button>
                    </div>
                    `);
        });
        messengerBody.scrollTop = messengerBody.scrollHeight;
    });
    $(document).ready(function () {
        $('#connect_oneonone2').click(function () {
            // Append the buttons to the container div
            $('#to').append(`    <div class="d-flex align-items-center mb-2">
                            <div class="symbol symbol-35px symbol-circle"><img alt="Pic" src="/img/logo.png"/></div>
                            <div class="ms-3"><a href="#"
                                                 class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">당케 관리자</a>
                            </div>
                        </div>
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start mb-10"> 안녕하세요, 1:1
                            고객센터입니다. 무엇을 도와드릴까요?
                        </div>
                    `);
            // if(statusOneonone.innerText == '연결대기'||'연결종료')
            //  $('#to').append(`<p>죄송합니다. 연결이 정상적으로 이루어지지 않았습니다. 상단의 연결버튼을 다시 눌러주세요.</p>`)
            messengerBody.scrollTop = messengerBody.scrollHeight;
        });
    });

    // 2뎁스
    $(document).on('click', '#faqattend', function () {
        $('#to').append(`<div class="d-flex justify-content-center mb-2">
                    <button id="attend1" class="w-50 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">출결 기준</button>
                    <button id="attend2" class="w-50 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">출결 현황</button>
                    </div>
                    `);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        $('#faqattend').removeClass("btn-outline-success");
        $('#faqattend').removeClass("btn-active-light-success");
        $('#faqattend').addClass("btn-outline-secondary");
        $('#faqattend').addClass("btn-active-light-secondary");
        // $('#faqstudy').removeClass("btn-outline-success");
        // $('#faqstudy').removeClass("btn-active-light-success");
        // $('#faqstudy').addClass("btn-outline-secondary");
        // $('#faqstudy').addClass("btn-active-light-secondary");

    });

    $(document).on('click', '#faqstudy', function () {
        $('#to').append(`<div class="d-flex justify-content-center mb-2">
                    <button id="study1" class="w-50 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">스터디 기준</button>
                    <button id="study2" class="w-50 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success">스터디 현황</button>
                    </div>
                    `);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        // $('#faqattend').removeClass("btn-outline-success");
        // $('#faqattend').removeClass("btn-active-light-success");
        // $('#faqattend').addClass("btn-outline-secondary");
        // $('#faqattend').addClass("btn-active-light-secondary");
        $('#faqstudy').removeClass("btn-outline-success");
        $('#faqstudy').removeClass("btn-active-light-success");
        $('#faqstudy').addClass("btn-outline-secondary");
        $('#faqstudy').addClass("btn-active-light-secondary");
    });

    // 3뎁스
    //출결 기준
    $(document).on('click', '#attend1', function () {
        $('#to').append(`<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start mb-5">
                       디지캠퍼스의 수료를 위해서는 <span style="color:orange"> 출석률 100%</span>를 달성해야 합니다. 따라서, 출석체크가 누락되지 않도록 특히 주의해주시기 바랍니다.
</br>출석은 주중(공휴일 제외) <span style="color:orange">아침 9시 정각</span> 이전까지 완료해야 하며, 퇴근은 <span style="color:orange">오후 6시 정각</span> 이후로 이루어집니다.
</br>중간에 부득이한 <span style="color:orange">외출</span>이 있을 경우, <span style="color:orange">퇴실 QR 없이</span> 이동해주시기 바랍니다. 수료를 위해서는 정확한 출석이 필요하니, 출석 체크에 대한 신중함을 유지해주시기 바랍니다.    `);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        $('#attend1').removeClass("btn-outline-success");
        $('#attend1').removeClass("btn-active-light-success");
        $('#attend1').addClass("btn-outline-secondary");
        $('#attend1').addClass("btn-active-light-secondary");
        // $('#attend2').removeClass("btn-outline-success");
        // $('#attend2').removeClass("btn-active-light-success");
        // $('#attend2').addClass("btn-outline-secondary");
        // $('#attend2').addClass("btn-active-light-secondary");

    });
    <%--//출결 현황--%>
    $(document).on('click', '#attend2', function () {
        $('#to').append(`<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start mb-5">
                      나의 로그에서 <span style="color:orange">최근 3개월치</span>에 대한 출석을 확인하실 수 있습니다. 그 이전에 기록은 관리자(상담원 연결하기)에게 문의해주시기 바랍니다.
 <a href="/mypage/logs?id=${loginStdn.id}" class="w-100 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success mt-2">나의 출결 현황 보러가기</a>
</div> `);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        // $('#attend1').removeClass("btn-outline-success");
        // $('#attend1').removeClass("btn-active-light-success");
        // $('#attend1').addClass("btn-outline-secondary");
        // $('#attend1').addClass("btn-active-light-secondary");
        $('#attend2').removeClass("btn-outline-success");
        $('#attend2').removeClass("btn-active-light-success");
        $('#attend2').addClass("btn-outline-secondary");
        $('#attend2').addClass("btn-active-light-secondary");

    });
    $(document).on('click', '#study1', function () {
        $('#to').append(`<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start mb-5">
                       디지캠퍼스의 수료를 위해서는 <span style="color:orange">월 10회</span>의 스터디일지 작성과 <span style="color:orange">월 20시간</span>의 스터디 참여가 필요합니다. 스터디 회당 시간에는 제한이 없으나, 매월 1일부터 말일까지의 시간을 합산하여 20시간을 달성해야 합니다.

참고로, <span style="color:orange">하루에는 한번의 스터디</span>만 참여할 수 있으며, <span style="color:orange">스터디일지는 당일에 한하여 한 번</span>만 작성 가능합니다. 이 점을 유념하여 스터디 참여와 일지 작성을 진행해주시기 바랍니다`);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        $('#study1').removeClass("btn-outline-success");
        $('#study1').removeClass("btn-active-light-success");
        $('#study1').addClass("btn-outline-secondary");
        $('#study1').addClass("btn-active-light-secondary");
        // $('#study2').removeClass("btn-outline-success");
        // $('#study2').removeClass("btn-active-light-success");
        // $('#study2').addClass("btn-outline-secondary");
        // $('#study2').addClass("btn-active-light-secondary");

    });
    <%--//출결 현황--%>
    $(document).on('click', '#study2', function () {
        $('#to').append(`<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start mb-5">
                      나의 스터디 기록에서 이번달 스터디 회수와 시간을 확인 하실 수 있으며, 메인화면에서는 스터디 그래프를 통해 당일의 스터디 현황을 한눈에 파악 하실 수 있습니다.
 <a href="/study/mine?writer=${loginStdn.id}" class="w-100 btn btn-outline btn-outline-dashed btn-outline-success btn-active-light-success mt-2">나의 스터디 보러가기</a>
</div> `);
        messengerBody.scrollTop = messengerBody.scrollHeight;
        // $('#study1').removeClass("btn-outline-success");
        // $('#study1').removeClass("btn-active-light-success");
        // $('#study1').addClass("btn-outline-secondary");
        // $('#study1').addClass("btn-active-light-secondary");
        $('#study2').removeClass("btn-outline-success");
        $('#study2').removeClass("btn-active-light-success");
        $('#study2').addClass("btn-outline-secondary");
        $('#study2').addClass("btn-active-light-secondary");

    });

</script>

