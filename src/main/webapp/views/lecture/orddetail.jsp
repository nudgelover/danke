<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->

<style>
    .flex-root {
        align-items: center;
        justify-content: flex-start;
        text-align: left;
    }

    .text-left{
        text-align: left !important;
    }

    #method tr:first-child td:nth-child(1) {
        background-color: yellow;
    }

</style>

<script>
    $(document).ready(function(){
        let rdate = $('#rdate_org').val();
        let trimmed_rdate=rdate.slice(0, 10);
        $('#here').text(trimmed_rdate);
    });

</script>



<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">주문상세조회</span></a>
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
            <div class="card" style="padding:70px 30px 30px 50px;">
                <div class="card-body p-12">
                    <div class="row mb-12">
                        <div style="display: flex;">
                            <input type="hidden" id="rdate_org" value="${ord.rdate}">
                            <div class="fs-2" style="width: 25%;" >주문번호 | ${ord.id}</div>
                            <div class="fs-2" style="width: 75%;">주문일 | <span id="here"></span></div>
                        </div>
                        <div class="separator m-1"></div>
                        <hr style="border: solid black 1.4px;">
                        <div style="display: flex;">
                            <div class="fs-2">결제정보</div>
                        </div>
                        <div class="separator m-1"></div>
                        <div class="col-md-11 col-lg-12 col-xl-112 col-xxl-12 rounded border-gray-300 border-dotted"
                             style="padding:10px;margin:0 auto;">
                            <div class="tab-content" id="nav-tabContent">
                                <div id="kt_nav_monthly_content" class="tab-pane fade show active" role="tabpanel"
                                     aria-labelledby="kt_nav_monthly">
                                    <div class="row">
                                        <div class="row justify-content-center">
                                            <div class="col-md-3 col-lg-12 col-xl-3">
                                                <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-body-secondary rounded">
                                                    <div class="text-primary fs-3 fw-bold mb-7">총 주문금액</div>
                                                    <div class="fs-2hx fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                        <span class="align-self-start fs-6 mt-3">₩</span>
                                                        <fmt:formatNumber value="${ord.ordPrice + ord.useCpn}"
                                                                          type="number" pattern="###,###"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1 col-lg-12 col-xl-1">
                                                <div class="d-flex flex-column text-center justify-content-center align-items-center"
                                                     style="height: 100%;">
                                                    <div class="text-primary fw-bold nav rounded" role="tablist">
                                                        <img src="/img/substract.png" style="width:20px;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-lg-12 col-xl-3">
                                                <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-body-secondary rounded">
                                                    <div class="text-primary fs-3 fw-bold mb-7">총 할인금액</div>
                                                    <div class="fs-2hx fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                        <span class="fs-6 mt-3">₩</span>
                                                        <fmt:formatNumber value="${ord.useCpn}" type="number"
                                                                          pattern="###,###"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1 col-lg-12 col-xl-1">
                                                <div class="d-flex flex-column text-center justify-content-center align-items-center"
                                                     style="height: 100%;">
                                                    <div class="text-primary fw-bold nav rounded" role="tablist">
                                                        <img src="/img/equals.png" style="width:22px;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-lg-12 col-xl-3">
                                                <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-body-secondary rounded">
                                                    <div class="text-primary fs-3 fw-bold mb-7">총 결제금액</div>
                                                    <div class="fs-2hx fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                        <span class="fs-6 mt-3">₩</span>
                                                        <fmt:formatNumber value="${ord.ordPrice}" type="number"
                                                                          pattern="###,###"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="display: flex; margin-top: 30px;">
                            <div class="fs-2">강의정보</div>
                        </div>
                        <div class="separator m-1"></div>
                        <div class="table-responsive rounded border-gray-300 border-dotted" style="padding:10px;margin:0 auto;">
                            <table class="table">
                                <tbody>
                                <c:forEach var="ordDetail" items="${list}">
                                    <tr>
                                        <td class="border-primary p-2">
                                            <div class="d-flex bg-light rounded flex-nowrap">
                                                <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex align-items-center min-w-150px">
                                                    <img src="/uimg/${ordDetail.img}" class="img-fluid rounded">
                                                </div>
                                                <div class="py-8 px-9 flex-root justify-content-center text-left"
                                                     style="flex-direction: column; align-items: center">
                                                    <div class="justify-content-center text-left">
                                                        <span class="text-gray-800 fw-bold d-block fs-6 text-left">${ordDetail.lecTitle}</span>
                                                    </div>
                                                    <div class="justify-content-center text-left">
                                                        <span class="text-muted fw-semibold text-left">${ordDetail.lecTeacher} | ${ordDetail.lecTopic}</span>
                                                    </div>
                                                    <c:choose>
                                                        <c:when test="${ordDetail.discRate != 0}">
                                                            <div class="justify-content-center text-left">
                                                                <span class="text-muted fw-semibold text-left" style="text-decoration: line-through">
                                                                    <fmt:formatNumber value="${ordDetail.price}" type="number"
                                                                                      pattern="₩###,###"/>
                                                                </span>
                                                            </div>
                                                            <div class="justify-content-center text-left">
                                                                <span class="badge badge-light-danger text-left">sale</span>
                                                                <span class="text-muted fw-semibold text-left">${ordDetail.discRate}% Discount</span>
                                                            </div>
                                                            <div class="justify-content-center text-left">
                                                                <span class="text-gray-800 fw-semibold text-left">
                                                                    <fmt:formatNumber value="${ordDetail.price * (100-ordDetail.discRate)/100}"
                                                                                      type="number" pattern="₩###,###"/>
                                                                </span>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="text-left">
                                                                <span class="text-gray-800 fw-semibold text-left" style="text-align: left">
                                                                    <fmt:formatNumber value="${ordDetail.price}" type="number"
                                                                                      pattern="₩###,###"/>
                                                                </span>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <div class="py-8 px-9 flex-root d-flex justify-content-center">
                                                </div>
                                                <div class="py-8 px-9 flex-root d-flex justify-content-center">
                                                    <span class="text-gray-800 fw-bold d-block fs-6 text-left">
                                                            <c:choose>
                                                                <c:when test="${ord.isDone == 1}">
                                                                    구매확정
                                                                </c:when>
                                                                <c:otherwise>
                                                                    취소완료
                                                                </c:otherwise>
                                                            </c:choose>
                                                    </span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div style="display: flex; margin-top: 30px;">
                            <div class="fs-2">결제방법</div>
                        </div>
                        <div class="separator m-1"></div>
                        <!--end::Table-->
                        <div class="table-responsive rounded border-gray-300 border-dotted" style="padding: 20px 18px 8px 18px">
                            <table class="table table-rounded gy-7 gs-7" id="method">
                                <tbody>
                                <tr>
                                    <td style="background-color: rgba(240,240,240,0.62);
                                    border-top-left-radius: 10px;border-bottom-left-radius: 10px;">
                                        <c:choose>
                                            <c:when test="${ord.payMethod==1}">
                                                <span class="text-gray-800 fw-bold d-block fs-6 text-left">신용카드</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-gray-800 fw-bold d-block fs-6 text-left">카카오페이</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td style="background-color: rgba(240,240,240,0.4);
                                    border-top-right-radius: 10px;border-bottom-right-radius: 10px;">
                                        <fmt:formatNumber value="${ord.ordPrice}" type="number"
                                                          pattern="###,###원"/>
                                             (${ord.rdate})</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
