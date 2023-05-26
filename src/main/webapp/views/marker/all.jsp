<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->


<!--end::Head-->

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">JMTGR</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="/" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">Apps</li>
                    <li class="breadcrumb-item text-dark">Shop 1</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/marker/add" class="btn btn-active-accent fw-bold ms-3">JMTGR ADD</a>
                <a href="/marker/all" class="btn btn-active-accent active fw-bold ms-3">JMTGR ALL</a>
                <a href="/marker/detail" class="btn btn-active-accent fw-bold ms-3">JMTGR DETAIL</a>
                <a href="/inbox" class="btn btn-active-accent fw-bold ms-3">Inbox</a>
                <a href="/shop2" class="btn btn-active-accent  fw-bold ms-3">Shop 2</a>
                <a href="/product" class="btn btn-active-accent fw-bold ms-3">Shop Product</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Card-->
            <div class="card">
                <div class="card-body">
                    <!--begin::Engage Widget 1-->
                    <div class="card mb-12">
                        <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                            <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                <h1 class="fw-bold text-dark">Search Place</h1>
                                <div class="fs-3 mb-8">Get jmtgr place!</div>
                                <!--begin::Form-->
                                <form class="d-flex flex-center py-2 bg-white px-6 rounded">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                                    <span class="svg-icon svg-icon-1 svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<rect opacity="0.5" x="17.0365" y="15.1223"
                                                                      width="8.15546" height="2" rx="1"
                                                                      transform="rotate(45 17.0365 15.1223)"
                                                                      fill="currentColor"/>
																<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                                    <!--end::Svg Icon-->
                                    <input type="text" class="form-control border-0 fw-semibold ps-2 w-xxl-350px"
                                           placeholder="Search Place"/>
                                </form>
                                <!--end::Form-->
                            </div>
                            <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                 style="background-image: url(/img/logo2.png);"></div>
                        </div>
                    </div>
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->
                    <div class="mb-10">
                        <!--begin::Heading-->
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <h2 class="fw-bold text-dark fs-2 mb-0">BEST</h2>
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">View All</a>
                        </div>
                        <!--end::Heading-->
                        <!--begin::Products-->
                        <div class="row g-5 g-xxl-8">
                            <!--begin::Product-->
                            <div class="col-md-4 col-xxl-4 col-lg-12">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/1.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Smart
                                                Watches</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/2.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Headphones</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="
                                                /assets/media/products/3.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Smart
                                                Drones</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                        </div>
                        <!--end::Products-->
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="mb-10">
                        <!--begin::Heading-->
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <h2 class="fw-bold text-dark fs-2 mb-0">Best Wines</h2>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">Restaurant</a>
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">Cafe</a>
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">Study Cafe</a>
                        </div>
                        <!--end::Heading-->
                        <!--begin::Products-->
                        <div class="row g-5 g-xxl-8">
                            <!--begin::Product-->
                            <div class="col-md-4 col-xxl-4 col-lg-12">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/4.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Jerry Kane</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/5.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Shiraz</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/6.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Chardonnay</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                        </div>
                        <!--end::Products-->
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="mb-0">
                        <!--begin::Heading-->
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <h2 class="fw-bold text-dark fs-2 mb-0">Popular Jackets</h2>
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">View All</a>
                        </div>
                        <!--end::Heading-->
                        <!--begin::Products-->
                        <div class="row g-5 g-xxl-8">
                            <!--begin::Product-->
                            <div class="col-md-4 col-xxl-4 col-lg-12">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/7.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Tommy Hilfiger</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Smart
                                                Watches</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/8.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Hugo Boss</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                            <!--begin::Product-->
                            <div class="col-md-4 col-lg-12 col-xxl-4">
                                <!--begin::Card-->
                                <div class="card shadow-none">
                                    <div class="card-body p-0">
                                        <!--begin::Image-->
                                        <div class="overlay rounded overflow-hidden">
                                            <div class="overlay-wrapper rounded bg-light text-center">
                                                <img src="/assets/media/products/9.png" alt="" class="mw-100 w-200px"/>
                                            </div>
                                            <div class="overlay-layer">
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-primary me-2">Quick View</a>
                                                <a href="../dist/apps/shop/product.html"
                                                   class="btn fw-bold btn-sm btn-light-primary">Purchase</a>
                                            </div>
                                        </div>
                                        <!--end::Image-->
                                        <!--begin::Details-->
                                        <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                            <a href="../dist/apps/shop/product.html"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">Armani</a>
                                            <span class="fs-6">Outlines keep poorly thought</span>
                                        </div>
                                        <!--end::Details-->
                                    </div>
                                </div>
                                <!--end::Card-->
                            </div>
                            <!--end::Product-->
                        </div>
                        <!--end::Products-->
                    </div>
                    <!--end::Section-->
                </div>
            </div>
            <!--end::Card-->
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
<script src="/assets/js/custom/apps/shop.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
