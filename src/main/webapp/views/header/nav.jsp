<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="modal bg-white fade" id="kt_mega_menu_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content shadow-none">
            <div class="container">
                <div class="modal-header d-flex flex-stack border-0">
                    <div class="d-flex align-items-center">
                        <!--begin::Logo-->
                        <a href="/">
                            <img alt="Logo" src="/assets/media/logos/logo-default.svg" class="h-30px"/>
                        </a>
                        <!--end::Logo-->
                    </div>
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
                    <!--begin::Row-->
                    <div class="row py-10 g-5">
                        <!--begin::Column-->
                        <div class="col-lg-6 pe-lg-25">
                            <!--begin::Row-->
                            <div class="row">
                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">Dashboards</h3>
                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2 active" href="/">Home</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/digicam/anc/all">Notice</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/digicam/calendar">Calendar</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/digicam/detail">Digi Cam</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/digicam/member">Digi Member</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">Lecture</h3>
                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/lecture/pay">pay</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/lecture/all">all</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/lecture/detail">detail</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/inbox">Inbox@</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/shop2">Shop 2@</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">STUDY</h3>
                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/study/add">ADD ¥ı«œ±‚</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/study/add2">ADD2</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/study/all">LIST</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--end::Row-->
                            <!--begin::Row-->
                            <div class="row">
                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">Blah Blah</h3>
                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/blah">BlahBlah</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/blah/private">Private Chat@</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/blah/group">Group Chat@
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">JMTGR</h3>

                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/marker/add">add</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/marker/all">all</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/marker/detail">detail</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <h3 class="fw-bold mb-5">ETC</h3>
                                    <ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10"> <li class="menu-item">
                                        <a class="menu-link ps-0 py-2" href="#">Mypage</a>
                                    </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/settings">Settings@</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/pricing">Pricing@</a>
                                        </li>

                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/wizard">Wizard@</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/compose">compose@</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/reply">reply@</a>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2" href="/listing">listing@</a>
                                        </li>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2"
                                               href="https://preview.keenthemes.com/html/start-html-pro/docs/base/utilities">Components</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2"
                                               href="https://preview.keenthemes.com/html/start-html-pro/docs">Documentation</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2"
                                               href="https://preview.keenthemes.com/start-html-pro/layout-builder.html">Layout
                                                Builder</a>
                                        </li>
                                        <li class="menu-item">
                                            <a class="menu-link ps-0 py-2"
                                               href="https://preview.keenthemes.com/html/start-html-pro/docs/getting-started/changelog">Changelog
                                                <span class="badge badge-changelog badge-light-danger bg-hover-danger text-hover-white fw-semibold fs-9 px-2 ms-2">v1.1.2</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--end::Row-->
                        </div>
                        <!--end::Column-->
                        <!--begin::Column-->
                        <div class="col-lg-6">
                            <h3 class="fw-bold mb-8">Quick Links</h3>
                            <!--begin::Row-->
                            <div class="row g-5">
                                <div class="col-sm-4">
                                    <a href="#" class="card bg-light-success hoverable min-h-125px shadow-none mb-5">
                                        <div class="card-body d-flex flex-column flex-center">
                                            <h3 class="fs-3 mb-2 text-dark fw-bold">Attendance</h3>
                                            <p class="mb-0 text-gray-600">$2.99/month</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-sm-4">
                                    <a href="#" class="card bg-light-danger hoverable min-h-125px shadow-none mb-5">
                                        <div class="card-body d-flex flex-column flex-center text-center">
                                            <h3 class="fs-3 mb-2 text-dark fw-bold">Test</h3>
                                            <p class="mb-0 text-gray-600">Free Version</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-sm-4">
                                    <a href="#" class="card bg-light-warning hoverable min-h-125px shadow-none mb-5">
                                        <div class="card-body d-flex flex-column flex-center text-center">
                                            <h3 class="fs-3 mb-2 text-dark text-hover-primary fw-bold">SSSS</h3>
                                            <p class="mb-0 text-gray-600">Pro Version</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!--end::Row-->
                            <!--begin::Row-->
                            <div class="row g-5">
                                <div class="col-sm-8">
                                    <a href="#" class="card bg-light-primary hoverable min-h-125px shadow-none mb-5">
                                        <div class="card-body d-flex flex-column flex-center text-center">
                                            <h3 class="fs-3 mb-2 text-dark fw-bold"></h3>
                                            <p class="mb-0 text-gray-600">Credit Cards/Debit Cards, Paypal,
                                                <br/>Transferwise & Others</p>
                                        </div>
                                    </a>
                                    <!--begin::Row-->
                                    <div class="row g-5">
                                        <div class="col-sm-6">
                                            <a class="card bg-light-warning hoverable shadow-none min-h-125px mb-5">
                                                <div class="card-body d-flex flex-column flex-center text-center">
                                                    <h3 class="fs-3 mb-2 text-dark fw-bold">Support</h3>
                                                    <p class="mb-0 text-gray-600">6 Month Free</p>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="#"
                                               class="card bg-light-success hoverable shadow-none min-h-125px mb-5">
                                                <div class="card-body d-flex flex-column flex-center text-center">
                                                    <h3 class="fs-3 mb-2 text-dark fw-bold">Webcam</h3>
                                                    <p class="mb-0 text-gray-600">$0.99 Per Machine</p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <div class="col-sm-4">
                                    <a href="#"
                                       class="card card-stretch mb-5 bg-light-info hoverable shadow-none min-h-250px">
                                        <div class="card-body d-flex flex-column p-0">
                                            <div class="d-flex flex-column flex-grow-1 flex-center text-center px-5 pt-10">
                                                <h3 class="fs-3 mb-2 text-dark fw-bold">Diagnosis</h3>
                                                <p class="mb-0 text-gray-600">Single Click Import</p>
                                            </div>
                                            <div class="min-h-125px bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom"
                                                 style="background-image:url('/assets/media/illustrations/sigma-1/2.png')"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!--end::Row-->
                        </div>
                        <!--end::Column-->
                    </div>
                    <!--end::Row-->
                </div>
            </div>
        </div>
    </div>
</div>