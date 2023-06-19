<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
    .lecImg_container {
        width: 100%;
        height: 0;
        padding-bottom: 100%; /* 16:9 가로세로 비율에 맞게 설정합니다. */
        position: relative;
        overflow: hidden;
    }

    .lec_img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .play_btn {
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        cursor: pointer;
    }

    .topic {
        position: absolute;
        top: 16%;
        left: 8.5%;
        transform: translateY(-50%);
        padding: 10% 10%;
        cursor: pointer;
    }
</style>


<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">내 학습</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">내 학습</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">장바구니</a>
            </div>

        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card-body">
                    <div class="card-body pt-9 pb-0">
                        <div class="d-flex flex-wrap flex-sm-nowrap mb-3">
                            <div class="me-7 mb-4">
                                <div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
                                    <img src="/uimg/${loginStdn.img}" alt="image"/>
                                    <div class="position-absolute translate-middle bottom-0 start-100 mb-6 bg-primary rounded-circle border border-4 border-body h-20px w-20px"></div>
                                </div>
                            </div>
                            <div class="flex-grow-1">
                                <div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
                                    <div class="d-flex flex-column">
                                        <div class="d-flex align-items-center mb-2">
                                            <a href="#"
                                               class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">${loginStdn.name}</a>
                                            <a href="#">
                                                <span class="svg-icon svg-icon-1 svg-icon-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24px"
                                                         height="24px" viewBox="0 0 24 24">
                                                        <path d="M10.0813 3.7242C10.8849 2.16438 13.1151 2.16438 13.9187 3.7242V3.7242C14.4016 4.66147 15.4909 5.1127 16.4951 4.79139V4.79139C18.1663 4.25668 19.7433 5.83365 19.2086 7.50485V7.50485C18.8873 8.50905 19.3385 9.59842 20.2758 10.0813V10.0813C21.8356 10.8849 21.8356 13.1151 20.2758 13.9187V13.9187C19.3385 14.4016 18.8873 15.491 19.2086 16.4951V16.4951C19.7433 18.1663 18.1663 19.7433 16.4951 19.2086V19.2086C15.491 18.8873 14.4016 19.3385 13.9187 20.2758V20.2758C13.1151 21.8356 10.8849 21.8356 10.0813 20.2758V20.2758C9.59842 19.3385 8.50905 18.8873 7.50485 19.2086V19.2086C5.83365 19.7433 4.25668 18.1663 4.79139 16.4951V16.4951C5.1127 15.491 4.66147 14.4016 3.7242 13.9187V13.9187C2.16438 13.1151 2.16438 10.8849 3.7242 10.0813V10.0813C4.66147 9.59842 5.1127 8.50905 4.79139 7.50485V7.50485C4.25668 5.83365 5.83365 4.25668 7.50485 4.79139V4.79139C8.50905 5.1127 9.59842 4.66147 10.0813 3.7242V3.7242Z"
                                                              fill="currentColor"/>
                                                        <path d="M14.8563 9.1903C15.0606 8.94984 15.3771 8.9385 15.6175 9.14289C15.858 9.34728 15.8229 9.66433 15.6185 9.9048L11.863 14.6558C11.6554 14.9001 11.2876 14.9258 11.048 14.7128L8.47656 12.4271C8.24068 12.2174 8.21944 11.8563 8.42911 11.6204C8.63877 11.3845 8.99996 11.3633 9.23583 11.5729L11.3706 13.4705L14.8563 9.1903Z"
                                                              fill="white"/>
                                                    </svg>
                                                </span>
                                            </a>
                                            <a href="#"
                                               class="btn btn-sm btn-light-success fw-bold ms-2 fs-8 py-1 px-3"
                                               data-bs-toggle="modal" data-bs-target="#kt_modal_upgrade_plan">최종접속: ${loginStdn.lastVisit}</a>
                                        </div>
                                        <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                            <a href="#"
                                               class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                                <span class="svg-icon svg-icon-4 me-1">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19.4 13.9411L10.7 5.24112C10.4 4.94112 10 4.84104 9.60001 5.04104C9.20001 5.24104 9 5.54107 9 5.94107V18.2411C9 18.6411 9.20001 18.941 9.60001 19.141C9.70001 19.241 9.9 19.2411 10 19.2411C10.2 19.2411 10.4 19.141 10.6 19.041C11.4 18.441 12.1 17.941 12.9 17.541L14.4 21.041C14.6 21.641 15.2 21.9411 15.8 21.9411C16 21.9411 16.2 21.9411 16.4 21.8411C17.2 21.5411 17.5 20.6411 17.2 19.8411L15.7 16.2411C16.7 15.9411 17.7 15.741 18.8 15.541C19.2 15.541 19.5 15.2411 19.6 14.8411C19.8 14.6411 19.7 14.2411 19.4 13.9411Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M15 6.941C14.8 6.941 14.7 6.94102 14.6 6.84102C14.1 6.64102 13.9 6.04097 14.2 5.54097L15.2 3.54097C15.4 3.04097 16 2.84095 16.5 3.14095C17 3.34095 17.2 3.941 16.9 4.441L15.9 6.441C15.7 6.741 15.4 6.941 15 6.941ZM18.4 9.84102L20.4 8.84102C20.9 8.64102 21.1 8.04097 20.8 7.54097C20.6 7.04097 20 6.84095 19.5 7.14095L17.5 8.14095C17 8.34095 16.8 8.941 17.1 9.441C17.3 9.841 17.6 10.041 18 10.041C18.2 9.94097 18.3 9.94102 18.4 9.84102ZM7.10001 10.941C7.10001 10.341 6.70001 9.941 6.10001 9.941H4C3.4 9.941 3 10.341 3 10.941C3 11.541 3.4 11.941 4 11.941H6.10001C6.70001 11.941 7.10001 11.541 7.10001 10.941ZM4.89999 17.1409L6.89999 16.1409C7.39999 15.9409 7.59999 15.341 7.29999 14.841C7.09999 14.341 6.5 14.141 6 14.441L4 15.441C3.5 15.641 3.30001 16.241 3.60001 16.741C3.80001 17.141 4.1 17.341 4.5 17.341C4.6 17.241 4.79999 17.2409 4.89999 17.1409Z" fill="currentColor"/>
                                                    </svg>${loginStdn.sbj1}
                                                </span>
                                            </a>
                                            <a href="#"
                                               class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                                <span class="svg-icon svg-icon-4 me-1">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19.4 13.9411L10.7 5.24112C10.4 4.94112 10 4.84104 9.60001 5.04104C9.20001 5.24104 9 5.54107 9 5.94107V18.2411C9 18.6411 9.20001 18.941 9.60001 19.141C9.70001 19.241 9.9 19.2411 10 19.2411C10.2 19.2411 10.4 19.141 10.6 19.041C11.4 18.441 12.1 17.941 12.9 17.541L14.4 21.041C14.6 21.641 15.2 21.9411 15.8 21.9411C16 21.9411 16.2 21.9411 16.4 21.8411C17.2 21.5411 17.5 20.6411 17.2 19.8411L15.7 16.2411C16.7 15.9411 17.7 15.741 18.8 15.541C19.2 15.541 19.5 15.2411 19.6 14.8411C19.8 14.6411 19.7 14.2411 19.4 13.9411Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M15 6.941C14.8 6.941 14.7 6.94102 14.6 6.84102C14.1 6.64102 13.9 6.04097 14.2 5.54097L15.2 3.54097C15.4 3.04097 16 2.84095 16.5 3.14095C17 3.34095 17.2 3.941 16.9 4.441L15.9 6.441C15.7 6.741 15.4 6.941 15 6.941ZM18.4 9.84102L20.4 8.84102C20.9 8.64102 21.1 8.04097 20.8 7.54097C20.6 7.04097 20 6.84095 19.5 7.14095L17.5 8.14095C17 8.34095 16.8 8.941 17.1 9.441C17.3 9.841 17.6 10.041 18 10.041C18.2 9.94097 18.3 9.94102 18.4 9.84102ZM7.10001 10.941C7.10001 10.341 6.70001 9.941 6.10001 9.941H4C3.4 9.941 3 10.341 3 10.941C3 11.541 3.4 11.941 4 11.941H6.10001C6.70001 11.941 7.10001 11.541 7.10001 10.941ZM4.89999 17.1409L6.89999 16.1409C7.39999 15.9409 7.59999 15.341 7.29999 14.841C7.09999 14.341 6.5 14.141 6 14.441L4 15.441C3.5 15.641 3.30001 16.241 3.60001 16.741C3.80001 17.141 4.1 17.341 4.5 17.341C4.6 17.241 4.79999 17.2409 4.89999 17.1409Z" fill="currentColor"/>
                                                    </svg>${loginStdn.sbj2}
                                                </span>
                                            </a>
                                            <a href="#"
                                               class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                                <span class="svg-icon svg-icon-4 me-1">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19.4 13.9411L10.7 5.24112C10.4 4.94112 10 4.84104 9.60001 5.04104C9.20001 5.24104 9 5.54107 9 5.94107V18.2411C9 18.6411 9.20001 18.941 9.60001 19.141C9.70001 19.241 9.9 19.2411 10 19.2411C10.2 19.2411 10.4 19.141 10.6 19.041C11.4 18.441 12.1 17.941 12.9 17.541L14.4 21.041C14.6 21.641 15.2 21.9411 15.8 21.9411C16 21.9411 16.2 21.9411 16.4 21.8411C17.2 21.5411 17.5 20.6411 17.2 19.8411L15.7 16.2411C16.7 15.9411 17.7 15.741 18.8 15.541C19.2 15.541 19.5 15.2411 19.6 14.8411C19.8 14.6411 19.7 14.2411 19.4 13.9411Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M15 6.941C14.8 6.941 14.7 6.94102 14.6 6.84102C14.1 6.64102 13.9 6.04097 14.2 5.54097L15.2 3.54097C15.4 3.04097 16 2.84095 16.5 3.14095C17 3.34095 17.2 3.941 16.9 4.441L15.9 6.441C15.7 6.741 15.4 6.941 15 6.941ZM18.4 9.84102L20.4 8.84102C20.9 8.64102 21.1 8.04097 20.8 7.54097C20.6 7.04097 20 6.84095 19.5 7.14095L17.5 8.14095C17 8.34095 16.8 8.941 17.1 9.441C17.3 9.841 17.6 10.041 18 10.041C18.2 9.94097 18.3 9.94102 18.4 9.84102ZM7.10001 10.941C7.10001 10.341 6.70001 9.941 6.10001 9.941H4C3.4 9.941 3 10.341 3 10.941C3 11.541 3.4 11.941 4 11.941H6.10001C6.70001 11.941 7.10001 11.541 7.10001 10.941ZM4.89999 17.1409L6.89999 16.1409C7.39999 15.9409 7.59999 15.341 7.29999 14.841C7.09999 14.341 6.5 14.141 6 14.441L4 15.441C3.5 15.641 3.30001 16.241 3.60001 16.741C3.80001 17.141 4.1 17.341 4.5 17.341C4.6 17.241 4.79999 17.2409 4.89999 17.1409Z" fill="currentColor"/>
                                                    </svg>${loginStdn.sbj3}
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="d-flex my-4">
                                        <a href="/lecture/all" class="btn btn-sm btn-primary me-2 fw-bolder">더 많은 강의 보기</a>
                                    </div>
                                </div>
                                <div class="d-flex flex-wrap flex-stack">
                                    <div class="d-flex flex-column flex-grow-1 pe-8">
                                        <div class="d-flex flex-wrap">
                                            <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                                <div class="fw-semibold fs-6 text-gray-800">학습 중인 강의</div>
                                                <div class="d-flex align-items-center">
                                                    <div class="fs-2 fw-bold" data-kt-countup="true"
                                                         data-kt-countup-value=
                                                         <c:set var="count" value="0" />
                                                         <c:forEach var="ordDetail" items="${ordDetail}">
                                                         <c:if test="${ordDetail.stdyHour != 100}">
                                                             <c:set var="count" value="${count + 1}" />
                                                         </c:if>
                                                         </c:forEach>
                                                                 "${count}"
                                                         data-kt-countup-suffix="개">0
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                                <div class="fw-semibold fs-6 text-gray-800">완강한 강의</div>
                                                <div class="d-flex align-items-center">
                                                    <div class="fs-2 fw-bold" data-kt-countup="true"
                                                         data-kt-countup-value=
                                                         <c:set var="count" value="0" />
                                                         <c:forEach var="ordDetail" items="${ordDetail}">
                                                         <c:if test="${ordDetail.stdyHour == 100}">
                                                             <c:set var="count" value="${count + 1}" />
                                                         </c:if>
                                                         </c:forEach>
                                                                 "${count}"
                                                                 data-kt-countup-suffix="개">0
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                                <div class="fw-semibold fs-6 text-gray-800">장바구니 속 강의</div>
                                                <div class="d-flex align-items-center">
                                                    <div class="fs-2 fw-bold" data-kt-countup="true"
                                                         data-kt-countup-value="${cnt}" data-kt-countup-suffix="개">0
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center w-200px w-sm-300px flex-column mt-3">
                                        <div class="d-flex justify-content-between w-100 mt-auto mb-2">
                                            <span class="fw-bolder fs-6 text-primary">총 학습 진도율</span>
                                            <span class="fw-bolder fs-6">
                                                <c:set var="sum" value="0" />
                                                    <c:forEach var="ordDetail" items="${ordDetail}">
                                                        <c:set var="sum" value="${sum + ordDetail.stdyHour}"/>
                                                    </c:forEach>
                                                <c:set var="perCnt" value="0" />
                                                    <c:forEach var="ordDetail" items="${ordDetail}">
                                                        <c:set var="perCnt" value="${perCnt + 1}"/>
                                                    </c:forEach>
                                                <c:choose>
                                                    <c:when test="${sum!=0}">
                                                        <fmt:formatNumber value="${sum / perCnt}" type="number" pattern="0.0"/>%
                                                    </c:when>
                                                    <c:otherwise>
                                                        0%
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>
                                        <div class="h-5px mx-3 w-100 bg-light mb-3">
                                            <c:choose>
                                                <c:when test="${sum!=0}">
                                                    <div class="bg-primary rounded h-5px" role="progressbar"
                                                         style="width:${sum / perCnt}%" aria-valuemin="0" aria-valuemax="100"></div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="bg-primary rounded h-5px" role="progressbar"
                                                         style="width:0%" aria-valuemin="0" aria-valuemax="100"></div>
                                                </c:otherwise>
                                            </c:choose>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-5 g-xxl-8">
                        <c:forEach var="ordDetail" items="${ordDetail}">
                            <div class="col-md-4 col-lg-4 col-xxl-4">
                                <div class="card h-100">
                                    <div class="card-body d-flex flex-column rounded justify-content-between">
                                        <div class="text-center rounded lecImg_container">
                                            <img src="/uimg/${ordDetail.img}" class="lec_img" alt="img"/>
                                        </div>
                                        <div class="topic">
                                            <span class="topic badge badge-light-info">${ordDetail.lecTopic}</span>
                                        </div>
                                        <div class="play_btn">
                                            <a href="/lecture/playlecture?id=${ordDetail.lecId}&&stdnId=${loginStdn.id}">
                                                <span class="svg-icon svg-icon-primary svg-icon-5hx">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M21 6.30005C20.5 5.30005 19.9 5.19998 18.7 5.09998C17.5 4.99998 14.5 5 11.9 5C9.29999
                                                         5 6.29998 4.99998 5.09998 5.09998C3.89998 5.19998 3.29999 5.30005 2.79999 6.30005C2.19999
                                                          7.30005 2 8.90002 2 11.9C2 14.8 2.29999 16.5 2.79999 17.5C3.29999 18.5 3.89998 18.6001 5.09998
                                                           18.7001C6.29998 18.8001 9.29999 18.8 11.9 18.8C14.5 18.8 17.5 18.8001 18.7 18.7001C19.9 18.6001
                                                            20.5 18.4 21 17.5C21.6 16.5 21.8 14.9 21.8 11.9C21.8 9.00002 21.5 7.30005 21 6.30005ZM9.89999
                                                             15.7001V8.20007L14.5 11C15.3 11.5 15.3 12.5 14.5 13L9.89999 15.7001Z" fill="currentColor"/>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <div class="text-start">
                                                <h4 class="fs-4 mt-3">
                                                    <a href="../dist/apps/shop/product.html"
                                                       class="text-gray-800 text-hover-primary fw-bolder">${ordDetail.lecTitle}</a>
                                                </h4>
                                                <span class="fs-6 text-muted fw-bold">${ordDetail.lecTeacher}</span>
                                            </div>
                                            <div class="mt-3">
                                                <span class="badge badge-light-danger">
                                                    <c:choose>
                                                        <c:when test="${ordDetail.stdyHour == 0}">
                                                            학습대기
                                                        </c:when>
                                                        <c:when test="${ordDetail.stdyHour == 100}">
                                                            학습완료
                                                        </c:when>
                                                        <c:otherwise>
                                                            학습중
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center flex-column">
                                            <div class="d-flex flex-end w-100 mt-auto mb-2">
                                                <span class="text-end fw-bolder fs-6 text-primary">${ordDetail.stdyHour}%</span>
                                            </div>
                                            <div class="mx-3 w-100 bg-light mb-3">
                                                <div class="bg-primary rounded h-5px" role="progressbar"
                                                     style="width: ${ordDetail.stdyHour}%;" aria-valuenow="50" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${ordDetail.size()==0}">
                                <div style="text-align: center; padding: 11% 0 11.5% 0;">
                                    <span style="font-weight: 700">수강 신청하신 강의가 없습니다.</span><br>
                                    나를 성장 시켜줄 좋은 강의를 찾아보세요.</div>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


