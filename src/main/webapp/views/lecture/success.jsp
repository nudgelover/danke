<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>

<style>
    form {
        padding: 100px;
    }

    .inline-group {
        display: inline-block;
    }
</style>

<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">결제완료</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">View All Course</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Course List</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Curriculum</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Cart</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Profile Account-->
            <div class="card">
                <!--begin::Form-->

                <div class="card card-stretch mb-5 mb-xxl-8">
                    <!--begin::Body-->
                    <div class="card-body pb-0">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column h-100" style="padding-top: 120px;">
                            <!--begin::Text-->
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
                                        <a href="/lecture/orddetail?=${ordId}"><span class="text-active-gray-900" style="font-size: larger">${ordId}</span></a>
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
                            <!--end::Image-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Body-->
                </div>
                <!--end::Form-->
            </div>
            <!--end::Profile Account-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->
<%--캘린더 스크립트--%>
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>


<!--end::Custom Javascript-->
<!--end::Javascript-->