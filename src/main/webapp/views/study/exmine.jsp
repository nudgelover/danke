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
                <a href="/study/all" class="btn btn-active-accent fw-bold ms-3">스터디 게시판</a>
                <c:choose>
                    <c:when test="${loginStdn != null}">
                        <a href="/study/mine/${loginStdn.id}/all" class="btn btn-active-accent active active fw-bold ms-33">나의 스터디 기록</a>
                        <a href="/study/add" class="btn btn-active-accent fw-bold ms-3">스터디 일지 작성</a>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="d-flex flex-column flex-lg-row">
                <div class="flex-lg-row-fluid d-block" id="kt_inbox_list">
                    <div class="card mt-10 mt-lg-0">
                        <div class="card-header align-items-center card-px">
                        </div>
                        <div class="card-body px-0 overflow-auto">
                            <div  data-inbox="list">
                                <c:forEach var="stdy" items="${stdy}">
                                <div class="d-flex align-items-start bg-hover-light card-px py-3" data-inbox="message">
                                    <div class="d-flex align-items-center">
                                        <div class="d-flex align-items-center flex-wrap w-xxl-200px me-3"
                                             data-bs-toggle="view">
                                            <div class="symbol symbol-40px me-4">
																	<span class="symbol-label bg-light">
																		<img src="/uimg/${stdy.stdnImg}"
                                                                             class="h-75 align-self-end" alt=""/>
																	</span>
                                            </div>
                                            <a href="#" class="fw-semibold text-gray-800 text-hover-primary">${stdy.stdnName}</a>
                                        </div>
                                    </div>
                                    <div class="flex-lg-grow-1 mt-2 me-2" data-bs-toggle="view">
                                        <div>
                                            <span class="fw-bold fs-6 me-2">${stdy.startTime} - ${stdy.endTime} <span class="badge badge-light-primary" mx-1>총 ${stdy.duration}</span></span>
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
                                            <br>
                                            <a href="/study/detail?id=${stdy.id}&&stdnId=${loginStdn.id}"><span class="fw-bolder shorttitle" id="cutcut">${stdy.shortVer}</span></a>
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
        </div>
    </div>
</div>