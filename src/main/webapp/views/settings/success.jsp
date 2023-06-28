<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<style>
    form {
        padding: 100px;
    }
</style>

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
                <a href="#" class="btn btn-active-accent fw-bold ms-3">QR코드발급</a>
                <a href="/settings" class="btn btn-active-accent  fw-bold">settings</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card card-stretch mb-5 mb-xxl-8">
                    <div class="card-body pb-0 rounded" style="background-color: rgba(65,218,155,0.16)">
                        <div class="d-flex flex-column h-100" style="padding-top: 120px;">
                            <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-100px"
                                 style="background-image:url('../img/confirm.png')"></div>
                            <h3 class="text-primary text-center fs-1 fw-bold pt-15 lh-lg">
                                ${name}님 비밀번호 변경 완료! 변경하신 비밀번호로 다시 로그인 하십시오!
                            </h3>
                            <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-300px"
                                 style="background-image:url('../assets/media/illustrations/sigma-1/3.png')"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>