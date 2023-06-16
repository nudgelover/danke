<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<style>
    .shorttitle {
        width: 50px;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
    }
</style>
<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">스터디 게시판</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/study/all" class="btn btn-active-accent active active fw-bold ms-33">스터디 게시판</a>
                <c:choose>
                    <c:when test="${loginStdn != null}">
                        <a href="/study/mine?writer=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">나의 스터디 기록</a>
                        <a href="/study/add" class="btn btn-active-accent fw-bold ms-3">스터디 일지 작성</a>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="d-flex flex-column flex-lg-row mb-3">
                <div class="flex-lg-row-fluid d-block" id="kt_inbox_list">
                    <div class="card mt-10 mt-lg-0 bg-light-info">
                        <div class="card-header text-gray-700 align-items-center card-px fw-bolder fs-2 py-15 pb-2 mx-20">
                            <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path opacity="0.3" fill-rule="evenodd" clip-rule="evenodd" d="M2 4.63158C2 3.1782 3.1782 2 4.63158 2H13.47C14.0155 2 14.278 2.66919 13.8778 3.04006L12.4556 4.35821C11.9009 4.87228 11.1726 5.15789 10.4163 5.15789H7.1579C6.05333 5.15789 5.15789 6.05333 5.15789 7.1579V16.8421C5.15789 17.9467 6.05333 18.8421 7.1579 18.8421H16.8421C17.9467 18.8421 18.8421 17.9467 18.8421 16.8421V13.7518C18.8421 12.927 19.1817 12.1387 19.7809 11.572L20.9878 10.4308C21.3703 10.0691 22 10.3403 22 10.8668V19.3684C22 20.8218 20.8218 22 19.3684 22H4.63158C3.1782 22 2 20.8218 2 19.3684V4.63158Z" fill="currentColor"/>
                                    <path d="M10.9256 11.1882C10.5351 10.7977 10.5351 10.1645 10.9256 9.77397L18.0669 2.6327C18.8479 1.85165 20.1143 1.85165 20.8953 2.6327L21.3665 3.10391C22.1476 3.88496 22.1476 5.15129 21.3665 5.93234L14.2252 13.0736C13.8347 13.4641 13.2016 13.4641 12.811 13.0736L10.9256 11.1882Z" fill="currentColor"/>
                                    <path d="M8.82343 12.0064L8.08852 14.3348C7.8655 15.0414 8.46151 15.7366 9.19388 15.6242L11.8974 15.2092C12.4642 15.1222 12.6916 14.4278 12.2861 14.0223L9.98595 11.7221C9.61452 11.3507 8.98154 11.5055 8.82343 12.0064Z" fill="currentColor"/>
                                </svg>
                             DIGICampus 수강생들은 어떤 학습을 하고있는지 참고하세요!</span>
                        </div>
                        <div class="card-body px-20 overflow-auto">
                            <div  data-inbox="list">
                                <c:forEach var="stdy" items="${cpage.getList()}">
                                    <div class="d-flex align-items-start bg-hover-light card-px py-3" data-inbox="message">
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex align-items-center flex-wrap w-xxl-200px me-3"
                                                 data-bs-toggle="view">
                                                <div class="symbol symbol-40px me-4">
                                                                        <span class="symbol-label bg-light">
                                                                            <img src="/uimg/${stdy.stdnImg}"
                                                                                 class="h-75" alt=""/>
                                                                        </span>
                                                </div>
                                                <a href="#" class="fw-semibold text-gray-800 text-hover-primary">${stdy.stdnName}</a>
                                            </div>
                                        </div>
                                        <div class="flex-lg-grow-1 mt-2 me-2" data-bs-toggle="view">
                                            <div>
                                                <span class="fw-bold fs-6 me-2">${stdy.startTime} - ${stdy.endTime}</span>
                                                <c:choose>
                                                    <c:when test="${loginStdn.id==stdy.writer}">
                                                        <a href="/study/delete?id=${stdy.id}"><span class="svg-icon svg-icon-muted svg-icon-2x"
                                                            data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="right" title="삭제">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="5" fill="currentColor"/>
                                                                <rect x="7" y="15.3137" width="12" height="2" rx="1" transform="rotate(-45 7 15.3137)" fill="currentColor"/>
                                                                <rect x="8.41422" y="7" width="12" height="2" rx="1" transform="rotate(45 8.41422 7)" fill="currentColor"/>
                                                            </svg>
                                                        </span></a>
                                                    </c:when>
                                                </c:choose>
                                                <br><a href="/study/detail?id=${stdy.id}"><span class="fw-bolder" id="${stdy.id}">${stdy.shortVer}</span></a>
                                                <span class="badge badge-light-info me-1">new</span>
                                            </div>
                                            <div class="mt-2">

                                            </div>
                                        </div>
                                        <div class="mt-2 me-3 fw-bold  text-center" data-bs-toggle="view">
                                            <a href="/study/download/${stdy.filename}"
                                               data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="left" title="다운로드">
                                                <span class="svg-icon svg-icon-muted svg-icon-2hx test-center">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path opacity="0.3" d="M10 4H21C21.6 4 22 4.4 22 5V7H10V4Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H13Z" fill="currentColor"/>
                                                        <path d="M10.4 3.60001L12 6H21C21.6 6 22 6.4 22 7V19C22 19.6 21.6 20 21 20H3C2.4 20 2 19.6 2 19V4C2 3.4 2.4 3 3 3H9.20001C9.70001 3 10.2 3.20001 10.4 3.60001ZM13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H8L11.3 17.7C11.7 18.1 12.3 18.1 12.7 17.7L16 14.4H13Z" fill="currentColor"/>
                                                    </svg>
                                                </span>
                                                <p class="shorttitle">${stdy.filenameOrg}</p>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="../page.jsp"/>
        </div>
    </div>
</div>



