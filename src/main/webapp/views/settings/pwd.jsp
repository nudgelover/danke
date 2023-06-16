<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<style>
    form {
        padding: 100px;
    }
</style>

<script>
    $(document).ready(function() {
        //비활성화
        $('#pwd_update_btn').attr('disabled', true);
        //현재비밀번호 인증 전까지 비활성화
        $('#pwd').attr('disabled', true);
        $('#pwd2').attr('disabled', true);
        $('#pwd_confirm_btn').click(function(){
            let stdnId = $('#id').val();
            let current = $('#pwd_current').val();
            $.ajax({
                url: '/pwdconfirm',
                data: {pwd: current, id: stdnId},
                success: function(result){
                    if(result == 1){
                        //다르면 밑줄로,,
                        $('#pwd_current').css('border-bottom', '3px solid #20D489');
                        $('#check_current').text('기존 비밀번호와 다릅니다.');
                    } else {
                        $('#pwd_current').attr('disabled', true);
                        $('#pwd_current').css('border-bottom', 'none');
                        $('#check_current').text('확인되었습니다.');
                        $('#pwd_confirm_btn').attr('disabled', true);
                        $('#pwd').attr('disabled', false);
                        $('#pwd2').attr('disabled', false);
                        $('#pwd_update_btn').attr('disabled', false);
                    }
                }
            });
        });

        $('#pwd2').blur(function () {
            $('#pwd_update_btn').attr('disabled', true);
            let pwd = $('#pwd').val();
            let pwd2 = $('#pwd2').val();
            let current = $('#pwd_current').val();

            //현재 비밀번호와 같은 거 거르기
           if (pwd==current){
               $("#pwd2").css("border-bottom", "3px solid #20D489");
               $('#check_pwd').text('기존 비밀번호와 일치합니다. 새로운 비밀번호를 입력해주세요.');
           }

           //입력 확인 값 다른 것 거르기
           if (pwd !== pwd2) {
               $("#pwd2").css("border-bottom", "3px solid #20D489");
               $('#check_pwd').text('비밀번호가 일치하지 않습니다.');
           }

           //일치 확인 표출
           if(pwd==pwd2 && pwd!=current){
               $('#pwd_update_btn').attr('disabled', false);
               $("#pwd2").css("border-bottom", "none");
               $('#check_pwd').text('비밀번호가 일치합니다.');
           }
        });

        $('#pwd_update_btn').click(function(){
            let update= $('#pwd_update_form');
            update.attr('method','post');
            update.attr('action','/settings/pwdimpl');
            update.submit();
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
                            <span class="fs-2x text-gray-800" style="font-weight: 900">비밀번호 변경</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="mypage" class="btn btn-active-accent  fw-bold">MYPAGE</a>
                <a href="/settings/pwd?id=${loginStdn.id}" class="btn btn-active-accent active fw-bold ms-3">비밀번호 변경</a>
                <a href="/settings/authentication" class="btn btn-active-accent fw-bold ms-3">QR코드발급</a>
                <a href="/settings" class="btn btn-active-accent fw-bold ms-3">settings</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <form class="form d-flex flex-center" id="pwd_update_form">
                    <div class="card-body mw-800px py-20">
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span class="bullet bullet-vertical bg-primary me-5"></span>아이디</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           id="id" value="${loginStdn.id}" disabled/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span class="bullet bullet-vertical bg-primary me-5"></span>현재 비밀번호</label>
                            <div class="col-lg-9">
                                <div class="input-group">
                                    <input type="hidden" name="id" value="${loginStdn.id}">
                                    <input class="form-control form-control-solid rounded"
                                           type="password" id="pwd_current" style="width: 60%; margin-right: 5px;"/>
                                    <div class="input-group-append">
                                        <input type="button" class="btn btn-color-gray-600 btn-light-primary fw-bold px-6 py-3"
                                               style="width: max-content" id="pwd_confirm_btn" value="확인"/>
                                    </div>
                                </div>
                                <div style="margin-top: 5px;">
                                    <span class="text-primary" id="check_current"
                                          style="margin-left:10px; font-size:11px; font-width: 800;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span class="bullet bullet-vertical bg-primary me-5"></span>새 비밀번호</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd" name="pwd"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span class="bullet bullet-vertical bg-primary me-5"></span>새 비밀번호 확인</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd2"/>
                                    <span class="text-primary" id="check_pwd"
                                          style="font-size: 11px; font-width: 800;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9">
                                <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                id="pwd_update_btn">변경</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>