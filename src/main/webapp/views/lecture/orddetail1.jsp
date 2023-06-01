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
                        <div class="col-md-12 col-lg-12 col-xl-12 col-xxl-12">
                            <!--begin::Tab content-->
                            <div class="tab-content" id="nav-tabContent">
                                <!--begin::Monthly Prices-->
                                <div id="kt_nav_monthly_content" class="tab-pane fade show active" role="tabpanel"
                                     aria-labelledby="kt_nav_monthly">
                                    <div class="row">
                                        <div class="col-md-3 col-lg-12 col-xl-3">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">총 주문금액</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="align-self-start fs-2 mt-3">$</span>0
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-lg-12 col-xl-1">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="fs-5x fw-semibold d-flex
                                                justify-content-center align-items-start lh-sm"><span style="vertical-align: sub">-</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-lg-12 col-xl-3">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-hover-light-primary rounded">
                                                <div class="text-primary fs-3 fw-bold mb-7">총 할인금액</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">$</span>49
                                                </div>
                                              </div>
                                        </div>
                                        <div class="col-md-1 col-lg-12 col-xl-1">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="fs-5x fw-semibold d-flex
                                                justify-content-center align-items-start lh-sm">=
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">결제금액</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">₩</span>199
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Monthly Prices-->
                                <!--begin::Annually Prices-->
                                <div id="kt_nav_annually_content" class="tab-pane fade" role="tabpanel"
                                     aria-labelledby="kt_nav_annually">
                                    <div class="row">
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">Free</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">₩</span>0
                                                </div>
                                                <div class="text-muted fw-bold mb-7">Annually</div>
                                                <a href="#"
                                                   class="btn btn-light-primary fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-primary rounded">
                                                <div class="text-white fs-3 fw-bold mb-7">Pro</div>
                                                <div class="fs-5x text-white fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">₩</span>499
                                                </div>
                                                <div class="text-white fw-bold mb-7">Annually</div>
                                                <a href="#"
                                                   class="btn bg-white bg-opacity-20 bg-hover-white text-hover-primary text-white fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">Lifetime</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">$</span>2,299
                                                </div>
                                                <div class="text-muted fw-bold mb-7">Annually</div>
                                                <a href="#"
                                                   class="btn btn-light-primary fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Annually Prices-->
                            </div>
                            <!--begin::Tab content-->
                        </div>

                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column h-100" style="padding-top: 120px;">
                            <!--begin::Text-->
                            <h3 class="text-primary text-center fs-1 fw-bold pt-15 lh-lg">결제 완료</h3>

                            <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-1200px text-center"
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