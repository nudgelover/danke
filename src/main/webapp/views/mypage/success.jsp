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

<div style="padding-top: 3rem" class="card mb-5 mb-xl-10">
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