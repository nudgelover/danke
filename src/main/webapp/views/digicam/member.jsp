<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Digi Members</h3>
                <p class="text-muted">Our Digi Campus Members</p>
                <!--end::Title-->
                <!--begin::Breadcrumb-->

                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/digicam/notice" class="btn btn-active-accent fw-bold">Notice</a>
                <a href="/digicam/calendar" class="btn btn-active-accent  fw-bold">Calendar</a>
                <a href="/digicam/detail" class="btn btn-active-accent fw-bold ms-3">Digi Cam</a>
                <a href="/digicam/member" class="btn btn-active-accent active fw-bold ms-3">Digi members</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Heading-->
            <div class="d-flex flex-wrap flex-stack mb-6">
                <!--begin::Title-->
                <h3 class="fw-bold my-2">ALL MEMBERS
                    <span class="fs-6 fw-semibold ms-1">(24)</span></h3>
                <!--end::Title-->
                <!--begin::Controls-->
                <div class="d-flex my-2">
                    <!--begin::Select-->
                    <select name="status" data-control="select2" data-hide-search="true"
                            class="form-select form-select-sm border-body bg-body w-125px">
                        <option value="Online" selected="selected">ALL</option>
                        <option value="Pending">DIGI 1TH</option>
                        <option value="Declined">DIGI 2TH</option>
                    </select>
                    <!--end::Select-->
                </div>
                <!--end::Controls-->
            </div>
            <!--end::Heading-->
            <!--begin::Contacts-->
            <div class="row g-6 g-xl-9">
                <!--begin::Col-->
                <div class="col-md-6 col-xxl-4">
                    <!--begin::Card-->
                    <div class="card">
                        <!--begin::Card body-->
                        <div class="card-body d-flex flex-center flex-column p-9">
                            <!--begin::Wrapper-->
                            <div class="mb-5">
                                <!--begin::Avatar-->
                                <div class="symbol symbol-75px symbol-circle">
                                    <img alt="Pic" src="/assets/media/avatars/300-6.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">김진희</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">DIGI CAMPUS <span class="badge badge-warning">2TH</span></div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <a href="#" class="btn btn-icon btn-light-facebook me-5 "><i class="fab fa-facebook-f fs-4"></i></a>
                                    <a href="#" class="btn btn-icon btn-light-twitter me-5 "><i class="fab fa-twitter fs-4"></i></a>
                                    <a href="#" class="btn btn-icon btn-light-instagram me-5 "><i class="fab fa-instagram fs-4"></i></a>
                                </div>
                                <!--end::Stats-->
                            </div>
                            <!--end::Info-->
                            <!--begin::Link-->
                            <button class="btn btn-sm btn-light-primary fw-bold" data-kt-drawer-show="true"
                                    data-kt-drawer-target="#kt_drawer_chat">Send Message
                            </button>
                            <!--end::Link-->
                        </div>
                        <!--begin::Card body-->
                    </div>
                    <!--begin::Card-->
                </div>
                <!--end::Col-->
                <!--begin::Col-->
                <div class="col-md-6 col-xxl-4">
                    <!--begin::Card-->
                    <div class="card">
                        <!--begin::Card body-->
                        <div class="card-body d-flex flex-center flex-column p-9">
                            <!--begin::Wrapper-->
                            <div class="mb-5">
                                <!--begin::Avatar-->
                                <div class="symbol symbol-75px symbol-circle">
                                    <span class="symbol-label bg-light-danger text-danger fs-5 fw-bolder">M</span>
                                    <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n3 mt-n3"></div>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Melody Macy</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Marketing Analytic</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <a href="#" class="btn btn-icon btn-light-facebook me-5 "><i class="fab fa-facebook-f fs-4"></i></a>
                                    <a href="#" class="btn btn-icon btn-light-twitter me-5 "><i class="fab fa-twitter fs-4"></i></a>
                                    <a href="#" class="btn btn-icon btn-light-instagram me-5 "><i class="fab fa-instagram fs-4"></i></a>
                                </div>
                                <!--end::Stats-->
                            </div>
                            <!--end::Info-->
                            <!--begin::Link-->
                            <button class="btn btn-sm btn-light-primary fw-bold" data-kt-drawer-show="true"
                                    data-kt-drawer-target="#kt_drawer_chat">Send Message
                            </button>
                            <!--end::Link-->
                        </div>
                        <!--begin::Card body-->
                    </div>
                    <!--begin::Card-->
                </div>
                <!--end::Col-->

                <!--end::Col-->
            </div>
            <!--end::Contacts-->
            <!--begin::Pagination-->
            <div class="d-flex flex-stack flex-wrap pt-10">
                <div class="fs-6 fw-semibold text-gray-700">Showing 1 to 10 of 50 entries</div>
                <!--begin::Pages-->
                <ul class="pagination">
                    <li class="page-item previous">
                        <a href="#" class="page-link">
                            <i class="previous"></i>
                        </a>
                    </li>
                    <li class="page-item active">
                        <a href="#" class="page-link">1</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">2</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">3</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">4</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">5</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">6</a>
                    </li>
                    <li class="page-item next">
                        <a href="#" class="page-link">
                            <i class="next"></i>
                        </a>
                    </li>
                </ul>
                <!--end::Pages-->
            </div>
            <!--end::Pagination-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
