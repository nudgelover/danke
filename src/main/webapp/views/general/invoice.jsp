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
                <h3 class="text-dark fw-bold my-1">Invoice</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="../dist/index.html" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">General</li>
                    <li class="breadcrumb-item text-dark">Invoice</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/faq" class="btn btn-active-accent fw-bold">FAQ</a>
                <a href="/pricing" class="btn btn-active-accent fw-bold ms-3">Pricing</a>
                <a href="/invoice" class="btn btn-active-accent active fw-bold ms-3">Invoice</a>
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
            <div class="card">
                <div class="card-body p-0">
                    <!--begin::Invoice-->
                    <div class="row justify-content-center pt-8 px-8 pt-md-20 px-md-0">
                        <div class="col-md-10">
                            <!-- begin: Invoice header-->
                            <div class="d-flex justify-content-between pb-10 pb-md-20 flex-column flex-md-row">
                                <h1 class="display-6 text-dark fw-bold mb-10">INVOICE</h1>
                                <div class="d-flex flex-column align-items-md-end px-0">
                                    <!--begin::Logo-->
                                    <a href="#" class="mb-5">
                                        <img src="assets/media/svg/brand-logos/duolingo.svg" class="h-50px" alt="img"/>
                                    </a>
                                    <!--end::Logo-->
                                    <span class="d-flex flex-column align-items-md-end fs-4 fw-semibold text-muted">
															<span>Cecilia Chapman, 711-2880 Nulla St, Mankato</span>
															<span>Mississippi 96522</span>
														</span>
                                </div>
                            </div>
                            <!--end: Invoice header-->
                            <!--begin: Invoice body-->
                            <div class="row border-bottom pb-10">
                                <div class="col-md-9 py-md-10 pe-md-10">
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-5 pb-10 ps-0">Description</th>
                                                <th class="pt-5 pb-10 text-end">Hours</th>
                                                <th class="pt-5 pb-10 text-end">Rate</th>
                                                <th class="pt-5 pb-10 text-end">Amount</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="fw-bold ps-0 pt-10">
                                                    <div class="d-flex align-items-center">
                                                        <i class="fa fa-genderless text-danger fs-1 me-2"></i>Creative
                                                        Design
                                                    </div>
                                                </td>
                                                <td class="text-end pt-10">80</td>
                                                <td class="text-end pt-10">$40.00</td>
                                                <td class="pe-0 fs-6 fw-bold text-end pt-10">$3200.00</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold ps-0">
                                                    <div class="d-flex align-items-center">
                                                        <i class="fa fa-genderless text-success fs-1 me-2"></i>Front-End
                                                        Development
                                                    </div>
                                                </td>
                                                <td class="text-end">120</td>
                                                <td class="text-end">$40.00</td>
                                                <td class="pe-0 fs-6 fw-bold text-end">$4800.00</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold ps-0">
                                                    <div class="d-flex align-items-center">
                                                        <i class="fa fa-genderless text-primary fs-1 me-2"></i>Back-End
                                                        Development
                                                    </div>
                                                </td>
                                                <td class="text-end">210</td>
                                                <td class="text-end">$60.00</td>
                                                <td class="pe-0 fs-6 fw-bold text-end">$12600.00</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="border-bottom w-100 mt-7 mb-13"></div>
                                    <div class="d-flex flex-column flex-md-row">
                                        <div class="d-flex flex-column mb-10 mb-md-0">
                                            <div class="fw-semibold fs-6 mb-3">BANK TRANSFER</div>
                                            <div class="d-flex justify-content-between fs-6 mb-3">
                                                <span class="fw-semibold me-15">Account Name:</span>
                                                <span class="text-end">Barclays UK</span>
                                            </div>
                                            <div class="d-flex justify-content-between fs-6 mb-3">
                                                <span class="fw-semibold me-15">Account Number:</span>
                                                <span class="text-end">1234567890934</span>
                                            </div>
                                            <div class="d-flex justify-content-between fs-6">
                                                <span class="fw-semibold me-15">Code:</span>
                                                <span class="text-end">BARC0032UK</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 border-start-md ps-md-10 pt-md-10 text-end">
                                    <!--begin::Total Amount-->
                                    <div class="fs-3 fw-bold text-muted mb-3">TOTAL AMOUNT</div>
                                    <div class="fs-2x fw-bold">$20,600.00</div>
                                    <div class="text-muted fw-semibold mb-16">Taxes included</div>
                                    <!--end::Total Amount-->
                                    <div class="border-bottom w-100 mb-16"></div>
                                    <!--begin::Invoice To-->
                                    <div class="text-gray-600 fs-6 fw-semibold mb-3">INVOICE TO.</div>
                                    <div class="fs-6 fw-semibold mb-10">Iris Watson.
                                        <br/>Fredrick Nebraska 20620
                                    </div>
                                    <!--end::Invoice To-->
                                    <!--begin::Invoice No-->
                                    <div class="text-gray-600 fs-6 fw-semibold mb-3">INVOICE NO.</div>
                                    <div class="fs-6 fw-semibold mb-10">56758</div>
                                    <!--end::Invoice No-->
                                    <!--begin::Invoice Date-->
                                    <div class="text-gray-600 fs-6 fw-semibold mb-3">DATE</div>
                                    <div class="fs-6 fw-semibold">12 May, 2020</div>
                                    <!--end::Invoice Date-->
                                </div>
                            </div>
                            <!--end: Invoice body-->
                        </div>
                    </div>
                    <!-- begin: Invoice action-->
                    <div class="row justify-content-center py-8 px-8 py-md-13 px-md-0">
                        <div class="col-md-10">
                            <div class="d-flex fs-7 flex-wrap">
                                <button type="button" class="btn btn-primary fw-bold fs-6 py-4 px-6 me-3 me-sm-6 my-1"
                                        onclick="window.print();">Print Invoice
                                </button>
                                <button type="button" class="btn btn-light-primary fw-bold fs-6 me-3 px-6 my-1">
                                    Download
                                </button>
                                <button type="button"
                                        class="btn bg-gray-800 text-white text-hover-gray-800 bg-hover-gray-200 fw-bold fs-6 ms-sm-auto my-1 px-6">
                                    Create Invoice
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- end: Invoice action-->
                    <!--end::Invoice-->
                </div>
            </div>
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
<!--end::Custom Javascript-->
