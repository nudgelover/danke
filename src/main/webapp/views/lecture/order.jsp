<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!--PortOne Payment API-->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>


<style>
    ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    ul li {
        display: inline;
        margin-right: 10px;
    }

    ul li img {
        width: 200px;
    }
</style>

<script>
    let order_selected = {
        init: function(){

            $('#pay_btn').attr('disabled', true);


            $('input[name="payment"]').change(function () {
                let payMethod = $('input[name="payment"]:checked').val();
                $('#payMethod').val(payMethod);

                let checkednum=$('input[name="payment"]:checked').length;
                if(checkednum==1){
                    $('#pay_btn').attr('disabled', false);
                }
            });

            let sum_disc = 0;
            $('.disc_price').each(function() {
                sum_disc += parseInt($(this).data('ord'));
            });

            function numberWithCommas(number) {
                return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            };

            let formattedPrice = numberWithCommas(sum_disc);
            $('#ord_price').html('₩' + formattedPrice);
            $('#ordPrice').val(sum_disc);
            $('#final_order').html('₩' + formattedPrice);

            let benefit_id = $('.modal-benefit').prop('id').substring(9);

            $('#modal_btn').click(function(){
                $('.modal-benefit').each(function () {
                    let percent = $(this).data('value');
                    if (percent <= 100) {
                        let modal_final = sum_disc * percent / 100;
                        let formatted_final = numberWithCommas(modal_final);
                        $(this).text('-₩'+formatted_final);
                        // let calFunction = $(this).data('cal');
                        // if (typeof calFunction === 'function') {
                        //     calFunction(modal_final);
                        // }
                    }
                });
            });


            $('#apply_btn').click(function(){
                let cpnId = $('input[type="radio"][name="cpnNo"]:checked').val();
                $('#cpnId').val(cpnId);

                let selected_cpn = $('input[type="radio"][name="cpnNo"]:checked').data('name');
                $('#selected_title').val(selected_cpn);

                let cpn_id=$('input[type="radio"][name="cpnNo"]:checked').val();
                let benefit_amount = $('#benefit_' + cpn_id).text();
                let total_amount = $('#ord_price').html().substring(1);
                //alert(total_amount);
                let int_total = total_amount.replace(/,/g, "");
                let benefit_trimmed = benefit_amount.replace(/,/g, "");
                let benefit_trim = benefit_trimmed.match(/\d+/g);
                let final_price = parseInt(int_total) - parseInt(benefit_trim);
                let formattedFinal = numberWithCommas(final_price);

                $('#benefit').text('');
                $('#final_price').text('');
                $('#final_order').html('');

                $('#benefit').text(benefit_amount);
                $('#final_price').text('₩' + formattedFinal);
                $('#final_order').html('₩' + formattedFinal);
                $('#useCpn').val(benefit_trim);
                $('#ordPrice').val(final_price);
                $('#my_coupon').modal('hide');
            });

            $('#pay_btn').click(function(){
                let pg='';
                let payMethod = $('input[name="payment"]:checked').val();
                if(payMethod==1){
                    pg='kcp';
                } else {
                    pg='kakaopay';
                }

                const IMP = window.IMP; // 생략 가능
                IMP.init("imp80384222"); // 예: imp00000000a
                //alert(${order.size()});
                let name='';
                let merchant_uid='DIGI'+ new Date().getTime();
                if(parseInt(${order.size()})==1){
                    name='${order[0].lecTitle}';
                } else {
                    name='${order[0].lecTitle} 외';
                }

                let orderModal = $('#order_modal');

                IMP.request_pay({
                    pg : pg,
                    pay_method : 'card',
                    merchant_uid: merchant_uid,
                    name : name,
                    amount : $('#final_order').html(),
                    buyer_email : '${loginStdn.email}',
                    buyer_name : '${loginStdn.name}',
                    buyer_tel: '${loginStdn.contact}'
                }, function (rsp) {
                    if (rsp.success) {
                        order_selected.send();
                    } else {
                        let modal = new bootstrap.Modal(orderModal);
                        $('#order_msg').html('결제실패: '+ rsp.error_msg);
                        modal.show();
                    }
                });
            });
        },
        send: function(){
            let lecIds = new Array();

            $('input[name="lecIds"]').each(function () {
                lecIds.push(this.value);
            });
            $('#lecId').val(lecIds);


            let discRates = new Array();

            $('input[name="discRates"]').each(function () {
                discRates.push(this.value);
            });
            $('#discRate').val(discRates);


            let prices = new Array();

            $('input[name="prices"]').each(function () {
                prices.push(this.value);
            });
            $('#price').val(prices);


            $('#pay_form').attr({
                'action': '/lecture/pay',
                'method': 'post'
            });

            $('#pay_form').submit();
        }
    };

    $(function () {
        order_selected.init();
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
                            <span class="fs-2x text-gray-800" style="font-weight: 900">주문결제</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
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
                    <div class="row justify-content-center pt-8 px-8 pt-md-20 px-md-0">
                        <div class="col-md-10">
                            <!-- begin: Invoice header-->
                            <div class="d-flex justify-content-between pb-10 pb-md-20 flex-column flex-md-row">
                                <h1 class="display-6 text-dark fw-bold mb-10">CHECKOUT</h1>
                                <div class="d-flex flex-column align-items-md-end px-0">
                                    <!--begin::Logo-->
                                    <a href="#" class="mb-5">
                                        <img src="/img/logo3.png" class="h-50px" alt="img"/>
                                    </a>
                                    <!--end::Logo-->
                                    <span class="d-flex flex-column align-items-md-end fs-7 fw-semibold text-muted">
															<span>서울특별시 성동구 아차산로 111 2층 (04794)</span>
															<span>TEL. 02-2163-5700</span>
														</span>
                                </div>
                            </div>
                            <div class="separator mt-3" style="border: solid 0.5px rgba(151,151,151,0.53);"></div>
                            <!--end: Invoice header-->
                            <!--begin: Invoice body-->
                            <div class="row border-bottom pb-10">
                                <div class="col-md-9 py-md-10 pe-md-10">
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-5 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    강의</th>
                                                <th class="pt-5 pb-10 text-end">강의 가격</th>
                                                <th class="pt-5 pb-10 text-end">강의 할인</th>
                                                <th class="pt-5 pb-10 text-end">주문 금액</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="obj" items="${order}">
                                                <tr>
                                                    <td class="fw-bold ps-0">
                                                        <div class="flex-grow-1 mt-2 me-2" data-bs-toggle="view" style="margin-left: 22px;">
                                                            <div>
                                                                <input type="hidden" class="lecId" id="lecId_${obj.lecId}" name="lecIds" value="${obj.lecId}">
                                                                <span class="fw-bold fs-6 me-2">${obj.lecTitle}</span>
                                                                <c:choose>
                                                                    <c:when test="${obj.lecDiscRate != 0}">
                                                                        <span class="badge badge-light-danger">sale</span>
                                                                    </c:when>
                                                                </c:choose>
                                                            </div>
                                                            <div class="mt-2">
                                                                <span class="text-gray-400">${obj.lecTeacher} | ${obj.lecTopic} </span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-end">
                                                        <input type="hidden" class="price" id="price_${obj.lecId}" name="prices" value="${obj.lecPrice}">
                                                        <fmt:formatNumber value="${obj.lecPrice}" type="number" pattern="₩###,###"/></td>
                                                    <td class="text-end text-danger" style="font-weight: 600">${obj.lecDiscRate}%</td>
                                                    <td class="pe-0 fs-6 fw-bold text-end disc_price" id="${obj.id}" data-ord="${obj.lecPrice * (100 - obj.lecDiscRate)/100}">
                                                        <input type="hidden" class="discRate" id="discRate_${obj.lecId}" name="discRates" value="${obj.lecDiscRate}">
                                                        <fmt:formatNumber value="${obj.lecPrice * (100 - obj.lecDiscRate)/100}" type="number" pattern="₩###,###"/></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-10 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    쿠폰</th>
                                                <th class="pt-5 pb-10 text-end"></th>
                                                <th class="pt-5 pb-10 text-end">쿠폰혜택</th>
                                                <th class="pt-5 pb-10 text-end">최종결제금액</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="text-end">
                                                    <div class="flex-container">
                                                        <input class="form-control form-control-lg form-control-solid" type="text"
                                                               style="width: fit-content(100%); margin-left: 35px" disabled id="selected_title"/>

                                                    </div>
                                                </td>
                                                <td class="text-end">
                                                    <div class="flex-container">
                                                        <button type="button" class="btn btn-light-primary fw-bold fs-6 me-3 px-6 my-1"
                                                                id="modal_btn"   data-bs-toggle="modal" data-bs-target="#my_coupon">
                                                            쿠폰 조회
                                                        </button>
                                                    </div>
                                                </td>
                                                <td class="text-end text-danger" style="font-weight: 600;" id="benefit"></td>
                                                <td class="pe-0 fs-6 fw-bold text-end" id="final_price"></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-10 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    결제</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="text-center">
                                                    <div>
                                                        <input type="radio" class="btn-check" name="payment" value="1" id="card"/>
                                                        <label class="btn btn-outline btn-outline-dashed btn-outline-info btn-active-light-info p-7 d-flex align-items-center mb-5" for="card" style="margin-left: 30%; margin-right: 30%;">
                                                            <span class="svg-icon svg-icon-4hx me-4 text-dark fs-2hx">
                                                                <svg width="30" height="30" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M22 7H2V11H22V7Z" fill="currentColor"/>
                                                                    <path opacity="0.3" d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19ZM14 14C14 13.4 13.6 13 13 13H5C4.4 13 4 13.4 4 14C4 14.6 4.4 15 5 15H13C13.6 15 14 14.6 14 14ZM16 15.5C16 16.3 16.7 17 17.5 17H18.5C19.3 17 20 16.3 20 15.5C20 14.7 19.3 14 18.5 14H17.5C16.7 14 16 14.7 16 15.5Z" fill="currentColor"/>
                                                                </svg>
                                                            </span>
                                                            <span class="d-block fw-semibold text-start">
                                                                <span class="text-dark fw-bold d-block fs-3">카드</span>
                                                            </span>
                                                        </label>
                                                        <input type="radio" class="btn-check" name="payment" value="2" id="kakao"/>
                                                        <label class="btn btn-outline btn-outline-dashed btn-outline-info btn-active-light-info p-7 d-flex align-items-center" for="kakao" style="margin-left: 30%; margin-right: 30%;">
                                                            <span class="svg-icon svg-icon-4x me-4">
                                                                <?xml version="1.0" encoding="utf-8"?>
                                                                    <svg version="1.1" id="레이어_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 143.6 44.2" style="enable-background:new 0 0 143.6 44.2;" xml:space="preserve">
                                                                        <style type="text/css">
                                                                        .st0{fill-rule:evenodd;clip-rule:evenodd;fill:black;}
                                                                        .st1{fill:black;}
                                                                        </style>
                                                                        <g>
                                                                            <g>
                                                                                <g>
                                                                                    <path class="st0" d="M21.9,0C9.8,0,0,7.8,0,17.3C0,23.5,4.1,28.9,10.2,32l-2.1,7.7c-0.1,0.2,0,0.5,0.2,0.7
                                                                                        c0.1,0.1,0.3,0.2,0.4,0.2c0.1,0,0.3-0.1,0.4-0.1l8.9-6c1.3,0.2,2.6,0.3,4,0.3c12.1,0,21.9-7.8,21.9-17.3C43.9,7.8,34.1,0,21.9,0z
                                                                                        "/>
                                                                                </g>
                                                                            </g>
                                                                            <path class="st1" d="M62.4,31.7v11.2h-8V1.6H60l1,2.6c1.7-1.7,4.3-3.5,8.4-3.5c7.8,0,11.5,5.8,11.5,15.3c0,9.9-5.7,16.2-13.9,16.2
                                                                            C65.4,32.3,64.2,32.2,62.4,31.7z M62.4,8.3v17.8c0.4,0.1,1.5,0.2,2.6,0.2c5.7,0,7.9-4,7.9-10.3c0-5.5-1.5-8.8-6-8.8
                                                                            C65.3,7.2,63.7,7.7,62.4,8.3z"/>
                                                                            <path class="st1" d="M98.2,13.3h4.5v-1c0-3.3-1.9-4.8-5.1-4.8c-2.5,0-5.6,0.7-8.2,2l-2.2-5.3c2.8-2,7.2-3.3,11.1-3.3
                                                                            c7.6,0,11.8,4,11.8,11.7v18.9h-5.6l-0.8-2.5c-3.2,2.3-6.2,3.3-8.8,3.3c-5.8,0-9.1-3.5-9.1-9.4C85.8,16.6,90.1,13.3,98.2,13.3z
                                                                             M102.7,23.8v-5.5h-3.7c-4.1,0-6.2,1.5-6.2,4.4c0,2.2,1.1,3.3,3.5,3.3C98.6,26.1,101.4,25,102.7,23.8z"/>
                                                                            <path class="st1" d="M134.3,28.4c-2.8,7.4-6.1,12.8-11,15.8l-4.9-4.5c2.8-2.5,4.9-4.9,6.6-8.1L114.4,2.7l7.9-2.1l6.8,23.4l6.7-23.5
                                                                            l7.8,2.2L134.3,28.4z"/>
                                                                        </g>
                                                                    </svg>
                                                                </span>
                                                            <span class="d-block fw-semibold text-start">
                                                                <span class="text-dark fw-bold d-block fs-3">카카오페이</span>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-3 border-start-md ps-md-10 pt-md-10 text-end">
                                    <!--begin::Total Amount-->
                                    <div class="fs-3 fw-bold text-muted mb-3">총 주문금액</div>
                                    <div class="fs-2x fw-bold" id="ord_price"></div>
                                    <div class="text-muted fw-semibold mb-16">부가세 포함</div>
                                    <!--end::Total Amount-->
                                    <div class="fs-3 fw-bold text-muted mb-3">최종결제금액</div>
                                    <div class="fs-2x fw-bold text-danger" id="final_order"></div>
                                    <div class="text-primary fw-semibold mb-16">최저가혜택</div>
                                    <div>
                                        <form id="pay_form">
                                            <input type="hidden" id="lecId" name="lecId">
                                            <input type="hidden" id="discRate" name="discRate">
                                            <input type="hidden" id="price" name="price">
                                            <input type="hidden" id="payMethod" name="payMethod">
                                            <input type="hidden" id="cpnId" name="cpnId" value="0">
                                            <input type="hidden" id="useCpn" name="useCpn" value="0">
                                            <input type="hidden" id="ordPrice" name="ordPrice">
                                            <button type="button" class="btn btn-primary fw-bold" id="pay_btn" style="width: fit-content"
                                            >결제하기
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--end: Invoice body-->
                        </div>
                    </div>

                    <!-- begin: Invoice action-->
                    <div class="row justify-content-center py-8 px-8 py-md-13 px-md-0">
                        <div class="col-md-10">

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



<div class="modal fade" tabindex="-1" id="my_coupon">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-xl modal-dialog-scrollable">
        <div class="modal-content" style="padding: 3%">
            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6"
                style="display: flex; justify-content: space-between">
                <li class="nav-item">
                    <a class="nav-link active fs-2qx text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">쿠폰 선택하기</a>
                </li>
                <l1>
                    <div class="text-end">
                        <img src="/img/close.png" style="width: 8%" data-bs-dismiss="modal" aria-label="Close">
                    </div>
                </l1>
            </ul>
            <div class="modal-body tab-content">
                <div class="tab-pane fade show active" role="tabpanel">
                <div class="table-responsive">
                    <table class="table table-row-dashed table-row-gray-300 gy-7">
                        <thead>
                        <tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200">
                            <th></th>
                            <th>쿠폰명</th>
                            <th>혜택</th>
                            <th>사용기한</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="obj" items="${cpn}">
                            <tr>
                                <td>
                                    <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                        <input class="form-check-input" type="radio" name="cpnNo" id="cpn_${obj.id}"
                                               data-name="${obj.cpnTitle}" value="${obj.id}"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="mt-2">
                                        <span class="text-muted" style="font-weight: 600;">Coupon No.${obj.id}</span>
                                    </div>
                                    <div>
                                        <span class="text-gray-800" style="font-weight: 600;">${obj.cpnTitle}</span>
                                    </div>
                                </td>
                                <c:choose>
                                    <c:when test="${obj.fixed != 0}">
                                        <td>
                                            <div class="mt-2">
                                                <span class="text-primary" >금액 할인</span>
                                            </div>
                                            <div>
                                            <span class="text-danger modal-benefit" style="font-weight: 600;"
                                                  id="benefit_${obj.id}" data-value="${obj.fixed}" data-cal="${obj.fixed}">
                                                -<fmt:formatNumber value="${obj.fixed}" type="number" pattern="₩###,###"/></span>
                                            </div>
                                        </td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>
                                            <div class="mt-2">
                                                <span class="text-primary">${obj.percent}% 할인 혜택</span>
                                            </div>
                                            <div>
                                            <span class="text-danger modal-benefit" style="font-weight: 600;"
                                                  id="benefit_${obj.id}" data-value="${obj.percent}" data-cal="">
                                                </span>
                                            </div>
                                        </td>
                                    </c:otherwise>
                                </c:choose>
                                <td>
                                    <div class="mt-2">
                                        <span class="text-gray-900" style="font-weight: 600;">${obj.giveDate}</span>
                                    </div>
                                    <div>
                                        <span class="text-gray-900"   style="font-weight: 600;">~ ${obj.validDate}</span>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
            <div class="modal-footer text-center" style="border-top: 1.4px solid #d8d8d8;align-items: center;">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" id="apply_btn">적용하기</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" tabindex="-1" id="order_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;background-color: #41da9b">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start text-white" style="width: 90%;">
                    <p id="order_msg" class="text-white" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>