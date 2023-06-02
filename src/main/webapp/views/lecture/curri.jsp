<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<style>
    .timeline-label{
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative;


    }



    .timeline-item {
        display: flex;
        align-items: flex-start;
        position: relative;
        margin-bottom: 1.7rem;
    }

    .timeline-badge {
    /*    flex-shrink: 0;*/
    /*    background-color: var(--bs-body-bg);*/
    /*    width: 1rem;*/
    /*    height: 1rem;*/
    /*    border-radius: 100%;*/
    /*    display: flex;*/
    /*    justify-content: center;*/
    /*    align-items: center;*/
    /*    z-index: 1;*/
    /*    position: absolute;*/
    /*    top: 50%;*/
    /*    left: -0.5rem; !* Adjust the left position as needed *!*/
    /*    transform: translateY(-50%);*/
    /*    padding: 3px !important;*/
    /*    border: 6px solid var(--bs-body-bg) !important;*/
    }


    .timeline-content {
        margin-left: 2rem; /* Adjust the margin as needed */
        width: 50%;
    }

</style>


<script>
    $(document).ready(function () {

    })

</script>


<!--begin::Main-->

<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">커리큘럼</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">장바구니</a>
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
                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_4">나의 커리큘럼</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_5">커리큘럼 엿보기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_6">MD추천 커리큘럼</a>
                        </li>
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="kt_tab_pane_4" role="tabpanel">
                            <div class="col-xl-12">
                                <!--begin::Engage Widget 1-->
                                <div class="card mb-12">
                                    <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                                        <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-start bgi-size-contain"
                                             style="background-image: url(/assets/media/illustrations/sigma-1/2.png);"></div>
                                        <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                            <h1 class="text-dark" style="font-weight: 900">무슨 강의 들을지 고민이라면?<br>
                                            믿고 보는 DIGICAM PICK</h1>
                                            <div class="text-info-emphasis fs-3 mb-8" style="font-weight:900">매월 업데이트 NEW</div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Engage Widget 1-->
                                <div class="card card-stretch mb-5 mb-xxl-8">
                                    <!--begin::Header-->
                                    <div class="card-header align-items-center border-0 mt-5">
                                        <h3 class="card-title align-items-start flex-column">
                                            <span class="fw-bold text-dark fs-3">${loginStdn.name}님의 커리큘럼</span>
                                            <span class="text-muted mt-2 fw-semibold fs-6">코딩으로 탈큽하는 그날까지 학습 발자취를 남겨주세요</span>
                                        </h3>
                                    </div>
                                    <!--end::Header-->
                                    <!--begin::Body-->
                                    <div class="card-body pt-3">
                                        <!--begin::Timeline-->
                                        <div class="timeline-label">
                                            <!--begin::Item-->
                                            <c:forEach var="curri" items="${curri}">
                                                <div class="timeline-item">
                                                    <!--begin::Label-->
                                                    <div class="timeline-label fw-bold text-gray-800 fs-6">${curri.rdate}</div>
                                                    <!--end::Label-->
                                                    <!--begin::Badge-->
                                                    <div class="timeline-badge">
                                                        <i class="fa fa-genderless text-warning fs-1"></i>
                                                    </div>
                                                    <!--end::Badge-->
                                                    <!--begin::Text-->
                                                    <div class="timeline-content d-flex flex-wrap align-items-center mb-7">
                                                        <!--begin::Symbol-->
                                                        <div class="symbol symbol-65px symbol-2by3 me-4">
                                                            <img src="/uimg/${curri.lecImg}" class="mw-100" />
                                                        </div>
                                                        <!--end::Symbol-->
                                                        <!--begin::Title-->
                                                        <div class="d-flex flex-column my-lg-0 my-2 pe-3">
                                                            <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6">${curri.lecTitle}</a>
                                                        </div>
                                                        <span class="badge badge-light-primary">${curri.lecTopic}</span>
                                                        <!--end::Title-->
                                                    </div>
                                                    <!--end::Text-->
                                                </div>
                                            </c:forEach>
                                            <!--end::Item-->
                                        </div>
                                        <!--end::Timeline-->
                                    </div>
                                    <!--end: Card Body-->
                                </div>
                                <!--end::List Widget 1-->
                            </div>
                        </div>
                        <div class="tab-pane fade" id="kt_tab_pane_5" role="tabpanel">
                            <div class="card mb-12">
                                <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-info">
                                    <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                        <h1 class="text-dark" style="font-weight: 900">배우고 나누고 성장하세요!</h1>
                                        <div class="fs-3 mb-8">커리큘럼이 궁금한 DIGICAM MEMBER는?</div>
                                        <!--begin::Form-->
                                        <form class="d-flex flex-center py-2 px-6 bg-white rounded">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                                            <span class="svg-icon svg-icon-1 svg-icon-info">
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
                                                   placeholder="걔는 뭘 듣길래 그렇게 코딩을 잘 한대?"/>
                                        </form>
                                        <!--end::Form-->
                                    </div>
                                    <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                         style="background-image: url(/assets/media/illustrations/sigma-1/4.png);"></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="kt_tab_pane_6" role="tabpanel">
                            삼번입네다
                        </div>
                    </div>
                    <!--begin::Engage Widget 1-->
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->
                    <div class="mb-12">

                        <jsp:include page="../page.jsp" />
                    </div>



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
