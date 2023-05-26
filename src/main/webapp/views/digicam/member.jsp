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
                <h3 class="text-dark fw-bold my-1">Digi Members</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="../dist/index.html" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">Dashboard</li>
                    <li class="breadcrumb-item text-dark">Digi Members</li>
                </ul>
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
                <h3 class="fw-bold my-2">My Contacts
                    <span class="fs-6 fw-semibold ms-1">(59)</span></h3>
                <!--end::Title-->
                <!--begin::Controls-->
                <div class="d-flex my-2">
                    <!--begin::Select-->
                    <select name="status" data-control="select2" data-hide-search="true"
                            class="form-select form-select-sm border-body bg-body w-125px">
                        <option value="Online" selected="selected">Online</option>
                        <option value="Pending">Pending</option>
                        <option value="Declined">Declined</option>
                        <option value="Accepted">Accepted</option>
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
                                    <img alt="Pic" src="assets/media/avatars/300-6.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Emma Smith</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Art Director</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-1.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Max Smith</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Software Enginer</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-5.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Sean Bean</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Web Developer</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-25.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Brian Cox</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">UI/UX Designer</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <span class="symbol-label bg-light-warning text-warning fs-5 fw-bolder">C</span>
                                    <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n3 mt-n3"></div>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Mikaela Collins</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Head Of Marketing</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-9.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Francis Mitcham</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Software Arcitect</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <span class="symbol-label bg-light-danger text-danger fs-5 fw-bolder">O</span>
                                    <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n3 mt-n3"></div>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Olivia Wild</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">System Admin</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <span class="symbol-label bg-light-primary text-primary fs-5 fw-bolder">N</span>
                                    <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n3 mt-n3"></div>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Neil Owen</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Account Manager</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-23.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Dan Wilson</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Web Desinger</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <span class="symbol-label bg-light-danger text-danger fs-5 fw-bolder">E</span>
                                    <div class="symbol-badge bg-success start-100 top-100 border-4 h-15px w-15px ms-n3 mt-n3"></div>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Emma Bold</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Corporate Finance</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
                                    <img alt="Pic" src="assets/media/avatars/300-12.jpg"/>
                                </div>
                                <!--end::Avatar-->
                            </div>
                            <!--end::Wrapper-->
                            <!--begin::Name-->
                            <a href="#" class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">Ana Crown</a>
                            <!--end::Name-->
                            <!--begin::Position-->
                            <div class="fw-semibold text-gray-400 mb-6">Customer Relationship</div>
                            <!--end::Position-->
                            <!--begin::Info-->
                            <div class="d-flex flex-center flex-wrap mb-5">
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$14,560</div>
                                    <div class="fw-semibold text-gray-400">Avg. Earnings</div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Stats-->
                                <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 mx-3 px-4 mb-3">
                                    <div class="fs-6 fw-bold text-gray-700">$236,400</div>
                                    <div class="fw-semibold text-gray-400">Total Sales</div>
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
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="assets/js/custom/widgets.js"></script>
<script src="assets/js/custom/apps/chat/chat.js"></script>
<script src="assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->