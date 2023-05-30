<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
    let cart = {
        init: function () {
            $('#del_lecs_btn').click(function () {
                cart.send();
            });

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

                $('#sum_cnt').text(cnt);
                $('#sum_price').text('KRW' + price);
                $('#sum_disc').text('KRW' + disc);
                $('#sum_order').text('KRW' + order);
            });

            $('input[type="checkbox"]:checked').not('#all_select').each(function() {
                cnt += 1;
                price += parseInt($(this).data('price'));
                disc += parseInt($(this).data('disc'));
                order += parseInt($(this).data('order'));
            });

            $('#sum_cnt').text(cnt);
            $('#sum_price').text('KRW' + price);
            $('#sum_disc').text('KRW' + disc);
            $('#sum_order').text('KRW' + order);


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

                $('#sum_cnt').text(cnt + '(selected)');
                $('#sum_price').text('KRW' + price);
                $('#sum_disc').text('KRW' + disc);
                $('#sum_order').text('KRW' + order);

            });


            <%--$('.curri_btn').on('click', function () {--%>
            <%--    let stdnId = '${loginStdn.id}';--%>
            <%--    let lecId = $(this).prop('id').substring(10);--%>
            <%--    let curriModal = $('#curri_modal_' + lecId);--%>

            <%--    $.ajax({--%>
            <%--        url: '/curriimpl',--%>
            <%--        data: { stdnId: stdnId, lecId: lecId },--%>
            <%--        success: function (result) {--%>
            <%--            if (result === 0) {--%>
            <%--                alert("whyrano");--%>
            <%--                let modal = new bootstrap.Modal(curriModal);--%>
            <%--                $('#curri_msg_' + lecId).html('Sorry, Already in Your Curriculum!');--%>
            <%--                modal.show()--%>
            <%--                alert("ohno");--%>
            <%--            } else if (result === 1) {--%>
            <%--                alert("whyrano");--%>
            <%--                let modal = new bootstrap.Modal(curriModal);--%>
            <%--                $('#curri_msg_' + lecId).html('Added to Your Curriculum!');--%>
            <%--                modal.show()--%>
            <%--                alert("ohno");--%>
            <%--            }--%>
            <%--        }--%>
            <%--    });--%>
            <%--});--%>
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
        }
    }
    $(function () {
        cart.init();
    })

</script>


<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">My Cart</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">View All Course</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Course List</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Curriculum</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">My Cart</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Inbox-->
            <div class="d-flex flex-column flex-lg-row">

                <!--begin::List-->
                <div class="flex-lg-row-fluid ms-lg-12 d-block" id="kt_inbox_list">
                    <!--begin::Card-->
                    <div class="card mt-10 mt-lg-0" style="margin-right: 10px;">
                        <!--begin::Header-->
                        <div class="card-header align-items-center card-px">
                            <!--begin::Toolbar-->
                            <div class="d-flex align-items-center">
                                <div class="form-check form-check-sm form-check-custom form-check-solid me-4 my-2"
                                     data-inbox="group-select">
                                    <input class="form-check-input" type="checkbox" id="all_select"
                                           data-bs-toggle="tooltip" title="Select All" selected/>
                                </div>
                                <div class="d-flex align-items-center me-1 my-2">
                                    <a href="#" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                       data-bs-toggle="tooltip" title="Add Selected Courses My Curriculum">
                                        <i class="fas fa-heart fs-6"></i>
                                    </a>
                                    <button id="del_lecs_btn" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                       data-bs-toggle="tooltip" title="Delete Selected Courses">
                                        <i class="fas fa-trash fs-6"></i>
                                    </button>
                                </div>
                            </div>
                            <!--end::Toolbar-->
                            <!--begin::Pagination-->
                            <div class="d-flex align-items-center justify-content-sm-end text-end my-2">
                                <!--begin::Per Page Dropdown-->
                                <div class="d-flex align-items-center me-2">
                                    <span class="text-muted fw-semibold me-2">Total ${cnt} </span>
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
                                                           name="del_lecs" data-price="${obj.lecPrice}" checked/>
                                                </div>
                                                <button class="btn btn-icon btn-active-light-primary btn-sm me-2 curri_btn"
                                                   data-bs-toggle="tooltip" title="Add to My Curriculum" id="curri_btn_${obj.lecId}">
                                                    <i class="fas fa-heart fs-6"></i>
                                                </button>
                                                <a href="/lecture/cartdelete?id=${obj.id}" class="btn btn-icon btn-active-light-primary btn-sm me-2"
                                                   data-bs-toggle="tooltip" title="Delete">
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
                                                <span class="text-gray-600">${obj.lecTeacher} | ${obj.lecTopic} | ${obj.lecTitle}</span>
                                            </div>
                                            <div class="mt-2">
<%--                                                <span class="badge badge-light-primary me-1">inbox</span>--%>
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
                                                    <fmt:formatNumber value="${obj.lecPrice}" type="number" pattern="KRW###,###"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="mt-2">
                                                        <span class="text-danger">${obj.lecDiscRate}%</span>
                                                        <span  class="text-muted" style="text-decoration: line-through; font-size: smaller"><fmt:formatNumber value="${obj.lecPrice}" type="number" pattern="KRW###,###"/></span>
                                                    </div>
                                                    <div class="mt-2">
                                                        <fmt:formatNumber value="${obj.lecPrice * (100 - obj.lecDiscRate)/100}" type="number" pattern="KRW###,###"/>
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
                                <div class="modal fade" tabindex="-1" id="curri_modal_${obj.id}">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">${obj.lecTitle}</h3>

                                                <!--begin::Close-->
                                                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                                                    <span class="svg-icon svg-icon-1"></span>
                                                </div>
                                                <!--end::Close-->
                                            </div>

                                            <div class="modal-body">
                                                <img src="/assets/media/products/${obj.lecImg}" alt="" class="mw-100"/>
                                                <a href="/lecture/detail?id=${obj.lecId}"
                                                   class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${obj.lecTitle}</a>
                                                <span class="fs-6">${obj.lecTeacher}<br>
                                                        ${obj.lecPrice}</span>
                                                <p id="curri_msg_${obj.id}"></p>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">CONTINUE</button>
                                                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-primary">Go MY CURRICULUM</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Modal End-->
                            <!--end::Items-->
                            </c:forEach>
                            </form>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::List-->
                <!--begin::Aside-->
                <div class="flex-lg-row-auto w-lg-275px w-xxl-375px" id="kt_inbox_aside">
                    <!--begin::Item-->
                    <div class="card">
                        <!--begin::Head-->
                        <div class="card-header card-header-stretch">
                            <div class="d-flex align-items-center">
                                <span class="fs-1 fw-bold me-3">Total Price</span>
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
                                                <div class="text-muted fw-bold">Selected Item Price</div>
                                                <div class="text-muted fs-7 fw-bold text-end" id="sum_price"></div>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="text-danger fw-bold">Discounted Price</div>
                                                <div class="text-danger fs-7 fw-bold text-end" id="sum_disc"></div>
                                            </div>
                                            <div class="separator separator-dashed my-10"></div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="text-primary fw-bold">Order Price</div>
                                                <div class="text-primary fs-7 fw-bold text-end" id="sum_order"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Item-->
                                </div>
                            </div>
                            <!--end::Inbox Aside-->
                            <div class="d-flex flex-stack px-9 mt-3 mb-10">
                                <button class="btn btn-flex btn-primary form-control" style="display: flex; justify-content: center; align-items: center;" id="ord_btn">ORDER</button>
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
