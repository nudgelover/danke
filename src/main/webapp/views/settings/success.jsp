<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">비밀번호 변경</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="mypage" class="btn btn-active-accent  fw-bold">MYPAGE</a>
                <a href="/settings/pwd?id=${loginStdn.id}" class="btn btn-active-accent active fw-bold ms-3">비밀번호 변경</a>
                <a href="#" class="btn btn-active-accent fw-bold ms-3">QR코드발급</a>
                <a href="/settings" class="btn btn-active-accent  fw-bold">settings</a>
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
                    <div class="card-body pb-0 rounded" style="background-color: rgba(65,218,155,0.16)">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column h-100" style="padding-top: 120px;">
                            <!--begin::Text-->
                            <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-100px"
                                 style="background-image:url('../img/confirm.png')"></div>
                            <h3 class="text-primary text-center fs-1 fw-bold pt-15 lh-lg">${loginStdn.name}님 비밀번호 변경 완료</h3>
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