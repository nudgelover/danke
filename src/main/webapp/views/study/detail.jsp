<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>


<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">스터디 게시판</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/study/all" class="btn btn-active-accent active active fw-bold ms-33">스터디 게시판</a>
                <c:choose>
                    <c:when test="${loginStdn != null}">
                        <a href="/study/mine?writer=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">나의 스터디 기록</a>
                        <a href="/study/add" class="btn btn-active-accent fw-bold ms-3">스터디 일지 작성</a>
                    </c:when>
                </c:choose>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Inbox App - View & Reply -->
            <div class="d-flex flex-column flex-lg-row">
                <!--begin::Content-->
                <div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
                    <!--begin::Card-->
                    <div class="card">
                        <div class="card-body">
                            <!--begin::Title-->
                            <div class="d-flex flex-wrap gap-2 justify-content-between mb-8">
                                <div class="d-flex align-items-center flex-wrap gap-2">
                                    <div class="symbol symbol-35px symbol-circle me-5n">
                                        <img alt="Pic" class="mx-2" src="/uimg/${stdy.stdnImg}"/>
                                        <span class="text-gray-800 fw-bolder mx-2">${stdy.stdnName}</span>
                                        <span class="text-muted fw-bold">(${stdy.rdate})</span>
                                    </div>
                                </div>
                                <c:choose>
                                    <c:when test="${loginStdn.id==stdy.writer}">
                                        <div class="d-flex align-items-center flex-wrap gap-2">
                                            <a href="/study/edit?id=${stdy.id}" class="btn btn-active-accent active fw-bold">Edit</a>
                                            <a href="/study/delete?id=${stdy.id}" class="btn btn-active-accent active fw-bold">Delete</a>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                            <!--end::Title-->
                            <!--begin::Message accordion-->
                            <div data-kt-inbox-message="message_wrapper">
                                <!--begin::Message header-->
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">

                                    <div class="d-flex align-items-center flex-wrap gap-2">
                                        <div class="d-flex">
                                            <!--begin::Star-->
                                            <a href="#"
                                               class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title="Star">
                                                <!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->

                                                <!--end::Svg Icon-->
                                            </a>
                                            <!--end::Star-->
                                        </div>
                                    </div>
                                    <!--end::Actions-->
                                </div>
                                <!--end::Message header-->
                                <!--begin::Message content-->

                                <div class="collapse fade show" data-kt-inbox-message="message">
                                    <div class="py-5 px-15">
                                        ${stdy.contents}
                                    </div>
                                </div>
                                <!--end::Message content-->
                            </div>
                            <!--end::Message accordion-->

                            <div class="separator my-6"></div>
                            <!--begin::Message accordion-->
                            <div data-kt-inbox-message="message_wrapper">
                                <!--begin::Message header-->
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">
                                    <div class="d-flex align-items-center flex-wrap px-12">
                                        <!--begin::Date-->
                                        <span class="fw-bolder text-muted text-end me-3"><span class="badge badge-light-info">스터디 시간</span> ${stdy.startTime} - ${stdy.endTime}</span>

                                        <!--end::Date-->
                                    </div>
                                    <!--end::Actions-->
                                </div>
                                <!--end::Message header-->
                            </div>
                            </form>
                            <!--end::Message accordion-->
                            <div class="separator my-6"></div>

                            <!--begin::Form-->
                            <form id="kt_inbox_reply_form">
                                <!--begin::Body-->
                                <div class="d-block">
                                    <!--begin::To-->
                                    <div class="d-flex align-items-center border-bottom px-8 min-h-50px">
                                        <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path opacity="0.3" d="M10 4H21C21.6 4 22 4.4 22 5V7H10V4Z" fill="currentColor"/>
                                                <path opacity="0.3" d="M13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H13Z" fill="currentColor"/>
                                                <path d="M10.4 3.60001L12 6H21C21.6 6 22 6.4 22 7V19C22 19.6 21.6 20 21 20H3C2.4 20 2 19.6 2 19V4C2 3.4 2.4 3 3 3H9.20001C9.70001 3 10.2 3.20001 10.4 3.60001ZM13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H8L11.3 17.7C11.7 18.1 12.3 18.1 12.7 17.7L16 14.4H13Z" fill="currentColor"/>
                                            </svg>
                                        </span>
                                        <span class="fw-bolder text-primay text-end me-3 mx-2">${stdy.filenameOrg}</span>
                                        <a href="/study/download/${stdy.filename}" class="btn btn-primary">다운로드</a>
                                        <!--end::Input-->
                                    </div>
                                    <!--end::Message-->
                                </div>
                                <!--end::Body-->
                            </form>
                            <!--end::Form-->
                        </div>
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::Content-->
            </div>
            <!--end::Inbox App - View & Reply -->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Main-->
</div>



