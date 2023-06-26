<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    [data-bs-theme="light"] #kt_header_search_modal {
        background-color: white;
    }

    [data-bs-theme="dark"] #kt_header_search_modal {
        background-color: #1e1e2d;
    }

</style>
<script>

</script>
<!--begin::Header Search-->
<div class="modal fade" id="kt_header_search_modal" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content shadow-none">
            <div class="container w-lg-800px">
                <div class="modal-header d-flex justify-content-end border-0">
                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-light-primary ms-2" data-bs-dismiss="modal">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                        <span class="svg-icon svg-icon-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                              transform="rotate(-45 6 17.3137)" fill="currentColor"/>
										<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                              transform="rotate(45 7.41422 6)" fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Close-->
                </div>
                <div class="modal-body">
                    <!--begin::Search-->
                    <form class="pb-10">
                        <input autofocus="" type="text"
                               class="form-control bg-transparent border-0 fs-4x text-center fw-normal" name="query"
                               placeholder="Search..."/>
                    </form>
                    <!--end::Search-->
                    <!--begin::Shop Goods-->
                    <div class="py-10">
                        <h3 class="fw-bold mb-8">Shop Goods</h3>
                        <!--begin::Row-->
                        <div class="row g-5">
                            <div class="col-sm-6">
                                <div class="row g-5">
                                    <div class="col-sm-6">
                                        <div class="card overlay min-h-125px mb-5 shadow-none">
                                            <div class="card-body d-flex flex-column p-0">
                                                <div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded"
                                                     style="background-image:url('/assets/media/stock/600x400/img-17.jpg')"></div>
                                                <div class="overlay-layer bg-white bg-opacity-50">
                                                    <a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card overlay min-h-125px mb-5 shadow-none">
                                            <div class="card-body d-flex flex-column p-0">
                                                <div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded"
                                                     style="background-image:url('/assets/media/stock/600x400/img-1.jpg')"></div>
                                                <div class="overlay-layer bg-white bg-opacity-50">
                                                    <a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="card card-stretch overlay mb-5 shadow-none min-h-250px">
                                            <div class="card-body d-flex flex-column p-0">
                                                <div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded"
                                                     style="background-image:url('/assets/media/stock/600x400/img-23.jpg')"></div>
                                                <div class="overlay-layer bg-white bg-opacity-50">
                                                    <a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card card-stretch overlay mb-5 shadow-none min-h-250px">
                                    <div class="card-body d-flex flex-column p-0">
                                        <div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded"
                                             style="background-image:url('/assets/media/stock/600x400/img-11.jpg')"></div>
                                        <div class="overlay-layer bg-white bg-opacity-50">
                                            <a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end::Row-->
                    </div>
                    <!--end::Shop Goods-->
                    <!--begin::Framework Users-->
                    <div>
                        <h3 class="text-dark fw-bold fs-1 mb-6">Framework Users</h3>
                        <!--begin::List Widget 4-->
                        <div class="card bg-transparent mb-5 shadow-none">
                            <!--begin::Body-->
                            <div class="card-body pt-2 px-0">
                                <div class="table-responsive">
                                    <table class="table table-borderless align-middle">
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0 w-55px">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column min-w-300px">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                            </td>
                                            <td>
                                                <!--begin::Label-->
                                                <div class="me-4 me-md-19 text-md-right">
                                                    <div class="text-gray-800 fw-bold fs-6 mb-1">$2,000,000</div>
                                                    <span class="text-muted fw-semibold">Paid</span>
                                                </div>
                                                <!--end::Label-->
                                            </td>
                                            <td class="text-end pe-0">
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <!--end::Item-->
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-danger">
																<img src="/assets/media/svg/avatars/006-girl-3.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column min-w-300px">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Jessie
                                                    Clarcson</a>
                                                <div class="text-muted fw-semibold">Uses: HTML, ReactJS, ASP.NET</div>
                                                <!--end::Title-->
                                            </td>
                                            <td>
                                                <!--end::Label-->
                                                <div class="me-4 me-md-19 text-md-right">
                                                    <div class="text-gray-800 fw-bold fs-6 mb-1">$1,200,000</div>
                                                    <span class="text-muted fw-semibold">Paid</span>
                                                </div>
                                                <!--end::Label-->
                                            </td>
                                            <td class="text-end pe-0">
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <!--end::Item-->
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-success">
																<img src="/assets/media/svg/avatars/011-boy-5.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column min-w-300px">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Lebron
                                                    Wayde</a>
                                                <div class="text-muted fw-semibold">Uses: HTML. Laravel Framework</div>
                                                <!--end::Title-->
                                            </td>
                                            <td>
                                                <!--end::Label-->
                                                <div class="me-4 me-md-19 text-md-right">
                                                    <div class="text-gray-800 fw-bold fs-6 mb-1">$3,400,000</div>
                                                    <span class="text-muted fw-semibold">Paid</span>
                                                </div>
                                                <!--end::Label-->
                                            </td>
                                            <td class="text-end pe-0">
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <!--end::Item-->
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-warning">
																<img src="/assets/media/svg/avatars/015-boy-6.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column min-w-300px">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Kevin
                                                    Leonard</a>
                                                <div class="text-muted fw-semibold">Uses: VueJS, Laravel Framework</div>
                                                <!--end::Title-->
                                            </td>
                                            <td>
                                                <!--end::Label-->
                                                <div class="me-4 me-md-19 text-md-right">
                                                    <div class="text-gray-800 fw-bold fs-6 mb-1">$35,600,000</div>
                                                    <span class="text-muted fw-semibold">Paid</span>
                                                </div>
                                                <!--end::Label-->
                                            </td>
                                            <td class="text-end pe-0">
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <!--end::Item-->
                                    </table>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 4-->
                    </div>
                    <!--end::Framework Users-->
                    <!--begin::Tutorials-->
                    <div class="pb-10">
                        <h3 class="text-dark fw-bold fs-1 mb-6">Tutorials</h3>
                        <!--begin::List Widget 5-->
                        <div class="card mb-5 shadow-none">
                            <!--begin::Body-->
                            <div class="card-body pt-2 px-0">
                                <!--begin::Item-->
                                <div class="d-flex mb-6">
                                    <!--begin::Icon-->
                                    <div class="me-1">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                                        <span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Icon-->
                                    <!--begin::Content-->
                                    <div class="d-flex flex-column">
                                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">How to
                                            Create Your First Project with Start Admin Theme</a>
                                        <div class="fw-semibold text-muted">But nothing can prepare you for the real
                                            thing
                                        </div>
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex mb-6">
                                    <!--begin::Icon-->
                                    <div class="me-1">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                                        <span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Icon-->
                                    <!--begin::Content-->
                                    <div class="d-flex flex-column">
                                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Start
                                            Admin Theme Getting Started & Installation</a>
                                        <div class="fw-semibold text-muted">Long before you sit down to put digital
                                            pen
                                        </div>
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex mb-6">
                                    <!--begin::Icon-->
                                    <div class="me-1">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                                        <span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Icon-->
                                    <!--begin::Content-->
                                    <div class="d-flex flex-column">
                                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Craft a
                                            headline that is both informative and will capture</a>
                                        <div class="fw-semibold text-muted">But nothing can prepare you for the real
                                            thing
                                        </div>
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex mb-6">
                                    <!--begin::Icon-->
                                    <div class="me-1">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                                        <span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Icon-->
                                    <!--begin::Content-->
                                    <div class="d-flex flex-column">
                                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Write
                                            your post, either writing a draft in a single</a>
                                        <div class="fw-semibold text-muted">Long before you sit down to put pen</div>
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex mb-6">
                                    <!--begin::Icon-->
                                    <div class="me-1">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                                        <span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Icon-->
                                    <!--begin::Content-->
                                    <div class="d-flex flex-column">
                                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Use
                                            images to enhance your post, improve its flow</a>
                                        <div class="fw-semibold text-muted">Long before you sit down to put digital
                                            pen
                                        </div>
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 5-->
                    </div>
                    <!--end::Tutorials-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--end::Header Search-->