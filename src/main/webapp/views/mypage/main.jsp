<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="canonical" href="https://preview.keenthemes.com/start-html-pro"/>
<link rel="shortcut icon" href="/img/logo.png"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700"/>
<!--end::Fonts-->
<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
<link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">--%>
<style>
    .rotate-effect img {
        transition: transform 0.3s ease;
    }

    .rotate-effect:hover img {
        transform: rotate(360deg);
    }

    .rotate-effect:hover img {
        animation: rotate 2s linear infinite;
    }

    @keyframes rotate {
        from {
            transform: rotate(0deg);
        }
        to {
            transform: rotate(360deg);
        }
    }


</style>
<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">MY PAGE</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Navbar-->
            <div class="card mb-5 mb-xl-10">
                <div class="card-body pt-9 pb-0">
                    <!--begin::Details-->
                    <div class="d-flex flex-wrap flex-sm-nowrap mb-3">
                        <!--begin: Pic-->
                        <div class="me-7 mb-4">
                            <div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
                                <img src="/uimg/${student.img}" alt="image"/>
                            </div>
                        </div>
                        <!--end::Pic-->
                        <!--begin::Info-->
                        <div class="flex-grow-1">
                            <!--begin::Title-->
                            <div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
                                <!--begin::User-->
                                <div class="d-flex flex-column">
                                    <!--begin::Name-->
                                    <div class="d-flex align-items-center mb-2">
                                        <a href="#"
                                           class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">${student.name}
                                        </a>
                                        <a href="#">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen026.svg-->
                                            <span class="svg-icon svg-icon-1 svg-icon-primary">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24px"
                                                                         height="24px" viewBox="0 0 24 24">
																		<path d="M10.0813 3.7242C10.8849 2.16438 13.1151 2.16438 13.9187 3.7242V3.7242C14.4016 4.66147 15.4909 5.1127 16.4951 4.79139V4.79139C18.1663 4.25668 19.7433 5.83365 19.2086 7.50485V7.50485C18.8873 8.50905 19.3385 9.59842 20.2758 10.0813V10.0813C21.8356 10.8849 21.8356 13.1151 20.2758 13.9187V13.9187C19.3385 14.4016 18.8873 15.491 19.2086 16.4951V16.4951C19.7433 18.1663 18.1663 19.7433 16.4951 19.2086V19.2086C15.491 18.8873 14.4016 19.3385 13.9187 20.2758V20.2758C13.1151 21.8356 10.8849 21.8356 10.0813 20.2758V20.2758C9.59842 19.3385 8.50905 18.8873 7.50485 19.2086V19.2086C5.83365 19.7433 4.25668 18.1663 4.79139 16.4951V16.4951C5.1127 15.491 4.66147 14.4016 3.7242 13.9187V13.9187C2.16438 13.1151 2.16438 10.8849 3.7242 10.0813V10.0813C4.66147 9.59842 5.1127 8.50905 4.79139 7.50485V7.50485C4.25668 5.83365 5.83365 4.25668 7.50485 4.79139V4.79139C8.50905 5.1127 9.59842 4.66147 10.0813 3.7242V3.7242Z"
                                                                              fill="currentColor"/>
																		<path d="M14.8563 9.1903C15.0606 8.94984 15.3771 8.9385 15.6175 9.14289C15.858 9.34728 15.8229 9.66433 15.6185 9.9048L11.863 14.6558C11.6554 14.9001 11.2876 14.9258 11.048 14.7128L8.47656 12.4271C8.24068 12.2174 8.21944 11.8563 8.42911 11.6204C8.63877 11.3845 8.99996 11.3633 9.23583 11.5729L11.3706 13.4705L14.8563 9.1903Z"
                                                                              fill="white"/>
																	</svg>
																</span>
                                            <!--end::Svg Icon-->
                                        </a>
                                        <c:choose>
                                            <c:when test="${mypage.digidate == '20220201'}">
                                                <a href="#"
                                                   class="btn btn-sm btn-light-success fw-bold ms-2 fs-8 py-1 px-3"
                                                   data-bs-toggle="modal"
                                                   data-bs-target="#kt_modal_upgrade_plan">DIGI 1TH</a>
                                            </c:when>
                                            <c:when test="${mypage.digidate =='20230201'}">
                                                <a href="#"
                                                   class="btn btn-sm btn-light-success fw-bold ms-2 fs-8 py-1 px-3"
                                                   data-bs-toggle="modal"
                                                   data-bs-target="#kt_modal_upgrade_plan">DIGI 2TH</a>
                                            </c:when>
                                        </c:choose>


                                    </div>
                                    <!--end::Name-->
                                    <!--begin::Info-->
                                    <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                        <a href="#"
                                           class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                            <!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
                                            <span class="svg-icon svg-icon-4 me-1">
																<svg width="18" height="18" viewBox="0 0 18 18"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<path opacity="0.3"
                                                                          d="M16.5 9C16.5 13.125 13.125 16.5 9 16.5C4.875 16.5 1.5 13.125 1.5 9C1.5 4.875 4.875 1.5 9 1.5C13.125 1.5 16.5 4.875 16.5 9Z"
                                                                          fill="currentColor"/>
																	<path d="M9 16.5C10.95 16.5 12.75 15.75 14.025 14.55C13.425 12.675 11.4 11.25 9 11.25C6.6 11.25 4.57499 12.675 3.97499 14.55C5.24999 15.75 7.05 16.5 9 16.5Z"
                                                                          fill="currentColor"/>
																	<rect x="7" y="6" width="4" height="4" rx="2"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                            <!--end::Svg Icon-->${student.id}</a>
                                        <a href="#"
                                           class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen018.svg-->
                                            <c:set var="contactString" value="${student.contact}"/>
                                            <c:set var="formattedPhoneNumber"
                                                   value="${fn:substring(contactString, 0, 3)}-${fn:substring(contactString, 3, 7)}-${fn:substring(contactString, 7,11)}"/>

                                            <span class="svg-icon svg-icon-4 me-1">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<path opacity="0.3"
                                                                          d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z"
                                                                          fill="currentColor"/>
																	<path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                            <!--end::Svg Icon-->${formattedPhoneNumber}</a>
                                        <a href="#"
                                           class="d-flex align-items-center text-gray-400 text-hover-primary mb-2">
                                            <!--begin::Svg Icon | path: icons/duotune/communication/com011.svg-->
                                            <span class="svg-icon svg-icon-4 me-1">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<path opacity="0.3"
                                                                          d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19Z"
                                                                          fill="currentColor"/>
																	<path d="M21 5H2.99999C2.69999 5 2.49999 5.10005 2.29999 5.30005L11.2 13.3C11.7 13.7 12.4 13.7 12.8 13.3L21.7 5.30005C21.5 5.10005 21.3 5 21 5Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                            <!--end::Svg Icon-->${student.email}</a>
                                    </div>
                                    <!--end::Info-->
                                </div>
                                <!--end::User-->
                                <!--begin::Actions-->
                                <div class="d-flex">
                                    <a href="/settings/authentication" class="btn-primary"><i class="bi-qr-code fs-2tx"></i></a>
                                </div>
                                <!--end::Actions-->
                            </div>
                            <!--end::Title-->
                            <!--begin::Stats-->
                            <div class="d-flex flex-wrap flex-stack">
                                <!--begin::Wrapper-->

                                <c:choose>
                                    <c:when test="${mypage.detail == null}">
                                        아직 자기소개가 입력되지 않았습니다.
                                    </c:when>
                                    <c:when test="${mypage.detail != null}">
                                        ${mypage.detail}
                                    </c:when>
                                </c:choose>
                                <!--end::Wrapper-->

                            </div>
                            <!--end::Stats-->
                        </div>
                        <!--end::Info-->
                    </div>
                    <!--end::Details-->
                    <!--begin::Navs-->
                    <ul class="nav nav-stretch nav-line-tabs nav-line-tabs-2x border-transparent fs-5 fw-bold">
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/mypage?id=${student.id}">마이프로필</a>
                        </li>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/mypage/myblah?id=${student.id}">마이블라</a>
                        </li>
                        <!--end::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5"
                               href="/mypage/settings?id=${student.id}">마이프로필변경</a>
                        </li>
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/settings/pwd?id=${loginStdn.id}">비밀번호변경</a>
                        </li>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/settings/authentication">QR발급</a>
                        </li>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
<%--                        <li class="nav-item mt-2">--%>
<%--                            <a class="nav-link text-active-primary ms-0 me-10 py-5"--%>
<%--                               href="/mypage/logs">내가 쓴 게시글</a>--%>
<%--                        </li>--%>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
<%--                        <li class="nav-item mt-2">--%>
<%--                            <a class="nav-link text-active-primary ms-0 me-10 py-5"--%>
<%--                               href="/mypage/statements">내 블라블라</a>--%>
<%--                        </li>--%>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
<%--                        <li class="nav-item mt-2">--%>
<%--                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/mypage/api-keys">내 스터디(이건--%>
<%--                                링크만)</a>--%>
<%--                        </li>--%>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
<%--                        <li class="nav-item mt-2">--%>
<%--                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="/mypage/referrals">결제강의(수료증)referrals/billing</a>--%>
<%--                        </li>--%>
                        <!--end::Nav item-->

                    </ul>
                    <!--begin::Navs-->
                </div>
            </div>
            <!--end::Navbar-->
            <!--begin::Underline-->
            <c:choose>
                <c:when test="${mpcenter==null}">
                    <jsp:include page="mpcenter.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="${mpcenter}.jsp"/>
                </c:otherwise>
            </c:choose>
            <!--end::Row-->
        </div>
        <!--end::Container-->
    </div>

    <!--end::Example-->
    <!--end::Content-->
</div>
<!--end::Main-->

<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/pages/user-profile/general.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/type.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/details.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/finance.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/complete.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/main.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!--begin::Javascript-->
<script>var hostUrl = "/assets/";</script>
<!--begin::Global Javascript Bundle(mandatory for all pages)-->
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
<!--end::Global Javascript Bundle-->
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/create-campaign.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>