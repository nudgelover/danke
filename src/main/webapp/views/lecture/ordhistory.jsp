<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">나의 주문내역 조회</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <div class="card">
                <div class="card-body">
                    <!--begin::Form-->
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
                            <div class="py-5 px-10" style="width: 100%">
                                <div class="table-responsive text-center">
                                    <table class="table table-row-dashed table-row-gray-300 gy-7">
                                        <colgroup>
                                            <col style="width: 15%;">
                                            <col style="width: 15%;">
                                            <col style="width: 70%;">
                                        </colgroup>
                                        <thead>
                                            <tr class="fw-bold fs-6 text-gray-800">
                                                <th>주문일자
                                                    <br><span class="text-muted fs-8">(주문번호)</span></th>
                                                <th>주문상세번호</th>
                                                <th class="text-center">상세내역</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="ord" items="${ord}">
                                                    <tr>
                                                        <td rowspan="${ord.cnt}">
                                                        ${ord.rdate}<br>
                                                        <span class="text-muted fs-8"><a href="/lecture/orddetail?id=${ord.id}">(${ord.id})</a></span></td>
                                                        <c:forEach var="ordDetailByOrd" items="${ordDetailByOrd[ord.id]}" varStatus="status" begin="0" end="0">
                                                            <td>${ordDetailByOrd.id}</td>
                                                            <td class="text-center">${ordDetailByOrd.img}</td>
                                                        </c:forEach>
                                                    </tr>
                                                    <c:choose>
                                                        <c:when test="${ord.cnt!=1}">
                                                            <c:forEach var="ordDetailByOrd" items="${ordDetailByOrd[ord.id]}" varStatus="status" begin="1">
                                                                <tr>
                                                                    <td>${ordDetailByOrd.id}</td>
                                                                    <td class="text-center">${ordDetailByOrd.img}</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:when>
                                                    </c:choose>
                                            </c:forEach>
                                        <!-- 추가적인 주문상세번호와 상세내역을 필요한 만큼 추가 -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end::Form-->
                </div>
            </div>
            <!--end::Profile Account-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->


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
>