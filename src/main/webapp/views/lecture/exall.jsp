<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>


<style>
    #lec_container {
        margin-bottom: 30px;
    }

    .modal_rank {
        position: fixed;
        top: 80%;
        left: 38%;
        transform: translate(-50%, -50%);
    }

    .modal_body {
        position: fixed;
        top: 90%;
        left: 38%;
        transform: translate(-50%, -50%);
    }

    .clickable-div {
        position: relative;
    }

    .icon-tray li {
        margin:2%;
    }

</style>

<script>
    $(document).ready(function () {

        $('.cart_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(9);
            let cartModal = $('#cart_modal_' + lecId);

            $.ajax({
                url: '/cartimpl',
                data: {stdnId: stdnId, lecId: lecId},
                success: function (result) {
                    if (result === 0) {
                        let modal = new bootstrap.Modal(cartModal)
                        $('#cart_msg_' + lecId).html('이미 카트에 있는 강의입니다.');
                        modal.show()
                    } else if (result === 1) {
                        let modal = new bootstrap.Modal(cartModal)
                        $('#cart_msg_' + lecId).html('강의가 카트에 추가되었습니다.');
                        modal.show()
                    }
                }
            });
        });

        $('.curri_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(10);
            let curriModal = $('#curri_modal_' + lecId);

            $.ajax({
                url: '/curriimpl',
                data: {stdnId: stdnId, lecId: lecId},
                success: function (result) {
                    if (result === 0) {
                        let modal = new bootstrap.Modal(curriModal)
                        $('#curri_msg_' + lecId).html('이미 커리큘럼에 있는 강의입니다.');
                        modal.show()
                    } else if (result === 1) {
                        let modal = new bootstrap.Modal(curriModal)
                        $('#curri_msg_' + lecId).html('강의가 커리큘럼에 추가되었습니다.');
                        modal.show()
                    }
                }
            });
        });
    });
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
                            <span class="fs-2x text-gray-800" style="font-weight: 900">전체 강의</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent active active fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">나의 커리큘럼</a>
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
                    <!--begin::Engage Widget 1-->
                    <div class="card mb-12">
                        <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                            <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                <h1 class="text-dark" style="font-weight: 900">누구나 쉬운 입문 강의 여기 다 모였다!</h1>
                                <div class="fs-3 mb-8">지금 고민인 분야를 입력해주세요</div>
                                <!--begin::Form-->
                                <form class="d-flex flex-center py-2 px-6 bg-white rounded">
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
                                           placeholder="뭘 좋아할 지 몰라 다 준비해봤어 넌 입력만 해"/>
                                </form>
                                <!--end::Form-->
                            </div>
                            <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                 style="background-image: url(/assets/media/illustrations/sigma-1/5.png);"></div>
                        </div>
                    </div>
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->


                    <div class="mb-10">
                        <!--begin::Heading-->
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <div id="kt_carousel_3_carousel" class="carousel carousel-custom slide"
                                 data-bs-ride="carousel" data-bs-interval="8000">
                                <!--begin::Heading-->

                                <!--end::Heading-->

                                <!--begin::Carousel-->
                                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                                            <span class="text-primary fs-2" style="font-weight: 700">인기 강의 Top 9</span></a>
                                    </li>
                                </ul>
                                <div class="carousel-inner pt-8 rounded bg-light-info
                                    border-primary px-7 py-7 tab-content" id="myTabContent">
                                    <!--begin::Item-->
                                    <div class="carousel-item active">
                                        <div style="display: flex;">
                                            <div id="rank_container" class="row g-5 g-xxl-8">
                                                <c:forEach var="rank" items="${rank}" varStatus="status" begin="0"
                                                           end="2">
                                                    <div class="col-md-4 col-xxl-4 col-lg-12">
                                                        <!--begin::Card-->
                                                        <div class="card shadow-none">
                                                            <div class="card-body p-0 overlay overlay-wrapper">
                                                                <!--begin::Image-->
                                                                <div class="overlay-wrapper overflow-hidden" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
                                                                    <div class="overlay-wrapper bg-light text-center">
                                                                        <img src="/uimg/${rank.img}" alt="" class="mw-100"/>
                                                                    </div>
                                                                    <div class="overlay-layer clickable-div" style="border-radius: 10px; display: flex; flex-direction: column;">
                                                                        <div class="text-start text-white" style="text-align: left">
                                                                            <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}" class="text-start fs-4 text-white text-hover-white" style="font-weight: 700">${rank.title}</a>
                                                                        </div>
                                                                        <div class="text-end px-3" style="display: flex; flex-direction: column; align-items: flex-end; text-align: end">
                                                                            <ul class="icon-tray">
                                                                                <li>
                                                                                    <a href="/lecture/orderthis?id=${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="바로구매">
                                                                                        <img src="/img/buy.png" style="width: 10%; align-self: flex-end;" />
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="cart_btn" id="cart_btn_${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="카트담기">
                                                                                        <img src="/img/cart.png" style="width: 10%; align-self: flex-end;">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="curri_btn" id="curri_btn_${rank.id}">
                                                                                        <img src="/img/heart.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="내 커리큘럼 추가">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}">
                                                                                        <img src="/img/view.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="상세보기">
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--end::Image-->
                                                                <!--begin::Details-->
                                                                <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}"
                                                                       class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${rank.title}</a>
                                                                    <span class="fs-6">${rank.teacher}<br>
                                                <c:choose>
                                                    <c:when test="${rank.discRate == 0}">
                                                        <span class="text-gray-800 fw-bold fs-6">
                                                        <fmt:formatNumber value="${rank.price}" type="number"
                                                                          pattern="###,###원"/>
                                                            </span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span style="font-size:smaller;text-decoration: line-through;"><fmt:formatNumber
                                                                value="${rank.price}" type="number"
                                                                pattern="###,###원"/></span>
                                                        <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                value="${rank.price * (100 - rank.discRate)/100}"
                                                                type="number" pattern="###,###원"/><span
                                                                class="badge badge-light-danger">sale</span></span>
                                                            </c:otherwise>
                                                </c:choose>
                                                <br><span class="badge badge-light-primary">누적수강생 ${rank.hit}명</span>
                                                    <br><span><img src="/img/rating.png"
                                                                   style="width:7%; height:7%;"> ${rank.rating} (${rank.cnt})</span>
                                                                </div>
                                                                <!--end::Details-->
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->

                                                        <!--Cart Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"
                                                             id="cart_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="cart_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/cart?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Cart Modal End-->
                                                        <!--Curri Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"id="curri_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="curri_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/curri?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Curri Modal End-->

                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Item-->

                                    <!--begin::Item-->
                                    <div class="carousel-item ">
                                        <div style="display: flex;">
                                            <div id="rank_container2" class="row g-5 g-xxl-8 ">
                                                <c:forEach var="rank" items="${rank}" varStatus="status" begin="3"
                                                           end="5">
                                                    <div class="col-md-4 col-xxl-4 col-lg-12 ">
                                                        <!--begin::Card-->
                                                        <div class="card shadow-none">
                                                            <div class="card-body p-0 overlay overlay-wrapper">
                                                                <!--begin::Image-->
                                                                <div class="overlay-wrapper overflow-hidden" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
                                                                    <div class="overlay-wrapper bg-light text-center">
                                                                        <img src="/uimg/${rank.img}" alt="" class="mw-100"/>
                                                                    </div>
                                                                    <div class="overlay-layer clickable-div" style="border-radius: 10px; display: flex; flex-direction: column;">
                                                                        <div class="text-start text-white" style="text-align: left">
                                                                            <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}" class="text-start fs-4 text-white text-hover-white" style="font-weight: 700">${rank.title}</a>
                                                                        </div>
                                                                        <div class="text-end px-3" style="display: flex; flex-direction: column; align-items: flex-end; text-align: end">
                                                                            <ul class="icon-tray">
                                                                                <li>
                                                                                    <a href="/lecture/orderthis?id=${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="바로구매">
                                                                                        <img src="/img/buy.png" style="width: 10%; align-self: flex-end;" />
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="cart_btn" id="cart_btn_${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="카트담기">
                                                                                        <img src="/img/cart.png" style="width: 10%; align-self: flex-end;">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="curri_btn" id="curri_btn_${rank.id}">
                                                                                        <img src="/img/heart.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="내 커리큘럼 추가">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}">
                                                                                        <img src="/img/view.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="상세보기">

                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--end::Image-->
                                                                <!--begin::Details-->
                                                                <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}"
                                                                       class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${rank.title}</a>
                                                                    <span class="fs-6">${rank.teacher}<br>
                                                <c:choose>
                                                    <c:when test="${rank.discRate == 0}">
                                                        <span class="text-gray-800 fw-bold fs-6">
                                                        <fmt:formatNumber value="${rank.price}" type="number"
                                                                          pattern="###,###원"/>
                                                            </span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span style="font-size:smaller;text-decoration: line-through;"><fmt:formatNumber
                                                                value="${rank.price}" type="number"
                                                                pattern="###,###원"/></span>
                                                        <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                value="${rank.price * (100 - rank.discRate)/100}"
                                                                type="number" pattern="###,###원"/><span
                                                                class="badge badge-light-danger">sale</span></span>
                                                            </c:otherwise>
                                                </c:choose>
                                                <br><span class="badge badge-light-primary">누적수강생 ${rank.hit}명</span>
                                                    <br><span><img src="/img/rating.png"
                                                                   style="width:7%; height:7%;"> ${rank.rating} (${rank.cnt})</span>
                                                                </div>


                                                                <!--end::Details-->
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->
                                                        <!--Cart Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"
                                                             id="cart_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 5% 5% 3% 5%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="cart_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/cart?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Modal End-->
                                                        <!--Curri Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"id="curri_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="curri_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/curri?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Curri Modal End-->
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="carousel-item">
                                        <div style="display: flex;">
                                            <div id="rank_container3" class="row g-5 g-xxl-8">
                                                <c:forEach var="rank" items="${rank}" varStatus="status" begin="6"
                                                           end="8">
                                                    <div class="col-md-4 col-xxl-4 col-lg-12">
                                                        <!--begin::Card-->
                                                        <div class="card shadow-none">
                                                            <div class="card-body p-0 overlay overlay-wrapper">
                                                                <!--begin::Image-->
                                                                <div class="overlay-wrapper overflow-hidden" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
                                                                    <div class="overlay-wrapper bg-light text-center">
                                                                        <img src="/uimg/${rank.img}" alt="" class="mw-100"/>
                                                                    </div>
                                                                    <div class="overlay-layer clickable-div" style="border-radius: 10px; display: flex; flex-direction: column;">
                                                                        <div class="text-start text-white" style="text-align: left">
                                                                            <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}" class="text-start fs-4 text-white text-hover-white" style="font-weight: 700">${rank.title}</a>
                                                                        </div>
                                                                        <div class="text-end px-3" style="display: flex; flex-direction: column; align-items: flex-end; text-align: end">
                                                                            <ul class="icon-tray">
                                                                                <li>
                                                                                    <a href="/lecture/orderthis?id=${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="바로구매">
                                                                                        <img src="/img/buy.png" style="width: 10%; align-self: flex-end;" />
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="cart_btn" id="cart_btn_${rank.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="카트담기">
                                                                                        <img src="/img/cart.png" style="width: 10%; align-self: flex-end;">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="javascript:void(0)" class="curri_btn" id="curri_btn_${rank.id}">
                                                                                        <img src="/img/heart.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="내 커리큘럼 추가">
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}">
                                                                                        <img src="/img/view.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="상세보기">
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--end::Image-->
                                                                <!--begin::Details-->
                                                                <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                                                    <a href="/lecture/detail?id=${rank.id}&&stdnId=${loginStdn.id}"
                                                                       class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${rank.title}</a>
                                                                    <span class="fs-6">${rank.teacher}<br>
                                                <c:choose>
                                                    <c:when test="${rank.discRate == 0}">
                                                        <span class="text-gray-800 fw-bold fs-6">
                                                        <fmt:formatNumber value="${rank.price}" type="number"
                                                                          pattern="###,###원"/>
                                                            </span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span style="font-size:smaller;text-decoration: line-through;"><fmt:formatNumber
                                                                value="${rank.price}" type="number"
                                                                pattern="###,###원"/></span>
                                                        <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                value="${rank.price * (100 - rank.discRate)/100}"
                                                                type="number" pattern="###,###원"/><span
                                                                class="badge badge-light-danger">sale</span></span>
                                                            </c:otherwise>
                                                </c:choose>
                                                <br><span class="badge badge-light-primary">누적수강생 ${rank.hit}명</span>
                                                    <br><span><img src="/img/rating.png"
                                                                   style="width:7%; height:7%;"> ${rank.rating} (${rank.cnt})</span>
                                                                </div>
                                                                <!--end::Details-->
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->
                                                        <!--Cart Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"
                                                             id="cart_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 5% 5% 3% 5%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="cart_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/cart?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Modal End-->
                                                        <!--Curri Modal-->
                                                        <div class="modal fade modal_rank" tabindex="-1"id="curri_modal_${rank.id}">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                                    <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                        <div class="text-start" style="width: 50%;">
                                                                            <p id="curri_msg_${rank.id}" style="font-weight:700"></p>
                                                                        </div>
                                                                        <div class="text-end" style="width: 40%;">
                                                                            <a href="/lecture/curri?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                                        </div>
                                                                        <div class="text-end" style="width: 10%;">
                                                                            <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Curri Modal End-->
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Item-->
                                </div>
                                <!--end::Carousel-->
                                <div class="d-flex flex-wrap" style="justify-content: center; align-items: center">
                                    <ol class="p-0 m-0 carousel-indicators carousel-indicators-bullet carousel-indicators-active-primary">
                                        <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="0"
                                            class="ms-1 active"></li>
                                        <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="1"
                                            class="ms-1"></li>
                                        <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="2"
                                            class="ms-1"></li>
                                    </ol>
                                    <!--end::Carousel Indicators-->
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">View All</a>
                        </div>
                        <div id="lec_container" class="row g-5 g-xxl-8">
                            <!--begin::Product-->
                            <c:forEach var="obj" items="${cpage.getList()}">
                                <div class="col-md-4 col-xxl-4 col-lg-12">
                                    <!--begin::Card-->
                                    <div class="card shadow-none">
                                        <div class="card-body p-0 overlay overlay-wrapper">
                                            <!--begin::Image-->
                                            <div class="overlay-wrapper overflow-hidden" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
                                                <div class="overlay-wrapper bg-light text-center">
                                                    <img src="/uimg/${obj.img}" alt="" class="mw-100"/>
                                                </div>
                                                <div class="overlay-layer clickable-div" style="border-radius: 10px; display: flex; flex-direction: column;">
                                                    <div class="text-start text-white" style="text-align: left">
                                                        <a href="/lecture/detail?id=${obj.id}&&stdnId=${loginStdn.id}" class="text-start fs-4 text-white text-hover-white" style="font-weight: 700">${obj.title}</a>
                                                    </div>
                                                    <div class="text-end px-3" style="display: flex; flex-direction: column; align-items: flex-end; text-align: end">
                                                        <ul class="icon-tray">
                                                            <li>
                                                                <a href="/lecture/orderthis?id=${obj.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="바로구매">
                                                                    <img src="/img/buy.png" style="width: 10%; align-self: flex-end;" />
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:void(0)" class="cart_btn" id="cart_btn_${obj.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="카트담기">
                                                                    <img src="/img/cart.png" style="width: 10%; align-self: flex-end;">
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:void(0)" class="curri_btn" id="curri_btn_${obj.id}">
                                                                    <img src="/img/heart.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="내 커리큘럼 추가">
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="/lecture/detail?id=${obj.id}&&stdnId=${loginStdn.id}">
                                                                    <img src="/img/view.png" style="width:10%; align-self: flex-end;" data-bs-toggle="tooltip" data-bs-placement="left" title="상세보기">
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end::Image-->
                                            <!--begin::Details-->
                                            <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                                <a href="/lecture/detail?id=${obj.id}&&stdnId=${loginStdn.id}"
                                                   class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${obj.title}</a>
                                                <span class="fs-6">${obj.teacher}<br>
                                                <c:choose>
                                                    <c:when test="${obj.discRate == 0}">
                                                        <span class="text-gray-800 fw-bold fs-6">
                                                        <fmt:formatNumber value="${obj.price}" type="number"
                                                                          pattern="###,###원"/>
                                                            </span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span style="font-size:smaller;text-decoration: line-through;"><fmt:formatNumber
                                                                value="${obj.price}" type="number"
                                                                pattern="###,###원"/></span>
                                                        <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                value="${obj.price * (100 - obj.discRate)/100}"
                                                                type="number" pattern="###,###원"/><span
                                                                class="badge badge-light-danger">sale</span></span>
                                                            </c:otherwise>
                                                </c:choose>
                                                <br><span class="badge badge-light-primary">누적수강생 ${obj.hit}명</span>
                                                    <br><span><img src="/img/rating.png"
                                                                   style="width:7%; height:7%;"> ${obj.rating} (${obj.cnt})</span>
                                            </div>


                                            <!--end::Details-->
                                        </div>
                                    </div>
                                    <!--end::Card-->
                                    <!--Cart Modal-->
                                    <div class="modal fade modal_body" tabindex="-1"
                                         id="cart_modal_${obj.id}">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="padding: 5% 5% 3% 5%; text-align:center;">
                                                <div class="modal-body" style="display: flex; justify-content: space-between">
                                                    <div class="text-start" style="width: 50%;">
                                                        <p id="cart_msg_${obj.id}" style="font-weight:700"></p>
                                                    </div>
                                                    <div class="text-end" style="width: 40%;">
                                                        <a href="/lecture/cart?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                    </div>
                                                    <div class="text-end" style="width: 10%;">
                                                        <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Modal End-->
                                    <!--Curri Modal-->
                                    <div class="modal fade modal_body" tabindex="-1"id="curri_modal_${obj.id}">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                <div class="modal-body" style="display: flex; justify-content: space-between">
                                                    <div class="text-start" style="width: 50%;">
                                                        <p id="curri_msg_${obj.id}" style="font-weight:700"></p>
                                                    </div>
                                                    <div class="text-end" style="width: 40%;">
                                                        <a href="/lecture/curri?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                    </div>
                                                    <div class="text-end" style="width: 10%;">
                                                        <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Curri Modal End-->
                                </div>
                            </c:forEach>
                        </div>
                        <jsp:include page="../page.jsp"/>
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