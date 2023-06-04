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
            <div class="card-body border-top p-9">
                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-semibold fs-6">Image</label>
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
                        <span>Detail</span>
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
                    <label class="col-lg-4 col-form-label required fw-semibold fs-6">email</label>
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
                        <span class="required">Contact Phone</span>
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
                        <input id="comdate" name="comdate"
                               class="form-control form-control-lg form-control-solid" type="date"/>
                    </div>
                </div>
                <!--end::Input group-->

                <!--begin::Input group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label required fw-semibold fs-6">DIGI CAM 입과날짜</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <div style="margin-left: 10px;" class="d-flex align-items-center">
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="radio"
                                       value="20220201" name="digidate"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox1">Digi
                                    Campus 1기</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="radio"
                                       value="20230201" name="digidate"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox2">Digi
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
                            class="required">Subject of Interest</span></label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row">
                        <div style="margin-left: 10px;" class="d-flex align-items-center">
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="checkbox"
                                       id="inlineCheckbox1" value="JAVA" name="sbj"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox1">JAVA</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                       value="React" name="sbj"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox2">React</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid"
                                 style="margin-right:15px;">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                       value="CS" name="sbj"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox3">CS</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid"
                                 style="margin-right:15px;">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox4"
                                       value="Algorithm" name="sbj"/>
                                <label class="form-check-label fw-semibold"
                                       for="inlineCheckbox4">Algorithm</label>
                            </div>
                            <div class="form-check form-check-custom form-check-solid"
                                 style="margin-right:15px;">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox5"
                                       value="Machine Learning" name="sbj"/>
                                <label class="form-check-label fw-semibold" for="inlineCheckbox5">Machine
                                    Learning</label>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="form-text" style="margin-bottom: 5px">Choose three different Areas of
                                Interest.
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
                        <select name="mbti" class="form-select form-select-solid" data-control="select2"
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
                <button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">Save
                    Changes
                </button>
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
<!--begin::Sign-in Method-->
<div class="card mb-5 mb-xl-10">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_signin_method">
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Sign-in Method</h3>
        </div>
    </div>
    <!--end::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_signin_method" class="collapse show">
        <!--begin::Card body-->
        <div class="card-body border-top p-9">
            <!--begin::Email Address-->
            <div class="d-flex flex-wrap align-items-center">
                <!--begin::Label-->
                <div id="kt_signin_email">
                    <div class="fs-6 fw-bold mb-1">Email Address</div>
                    <div class="fw-semibold text-gray-600">support@keenthemes.com</div>
                </div>
                <!--end::Label-->
                <!--begin::Edit-->
                <div id="kt_signin_email_edit" class="flex-row-fluid d-none">
                    <!--begin::Form-->
                    <form id="kt_signin_change_email" class="form" novalidate="novalidate">
                        <div class="row mb-6">
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <div class="fv-row mb-0">
                                    <label for="emailaddress" class="form-label fs-6 fw-bold mb-3">Enter New
                                        Email Address</label>
                                    <input type="email"
                                           class="form-control form-control-lg form-control-solid"
                                           id="emailaddress" placeholder="Email Address" name="emailaddress"
                                           value="support@keenthemes.com"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="fv-row mb-0">
                                    <label for="confirmemailpassword" class="form-label fs-6 fw-bold mb-3">Confirm
                                        Password</label>
                                    <input type="password"
                                           class="form-control form-control-lg form-control-solid"
                                           name="confirmemailpassword" id="confirmemailpassword"/>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex">
                            <button id="kt_signin_submit" type="button" class="btn btn-primary me-2 px-6">
                                Update Email
                            </button>
                            <button id="kt_signin_cancel" type="button"
                                    class="btn btn-color-gray-400 btn-active-light-primary px-6">Cancel
                            </button>
                        </div>
                    </form>
                    <!--end::Form-->
                </div>
                <!--end::Edit-->
                <!--begin::Action-->
                <div id="kt_signin_email_button" class="ms-auto">
                    <button class="btn btn-light btn-active-light-primary">Change Email</button>
                </div>
                <!--end::Action-->
            </div>
            <!--end::Email Address-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Password-->
            <div class="d-flex flex-wrap align-items-center mb-10">
                <!--begin::Label-->
                <div id="kt_signin_password">
                    <div class="fs-6 fw-bold mb-1">Password</div>
                    <div class="fw-semibold text-gray-600">************</div>
                </div>
                <!--end::Label-->
                <!--begin::Edit-->
                <div id="kt_signin_password_edit" class="flex-row-fluid d-none">
                    <!--begin::Form-->
                    <form id="kt_signin_change_password" class="form" novalidate="novalidate">
                        <div class="row mb-1">
                            <div class="col-lg-4">
                                <div class="fv-row mb-0">
                                    <label for="currentpassword" class="form-label fs-6 fw-bold mb-3">Current
                                        Password</label>
                                    <input type="password"
                                           class="form-control form-control-lg form-control-solid"
                                           name="currentpassword" id="currentpassword"/>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="fv-row mb-0">
                                    <label for="newpassword" class="form-label fs-6 fw-bold mb-3">New
                                        Password</label>
                                    <input type="password"
                                           class="form-control form-control-lg form-control-solid"
                                           name="newpassword" id="newpassword"/>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="fv-row mb-0">
                                    <label for="confirmpassword" class="form-label fs-6 fw-bold mb-3">Confirm
                                        New Password</label>
                                    <input type="password"
                                           class="form-control form-control-lg form-control-solid"
                                           name="confirmpassword" id="confirmpassword"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-text mb-5">Password must be at least 8 character and contain
                            symbols
                        </div>
                        <div class="d-flex">
                            <button id="kt_password_submit" type="button" class="btn btn-primary me-2 px-6">
                                Update Password
                            </button>
                            <button id="kt_password_cancel" type="button"
                                    class="btn btn-color-gray-400 btn-active-light-primary px-6">Cancel
                            </button>
                        </div>
                    </form>
                    <!--end::Form-->
                </div>
                <!--end::Edit-->
                <!--begin::Action-->
                <div id="kt_signin_password_button" class="ms-auto">
                    <button class="btn btn-light btn-active-light-primary">Reset Password</button>
                </div>
                <!--end::Action-->
            </div>
            <!--end::Password-->
            <!--begin::Notice-->
            <div class="notice d-flex bg-light-primary rounded border-primary border border-dashed p-6">
                <!--begin::Icon-->
                <!--begin::Svg Icon | path: icons/duotune/general/gen048.svg-->
                <span class="svg-icon svg-icon-2tx svg-icon-primary me-4">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3"
                                                              d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"
                                                              fill="currentColor"/>
														<path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                <!--end::Svg Icon-->
                <!--end::Icon-->
                <!--begin::Wrapper-->
                <div class="d-flex flex-stack flex-grow-1 flex-wrap flex-md-nowrap">
                    <!--begin::Content-->
                    <div class="mb-3 mb-md-0 fw-semibold">
                        <h4 class="text-gray-900 fw-bold">Secure Your Account</h4>
                        <div class="fs-6 text-gray-700 pe-7">Two-factor authentication adds an extra layer
                            of security to your account. To log in, in addition you'll need to provide a 6
                            digit code
                        </div>
                    </div>
                    <!--end::Content-->
                    <!--begin::Action-->
                    <a href="#" class="btn btn-primary px-6 align-self-center text-nowrap"
                       data-bs-toggle="modal"
                       data-bs-target="#kt_modal_two_factor_authentication">Enable</a>
                    <!--end::Action-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Notice-->
        </div>
        <!--end::Card body-->
    </div>
    <!--end::Content-->
</div>
<!--end::Sign-in Method-->
<!--begin::Connected Accounts-->
<div class="card mb-5 mb-xl-10">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_connected_accounts" aria-expanded="true"
         aria-controls="kt_account_connected_accounts">
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Connected Accounts</h3>
        </div>
    </div>
    <!--end::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_connected_accounts" class="collapse show">
        <!--begin::Card body-->
        <div class="card-body border-top p-9">
            <!--begin::Notice-->
            <div class="notice d-flex bg-light-primary rounded border-primary border border-dashed mb-9 p-6">
                <!--begin::Icon-->
                <!--begin::Svg Icon | path: icons/duotune/art/art006.svg-->
                <span class="svg-icon svg-icon-2tx svg-icon-primary me-4">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3"
                                                              d="M22 19V17C22 16.4 21.6 16 21 16H8V3C8 2.4 7.6 2 7 2H5C4.4 2 4 2.4 4 3V19C4 19.6 4.4 20 5 20H21C21.6 20 22 19.6 22 19Z"
                                                              fill="currentColor"/>
														<path d="M20 5V21C20 21.6 19.6 22 19 22H17C16.4 22 16 21.6 16 21V8H8V4H19C19.6 4 20 4.4 20 5ZM3 8H4V4H3C2.4 4 2 4.4 2 5V7C2 7.6 2.4 8 3 8Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                <!--end::Svg Icon-->
                <!--end::Icon-->
                <!--begin::Wrapper-->
                <div class="d-flex flex-stack flex-grow-1">
                    <!--begin::Content-->
                    <div class="fw-semibold">
                        <div class="fs-6 text-gray-700">Two-factor authentication adds an extra layer of
                            security to your account. To log in, in you'll need to provide a 4 digit amazing
                            code.
                            <a href="#" class="fw-bold">Learn More</a></div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Notice-->
            <!--begin::Items-->
            <div class="py-2">
                <!--begin::Item-->
                <div class="d-flex flex-stack">
                    <div class="d-flex">
                        <img src="/assets/media/svg/brand-logos/google-icon.svg" class="w-30px me-6"
                             alt=""/>
                        <div class="d-flex flex-column">
                            <a href="#" class="fs-5 text-dark text-hover-primary fw-bold">Google</a>
                            <div class="fs-6 fw-semibold text-gray-400">Plan properly your workflow</div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <div class="form-check form-check-solid form-check-custom form-switch">
                            <input class="form-check-input w-45px h-30px" type="checkbox" id="googleswitch"
                                   checked="checked"/>
                            <label class="form-check-label" for="googleswitch"></label>
                        </div>
                    </div>
                </div>
                <!--end::Item-->
                <div class="separator separator-dashed my-5"></div>
                <!--begin::Item-->
                <div class="d-flex flex-stack">
                    <div class="d-flex">
                        <img src="/assets/media/svg/brand-logos/github.svg" class="w-30px me-6" alt=""/>
                        <div class="d-flex flex-column">
                            <a href="#" class="fs-5 text-dark text-hover-primary fw-bold">Github</a>
                            <div class="fs-6 fw-semibold text-gray-400">Keep eye on on your Repositories
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <div class="form-check form-check-solid form-check-custom form-switch">
                            <input class="form-check-input w-45px h-30px" type="checkbox" id="githubswitch"
                                   checked="checked"/>
                            <label class="form-check-label" for="githubswitch"></label>
                        </div>
                    </div>
                </div>
                <!--end::Item-->
                <div class="separator separator-dashed my-5"></div>
                <!--begin::Item-->
                <div class="d-flex flex-stack">
                    <div class="d-flex">
                        <img src="/assets/media/svg/brand-logos/slack-icon.svg" class="w-30px me-6" alt=""/>
                        <div class="d-flex flex-column">
                            <a href="#" class="fs-5 text-dark text-hover-primary fw-bold">Slack</a>
                            <div class="fs-6 fw-semibold text-gray-400">Integrate Projects Discussions</div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <div class="form-check form-check-solid form-check-custom form-switch">
                            <input class="form-check-input w-45px h-30px" type="checkbox" id="slackswitch"/>
                            <label class="form-check-label" for="slackswitch"></label>
                        </div>
                    </div>
                </div>
                <!--end::Item-->
            </div>
            <!--end::Items-->
        </div>
        <!--end::Card body-->
        <!--begin::Card footer-->
        <div class="card-footer d-flex justify-content-end py-6 px-9">
            <button class="btn btn-light btn-active-light-primary me-2">Discard</button>
            <button class="btn btn-primary">Save Changes</button>

        </div>
        <!--end::Card footer-->
    </div>
    <!--end::Content-->
</div>
<!--end::Connected Accounts-->
<!--begin::Notifications-->
<div class="card mb-5 mb-xl-10">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_email_preferences" aria-expanded="true"
         aria-controls="kt_account_email_preferences">
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Email Preferences</h3>
        </div>
    </div>
    <!--begin::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_email_preferences" class="collapse show">
        <!--begin::Form-->
        <form class="form">
            <!--begin::Card body-->
            <div class="card-body border-top px-9 py-9">
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Successful Payments</span>
														<span class="text-muted fs-6">Receive a notification for every successful payment.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           checked="checked" value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Payouts</span>
														<span class="text-muted fs-6">Receive a notification for every initiated payout.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Fee Collection</span>
														<span class="text-muted fs-6">Receive a notification each time you collect a fee from sales</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           checked="checked" value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Customer Payment Dispute</span>
														<span class="text-muted fs-6">Receive a notification if a payment is disputed by a customer and for dispute purposes.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Refund Alerts</span>
														<span class="text-muted fs-6">Receive a notification if a payment is stated as risk by the Finance Department.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           checked="checked" value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Invoice Payments</span>
														<span class="text-muted fs-6">Receive a notification if a customer sends an incorrect amount to pay their invoice.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
                <!--begin::Option-->
                <div class="separator separator-dashed my-6"></div>
                <!--end::Option-->
                <!--begin::Option-->
                <label class="form-check form-check-custom form-check-solid align-items-start">
                    <!--begin::Input-->
                    <input class="form-check-input me-3" type="checkbox" name="email-preferences[]"
                           value="1"/>
                    <!--end::Input-->
                    <!--begin::Label-->
                    <span class="form-check-label d-flex flex-column align-items-start">
														<span class="fw-bold fs-5 mb-0">Webhook API Endpoints</span>
														<span class="text-muted fs-6">Receive notifications for consistently failing webhook API endpoints.</span>
													</span>
                    <!--end::Label-->
                </label>
                <!--end::Option-->
            </div>
            <!--end::Card body-->
            <!--begin::Card footer-->
            <div class="card-footer d-flex justify-content-end py-6 px-9">
                <button class="btn btn-light btn-active-light-primary me-2">Discard</button>
                <button class="btn btn-primary px-6">Save Changes</button>
            </div>
            <!--end::Card footer-->
        </form>
        <!--end::Form-->
    </div>
    <!--end::Content-->
</div>
<!--end::Notifications-->
<!--begin::Notifications-->
<div class="card mb-5 mb-xl-10">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_notifications" aria-expanded="true"
         aria-controls="kt_account_notifications">
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Notifications</h3>
        </div>
    </div>
    <!--begin::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_notifications" class="collapse show">
        <!--begin::Form-->
        <form class="form">
            <!--begin::Card body-->
            <div class="card-body border-top px-9 pt-3 pb-4">
                <!--begin::Table-->
                <div class="table-responsive">
                    <table class="table table-row-dashed border-gray-300 align-middle gy-6">
                        <tbody class="fs-6 fw-semibold">
                        <!--begin::Table row-->
                        <tr>
                            <td class="min-w-250px fs-4 fw-bold">Notifications</td>
                            <td class="w-125px">
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value=""
                                           id="kt_settings_notification_email" checked="checked"
                                           data-kt-check="true"
                                           data-kt-check-target="[data-kt-settings-notification=email]"/>
                                    <label class="form-check-label ps-2"
                                           for="kt_settings_notification_email">Email</label>
                                </div>
                            </td>
                            <td class="w-125px">
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value=""
                                           id="kt_settings_notification_phone" checked="checked"
                                           data-kt-check="true"
                                           data-kt-check-target="[data-kt-settings-notification=phone]"/>
                                    <label class="form-check-label ps-2"
                                           for="kt_settings_notification_phone">Phone</label>
                                </div>
                            </td>
                        </tr>
                        <!--begin::Table row-->
                        <!--begin::Table row-->
                        <tr>
                            <td>Billing Updates</td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="1" id="billing1"
                                           checked="checked" data-kt-settings-notification="email"/>
                                    <label class="form-check-label ps-2" for="billing1"></label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="" id="billing2"
                                           checked="checked" data-kt-settings-notification="phone"/>
                                    <label class="form-check-label ps-2" for="billing2"></label>
                                </div>
                            </td>
                        </tr>
                        <!--begin::Table row-->
                        <!--begin::Table row-->
                        <tr>
                            <td>New Team Members</td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="" id="team1"
                                           checked="checked" data-kt-settings-notification="email"/>
                                    <label class="form-check-label ps-2" for="team1"></label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="" id="team2"
                                           data-kt-settings-notification="phone"/>
                                    <label class="form-check-label ps-2" for="team2"></label>
                                </div>
                            </td>
                        </tr>
                        <!--begin::Table row-->
                        <!--begin::Table row-->
                        <tr>
                            <td>Completed Projects</td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="" id="project1"
                                           data-kt-settings-notification="email"/>
                                    <label class="form-check-label ps-2" for="project1"></label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value="" id="project2"
                                           checked="checked" data-kt-settings-notification="phone"/>
                                    <label class="form-check-label ps-2" for="project2"></label>
                                </div>
                            </td>
                        </tr>
                        <!--begin::Table row-->
                        <!--begin::Table row-->
                        <tr>
                            <td class="border-bottom-0">Newsletters</td>
                            <td class="border-bottom-0">
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value=""
                                           id="newsletter1" data-kt-settings-notification="email"/>
                                    <label class="form-check-label ps-2" for="newsletter1"></label>
                                </div>
                            </td>
                            <td class="border-bottom-0">
                                <div class="form-check form-check-custom form-check-solid">
                                    <input class="form-check-input" type="checkbox" value=""
                                           id="newsletter2" data-kt-settings-notification="phone"/>
                                    <label class="form-check-label ps-2" for="newsletter2"></label>
                                </div>
                            </td>
                        </tr>
                        <!--begin::Table row-->
                        </tbody>
                    </table>
                </div>
                <!--end::Table-->
            </div>
            <!--end::Card body-->
            <!--begin::Card footer-->
            <div class="card-footer d-flex justify-content-end py-6 px-9">
                <button class="btn btn-light btn-active-light-primary me-2">Discard</button>
                <button class="btn btn-primary px-6">Save Changes</button>
            </div>
            <!--end::Card footer-->
        </form>
        <!--end::Form-->
    </div>
    <!--end::Content-->
</div>
<!--end::Notifications-->
<!--begin::Deactivate Account-->
<div class="card">
    <!--begin::Card header-->
    <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
         data-bs-target="#kt_account_deactivate" aria-expanded="true" aria-controls="kt_account_deactivate">
        <div class="card-title m-0">
            <h3 class="fw-bold m-0">Deactivate Account</h3>
        </div>
    </div>
    <!--end::Card header-->
    <!--begin::Content-->
    <div id="kt_account_settings_deactivate" class="collapse show">
        <!--begin::Form-->
        <form id="kt_account_deactivate_form" class="form">
            <!--begin::Card body-->
            <div class="card-body border-top p-9">
                <!--begin::Notice-->
                <div class="notice d-flex bg-light-warning rounded border-warning border border-dashed mb-9 p-6">
                    <!--begin::Icon-->
                    <!--begin::Svg Icon | path: icons/duotune/general/gen044.svg-->
                    <span class="svg-icon svg-icon-2tx svg-icon-warning me-4">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
															<rect opacity="0.3" x="2" y="2" width="20" height="20"
                                                                  rx="10" fill="currentColor"/>
															<rect x="11" y="14" width="7" height="2" rx="1"
                                                                  transform="rotate(-90 11 14)" fill="currentColor"/>
															<rect x="11" y="17" width="2" height="2" rx="1"
                                                                  transform="rotate(-90 11 17)" fill="currentColor"/>
														</svg>
													</span>
                    <!--end::Svg Icon-->
                    <!--end::Icon-->
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-stack flex-grow-1">
                        <!--begin::Content-->
                        <div class="fw-semibold">
                            <h4 class="text-gray-900 fw-bold">You Are Deactivating Your Account</h4>
                            <div class="fs-6 text-gray-700">For extra security, this requires you to confirm
                                your email or phone number when you reset yousignr password.
                                <br/>
                                <a class="fw-bold" href="#">Learn more</a></div>
                        </div>
                        <!--end::Content-->
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Notice-->
                <!--begin::Form input row-->
                <div class="form-check form-check-solid fv-row">
                    <input name="deactivate" class="form-check-input" type="checkbox" value=""
                           id="deactivate"/>
                    <label class="form-check-label fw-semibold ps-2 fs-6" for="deactivate">I confirm my
                        account deactivation</label>
                </div>
                <!--end::Form input row-->
            </div>
            <!--end::Card body-->
            <!--begin::Card footer-->
            <div class="card-footer d-flex justify-content-end py-6 px-9">
                <button id="kt_account_deactivate_account_submit" type="submit"
                        class="btn btn-danger fw-semibold">Deactivate Account
                </button>
            </div>
            <!--end::Card footer-->
        </form>
        <!--end::Form-->
    </div>
    <!--end::Content-->
</div>
<!--end::Deactivate Account-->
<script>
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
                            message: 'Text input is required'
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
        alert('hi');
        // Prevent default button action
        // e.preventDefault();

        // Validate form before submit
        // if (validator) {
        //     validator.validate().then(function (status) {
        //         console.log('validated!');
        //
        //         if (status == 'Valid') {
        //             // Show loading indication
        //             submitButton.setAttribute('data-kt-indicator', 'on');
        //
        //             // Disable button to avoid multiple click
        //             submitButton.disabled = true;
        //
        //             // Simulate form submission. For more info check the plugin's official documentation: https://sweetalert2.github.io/
        //             setTimeout(function () {
        //                 // Remove loading indication
        //                 submitButton.removeAttribute('data-kt-indicator');
        //
        //                 // Enable button
        //                 submitButton.disabled = false;
        //
        //                 // Show popup confirmation
        //                 Swal.fire({
        //                     text             : "Form has been successfully submitted!",
        //                     icon             : "success",
        //                     buttonsStyling   : false,
        //                     confirmButtonText: "Ok, got it!",
        //                     customClass      : {
        //                         confirmButton: "btn btn-primary"
        //                     }
        //                 });
        //
        //                 //form.submit(); // Submit form
        //             }, 2000);
        //         }
        //     });
        // }
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