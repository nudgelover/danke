<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->
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
            $('#pay_btn').click(function(){
                order_selected.send();
            });

            let rawData = $('#ord_price').html();
            let trimmed = rawData.replace(/,/g, "");
            let ordPrice = trimmed.match(/\d+/g);
            $('#ordPrice').val(ordPrice);



            $('#apply_btn').click(function(){
                let cpnId = $('input[type="radio"][name="cpn_no"]:checked').val();
                $('#cpnId').val(cpnId);
                let selected_cpn = $('input[type="radio"][name="cpn_no"]:checked').data('name');
                $('#selected_title').val(selected_cpn);

                let cpn_id=$('input[type="radio"][name="cpn_no"]:checked').val();
                let benefit_amount = $('#benefit_' + cpn_id).data('value');
                let intbenefit = Math.floor(benefit_amount);

                function numberWithCommas(number) {
                    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                }

                let formattedBenefit = numberWithCommas(intbenefit);
                $('#benefit').text('-KRW' + formattedBenefit);
                $('#useCpn').val(intbenefit);

                let total_amount = $('#ord_price').data('value');
                let final_price = (total_amount - benefit_amount);
                let formattedFinal = numberWithCommas(final_price);
                $('#final_price').text('KRW' + formattedFinal);
                $('#final_order').html('KRW' + formattedFinal);
                $('#ordPrice').val(final_price);


                $('#my_coupon').modal('hide');
            })

            $('input[name="payment"]').change(function () {
                let payMethod = $('input[name="payment"]:checked').val()
                $('#payMethod').val(payMethod);

                let checkednum=$('input[name="payment"]:checked').length;
                if(checkednum==1){
                    $('#pay_btn').attr('disabled', false);
                }
            });
        },
        send: function(){

            $('#pay_form').attr({
                'action': '/lecture/paythis',
                'method': 'post'
            });

            $('#pay_form').submit();
        }
    }
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
                <h3 class="text-dark fw-bold my-1">CHECKOUT</h3>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">View All Course</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Course List</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Curriculum</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Cart</a>
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
                    <!--begin::Invoice-->
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
                                    <span class="d-flex flex-column align-items-md-end fs-4 fw-semibold text-muted">
															<span>2F, 111, Achasan-ro, Seongdong-gu, Seoul</span>
															<span>Republic of Korea 04794</span>
														</span>
                                </div>
                            </div>
                            <!--end: Invoice header-->
                            <!--begin: Invoice body-->
                            <div class="row border-bottom pb-10">
                                <div class="col-md-9 py-md-10 pe-md-10">
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-5 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    Course</th>
                                                <th class="pt-5 pb-10 text-end">Regular Price</th>
                                                <th class="pt-5 pb-10 text-end">Discount</th>
                                                <th class="pt-5 pb-10 text-end">Order Price</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="fw-bold ps-0">
                                                        <div class="flex-grow-1 mt-2 me-2" data-bs-toggle="view" style="margin-left: 22px;">
                                                            <div>
                                                                <span class="fw-bold fs-6 me-2">${lec.title}</span>
                                                                <c:choose>
                                                                    <c:when test="${lec.discRate != 0}">
                                                                        <span class="badge badge-light-danger">sale</span>
                                                                    </c:when>
                                                                </c:choose>
                                                            </div>
                                                            <div class="mt-2">
                                                                <span class="text-gray-400">${lec.teacher} | ${lec.topic} </span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-end">
                                                        <fmt:formatNumber value="${lec.price}" type="number" pattern="KRW###,###"/></td>
                                                    <td class="text-end text-danger" style="font-weight: 600">${lec.discRate}%</td>
                                                    <td class="pe-0 fs-6 fw-bold text-end disc_price">
                                                        <fmt:formatNumber value="${lec.price * (100 - lec.discRate)/100}" type="number" pattern="KRW###,###"/></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-10 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    Coupon</th>
                                                <th class="pt-5 pb-10 text-end"></th>
                                                <th class="pt-5 pb-10 text-end">Benefit</th>
                                                <th class="pt-5 pb-10 text-end">Final Price</th>
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
                                                                data-bs-toggle="modal" data-bs-target="#my_coupon">
                                                            My Coupon
                                                        </button>
                                                    </div>
                                                </td>
                                                <td class="text-end text-danger" style="font-weight: 600;" id="benefit"></td>
                                                <td class="pe-0 fs-6 fw-bold text-end disc_price" id="final_price"></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table align-middle table-borderless">
                                            <thead>
                                            <tr class="border-bottom-1 border-bottom-gray-100 fw-bold text-muted fs-6 text-uppercase">
                                                <th class="pt-10 pb-10 ps-0"><img src="/assets/media/icons/duotune/general/gen043.svg"/>
                                                    Payment</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="text-center">
                                                    <div class="flex-container">
                                                        <ul>
                                                            <li><input class="form-check-input" type="radio" name="payment" id="card" value="1"/>CARD</li>
                                                            <li><input class="form-check-input" type="radio" name="payment" id="kakao" value="2"/>KAKAO</li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                                <div class="col-md-3 border-start-md ps-md-10 pt-md-10 text-end">
                                    <!--begin::Total Amount-->
                                    <div class="fs-3 fw-bold text-muted mb-3">TOTAL AMOUNT</div>
                                    <div class="fs-2x fw-bold" id="ord_price" data-value="${lec.price * (100 - lec.discRate)/100}">
                                        <fmt:formatNumber value="${lec.price * (100 - lec.discRate)/100}" type="number" pattern="KRW###,###"/>
                                    </div>
                                    <div class="text-muted fw-semibold mb-16">Taxes included</div>
                                    <!--end::Total Amount-->
                                    <div class="fs-3 fw-bold text-danger mb-3">FINAL PRICE</div>
                                    <div class="fs-2x fw-bold text-danger" id="final_order"></div>
                                    <div class="text-muted fw-semibold mb-16">BEST PRICE</div>
                                    <div>
                                        <form id="pay_form">
                                            <input type="hidden" id="lecId" name="lecId" value="${lec.id}">
                                            <input type="hidden" id="price" name="price" value="${lec.price}">
                                            <input type="hidden" id="discRate" name="discRate" value="${lec.discRate}">
                                            <input type="hidden" id="payMethod" name="payMethod">
                                            <input type="hidden" id="cpnId" name="cpnId" value="0">
                                            <input type="hidden" id="useCpn" name="useCpn" value="0">
                                            <input type="hidden" id="ordPrice" name="ordPrice">
                                            <button type="button" class="btn btn-primary fw-bold" id="pay_btn" style="width: fit-content"
                                            >Proceed to Pay
                                            </button>
                                        </form>
                                    </div>
                                </div>

                            </div>
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
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <h1 class="display-6 text-dark fw-bold mb-10" style="text-align: center;padding-top: 30px;">MY COUPON</h1>
                <div class="table-responsive">
                    <table class="table table-hover table-rounded table-striped border gy-7 gs-7">
                        <thead>
                        <tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200">
                            <th></th>
                            <th>Coupon</th>
                            <th>Benefit</th>
                            <th>Expiration</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="obj" items="${cpn}">
                        <tr>
                            <td>
                                <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                    <input class="form-check-input" type="radio" name="cpn_no" id="cpn_${obj.id}"
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
                                            <span class="text-primary" >Fixed Amount Discount</span>
                                        </div>
                                        <div>
                                            <span class="text-danger" style="font-weight: 600;" id="benefit_${obj.id}" data-value="${obj.fixed}">
                                                -<fmt:formatNumber value="${obj.fixed}" type="number" pattern="KRW###,###"/></span>
                                        </div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>
                                        <div class="mt-2">
                                            <span class="text-primary">${obj.percent}% Discount</span>
                                        </div>
                                        <div>
                                            <span class="text-danger" style="font-weight: 600;"
                                                  id="benefit_${obj.id}" data-value="${lec.price * (100 - lec.discRate)/100 * obj.percent / 100}">
                                                -<fmt:formatNumber value="${lec.price * (100 - lec.discRate)/100 * obj.percent / 100}" type="number" pattern="KRW###,###"/></span>
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
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="apply_btn">Apply Coupon</button>
            </div>
        </div>
    </div>
</div>


<!--begin::Vendors Javascript(used for this page only)-->
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="assets/js/custom/widgets.js"></script>
<script src="assets/js/custom/apps/chat/chat.js"></script>
<script src="assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
