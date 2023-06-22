<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
    let cart = {
        init: function () {

            //강의 옆에 있는 커리버튼으로 단수 강의 커리큘럼 넣으면
            $('.curri_btn').click(function(){
                let self = this;
                cart.curri(self);
            });

            //전체 선택 옆에 있는 커리버튼으로 복수 강의 커리큘럼 넣으면
            $('#curris_btn').click(function(){
                cart.curris();
            })

            //체크된 강의들 복수 삭제하는 버튼 누르면
            $('#del_lecs_btn').click(function () {
                cart.send();
            });

            //체크된 아이들 결제창으로 이동시키면
            $('#ord_btn').click(function () {
                cart.place_ord();
            });

            //ord테이블 및 ord_detail테이블에 필요한 값들 초기화
            let cnt = 0;
            let price = 0;
            let disc = 0;
            let order = 0;

            //전체선택 버튼 누르면 (전체선택 버튼 눌러서 계산하는 것과, 각각 체크하면서 계산하는 것 따로 해줘야 해...)
            $('#all_select').change(function() {
                var all = $(this).is(':checked');
                //전체선택 버튼까지 체크드 된 값으로 들어가면 안 되니까 낫디스 하고 나머지 다 체인지 트리거
                $('input[type="checkbox"]').not(this).prop('checked', all).trigger('change');
                cnt = 0;
                price = 0;
                disc = 0;
                order = 0;

                $('input[type="checkbox"]:checked').not(this).each(function() {
                    //체크박스타입 애들 포문 돌리면서
                    //각각 주문 상품 개수 늘려주고, 가격 합산하고, 할인 합산하고, '(가격-할인)=주문금액' 합산하고
                    cnt += 1;
                    price += parseInt($(this).data('price'));
                    disc += parseInt($(this).data('disc'));
                    order += parseInt($(this).data('order'));
                });

                //가격값에 세자리마다 콤마찍어주고 원화표시 붙여주고
                function numberWithCommas(number) {
                    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                };

                let fommattedPrice = numberWithCommas(price);
                let fommattedDisc = numberWithCommas(price);
                let fommattedOrder = numberWithCommas(price);

                // 각 창에 각 값들 바로 표출
                $('#sum_cnt').text(cnt + '개의 강의');
                $('#sum_price').text('₩' + fommattedPrice);
                $('#sum_disc').text('₩' + fommattedDisc);
                $('#sum_order').text('₩' + fommattedOrder);
            });

            //전체선택 버튼을 제외한 다른 체크박스들 누르면
            $('input[type="checkbox"]:checked').not('#all_select').each(function() {
                //체크드된 애들만 또 수량, 가격, 할인, 주문금액 합산
                cnt += 1;
                price += parseInt($(this).data('price'));
                disc += parseInt($(this).data('disc'));
                order += parseInt($(this).data('order'));
            });

            //가격값에 세자리마다 콤마찍어주고 원화표시 붙여주고
            function numberWithCommas(number) {
                return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            };

            let fommattedPrice = numberWithCommas(price);
            let fommattedDisc = numberWithCommas(price);
            let fommattedOrder = numberWithCommas(price);

            // 각 창에 각 값들 바로 표출
            $('#sum_cnt').text(cnt + '개의 강의');
            $('#sum_price').text('₩' + fommattedPrice);
            $('#sum_disc').text('₩' + fommattedDisc);
            $('#sum_order').text('₩' + fommattedOrder);

            //같은 원리로 애들 값이 변할 때마다 계산
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
            //복수의 강의를 카트 삭제하기 위해 배열 초기화
            let deletes = new Array();
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                //전체선택 버튼 제외한 다른 체크된 애들 아이디값 배열에 넣고
                deletes.push(this.id);
            });
            //값 심어주고
            $('input.name').val(deletes);

            //보내
            $('#cart_del_form').attr({
                'action': '/lecture/deleteimpl',
                'method': 'post'
            });

            $('#cart_del_form').submit();
        },

        place_ord: function(){
            //선택된 복수의 강의 주문을 하면 배열 초기화부터
            let ord = new Array();
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                //선택된 강의들 중 전체선택 버튼 제외한 애들 아이디 값을 배열에 넣고
                ord.push(this.id);
            });
            //값 심어주고
            $('input.name').val(ord);

            //보내
            $('#cart_del_form').attr({
                'action': '/lecture/order',
                'method': 'post'
            });

            $('#cart_del_form').submit();
        },
        //커리큘럼 단 건
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

        //커리큘럼은 잇는지 없는지 확인하고 넣어야 오류가 안 나서
        //ajax로 확인하고 없는 애들만 넣고 있는 애들은 잇다고 알려야 해...
        //근데 얘네가 form안에 있어서 ajax통신 후, 지멋대로 form 전송해버려서 error 뜨니까
        //전송 못하도록 프리벤트디폴트,,
        curris: function(){
            event.preventDefault();
            let stdnId = '${loginStdn.id}';
            //선택된 강의 넣을 배열 초기화
            let curri_lecs = new Array();

            //전체선택 체크박스 제외한 것들 넣어
            $('input[type="checkbox"]:checked').not('#all_select').each(function () {
                curri_lecs.push($(this).data('lec'));
            });
            let curriModal = $('#curris_modal');
            //배열에 강의 몇개 담겼는지 미리 확인
            let curri_length=curri_lecs.length;

            $.ajax({
                url: '/currilecsimpl',
                data: {stdnId:stdnId, curri_lecs:curri_lecs},
                traditional: true,
                success: function(result){
                    if(result === 0){
                        //선택한 강의들이 모두 커리큘럼에 없었을 때
                        let modal = new bootstrap.Modal(curriModal);
                        $('#curris_msg').html('선택하신 강의들이 커리큘럼에 추가되었습니다.');
                        modal.show();
                    } else {
                        //controller에서 돌아온 result 값은 배열에 담아보냇던 강의들 중 이미 들어있던 강의 수를 반환
                        let modal = new bootstrap.Modal(curriModal);
                        //보낸 거 - 이미 있던 강의 = cnt
                        let cnt = curri_length - result;
                        $('#curris_msg').html('선택하신 강의 중 이미 커리큘럼에 있던<br>'+result+'개의 강의에 더하여 '+cnt+'개의 강의가 추가되었습니다!');
                        modal.show();
                    }
                }
            });
        },
    }
    $(function () {
        cart.init();
    })

</script>


<div class="d-flex flex-column">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">장바구니</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/search" class="btn btn-active-accent fw-bold ms-3">학습 자료 찾기</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-33">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex" id="kt_content">
        <div class="container-xxl" style="display: flex;">
            <div class="d-flex flex-column flex-lg-row  col-lg-12">
                <div class="d-block col-lg-9 mb-3" id="kt_inbox_aside" style="margin-right:1%">
                    <div class="card mt-10 mt-lg-0">
                        <div class="card-header align-items-center card-px">
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
                            <div class="d-flex align-items-center justify-content-sm-end text-end my-2">
                                <!--begin::Per Page Dropdown-->
                                <div class="d-flex align-items-center me-2">
                                    <span class="text-muted fw-semibold me-2">총 ${cnt}개의 강의</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-0 overflow-auto">
                            <form id="cart_del_form">
                                <c:forEach var="obj" items="${cart}">
                                    <div class="min-w-700px" data-inbox="list">
                                        <div class="d-flex align-items-start bg-hover-light card-px py-3" data-inbox="message">
                                            <div class="d-flex align-items-center">
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
                                                <div class="d-flex align-items-center flex-wrap me-3"
                                                     data-bs-toggle="view" style="margin-left: 1%;">
                                                    <div class="symbol symbol-100px me-4">
                                                                        <span class="symbol-label bg-light">
                                                                            <img src="/uimg/${obj.lecImg}"
                                                                                 class="h-75 align-self-center" alt=""/>
                                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
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
                                        </div>
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
                    </div>
                </div>
                <div class="flex-lg-row-auto col-lg-3" id="kt_inbox_list" style="margin-right:1%">
                    <div class="card">
                        <div class="card-header card-header-stretch">
                            <div class="d-flex align-items-center">
                                <span class="fs-1 fw-bold me-3 text-center">주문금액</span>
                                <span class="badge badge badge-light text-muted fs-7 fw-bold rounded py-2 px-3" id="sum_cnt"></span>
                            </div>
                        </div>
                        <div class="card-body card-body-stretch px-0 pb-0">
                            <div class="overflow-auto">
                                <div data-action="list" class="mh-300px mh-lg-unset">
                                    <div class="bg-state-light active px-9 py-8 d-flex" data-action="list">
                                        <div class="d-flex flex-column" style="width:100%">
                                            <div class="d-flex justify-content-between" style="justify-content:stretch">
                                                <div class="text-muted fw-bold">선택 강의 금액</div>
                                                <div class="text-muted fs-7 fw-bold text-end" id="sum_price"></div>
                                            </div>
                                            <div class="d-flex justify-content-between">
                                                <div class="text-danger fw-bold">할인 금액</div>
                                                <div class="text-danger fs-7 fw-bold text-end" id="sum_disc"></div>
                                            </div>
                                            <div class="separator separator-dashed my-10"></div>
                                            <div class="d-flex justify-content-between">
                                                <div class="text-primary fw-bold">총 주문 금액</div>
                                                <div class="text-primary fs-7 fw-bold text-end" id="sum_order"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-stack px-9 mt-3 mb-10">
                                <button class="btn btn-flex btn-primary form-control" style="display: flex; justify-content: center; align-items: center;" id="ord_btn">수강 신청</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>