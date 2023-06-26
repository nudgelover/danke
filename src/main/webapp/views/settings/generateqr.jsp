<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        //큐알생성후에 보여줄,,,
        $('#down_qr_btn').hide();
        $('#by_mms_btn').hide();


        $('#get_qr_btn').click( function(){
            let stdnId= $('#stdnId').val();
            $.ajax({
                url:'/qrimpl',
                data:{stdnId:stdnId},
                success: function(result){
                    $('#qr_img').attr('src','/uimg/'+result);
                    $('#down_qr_btn').attr('href','/settings/download/'+result);
                    $('#qr_name').val(result);
                    $('#down_qr_btn').show();
                    $('#by_mms_btn').show();
                    $('#get_qr_btn').hide();
                }
            })
        })

        $('#by_mms_btn').click( function(){
            let stdnId= $('#stdnId').val();
            let qr_name = $('#qr_name').val();
            let generateModal = $('#generate_modal');
            $.ajax({
                url:'/send-mms',
                data:{stdnId:stdnId, qr_name:qr_name},
                success: function(result){
                    if(result == 1){
                        let modal = new bootstrap.Modal(generateModal);
                        $('#generate_msg').html('${loginStdn.name}님께 QR코드가 전송되었습니다.');
                        modal.show();
                    } else if(result == 0){
                        alert("모종의 이유로 메시지 전송 실패입니다, 이유는 스스로 알아내세요. 저도 모릅니다.");
                    }
                }
            })
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
                <a href="/settings/authentication" class="btn btn-active-accent active fw-bold ms-3">QR코드발급</a>
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
                            <div class="card card-stretch mb-5 mb-xxl-8" id="tab2">
                                <div class="card-body pt-3">
                                        <input type="hidden" id="stdnId" value="${loginStdn.id}"/>
                                        <input type="hidden" id="qr_name" value=""/>
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
<div class="modal fade" tabindex="-1" id="generate_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body text-primary" style="display: flex; justify-content: space-between;font-size: 1rem;">
                <div class="text-start" style="width: 90%;">
                    <p id="generate_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Method Modal-->