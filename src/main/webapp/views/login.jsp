<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <base href="../"/>
    <title>DIGI CAMPUS</title>
    <meta charset="utf-8"/>
    <meta name="description"
          content="Check out all the features of the Start admin panel. A large number of templates, components and widgets."/>
    <meta name="keywords"
          content="Start, bootstrap, bootstrap 5, admin themes, free admin themes, bootstrap admin, bootstrap dashboard, html admin theme, html template"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta property="og:locale" content="en_US"/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="Start HTML Pro - Bootstrap 5 HTML Multipurpose Admin Dashboard Template"/>
    <meta property="og:url" content="https://keenthemes.com/products/start-html-pro"/>
    <meta property="og:site_name" content="Keenthemes | Start HTML Pro"/>
    <link rel="canonical" href="https://preview.keenthemes.com/start-html-pro"/>
    <link rel="shortcut icon" href="/assets/media/logos/favicon.ico"/>
    <!--begin::Fonts(mandatory for all pages)-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700"/>
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
    <!--end::Global Stylesheets Bundle-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<style>
    #kt_body {
        background: white;
    }
</style>

<script>
    $(document).ready(function () {

        if (${msg=="error"}) {
            let contents = "${contents}";
            let message =
                '<div class="alert alert-primary d-flex align-items-center">' +
                '<span class="svg-icon svg-icon-2hx svg-icon-primary" style="margin-right:10px;"><img src="/assets/media/icons/duotune/general/gen048.svg"/></span>' +
                '<div class="d-flex flex-column">' +
                '<h6 class="mb-1 text-primary">ERROR</h6>' +
                '<span>' + contents + '</span>'
            '</div></div>';

            $('#here').append(message);

        }

        $('#kt_login_signin_form_submit_button').click(function () {
            let login_form = $('#kt_login_signin_form');
            login_form.attr('method', 'post');
            login_form.attr('action', '/loginimpl');
            login_form.submit();
        });
    });
</script>

<body id="kt_body">
<div class="d-flex flex-column flex-root">
    <div class="d-flex flex-column flex-lg-row flex-column-fluid" id="kt_login">
        <div class="d-flex flex-column flex-lg-row-auto bg-primary w-lg-600px pt-15 pt-lg-0">
            <div class="d-flex flex-row-fluid flex-center flex-column-auto flex-column text-center mb-5">
                <a href="/" class="mb-6">
                    <img alt="Logo" src="assets/media/logos/logo-default.svg" class="h-50px h-lg-75px"/>
                </a>
                <h3 class="fw-bold fs-2x text-white lh-lg">Discover Start
                    <br/>with great build tools</h3>
            </div>
            <div class="d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px"
                 style="background-image: url(/assets/media/illustrations/sigma-1/2.png"></div>
        </div>
        <div class="login-content flex-lg-row-fluid d-flex flex-column justify-content-center position-relative overflow-hidden py-10 py-lg-20 px-10 p-lg-7 mx-auto mw-450px w-100">
            <div class="d-flex flex-column-fluid flex-center py-10">
                <form class="form w-100" novalidate="novalidate" id="kt_login_signin_form">
                    <div class="pb-5 pb-lg-15">
                        <h3 class="fw-bold text-dark display-6">Welcome to Start</h3>
                        <a href="/register">
                            <div class="text-muted fs-4" style="font-weight: 800">처음 오셨나요?
                                <span class="text-primary fw-bold"> 회원가입하기</span></div>
                        </a>
                    </div>
                    <div id="here"></div>
                    <div class="fv-row mb-10 form-floating">
                        <input class="form-control form-control-lg form-control-solid" type="text" name="id"
                               id="floatingId"
                               placeholder="ID" autocomplete="off"/>
                        <label for="floatingId">ID</label>
                    </div>
                    <div class="fv-row mb-10 form-floating">
                        <input class="form-control form-control-lg form-control-solid" type="password" name="pwd"
                               id="floatingPwd"
                               placeholder="PASSWORD" autocomplete="off"/>
                        <label for="floatingPwd">PASSWORD</label>
                        <div class="d-flex justify-content-end mt-n5">
                            <a href="/settings/pwd" class="text-primary fs-8 fw-bold text-hover-primary pt-5"
                               id="kt_login_signin_form_password_reset_button">비밀번호를 잊으셨나요?</a>
                        </div>
                    </div>
                    <div class="pb-lg-0 pb-5">
                        <button type="button" id="kt_login_signin_form_submit_button"
                                class="btn btn-primary fw-bold fs-6 px-8 py-4 my-3 me-3">로그인
                        </button>
                    </div>
                </form>
            </div>
            <div class="d-flex justify-content-lg-start justify-content-center align-items-center py-2 py-lg-7 py-lg-0 fs-7 text-muted">
                <p>로그인에 문제가 있으실 시, 02-1234-5678로 문의 부탁드립니다.</p>
            </div>
        </div>
    </div>
</div>

<script>var hostUrl = "assets/";</script>
<script src="assets/plugins/global/plugins.bundle.js"></script>
<script src="assets/js/scripts.bundle.js"></script>
<!--<script src="assets/js/custom/general/login.js"></script>-->
</body>
</html>