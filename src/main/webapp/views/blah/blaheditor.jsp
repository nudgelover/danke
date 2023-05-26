<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Private Chat</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="/" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">Apps</li>
                    <li class="breadcrumb-item text-dark">Private Chat</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/blah" class="btn btn-active-accent active fw-bold">Blah Blah</a>
                <a href="/blah/private" class="btn btn-active-accent  fw-bold ms-3">Private Chat</a>
                <a href="/blah/group" class="btn btn-active-accent fw-bold ms-3">Group Chat</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--Begin::Row-->
            <div class="row g-5 g-xxl-8">
                <div class="col-xl-12">
                    <!--begin::Feeds Widget 1-->
                    <div class="card mb-5 mb-xxl-8">
                        <!--begin::Body-->
                        <div class="card-body pb-0">
                            <!--begin::Top-->
                            <div class="d-flex align-items-center">
                                <!--begin::Symbol-->
                                <div class="symbol symbol-45px me-5">
														<span class="symbol-label bg-light align-items-end">
															<img alt="Logo"
                                                                 src="/assets/media/svg/avatars/007-boy-2.svg"
                                                                 class="mh-40px"/>
														</span>
                                </div>
                                <!--end::Symbol-->
                                <!--begin::Description-->
                                <span class="text-muted fw-semibold fs-6">What’s on your mind, Jerry?</span>
                                <!--end::Description-->
                            </div>
                            <!--end::Top-->
                            <!--begin::Form-->
                            <form id="kt_forms_widget_1_form" class="pt-7 ql-quil ql-quil-plain">
                                <!--begin::Editor-->
                                <div id="kt_forms_widget_1_editor"></div>
                                <!--end::Editor-->
                                <div class="border-top mt-5"></div>
                                <!--begin::Toolbar-->
                                <div id="kt_forms_widget_1_editor_toolbar" class="ql-toolbar d-flex flex-stack py-2">
                                    <div class="me-2">
															<span class="ql-formats ql-size ms-0">
																<select class="ql-size w-75px"></select>
															</span>
                                        <span class="ql-formats">
																<button class="ql-bold"></button>
																<button class="ql-italic"></button>
																<button class="ql-underline"></button>
																<button class="ql-strike"></button>
																<button class="ql-image"></button>
																<button class="ql-link"></button>
																<button class="ql-clean"></button>
															</span>
                                    </div>
                                    <div class="me-n3">
															<span class="btn btn-icon btn-sm btn-active-color-primary">
																<i class="flaticon2-clip-symbol icon-ms"></i>
															</span>
                                        <span class="btn btn-icon btn-sm btn-active-color-primary">
																<i class="flaticon2-pin icon-ms"></i>
															</span>
                                    </div>
                                </div>
                                <!--end::Toolbar-->
                            </form>
                            <!--end::Form-->
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Feeds Widget 1-->
                    <!--end::Body-->
                </div>
                <!--end::Feeds Widget 3-->
                <!--begin::Feeds Widget 4-->
                <!--end::Feeds Widget 4-->
                <!--end::List Widget 2-->
            </div>
        </div>
        <!--End::Row-->
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
