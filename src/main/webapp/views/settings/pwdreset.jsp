<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<style>
    form {
        padding: 100px;
    }

    .inline-group {
        display: inline-block;
    }

    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
</style>

<script>
    let lost_form = {
        init: function () {
            document.addEventListener('keydown', function (event) {
                if (event.keyCode === 13) {
                    event.preventDefault();
                    return false;
                }
            });

            //비활성화
            $('#pwd_update_btn').attr('disabled', true);
            $('#reg_code_btn').attr('disabled', true);
            //인증번호 확인까지 비활성화
            $('#pwd').attr('disabled', true);
            $('#pwd2').attr('disabled', true);


            $('#contact_auth').keyup(function () {
                let contact_auth = $('#contact_auth').val();
                if (contact_auth.length >= 10) {
                    $('#reg_code_btn').attr('disabled', false);
                }
            })

            $('#reg_code_btn').click(function () {
                lost_form.code();
            });

            $('#reg_code_send_btn').click(function () {
                let authModal = $('#auth_modal');
                if ($('#code_real').val() == $('#code_confirm').val()) {
                    let modal = new bootstrap.Modal(authModal);
                    clearInterval(timer);
                    $('#contact_auth').attr('disabled', true);
                    $('#code_confirm').attr('disabled', true);
                    $('#id').attr('disabled', true);
                    $('#contact').val($('#contact_auth').val());
                    $('#auth_msg').html('인증되었습니다.');
                    modal.show();
                    $('#pwd').attr('disabled', false);
                    $('#pwd2').attr('disabled', false);
                } else {
                    let modal = new bootstrap.Modal(authModal);
                    $('#auth_msg').html('인증번호가 일치하지 않습니다.');
                    modal.show();
                }
            })


            $('#pwd2').blur(function () {
                $('#pwd_update_btn').attr('disabled', true);
                let pwd = $('#pwd').val();
                let pwd2 = $('#pwd2').val();
                let current = $('#pwd_current').val();


                //입력 확인 값 다른 것 거르기
                if (pwd !== pwd2) {
                    $("#pwd2").css("border-bottom", "3px solid #20D489");
                    $('#check_pwd').text('비밀번호가 일치하지 않습니다.');
                }

                //일치 확인 표출
                if (pwd == pwd2 && pwd != current) {
                    $('#pwd_update_btn').attr('disabled', false);
                    $("#pwd2").css("border-bottom", "none");
                    $('#check_pwd').text('비밀번호가 일치합니다.');
                }
            });

            $('#pwd_update_btn').click(function () {
                let update = $('#pwd_update_form');
                update.attr('method', 'post');
                update.attr('action', '/settings/pwdimpl');
                update.submit();
            });
        },
        count_down_timer: function () {
            let limits = 300;
            timer = setInterval(function () {
                if (limits < 0) {
                    return;
                } else {
                    let min = parseInt((limits) / 60);
                    let sec = limits % 60;
                    let authModal = $('#auth_modal');
                    if (limits % 60 < 10) {
                        sec = "0" + sec;
                    } else {
                        sec = sec;
                    }
                    $("#id_span_timer").html(min + ":" + sec);
                    limits--;

                    if (limits == 0) {
                        $('#reg_code_send_btn').attr('disabled', 'true');
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('인증번호가 만료되었습니다.');
                        modal.show();
                        return;
                    }
                }
            }, 1000);
        },
        code            : function () {
            let stdnId = $('#id').val();
            let contact_auth = $('#contact_auth').val();
            let authModal = $('#auth_modal');
            //alert(stdnId);
            $.ajax({
                url    : '/pwdresetcodeimpl',
                data   : {stdnId:stdnId, contact_auth: contact_auth},
                success: function (result) {
                    if(result == 1){
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('연락처 정보가 일치하지 않습니다.');
                        modal.show();
                    } else if (result == 0) {
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('발송실패! 잠시 후 다시 시도 부탁드립니다.');
                        modal.show();
                    } else {
                        $('#code_real').val(result);
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('인증번호가 발송되었습니다.');
                        lost_form.count_down_timer();
                        modal.show();
                    };
                }
            })
        }
    }

    $(function () {
        let timer;
        lost_form.init();
    });
</script>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">비밀번호 분실 변경</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/settings/pwdreset" class="btn btn-active-accent active fw-bold ms-3">비밀번호 분실 변경</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <input type="hidden" id="code_real" value=""/>
                <form class="form d-flex flex-center" id="pwd_update_form">
                    <div class="card-body mw-800px py-20">
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span class="bullet bullet-vertical bg-primary me-5"></span>아이디</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           name = "id" id="id" placeholder="아이디를 입력하세요 ">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>연락처</label>
                            <div class="col-lg-9 d-flex justify mb-3">
                                <div class="spinner spinner-sm spinner-primary spinner-right"
                                     style="width:76%; margin-right:1%">
                                    <input class="form-control form-control-lg form-control-solid" type="number"
                                           id="contact_auth" name="contact_auth" placeholder="가입 시 등록한 핸드폰번호를 입력하세요"/>
                                </div>
                                <div class="spinner spinner-sm spinner-primary spinner-right" style="width:24%">
                                    <button type="button" class="form-control btn btn-primary fw-bold px-3 py-3 me-3"
                                            id="reg_code_btn">
                                        인증번호 발송
                                    </button>
                                </div>
                            </div>
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9 d-flex align-items-center">
                                <a href="javascript:void(0)" class="spinner spinner-primary text-center spinner-sm spinner-right form-control btn bg-light-danger fw-bold px-6 py-3 me-1"
                                   style="width:20%;">
                                    <span id="id_span_timer"
                                          class="svg-icon svg-icon-muted text-center text-danger fs-6 fw-bolder">유효시간</span>
                                </a>
                                <div class="spinner spinner-sm spinner-primary spinner-right"
                                     style="width:55%; margin-right:1%;">
                                    <input class="form-control form-control-lg form-control-solid" type="number"
                                           id="code_confirm"/>
                                </div>
                                <div class="spinner spinner-sm spinner-primary spinner-right" style="width:23%">
                                    <button type="button" class="form-control btn btn-primary fw-bold px-6 py-3 me-3"
                                            id="reg_code_send_btn">
                                        인증번호 확인
                                    </button>
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

<!--Method Modal Start-->
<div class="modal fade" tabindex="-1" id="auth_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body text-primary" style="display: flex; justify-content: space-between;font-size: 1rem;">
                <div class="text-start" style="width: 90%;">
                    <p id="auth_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Method Modal-->