<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    input[type="text"]:focus,
    input[type="password"]:focus,
    input[type="number"]:focus,
    input[type="email"]:focus {
        background-color: rgba(213, 249, 232, 0.9);
    }

    .form-floating {
        width: 33%;
        display: inline-block;
    }

</style>
<script>
    let register_form = {
        init: function () {
            $('#register_btn').click(function () {

                register_form.send();
            });
        },
        send: function () {

            var formData = new FormData($('#register_form')[0]);
            let registerModal = $('#register_modal');

            $.ajax({
                url        : '/registerimpl2',
                method     : 'POST',
                data       : formData,
                processData: false,
                contentType: false,
                success    : function (response) {
                    let modal = new bootstrap.Modal(registerModal);
                    $('#register_msg').html('가입완료! 관리자 승인 후, 로그인 가능합니다!(10초 후 로그인 페이지 이동)');
                    modal.show();
                    setTimeout(function() {
                        window.location.href = '/login'
                    }, 10000);
                },
                error      : function (error) {
                    let modal = new bootstrap.Modal(registerModal);
                    $('#register_msg').html(' 마이페이지 정보 등록 실패! 관리자 승인 후, 로그인 가능합니다.(10초 후 로그인 페이지 이동)');
                    modal.show();
                }
            })
        }
    };

    $(function () {
        register_form.init();
    });





</script>

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">추가 정보</h3>
                <p>당신에 대해 더 많이 알고 싶어요 😊</p>
                <!--end::Title-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Profile Account-->
            <div class="card">
                <!--begin::Form-->
                <form class="form d-flex flex-center" id="register_form">
                    <input type="text" name="id" id="id" value="${loginStdn.id}">
                    <div class="card-body mw-800px py-20">
                        <!--begin::Form row-->
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">MBTI</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <div class="form-floating">
                                        <select class="form-control form-control-solid" id="mbti"
                                                name="mbti" aria-label="Floating label select example">
                                            <option selected>MBTI</option>
                                            <option>ISTJ</option>
                                            <option>ISFJ</option>
                                            <option>INFJ</option>
                                            <option>INTJ</option>
                                            <option>ISTP</option>
                                            <option>ISFP</option>
                                            <option>INFP</option>
                                            <option>INTP</option>
                                            <option>ESTP</option>
                                            <option>ESFP</option>
                                            <option>ENFP</option>
                                            <option>ENTP</option>
                                            <option>ESTJ</option>
                                            <option>ESFJ</option>
                                            <option>ENFJ</option>
                                            <option>ENTJ</option>
                                        </select>
                                        <label for="MBTI">MBTI</label>
                                    </div>
                                </div>
                            </div>


                            <div class="row mb-8">
                                <label class="col-lg-3 col-form-label">WITH KB : </label>
                                <div class="col-lg-9">
                                    <div class="spinner spinner-sm spinner-primary spinner-right">
                                        <div class="form-floating">
                                            <input id="comdate" name="comdate"
                                                   class="form-control form-control-lg form-control-solid" type="date"/>
                                            <label for="comdate">입행날짜</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-8">
                                <label class="col-lg-3 col-form-label">WITH DIGI : </label>
                                <div class="col-lg-9">
                                    <div class="spinner spinner-sm spinner-primary spinner-right">
                                        <div class="date_radio">
                                            <input type="radio" name="digidate" value="20220201">Digi
                                            Campus 1기
                                            <input type="radio" name="digidate"  value="20230201">Digi
                                            Campus 2기
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-8">
                                <label class="col-lg-3 col-form-label">detail</label>
                                <div class="col-lg-9">
                                    <div class="spinner spinner-sm spinner-primary spinner-right">
                                        <input class="form-control form-control-lg form-control-solid" type="text"
                                               id="detail" name="detail"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-8">
                                <label class="col-lg-3 col-form-label">insta</label>
                                <div class="col-lg-9">
                                    <div class="spinner spinner-sm spinner-primary spinner-right">
                                        <input class="form-control form-control-lg form-control-solid" type="text"
                                               id="insta" name="insta"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-8">
                                <label class="col-lg-3 col-form-label">facebook</label>
                                <div class="col-lg-9">
                                    <div class="spinner spinner-sm spinner-primary spinner-right">
                                        <input class="form-control form-control-lg form-control-solid" type="text"
                                               id="facebook" name="facebook"/>
                                    </div>
                                </div>
                            </div>
                            <!--begin::Form row-->
                            <div class="separator separator-dashed my-10"></div>
                            <div class="row">
                                <label class="col-lg-3 col-form-label"></label>
                                <div class="col-lg-9">
                                    <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3"
                                            id="register_btn">
                                        REGISTER
                                    </button>
                                </div>
                            </div>
                            <!--end::Form row-->
                        </div>
                </form>
                <!--end::Form-->
            </div>
            <!--end::Profile Account-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->

<div class="modal fade" tabindex="-1" id="register_modal">
<div class="modal-dialog">
    <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;background-color: #41da9b">
        <div class="modal-body" style="display: flex; justify-content: space-between">
            <div class="text-start text-white" style="width: 90%;">
                <p id="register_msg" class="text-white" style="font-weight:700"></p>
            </div>
            <div class="text-end" style="width: 10%;">
                <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
            </div>
        </div>
    </div>
</div>
</div>



<!--begin::Javascript-->
<script>var hostUrl = "/assets/";</script>
<!--begin::Global Javascript Bundle(mandatory for all pages)-->
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
<!--end::Global Javascript Bundle-->
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->