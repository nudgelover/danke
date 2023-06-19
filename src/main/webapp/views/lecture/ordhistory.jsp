<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">수강신청 내역조회</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card-body">
                    <input type="hidden" id="outputData" value=""/>
                    <div>
                        <div class="card mb-12">
                            <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-warning py-3">
                                <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                     style="background-image: url(/assets/media/illustrations/sigma-1/11.png);"></div>
                                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                    <h1 class="text-dark" style="font-weight: 900">리뷰 이벤트 응모하면 최대 20% 혜택이</h1>
                                    <div class="fs-3 mb-8">수강하신 강의의 후기를 정성껏 남겨주세요.<br>
                                        좋아요를 많이 받은 후기의 주인공에게 아묻따 20% 쿠폰이 지급됩니다.</div>
                                </div>
                            </div>
                        </div>
                        <div class="rounded d-flex justify-content-center flex-grow-0">
                            <div class="py-5" style="width: 100%; padding-right:15%; padding-left:15%">
                                <div class="table-responsive text-center">
                                    <table class="table table-row-dashed table-row-gray-300 gy-7">
                                        <colgroup>
                                            <col style="width: 20%;">
                                            <col style="width: 30%;">
                                            <col style="width: 50%;">
                                        </colgroup>
                                        <thead>
                                            <tr class="fw-bold fs-6 text-gray-800">
                                                <th>주문일자
                                                    <br><span class="text-muted fs-8">(주문번호)</span></th>
                                                <th>주문상세번호
                                                    <br><span class="text-muted fs-8">(강의별 주문상세번호)</span></th>
                                                <th class="text-center">상세내역
                                                    <br><span class="text-muted fs-8">(강의 상세정보)</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="ord" items="${ord}">
                                                    <tr>
                                                        <td rowspan="${ord.cnt}">
                                                        ${ord.rdate}<br>
                                                        <span class="text-muted fs-8">주문번호: <a href="/lecture/orddetail?id=${ord.id}">${ord.id}</a></span></td>
                                                        <c:forEach var="ordDetailByOrd" items="${ordDetailByOrd[ord.id]}" varStatus="status" begin="0" end="0">
                                                            <td>${ordDetailByOrd.id}</td>
                                                            <td class="text-center">
                                                                <div class="d-flex justify-content-center">
                                                                    <div class="symbol symbol-100px me-4">
                                                                            <span class="symbol-label bg-light">
                                                                                <img src="/uimg/${ordDetailByOrd.img}"
                                                                                     class="h-75 align-self-center" alt=""/>
                                                                            </span>
                                                                    </div>
                                                                    <div class="text-start" style="margin-left: 1%">
                                                                        <span class="fs-7 text-gray-800 fw-bolder">${ordDetailByOrd.lecTitle}</span><br>
                                                                        <span class="text-muted fs-8 text-start">${ordDetailByOrd.lecTeacher}</span>
                                                                        <p class="text-muted fs-8 text-start">
                                                                            <span style="text-decoration: line-through;">
                                                                                    <fmt:formatNumber value="${ordDetailByOrd.price}" type="number" pattern="###,###원"/>
                                                                                </span>
                                                                            (${ordDetailByOrd.discRate}%할인)<br>
                                                                            <span class="text-danger">
                                                                                <fmt:formatNumber value="${ordDetailByOrd.price * (100-ordDetailByOrd.discRate)/100}" type="number" pattern="###,###원"/>
                                                                            </span>
                                                                            <br><span class="badge badge-light-info fs-8" style="margin-top:1%;">${ordDetailByOrd.lecTopic}</span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                    <c:choose>
                                                        <c:when test="${ord.cnt!=1}">
                                                            <c:forEach var="ordDetailByOrd" items="${ordDetailByOrd[ord.id]}" varStatus="status" begin="1">
                                                                <tr>
                                                                    <td>${ordDetailByOrd.id}</td>
                                                                    <td class="text-center">
                                                                        <div class="d-flex justify-content-center">
                                                                            <div class="symbol symbol-100px me-4">
                                                                            <span class="symbol-label bg-light">
                                                                                <img src="/uimg/${ordDetailByOrd.img}"
                                                                                     class="h-75 align-self-center" alt=""/>
                                                                            </span>
                                                                            </div>
                                                                            <div class="text-start" style="margin-left: 1%">
                                                                                <span class="fs-7 text-gray-800 fw-bolder">${ordDetailByOrd.lecTitle}</span><br>
                                                                                <span class="text-muted fs-8 text-start">${ordDetailByOrd.lecTeacher}</span>
                                                                                <p class="text-muted fs-8 text-start">
                                                                            <span style="text-decoration: line-through;">
                                                                                    <fmt:formatNumber value="${ordDetailByOrd.price}" type="number" pattern="###,###원"/>
                                                                                </span>
                                                                                    (${ordDetailByOrd.discRate}%할인)<br>
                                                                                    <span class="text-danger">
                                                                                <fmt:formatNumber value="${ordDetailByOrd.price * (100-ordDetailByOrd.discRate)/100}" type="number" pattern="###,###원"/>
                                                                            </span>
                                                                                    <br><span class="badge badge-light-info fs-8" style="margin-top:1%;">${ordDetailByOrd.lecTopic}</span>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:when>
                                                    </c:choose>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="col-12 text-center text-gray-700 fs-4 py-15 mt-10">
                                        <c:choose>
                                            <c:when test="${ord.size()==0}">
                                                수강 신청 내역이 존재하지 않습니다.
                                            </c:when>
                                        </c:choose>
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



<div class="modal fade" tabindex="-1" id="study_edit_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;background-color: #41da9b">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start text-white" style="width: 90%;">
                    <p id="study_end_msg" class="text-white" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
