<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
    let cart = {
        init: function () {

            $('.curri_btn').click(function(){
                let self = this;
                cart.curri(self);
            });

            $('#del_lecs_btn').click(function () {
                cart.send();
            });

            $('#curris_btn').click(function(){
                cart.curris();
            })

            $('#ord_btn').click(function () {
                cart.place_ord();
            });


            let cnt = 0;
            let price = 0;
            let disc = 0;
            let order = 0;

            $('#all_select').change(function() {
                var all = $(this).is(':checked');
                $('input[type="checkbox"]').not(this).prop('checked', all).trigger('change');
                cnt = 0;
                price = 0;
                disc = 0;
                order = 0;

                $('input[type="checkbox"]:checked').not(this).each(function() {
                    cnt += 1;
                    price += parseInt($(this).data('price'));
                    disc += parseInt($(this).data('disc'));
                    order += parseInt($(this).data('order'));
                });

                $('#sum_cnt').text(cnt + '개의 강의');
                $('#sum_price').text('₩' + price);
                $('#sum_disc').text('₩' + disc);
                $('#sum_order').text('₩' + order);
            });

            $('input[type="checkbox"]:checked').not('#all_select').each(function() {
                cnt += 1;
                price += parseInt($(this).data('price'));
                disc += parseInt($(this).data('disc'));
                order += parseInt($(this).data('order'));
            });

            function numberWithCommas(number) {
                return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            };

            let fommattedPrice = numberWithCommas(price);
            let fommattedDisc = numberWithCommas(price);
            let fommattedOrder = numberWithCommas(price);

            $('#sum_cnt').text(cnt + '개의 강의');
            $('#sum_price').text('₩' + fommattedPrice);
            $('#sum_disc').text('₩' + fommattedDisc);
            $('#sum_order').text('₩' + fommattedOrder);


            $('input[type="checkbox"]').not('#all_select').change(function () {

                cnt = 0;
                price = 0;
                disc = 0;
                order = 0;

                $('input[type="checkbox"]:checked').each(function() {
                    cnt += 1;
                    price += parseInt($(this).data('price'));
                    disc += parseInt($(this).data('disc'));
                    order += parseInt($(this).data('order'));
                });

                $('#sum_cnt').text(cnt + '개의 강의');
                $('#sum_price').text('₩' + price);
                $('#sum_disc').text('₩' + disc);
                $('#sum_order').text('₩' + order);

            });

        },
        send: function(){
            let deletes = new Array();
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                deletes.push(this.id);
            });
            $('input.name').val(deletes);

            $('#cart_del_form').attr({
                'action': '/lecture/deleteimpl',
                'method': 'post'
            });

            $('#cart_del_form').submit();
        },

        place_ord: function(){
            let ord = new Array();
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                ord.push(this.id);
            });
            $('input.name').val(ord);

            $('#cart_del_form').attr({
                'action': '/lecture/order',
                'method': 'post'
            });

            $('#cart_del_form').submit();
        },

        curri: function(element) {
            event.preventDefault();

            let stdnId = '${loginStdn.id}';
            let lecId = $(element).data('value');
            let curriModal = $('#curri_modal_' + lecId);

            $.ajax({
                url: '/curriimpl',
                data: {stdnId: stdnId, lecId: lecId},
                success: function (result) {
                    if (result === 0) {
                        let modal = new bootstrap.Modal(curriModal);
                        $('#curri_msg_' + lecId).html('이미 커리큘럼에 있는 강의입니다.');
                        modal.show();
                    } else if (result === 1) {
                        let modal = new bootstrap.Modal(curriModal);
                        $('#curri_msg_' + lecId).html('강의가 커리큘럼에 추가되었습니다.');
                        modal.show();
                    }
                }
            });
        },

        curris: function(){
            event.preventDefault();
            let stdnId = '${loginStdn.id}';
            let curri_lecs = new Array();
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                curri_lecs.push($(this).data('lec'));
            });
            let curriModal = $('#curris_modal');
            let curri_length=curri_lecs.length;
            $.ajax({
                url: '/currilecsimpl',
                data: {stdnId:stdnId, curri_lecs:curri_lecs},
                traditional: true,
                success: function(result){
                    if(result === 0){
                        let modal = new bootstrap.Modal(curriModal);
                        $('#curris_msg').html('선택하신 강의들이 커리큘럼에 추가되었습니다.');
                        modal.show();
                    } else {
                        let modal = new bootstrap.Modal(curriModal);
                        let cnt = curri_length - result;
                        $('#curris_msg').html('선택하신 강의 중 이미 커리큘럼에 있던<br>'+result+'개의 강의에 더하여 '+cnt+'개의 강의가 추가되었습니다!');
                        modal.show();
                    }
                }
            })

        },

    }
    $(function () {
        cart.init();
    })

</script>


<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">장바구니</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-33">장바구니</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl" style="display: flex;">
            <!--begin::Inbox-->
            <div class="d-flex flex-column flex-lg-row" >
                <!--begin::List-->
                <div class="flex-lg-row-fluid d-block  w-lg-450px w-xxl-900px" id="kt_inbox_list">
                    <!--begin::Card-->
                    <div class="card mt-10 mt-lg-0" style="margin-right: 10px;">
                        <!--begin::Header-->
                        <div class="card-header align-items-center card-px">
                            <!--begin::Toolbar-->
                            <div class="d-flex align-items-center">
                                <div class="form-check form-check-sm form-check-custom form-check-solid me-4 my-2"
                                     data-inbox="group-select">
                                    <input class="form-check-input" type="checkbox" id="all_select"
                                           data-bs-toggle="tooltip" title="전체 선택" selected/>
                                </div>
                                <div class="d-flex align-items-center me-1 my-2">
                                    <a href="javascript:void(0)"  id="curris_btn" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                       data-bs-toggle="tooltip" title="선택한 강의 커리큘럼 추가">
                                        <i class="fas fa-heart fs-6"></i>
                                    </a>
                                    <button id="del_lecs_btn" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                            data-bs-toggle="tooltip" title="선택한 강의 장바구니 삭제">
                                        <i class="fas fa-trash fs-6"></i>
                                    </button>
                                </div>
                            </div>
                            <!--end::Toolbar-->
                            <!--begin::Pagination-->
                            <div class="d-flex align-items-center justify-content-sm-end text-end my-2">
                                <!--begin::Per Page Dropdown-->
                                <div class="d-flex align-items-center me-2">
                                    <span class="text-muted fw-semibold me-2">총 ${cnt}개의 강의</span>
                                </div>
                                <!--end::Per Page Dropdown-->
                            </div>
                            <!--end::Pagination-->
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body px-0 overflow-auto">
                            <form id="cart_del_form">
                                <c:forEach var="obj" items="${cart}">
                                    <!--begin::Items-->
                                    <div class="min-w-700px" data-inbox="list">
                                        <!--begin::Item-->
                                        <div class="d-flex align-items-start bg-hover-light card-px py-3" data-inbox="message">
                                            <!--begin::Toolbar-->
                                            <div class="d-flex align-items-center">
                                                <!--begin::Actions-->
                                                <div class="d-flex align-items-center me-3" data-inbox="actions">
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                                        <input class="form-check-input"
                                                               id="${obj.id}" value="${obj.id}"type="checkbox" data-order="${obj.lecPrice * (100 - obj.lecDiscRate)/100}"
                                                               data-disc="${( obj.lecPrice * obj.lecDiscRate ) / 100}"
                                                               name="del_lecs" data-price="${obj.lecPrice}" data-lec="${obj.lecId}"checked/>
                                                    </div>
                                                    <button class="btn btn-icon btn-active-light-primary btn-sm me-2 curri_btn"
                                                            data-bs-toggle="tooltip" title="커리큘럼 추가" id="curri_btn_${obj.lecId}" data-value="${obj.lecId}">
                                                        <i class="fas fa-heart fs-6"></i>
                                                    </button>
                                                    <a href="/lecture/cartdelete?id=${obj.id}" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                                       data-bs-toggle="tooltip" title="장바구니 삭제">
                                                        <i class="fas fa-trash fs-6"></i>
                                                    </a>
                                                </div>
                                                <!--end::Actions-->
                                                <!--begin::Author-->
                                                <div class="d-flex align-items-center flex-wrap me-3"
                                                     data-bs-toggle="view" style="margin-left: 3px;">
                                                    <!--begin::Symbol-->
                                                    <div class="symbol symbol-100px me-4">
                                                                        <span class="symbol-label bg-light">
                                                                            <img src="/uimg/${obj.lecImg}"
                                                                                 class="h-75 align-self-center" alt=""/>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <!--end::Author-->
                                            </div>
                                            <!--end::Toolbar-->
                                            <!--begin::Info-->
                                            <div class="flex-grow-1 mt-2 me-2" data-bs-toggle="view">
                                                <div>
                                                    <span class="fw-bold fs-6 me-2">${obj.lecTitle}</span>
                                                </div>
                                                <div class="mt-2">
                                                    <span class="text-gray-600">${obj.lecTeacher} | ${obj.lecTitle}</span>
                                                </div>
                                                <div class="mt-2">
                                                    <c:choose>
                                                        <c:when test="${obj.lecDiscRate != 0}">
                                                            <span class="badge badge-light-danger">sale</span>
                                                        </c:when>
                                                    </c:choose>
                                                </div>
                                            </div>
                                            <!--end::Info-->
                                            <!--begin::Datetime-->
                                            <div class="mt-2 me-3 fw-bold w-150px text-end" data-bs-toggle="view" style="font-size: small;">
                                                <c:choose>
                                                    <c:when test="${obj.lecDiscRate == 0}">
                                                        <fmt:formatNumber value="${obj.lecPrice}" type="number" pattern="₩###,###"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="mt-2">
                                                            <span class="text-danger">${obj.lecDiscRate}%</span>
                                                            <span  class="text-muted" style="text-decoration: line-through; font-size: smaller"><fmt:formatNumber value="${obj.lecPrice}" type="number" pattern="₩###,###"/></span>
                                                        </div>
                                                        <div class="mt-2">
                                                            <fmt:formatNumber value="${obj.lecPrice * (100 - obj.lecDiscRate)/100}" type="number" pattern="₩###,###"/>
                                                        </div>
                                                    </c:otherwise>
                                                </c:choose>
                                                <div class="mt-2">
                                                    <a href="/lecture/orderthis?id=${obj.lecId}"><img src="/assets/media/icons/duotune/finance/fin002.svg" data-bs-toggle="tooltip" title="Order this Course"/></a>
                                                </div>
                                            </div>
                                            <!--end::Datetime-->
                                        </div>
                                        <!--end::Item-->
                                    </div>


                                    <!--Curri Modal-->
                                    <div class="modal fade modal_body" tabindex="-1"id="curri_modal_${obj.lecId}">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                <div class="modal-body" style="display: flex; justify-content: space-between">
                                                    <div class="text-start" style="width: 50%;">
                                                        <p id="curri_msg_${obj.lecId}" style="font-weight:700"></p>
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

                                    <!--Curris Modal-->
                                    <div class="modal fade modal_body" tabindex="-1"id="curris_modal">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                <div class="modal-body" style="display: flex; justify-content: space-between">
                                                    <div class="text-start" style="width: 70%;">
                                                        <p id="curris_msg" style="font-weight:700"></p>
                                                    </div>
                                                    <div class="text-end" style="width: 20%;">
                                                        <a href="/lecture/curri?id=${loginStdn.id}" style="font-weight: bold;">보러가기</a>
                                                    </div>
                                                    <div class="text-end" style="width: 10%;">
                                                        <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Curris Modal End-->


                                </c:forEach>
                            </form>
                            <c:choose>
                                <c:when test="${cnt == 0}">
                                    <div style="text-align: center; padding: 11% 0 11.5% 0;">
                                        <span style="font-weight: 700">장바구니에 담긴 강의가 없습니다.</span><br>
                                    나를 성장 시켜줄 좋은 지식들을 찾아보세요.</div>
                                </c:when>
                            </c:choose>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::List-->
                <!--begin::Aside-->
                <div class="flex-lg-row-auto w-lg-250px w-xxl-325px" id="kt_inbox_aside">
                    <!--begin::Item-->
                    <div class="card">
                        <!--begin::Head-->
                        <div class="card-header card-header-stretch">
                            <div class="d-flex align-items-center">
                                <span class="fs-1 fw-bold me-3 text-center">주문금액</span>
                                <span class="badge badge badge-light text-muted fs-7 fw-bold rounded py-2 px-3" id="sum_cnt"></span>
                            </div>
                        </div>
                        <!--begin::Head-->
                        <!--begin::Body-->
                        <div class="card-body px-0 pb-0">
                            <!--begin::Inbox Aside-->
                            <div class="overflow-auto">
                                <div data-action="list" class="mh-300px mh-lg-unset">
                                    <!--begin::Item-->
                                    <div class="bg-state-light active px-9 py-8 d-flex" data-action="list">
                                        <div class="d-flex flex-row-fluid flex-column">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="text-muted fw-bold">선택 강의 금액</div>
                                                <div class="text-muted fs-7 fw-bold text-end" id="sum_price"></div>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="text-danger fw-bold">할인 금액</div>
                                                <div class="text-danger fs-7 fw-bold text-end" id="sum_disc"></div>
                                            </div>
                                            <div class="separator separator-dashed my-10"></div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="text-primary fw-bold">총 주문 금액</div>
                                                <div class="text-primary fs-7 fw-bold text-end" id="sum_order"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Item-->
                                </div>
                            </div>
                            <!--end::Inbox Aside-->
                            <div class="d-flex flex-stack px-9 mt-3 mb-10">
                                <button class="btn btn-flex btn-primary form-control" style="display: flex; justify-content: center; align-items: center;" id="ord_btn">수강 신청</button>
                            </div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::Aside-->
            </div>
            <!--end::Inbox-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->