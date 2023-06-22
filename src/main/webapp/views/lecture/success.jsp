<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>


<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">결제완료</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/search" class="btn btn-active-accent fw-bold ms-3">학습 자료 찾기</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card card-stretch mb-5 mb-xxl-8">
                    <div class="card-body pb-0">
                        <div class="d-flex flex-column h-100" style="padding-top: 120px;">
                            <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-100px"
                                 style="background-image:url('../img/confirm.png')"></div>
                            <h3 class="text-primary text-center fs-1 fw-bold pt-15 lh-lg">결제 완료</h3>
                            <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-600px text-center"
                                 data-kt-element="message-text" style="margin:0 auto; width: max-content">
                                <div style="display: flex; padding: 20px;">
                                <div style="flex: 1; margin-right: 75px;">
                                    <div>
                                        <span class="text-info" style="font-weight: 700; font-size: small">주문번호</span>
                                    </div>
                                    <div>
                                        <a href="/lecture/orddetail?id=${ordId}"><span class="text-active-gray-900" style="font-size: larger">${ordId}</span></a>
                                    </div>
                                </div>
                                <div style="flex: 1;margin-left: 75px;">
                                    <div>
                                        <span class="text-info" style="font-weight: 700; font-size: small">결제금액</span>
                                    </div>
                                    <div>
                                        <span class="text-primary" style="font-size: larger; font-weight: 500">
                                            <fmt:formatNumber value="${ordPrice}" type="number" pattern="₩###,###"/></span>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-300px"
                                 style="background-image:url('../assets/media/illustrations/sigma-1/3.png')"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>