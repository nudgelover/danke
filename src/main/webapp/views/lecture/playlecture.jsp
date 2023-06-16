<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
<script src="assets/js/scripts.bundle.js"></script>


<style>
    .video-container {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
    }

    .video-container iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>
<script>
    $(document).ready(function () {
        //열자마자 모달 대기시키고
        let playModal = $('#play_modal');
        let modal = new bootstrap.Modal(playModal);

        //학습진도율 100% 미달성인 강의만 모달이 뜨도록
        if(${ordDetail.stdyHour!=100}){
            //있어빌리티를 위한 coldcall 타임은 빠르게 상수값으로 7초 준다
            setTimeout(function() {
                modal.show();
                setTimeout(function(){
                    modal.hide();
                    coldCallFail();
                },10000);
            }, 7000);
        }

        //콜드콜 실패하면 프로그래스 100% 안 되도록 걸엇,,
        function coldCallFail () {
            let lecId = '${lec.id}';
            let stdnId = '${loginStdn.id}';
            $.ajax({
                url:'/coldcallfail',
                data:{lecId:lecId, stdnId:stdnId}
            })
        };

        //콜드콜 확인버튼 누르면,,
        $('#play_btn').click( function(){
            let lecId = '${lec.id}';
            let stdnId = '${loginStdn.id}';
            let alertModal = $('#alert_modal');
            $.ajax({
                url:'/coldcall',
                data: {lecId:lecId, stdnId:stdnId},
                success:function(result){
                    if(result==1){
                        //쿠폰정상적으로 발급된 결과 받으면,,,
                        //1.5초 뒤에 모달로 알린다,,
                        setTimeout(function() {
                            let modal = new bootstrap.Modal(alertModal);
                            $('#alert_msg').html('학습독려 100% 쿠폰이 발급되었습니다!');
                            modal.show();
                        }, 1500);

                    } else {
                        let modal = new bootstrap.Modal(alertModal);
                        $('#alert_msg').html('학습 확인 실패!');
                        modal.show();
                    }
                }
            });
        });
    });
</script>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">내 학습</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">내 학습</a>
                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">나의 커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">장바구니</a>
            </div>

        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card bg-light-info">
                <div class="card-body">
                    <div class="mb-0">
                        <div id="lec_container">
                            <div  class="row g-5 g-xxl-8" style="display: flex; flex-direction: row;">
                                <div class="col-md-12 col-xxl-12 col-lg-12" style="width:100%">
                                    <div class="video-container">
                                        <iframe class="rounded"width="100%" height="75%" src="https://www.youtube.com/embed/GA44Lx0gMHw">
                                        </iframe>
                                    </div>
                                </div>
                                <div class="card-body d-flex flex-column card-rounded px-7 py-5 mx-3 bg-light-primary">
                                    <h2>${lec.title} <span class="badge badge-light-warning">new</span></h2>
                                    <div>
                                        <p class="text-sm-start">누적수강생 ${lec.hit}명 | 등록 ${lec.rdate} |
                                            <span class="text-sm-start text-warning">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z" fill="currentColor"/>
                                                </svg>
                                            </span> <fmt:formatNumber value="${lec.rating}" type="number" pattern="0.0"/>(${lec.cnt})


                                        </p>
                                        <br>
                                        <span class="text-danger fw-bolder">
                                            학습 확인(Cold Call) 응답을 클릭해야 학습완료 및 쿠폰 지급 기준이 충족됩니다.
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-12">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="play_modal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start text-white" style="width: 90%;">
                    <p id="play_msg" class="text-primary" style="font-weight:700">학습 확인을 위해 오른쪽 버튼을 누르세요.</p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <a href="javascript:void(0)" id="play_btn" class="text-danger"
                       data-bs-dismiss="modal" aria-label="Close" style="font-weight: bold;">확인</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" tabindex="-1" id="alert_modal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;background-color: #41da9b">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start text-white" style="width: 90%;">
                    <p id="alert_msg" class="text-white" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>