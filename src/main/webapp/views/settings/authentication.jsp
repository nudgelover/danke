<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
    $(document).ready(function() {

        $('#down_qr_btn').hide();
        $('#verification_btn').hide();
        $('#verification_tab').hide();
        $('#tab2').hide();

        //타이머 5분 준다
        let limits = 300;
        function count_down_timer() {
            //여따가 넣어놔야 마이너스 분으로 안 감. clearInterval이나, 메서드 중간에 넣는  return이 안 먹음..이유는 모름
            if(limits<0){
                return;
            } else {
                //분 초 표시
                var min = parseInt((limits) / 60);
                var sec = limits % 60;
                let methodModal = $('#method_modal');
                if (limits % 60 < 10) {
                    sec = "0" + sec;
                } else {
                    sec = sec;
                }
                $("#id_span_timer").html(min + ":" + sec);
                limits--;

                if (limits == 0) {
                    $('#send_code_btn').attr('disabled', 'true');
                    let modal = new bootstrap.Modal(methodModal);
                    $('#method_msg').html('인증번호가 만료되었습니다.');
                    modal.show();
                    return;
                }
            }
        }

        $('#get_code_btn').click( function(){
            let method =  $('input[name="method"]:checked').val();
            let stdnId= $('#stdnId').val();
            let methodModal = $('#method_modal');

            $.ajax({
              url:'/sendcodeimpl',
              data:{stdnId:stdnId, method:method},
              success: function(result){
                  if(result!=0){
                      let modal = new bootstrap.Modal(methodModal);
                      $('#method_msg').html('인증번호가 발송되었습니다.');
                      //인증번호 받던 화면 가리고,
                      $('#method_tab').hide();
                      $('#method_btn').hide();
                      //hidden값으로 인증번호 심어주고
                      $('#code').val(result)
                      //인증번호 입력 창 보여주고
                      $('#verification_btn').show();
                      $('#verification_tab').show();

                      //타이머 1초마다 호출
                      count_down_timer();
                      setInterval(count_down_timer, 1000);
                      modal.show();
                  } else {
                      let modal = new bootstrap.Modal(methodModal);
                      $('#method_msg').html('발송실패! 잠시 후 다시 시도 부탁드립니다.');
                      modal.show();
                  }
              }
            })
        })

        $('#send_code_btn').click( function(){
            let stdnId= $('#stdnId').val();
            let methodModal = $('#method_modal');
            //히든값 입력값 비교
            if($('#code').val()==$('#confirm_code').val()){
                window.location.href='/settings/generateqr?id='+stdnId;
            } else {
                let modal = new bootstrap.Modal(methodModal);
                $('#method_msg').html('인증번호가 일치하지 않습니다.');
                modal.show();
            }
        })

    });
</script>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">QR코드 발급</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/mypage?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold">마이페이지로 돌아가기</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="kt_tab_pane_4" role="tabpanel">
                        <div class="col-xl-12">
                            <div class="card px-8 py-8">
                                <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-info">
                                    <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                        <h1 class="text-dark fs-3 " style="font-weight: 900">지금 QR코드 발급받으시고<br></h1>
                                        <h1 class="text-info-emphasis mb-8" style="font-weight:900">더 편리한 DIGICAM을 경험해보세요!<br>
                                        <span class="text-muted fs-8">DIGICAMPUS Danke는 QR을 통한 출석 인증, 스터디 인증을 지원합니다.</span></h1>
                                    </div>
                                    <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-start bgi-size-contain"
                                         style="background-image: url(/assets/media/illustrations/sigma-1/17.png);"></div>
                                </div>
                            </div>
                            <div class="card card-stretch mb-5 mb-xxl-8" id="tab1">
                                <div class="card-body pt-3">
                                    <input type="hidden" id="stdnId" value="${loginStdn.id}"/>
                                    <input type="hidden" id="qr_name" value=""/>
                                    <input type="hidden" id="code" value=""/>
                                    <div class="row mb-8 d-flex justify-content-center " style="text-align: center">
                                        <div class="col-lg-9">
                                            <div class="card-body p-0 d-flex justify-content-center flex-column">
                                                <div class="bg-gray-200 mb-5" style="margin-left: 15%; margin-right:15%;">
                                                    <div class="d-flex justify-content-center flex-column" style="padding: 8% 5% 5% 5%">
                                                        <h3 class="fs-2x" style="line-height: 100%">
                                                            <p class="text-dark fw-bold">본인확인<br>
                                                            <span class="fs-8 text-danger" style="line-height: 100%">
                                                                DIGICampus 회원 정책에 따라 QR코드 발급/재발급 전,본인 확인이 필요합니다.
                                                            </span></p>
                                                        </h3>
                                                    </div>
                                                </div>
                                                <div id="method_tab" style="padding-left: 15%; padding-right:15%; padding-bottom: 2%">
                                                    <div class="mx-30">
                                                        <!--begin::Option-->
                                                        <input type="radio" class="btn-check" name="method" value="1" checked="checked"  id="method_email"/>
                                                        <label class="btn btn-outline btn-outline-dashed btn-outline-danger btn-active-light-danger p-7 d-flex align-items-center mb-5" for="method_email">
                                                            <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M6 8.725C6 8.125 6.4 7.725 7 7.725H14L18 11.725V12.925L22 9.725L12.6 2.225C12.2 1.925 11.7 1.925 11.4 2.225L2 9.725L6 12.925V8.725Z" fill="currentColor"/>
                                                                    <path opacity="0.3" d="M22 9.72498V20.725C22 21.325 21.6 21.725 21 21.725H3C2.4 21.725 2 21.325 2 20.725V9.72498L11.4 17.225C11.8 17.525 12.3 17.525 12.6 17.225L22 9.72498ZM15 11.725H18L14 7.72498V10.725C14 11.325 14.4 11.725 15 11.725Z" fill="currentColor"/>
                                                                </svg>
                                                            </span>
                                                            <span class="d-block fw-semibold text-start">
                                                                <span class="text-dark fw-bold d-block fs-3">Email</span>
                                                                <span class="text-muted fw-semibold fs-6">
                                                                   회원정보에 등록된 이메일로 1회용 인증번호를 발송합니다.
                                                                </span>
                                                            </span>
                                                        </label>
                                                    </div>
                                                    <div class="mx-30">
                                                        <input type="radio" class="btn-check" name="method" value="2" id="method_sms"/>
                                                        <label class="btn btn-outline btn-outline-dashed btn-outline-danger btn-active-light-danger p-7 d-flex align-items-center" for="method_sms">
                                                            <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path opacity="0.3" d="M8 8C8 7.4 8.4 7 9 7H16V3C16 2.4 15.6 2 15 2H3C2.4 2 2 2.4 2 3V13C2 13.6 2.4 14 3 14H5V16.1C5 16.8 5.79999 17.1 6.29999 16.6L8 14.9V8Z" fill="currentColor"/>
                                                                    <path d="M22 8V18C22 18.6 21.6 19 21 19H19V21.1C19 21.8 18.2 22.1 17.7 21.6L15 18.9H9C8.4 18.9 8 18.5 8 17.9V7.90002C8 7.30002 8.4 6.90002 9 6.90002H21C21.6 7.00002 22 7.4 22 8ZM19 11C19 10.4 18.6 10 18 10H12C11.4 10 11 10.4 11 11C11 11.6 11.4 12 12 12H18C18.6 12 19 11.6 19 11ZM17 15C17 14.4 16.6 14 16 14H12C11.4 14 11 14.4 11 15C11 15.6 11.4 16 12 16H16C16.6 16 17 15.6 17 15Z" fill="currentColor"/>
                                                                </svg>
                                                            </span>
                                                            <span class="d-block fw-semibold text-start">
                                                                <span class="text-dark fw-bold d-block fs-3">SMS</span>
                                                                <span class="text-muted fw-semibold fs-6">
                                                                    회원정보에 등록된 연락처로 1회용 인증번호를 발송합니다.
                                                                </span>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div id="method_btn" style="padding-left: 15%; padding-right:15%;">
                                                    <button type="button" id="get_code_btn" class="btn btn-danger text-white fw-bolder" style="padding: 3% 0 3% 0;width: 100%">인증번호 발송
                                                    </button>
                                                </div>
                                                <div id="verification_tab" style="padding-top: 2%; padding-left: 15%; padding-right:15%;">
                                                    <div class="text-end text-danger fs-3 fw-bolder px-3">
                                                        <span class="svg-icon svg-icon-muted text-end text-danger fs-3 fw-bolder">
                                                                <svg width="14" height="21" viewBox="0 0 14 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path opacity="0.3" d="M12 6.20001V1.20001H2V6.20001C2 6.50001 2.1 6.70001 2.3 6.90001L5.6 10.2L2.3 13.5C2.1 13.7 2 13.9 2 14.2V19.2H12V14.2C12 13.9 11.9 13.7 11.7 13.5L8.4 10.2L11.7 6.90001C11.9 6.70001 12 6.50001 12 6.20001Z" fill="currentColor"/>
                                                                    <path d="M13 2.20001H1C0.4 2.20001 0 1.80001 0 1.20001C0 0.600012 0.4 0.200012 1 0.200012H13C13.6 0.200012 14 0.600012 14 1.20001C14 1.80001 13.6 2.20001 13 2.20001ZM13 18.2H10V16.2L7.7 13.9C7.3 13.5 6.7 13.5 6.3 13.9L4 16.2V18.2H1C0.4 18.2 0 18.6 0 19.2C0 19.8 0.4 20.2 1 20.2H13C13.6 20.2 14 19.8 14 19.2C14 18.6 13.6 18.2 13 18.2ZM4.4 6.20001L6.3 8.10001C6.7 8.50001 7.3 8.50001 7.7 8.10001L9.6 6.20001H4.4Z" fill="currentColor"/>
                                                                    </svg>
                                                                </svg>
                                                        </span><span id="id_span_timer"></span></div>
                                                    <div class="input-group mb-5" style="padding-bottom: 2%;">
                                                        <span class="input-group-text" id="label_for_code">
                                                            <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                                                <svg width="14" height="21" viewBox="0 0 14 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path opacity="0.3" d="M12 6.20001V1.20001H2V6.20001C2 6.50001 2.1 6.70001 2.3 6.90001L5.6 10.2L2.3 13.5C2.1 13.7 2 13.9 2 14.2V19.2H12V14.2C12 13.9 11.9 13.7 11.7 13.5L8.4 10.2L11.7 6.90001C11.9 6.70001 12 6.50001 12 6.20001Z" fill="currentColor"/>
                                                                    <path d="M13 2.20001H1C0.4 2.20001 0 1.80001 0 1.20001C0 0.600012 0.4 0.200012 1 0.200012H13C13.6 0.200012 14 0.600012 14 1.20001C14 1.80001 13.6 2.20001 13 2.20001ZM13 18.2H10V16.2L7.7 13.9C7.3 13.5 6.7 13.5 6.3 13.9L4 16.2V18.2H1C0.4 18.2 0 18.6 0 19.2C0 19.8 0.4 20.2 1 20.2H13C13.6 20.2 14 19.8 14 19.2C14 18.6 13.6 18.2 13 18.2ZM4.4 6.20001L6.3 8.10001C6.7 8.50001 7.3 8.50001 7.7 8.10001L9.6 6.20001H4.4Z" fill="currentColor"/>
                                                                    </svg>
                                                                </svg>
                                                            </span>
                                                        </span>
                                                        <input id="confirm_code" type="text" class="form-control" placeholder="인증번호를 입력하세요" aria-describedby="label_for_code"/>
                                                    </div>
                                                </div>
                                                <div id="verification_btn" style="padding-left: 15%; padding-right:15%;">
                                                    <button type="button" id="send_code_btn" class="btn btn-danger text-white fw-bolder" style="padding: 3% 0 3% 0;width: 100%">인증번호 확인
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-stretch mb-5 mb-xxl-8" id="tab2">
                                <div class="card-body pt-3">
                                    <div class="row mb-8" style="text-align: center">
                                        <div class="col-lg-12">
                                            <img src="/uimg/logo.png" style="width:310px; height: 310px;" class="rounded" id="qr_img">
                                        </div>
                                    </div>
                                    <div class="row mb-8" style="text-align: center">
                                        <label class="col-lg-12 col-form-label"></label>
                                        <div class="col-lg-12">
                                            <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                                    id="get_qr_btn">QR 발급받기</button>
                                            <a href="#" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                                    id="down_qr_btn">QR 다운로드</a>
                                            <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                                    id="by_email_btn">Email로 받기</button>
                                            <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                                    id="by_mms_btn">MMS로 받기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Method Modal Start-->
<div class="modal fade" tabindex="-1" id="method_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body text-primary" style="display: flex; justify-content: space-between;font-size: 1rem;">
                <div class="text-start" style="width: 90%;">
                    <p id="method_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Method Modal-->