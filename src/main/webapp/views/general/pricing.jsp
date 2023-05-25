<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Pricing</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="../dist/index.html" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">General</li>
                    <li class="breadcrumb-item text-dark">Pricing</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/faq" class="btn btn-active-accent  fw-bold">FAQ</a>
                <a href="/pricing" class="btn btn-active-accent active fw-bold ms-3">Pricing</a>
                <a href="/invoice" class="btn btn-active-accent  fw-bold ms-3">Invoice</a>
                <a href="/login" class="btn btn-active-accent fw-bold ms-3">Login</a>
                <a href="/wizard" class="btn btn-active-accent fw-bold ms-3">Wizard</a>
                <a href="/errorpage" class="btn btn-active-accent fw-bold ms-3">Error</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Pricing-->
            <div class="card">
                <div class="card-body p-12">
                    <div class="row mb-12">
                        <div class="col-md-4 col-lg-12 col-xl-4 col-xxl-3 d-flex flex-center">
                            <!--begin::Tabs-->
                            <div class="nav bg-light rounded px-3 py-2" id="nav-tab" role="tablist">
                                <a class="nav-link rounded active btn btn-active btn-active-dark fw-bold btn-color-gray-600 py-3 px-5 mx-1 my-1"
                                   id="kt_nav_monthly" data-bs-toggle="tab" href="#kt_nav_monthly_content" role="tab"
                                   aria-controls="kt_nav_monthly" aria-selected="true">Monthly</a>
                                <a class="nav-link rounded btn btn-active btn-active-dark fw-bold btn-color-gray-600 py-3 px-5 mx-1 my-1"
                                   id="kt_nav_annually" data-bs-toggle="tab" href="#kt_nav_annually_content" role="tab"
                                   aria-controls="kt_nav_annually" aria-selected="false">Annually</a>
                            </div>
                            <!--end::Tabs-->
                        </div>
                        <div class="col-md-8 col-lg-12 col-xl-8 col-xxl-9">
                            <!--begin::Tab content-->
                            <div class="tab-content" id="nav-tabContent">
                                <!--begin::Monthly Prices-->
                                <div id="kt_nav_monthly_content" class="tab-pane fade show active" role="tabpanel"
                                     aria-labelledby="kt_nav_monthly">
                                    <div class="row">
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">Free</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="align-self-start fs-2 mt-3">$</span>0
                                                </div>
                                                <div class="text-muted fw-bold mb-7">Monthly</div>
                                                <a href="#"
                                                   class="btn btn-light-primary fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center bg-primary rounded">
                                                <div class="text-white fs-3 fw-bold mb-7">Pro</div>
                                                <div class="fs-5x text-white fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">$</span>49
                                                </div>
                                                <div class="text-white fw-bold mb-7">Monthly</div>
                                                <a href="#"
                                                   class="btn bg-white bg-opacity-20 bg-hover-white text-hover-primary text-white fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-lg-12 col-xl-4">
                                            <div class="d-flex flex-column text-center px-9 py-12 justify-content-center">
                                                <div class="text-primary fs-3 fw-bold mb-7">Lifetime</div>
                                                <div class="fs-5x fw-semibold d-flex justify-content-center align-items-start lh-sm">
                                                    <span class="fs-2 mt-3">$</span>199
                                                </div>
                                                <div class="text-muted fw-bold mb-7">Monthly</div>
                                                <a href="#"
                                                   class="btn btn-light-primary fw-bold fs-6 py-3 px-8 mx-auto">Start</a>
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
                                                    <span class="fs-2 mt-3">$</span>0
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
                                                    <span class="fs-2 mt-3">$</span>499
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
                    </div>
                    <!--begin::Table-->
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr>
                                <td class="border-0 p-0">
                                    <div class="d-flex bg-light rounded flex-nowrap">
                                        <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex align-items-center min-w-150px">
                                            Sublicense Visuals
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-white rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-white rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-white rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 p-0">
                                    <div class="d-flex flex-nowrap">
                                        <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex align-items-center min-w-150px">
                                            Free Updates
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-light rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-light rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-light rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 p-0">
                                    <div class="d-flex bg-light rounded flex-nowrap">
                                        <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex align-items-center min-w-150px">
                                            Theme Support
                                        </div>
                                        <div class="py-8 px-9 flex-root"></div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-white rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                        <div class="py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-white rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 p-0">
                                    <div class="d-flex flex-nowrap">
                                        <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex align-items-center min-w-150px">
                                            Unlimited Websites
                                        </div>
                                        <div class="py-8 px-9 flex-root"></div>
                                        <div class="py-8 px-9 flex-root"></div>
                                        <div class="fw-bold fs-3 py-8 px-9 flex-root d-flex justify-content-center">
																	<span class="bg-light rounded h-40px w-40px d-flex flex-center">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr012.svg-->
																		<span class="svg-icon svg-icon-1 svg-icon-primary">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path opacity="0.3"
                                                                                      d="M10 18C9.7 18 9.5 17.9 9.3 17.7L2.3 10.7C1.9 10.3 1.9 9.7 2.3 9.3C2.7 8.9 3.29999 8.9 3.69999 9.3L10.7 16.3C11.1 16.7 11.1 17.3 10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																				<path d="M10 18C9.7 18 9.5 17.9 9.3 17.7C8.9 17.3 8.9 16.7 9.3 16.3L20.3 5.3C20.7 4.9 21.3 4.9 21.7 5.3C22.1 5.7 22.1 6.30002 21.7 6.70002L10.7 17.7C10.5 17.9 10.3 18 10 18Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                                        <!--end::Svg Icon-->
																	</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--end::Table-->
                </div>
            </div>
            <!--end::Pricing-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="assets/js/custom/widgets.js"></script>
<script src="assets/js/custom/apps/chat/chat.js"></script>
<script src="assets/js/custom/utilities/modals/users-search.js"></script>
