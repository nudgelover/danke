<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="canonical" href="https://preview.keenthemes.com/start-html-pro"/>
<link rel="shortcut icon" href="/assets/media/logos/favicon.ico"/>
<!--begin::Fonts(mandatory for all pages)-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700"/>
<!--end::Fonts-->
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->
<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
<link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        // Define form element
        const form = document.getElementById('kt_docs_formvalidation_text');

        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        var validator = FormValidation.formValidation(
            form,
            {
                fields: {
                    'contact': {
                        validators: {
                            notEmpty: {
                                message: '연락처는 필수기재사항입니다.'
                            }
                        }
                    },
                    'email'  : {
                        validators: {
                            notEmpty: {
                                message: '이메일 주소는 필수기재사항입니다.'
                            }
                        }
                    },
                    'comdate': {
                        validators: {
                            notEmpty: {
                                message: '입행날짜는 필수기재사항입니다'
                            }
                        }
                    },
                },

                plugins: {
                    trigger  : new FormValidation.plugins.Trigger(),
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector    : '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass  : ''
                    })
                }
            }
        );

        // Submit button handler
        const submitButton = document.getElementById('kt_docs_formvalidation_text_submit');
        submitButton.addEventListener('click', function (e) {
            // Prevent default button action
            e.preventDefault();

            // Validate form before submit
            if (validator) {
                validator.validate().then(function (status) {
                    console.log('validated!');

                    if (status == 'Valid') {
                        // Show loading indication
                        submitButton.setAttribute('data-kt-indicator', 'on');

                        // Disable button to avoid multiple click
                        submitButton.disabled = true;

                        // let subject = [];
                        // const checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
                        // checkboxes.forEach(function (checkbox) {
                        //     subject.push(checkbox.value);
                        // });


                        form.setAttribute('method', 'post');
                        form.setAttribute('action', '/mypage/updateimpl');
                        form.setAttribute('enctype', 'multipart/form-data');
                        form.submit();
                        //form.submit(); // Submit form
                        const formData = new FormData(form);

                        // Log form data
                        for (const [key, value] of formData.entries()) {
                            console.log(key, value);
                        }
                        // Simulate form submission. For more info check the plugin's official documentation: https://sweetalert2.github.io/
                        setTimeout(function () {
                            // Remove loading indication
                            submitButton.removeAttribute('data-kt-indicator');

                            // Enable button
                            submitButton.disabled = false;

                            // Show popup confirmation
                            Swal.fire({
                                text             : "성공적으로 변경되었습니다!",
                                icon             : "success",
                                buttonsStyling   : false,
                                confirmButtonText: "확인",
                                customClass      : {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                        }, 2000);
                    }
                });
            }
        });
    });
</script>

<!--begin::Basic info-->
<div class="card mb-5 mb-xl-10">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_profile_details" aria-expanded="true"
         aria-controls="kt_account_profile_details">
        <!--begin::Card title-->
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Profile Details</h3>
        </div>
        <!--end::Card title-->
    </div>
    <!--begin::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_profile_details" class="collapse show">
        <!--begin::Form-->
        <!--begin::Card body-->
        <form id="kt_docs_formvalidation_text" class="form" action="#" autocomplete="off">
            <input type="hidden" id="id" name="id" value="${student.id}">
            <input type="hidden" id="img" name="img" value="${student.img}">
            <div class="card-body border-top p-9">
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">프로필 이미지</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <!--begin::Image input-->
                        <div class="image-input image-input-outline" data-kt-image-input="true"
                             style="background-image: url('/uimg/${student.img}')">
                            <!--begin::Preview existing avatar-->
                            <div class="image-input-wrapper w-125px h-125px"
                                 style="background-image: url('/uimg/${student.img}')"></div>
                            <!--end::Preview existing avatar-->
                            <!--begin::Label-->
                            <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                   data-kt-image-input-action="change" data-bs-toggle="tooltip"
                                   title="Change avatar">
                                <i class="bi bi-pencil-fill fs-7"></i>
                                <!--begin::Inputs-->
                                <input type="file" name="imgfile" accept=".png, .jpg, .jpeg"/>
                                <input type="hidden" name="avatar_remove"/>
                                <!--end::Inputs-->
                            </label>
                            <!--end::Label-->
                            <!--begin::Cancel-->
                            <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                  data-kt-image-input-action="cancel" data-bs-toggle="tooltip"
                                  title="Cancel avatar">
																<i class="bi bi-x fs-2"></i>
															</span>
                            <!--end::Cancel-->
                            <!--begin::Remove-->
                            <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                  data-kt-image-input-action="remove" data-bs-toggle="tooltip"
                                  title="Remove avatar">
																<i class="bi bi-x fs-2"></i>
															</span>
                            <!--end::Remove-->
                        </div>
                        <!--end::Image input-->
                        <!--begin::Hint-->
                        <div class="form-text">Allowed file types: png, jpg, jpeg.</div>
                        <!--end::Hint-->
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
                <!--begin::Input group-->
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">
                        <span>자기소개</span>
                        <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip"
                           title="마이페이지 상단의 나의 소개를 입력해주세요."></i>
                    </label>


                    <!--end::Label-->
                    <div class="col-lg-8 fv-row">
                        <textarea name="detail" class="form-control form-control form-control-solid"
                                  data-kt-autosize="true">${mypage.detail}</textarea>
                    </div>
                </div>
                <!--end::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label required fw-semibold fs-6">이메일</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <input type="text" id="email" name="email"
                               placeholder="_@_" value="${student.email}"
                               class="form-control form-control-lg form-control-solid"
                        />
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
                <!--begin::Input group-->

                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">
                        <span class="required">연락처</span>
                        <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip"
                           title="연락 가능한 번호로 입력해주세요."></i>
                    </label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <input type="tel" name="contact"
                               class="form-control form-control-lg form-control-solid"
                               maxlength="11" placeholder="Phone number" value="${student.contact}"/>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
                <!--begin::Input group-->

                <!--end::Input group-->
                <!--begin::Input group-->

                <!--end::Input group-->
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label required fw-semibold fs-6">입행날짜</label>
                    <!--end::Label-->
                    <div class="col-lg-8 fv-row">
                        <input id="comdate" name="comdate" class="form-control form-control-lg form-control-solid"
                               type="date"/>

                    </div>
                </div>
                <!--end::Input group-->

                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label required fw-semibold fs-6">입과기수</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <div style="margin-left: 10px;" class="d-flex align-items-center">
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="radio"
                                       value="20220201" name="digidate"/>
                                <label class="form-check-label fw-semibold" >Digi
                                    Campus 1기</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="radio"
                                       value="20230201" name="digidate"/>
                                <label class="form-check-label fw-semibold">Digi
                                    Campus 2기</label>
                            </div>
                        </div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->

                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6"> <span
                            class="required">관심분야</span></label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <div style="margin-left: 10px;" class="d-flex align-items-center">
                            <input class="form-check-input" type="text"
                                   id="inlineCheckbox1" value="JAVA" name="sbj1"/>
                            <input class="form-check-input" type="text"
                                   id="inlineCheckbox1" value="REACT" name="sbj2"/>
                            <input class="form-check-input" type="text"
                                   id="inlineCheckbox1" value="CS" name="sbj3"/>
<%--                            <div class="form-check form-check-custom form-check-solid me-5">--%>
<%--                                <input class="form-check-input" type="checkbox"--%>
<%--                                       id="inlineCheckbox1" value="JAVA" name="sbj"/>--%>
<%--                                <label class="form-check-label fw-semibold" for="inlineCheckbox1">JAVA</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check form-check-custom form-check-solid me-5">--%>
<%--                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2"--%>
<%--                                       value="React" name="sbj"/>--%>
<%--                                <label class="form-check-label fw-semibold" for="inlineCheckbox2">React</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check form-check-custom form-check-solid"--%>
<%--                                 style="margin-right:15px;">--%>
<%--                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3"--%>
<%--                                       value="CS" name="sbj"/>--%>
<%--                                <label class="form-check-label fw-semibold" for="inlineCheckbox3">CS</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check form-check-custom form-check-solid"--%>
<%--                                 style="margin-right:15px;">--%>
<%--                                <input class="form-check-input" type="checkbox" id="inlineCheckbox4"--%>
<%--                                       value="Algorithm" name="sbj"/>--%>
<%--                                <label class="form-check-label fw-semibold"--%>
<%--                                       for="inlineCheckbox4">Algorithm</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check form-check-custom form-check-solid"--%>
<%--                                 style="margin-right:15px;">--%>
<%--                                <input class="form-check-input" type="checkbox" id="inlineCheckbox5"--%>
<%--                                       value="Machine Learning" name="sbj"/>--%>
<%--                                <label class="form-check-label fw-semibold" for="inlineCheckbox5">Machine--%>
<%--                                    Learning</label>--%>
<%--                            </div>--%>
                        </div>
                        <div class="col-lg-9">
                            <div class="form-text" style="margin: 12px 0 0 5px">관심분야 <span style="color:darkorange">3가지</span>를 선택해주세요. 강의 추천에 많은 도움이 됩니다.
                            </div>
                        </div>
                    </div>
                    <!--end::Col-->
                </div>

                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">
                        MBTI
                    </label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <select id="mbti" name="mbti" class="form-select form-select-solid" data-control="select2"
                                data-placeholder="Select a MBTI">
                            <option></option>
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

                    </div>
                    <!--end::Col-->
                </div>
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">Instagram</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <input type="text" name="insta"
                               class="form-control form-control-lg form-control-solid"
                               placeholder="Instargram Id" value="${mypage.insta}"/>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">facebook</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <input type="text" name="facebook"
                               class="form-control form-control-lg form-control-solid"
                               placeholder="Facebook Id" value="${mypage.facebook}"/>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->

            </div>
            <!--end::Card body-->
            <!--begin::Actions-->
            <div class="card-footer d-flex justify-content-end py-6 px-9">
                <button type="reset" class="btn btn-light btn-active-light-primary me-2">Discard</button>
                <button id="kt_docs_formvalidation_text_submit" type="submit" class="btn btn-primary">
        <span class="indicator-label">
            Validation Form
        </span>
                    <span class="indicator-progress">
            Please wait... <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
        </span>
                </button>
            </div>
            <!--end::Actions-->
        </form>
        <!--end::Form-->
    </div>
    <!--end::Content-->
</div>
<!--end::Basic info-->

<script>
    // 기존 회원이 선택한 MBTI 값을 가져옵니다.
    var selectedMBTI = "${mypage.mbti}";
    // MBTI 선택 옵션들의 NodeList를 가져옵니다.
    var mbtiOptions = document.querySelectorAll('#mbti option');


    // NodeList를 Array로 변환하여 각 옵션을 순회하며 선택 여부를 확인합니다.
    Array.from(mbtiOptions).forEach(function (option) {
        if (option.value === selectedMBTI) {
            // 기존 회원이 선택한 MBTI와 일치하는 옵션을 선택합니다.
            option.selected = true;
        }
    });

    var selectedDIGIDATE = "${mypage.digidate}";
    // digi_sdate 라디오 버튼의 NodeList를 가져옵니다.
    var digiDateOptions = document.querySelectorAll('input[name="digidate"]');

    // NodeList를 Array로 변환하여 각 라디오 버튼을 순회하며 선택 여부를 확인합니다.
    Array.from(digiDateOptions).forEach(function (radio) {
        if (radio.value === selectedDIGIDATE) {
            // 기존 회원이 선택한 digi_sdate와 일치하는 라디오 버튼을 선택합니다.
            radio.checked = true;
        }
    });

    var comSdateInput = document.getElementById("comdate");
    var comSdateValue = "${mypage.comdate}";

    // 값이 존재하는 경우
    if (comSdateValue) {
        // 2023-05-01 00:00:00 => 2023-05-01
        var date = comSdateValue.substr(0, 10);

        // 날짜 형식으로 변환
        var formattedDate = date

        // 날짜 값을 <input type="date"> 요소에 설정
        comSdateInput.value = formattedDate;
    }

    // 최대 선택 가능한 체크박스 개수
    const maxCheckboxCount = 3;

    // 체크박스 요소들
    const checkboxes = document.querySelectorAll('input[name="sbj"]');

    // 체크박스 개수 체크 함수
    function checkCheckboxCount() {
        let checkedCount = 0;
        checkboxes.forEach(function(checkbox) {
            if (checkbox.checked) {
                checkedCount++;
            }
        });

        // 최대 개수를 초과하는 경우 추가적인 체크를 방지
        checkboxes.forEach(function(checkbox) {
            checkbox.disabled = (checkedCount >= maxCheckboxCount && !checkbox.checked);
        });
    }

    // 체크박스 변경 이벤트 핸들러 등록
    checkboxes.forEach(function(checkbox) {
        checkbox.addEventListener('change', checkCheckboxCount);
    });
</script>

<!--begin::Vendors Javascript(used for this page only)-->
<script>var hostUrl = "/assets/";</script>
<!--begin::Global Javascript Bundle(mandatory for all pages)-->
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
<!--end::Global Javascript Bundle-->
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/account/settings/signin-methods.js"></script>
<script src="/assets/js/custom/account/settings/profile-details.js"></script>
<script src="/assets/js/custom/account/settings/deactivate-account.js"></script>
<script src="/assets/js/custom/pages/user-profile/general.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/type.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/details.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/finance.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/complete.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/main.js"></script>
<script src="/assets/js/custom/utilities/modals/two-factor-authentication.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>