<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
<%--<script src="assets/js/scripts.bundle.js"></script>--%>


<style>
    #lec_container {
        margin-bottom: 30px;
    }

    .modal_body {
        position: fixed;
        top: 80%;
        left: 50%;
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
        <%--if(${sbjMediumCode==''}){--%>
        <%--    $('#'+${sbjBigCode}).addClass('show');--%>
        <%--    $('.medium_'+${sbjBigCode}).addClass('d-block');--%>
        <%--    $('#all_'+${sbjBigCode}).addClass('active');--%>
        <%--} else {--%>
        <%--    $('#'+${sbjBigCode}).addClass('show');--%>
        <%--    $('.medium_'+${sbjBigCode}).addClass('show');--%>
        <%--    $('.medium_'+${sbjBigCode}).addClass('d-block');--%>
        <%--    $('#'+${sbjMediumCode}).addClass('active');--%>
        <%--}--%>

        //바로구매버튼 누르면
        $('.order_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(10);
            let orderModal = $('#order_modal_' + lecId);

            //세션 null이면 로그인해라 모달
            if(stdnId==''){
                let modal = new bootstrap.Modal(orderModal);
                $('#order_msg_' + lecId).html('로그인이 필요한 서비스입니다.');
                $('#order_link_'+lecId).attr('href','/login');
                $('#order_link_'+lecId).html('로그인');
                modal.show();
            } else {

                //아니면 이 강의 구매한 이력 있는지 확인
                $.ajax({
                    //ord_detail테이블에서 구매이력 찾음
                    url:'/boughtornot',
                    data:{stdnId:stdnId,lecId:lecId},
                    success: function(result){
                        if(result==1){
                            //구매이력 없으면 바로구매창으로 이동
                            window.location.href = '/lecture/orderthis?id='+lecId;
                        } else {
                            //있으면 구매한 적 있다 모달
                            let modal = new bootstrap.Modal(orderModal);
                            $('#order_msg_' +lecId).html('이미 수강신청한 강의입니다.');
                            $('#order_link_'+lecId).attr('href','/lecture/playlecture?id='+lecId+'&&stdnId='+stdnId);
                            $('#order_link_'+lecId).html(' 바로 학습하기');
                            modal.show();
                        }
                    }
                })
            }
        });

        //카트 담기 버튼 누르면
        $('.cart_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(9);
            let cartModal = $('#cart_modal_' + lecId);

            //세션이 null이면 로그인해라 모달
            if(stdnId==''){
                let modal = new bootstrap.Modal(cartModal);
                $('#cart_msg_' + lecId).html('로그인이 필요한 서비스입니다.');
                $('#cart_link_'+lecId).attr('href','/login');
                $('#cart_link_'+lecId).html('로그인');
                modal.show();
            } else {
                //아니면 이 강의 구매한 이력 있는지 확인
                $.ajax({
                    //ord_detail테이블에서 구매이력 찾음
                    url: '/boughtornot',
                    data: {stdnId: stdnId, lecId: lecId},
                    success: function (result) {
                        if (result != 1) {
                            //구매 이력이 있을 때 구매한 적 있다 모달
                            let modal = new bootstrap.Modal(cartModal);
                            $('#cart_msg_' + lecId).html('이미 수강신청한 강의입니다.');
                            $('#cart_link_' + lecId).attr('href', '/lecture/playlecture?id=' + lecId + '&&stdnId=?'+stdnId);
                            $('#cart_link_' + lecId).html(' 바로 학습하기');
                            modal.show();
                        } else {
                            //구매한 적 없으면 이미 카트에 있는지 확인
                            $.ajax({
                                url: '/cartimpl',
                                data: {stdnId: stdnId, lecId: lecId},
                                success: function (result) {
                                    if (result === 0) {
                                        //있으면 있다 모달
                                        let modal = new bootstrap.Modal(cartModal);
                                        $('#cart_msg_' + lecId).html('이미 카트에 있는 강의입니다.');
                                        $('#cart_link_' + lecId).attr('href', '/lecture/cart?id=' + stdnId);
                                        $('#cart_link_' + lecId).html('보러가기');
                                        modal.show();
                                    } else if (result === 1) {
                                        //없으면 넣고 와서 넣었다 모달
                                        let modal = new bootstrap.Modal(cartModal);
                                        $('#cart_msg_' + lecId).html('강의가 카트에 추가되었습니다.');
                                        $('#cart_link_' + lecId).attr('href', '/lecture/cart?id=' + stdnId);
                                        $('#cart_link_' + lecId).html('보러가기');
                                        modal.show();
                                    }
                                }
                            });
                        };
                    }
                });
            }
        });

        //커리큘럼 추가 버튼 누르면
        $('.curri_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(10);
            let curriModal = $('#curri_modal_' + lecId);

            //세션이 null이면 로그인해라 모달
            if(stdnId==''){
                let modal = new bootstrap.Modal(curriModal);
                $('#curri_msg_' + lecId).html('로그인이 필요한 서비스입니다.');
                $('#curri_link_'+lecId).attr('href','/login');
                $('#curri_link_'+lecId).html('로그인');
                modal.show();
            } else {
                $.ajax({
                    //커리큘럼에 있는지 확인
                    url: '/curriimpl',
                    data: {stdnId: stdnId, lecId: lecId},
                    success: function (result) {
                        if (result === 0) {
                            //있으면 있다 모달
                            let modal = new bootstrap.Modal(curriModal);
                            $('#curri_msg_' + lecId).html('이미 커리큘럼에 있는 강의입니다.');
                            $('#curri_link_'+lecId).attr('href','/lecture/curri?id='+stdnId);
                            $('#curri_link_'+lecId).html('보러가기');
                            modal.show();
                        } else if (result === 1) {
                            //없으면 넣고 넣었다 모달
                            let modal = new bootstrap.Modal(curriModal);
                            $('#curri_msg_' + lecId).html('강의가 커리큘럼에 추가되었습니다.');
                            $('#curri_link_'+lecId).attr('href','/lecture/curri?id='+stdnId);
                            $('#curri_link_'+lecId).html('보러가기');
                            modal.show();
                        }
                    }
                });
            }
        });
    });
</script>


<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">전체 강의</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent active active fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/search" class="btn btn-active-accent fw-bold ms-3">학습 자료 찾기</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card-body">
                    <div class="card mb-12">
                        <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                            <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20" style="width: 70%">
                                <h1 class="text-dark" style="font-weight: 900">누구나 쉬운 입문 강의 여기 다 모였다!</h1>
                                <div class="fs-3 mb-8">DIGICampus는 성장 기회의 평등을 추구합니다</div>
                                    <form class="d-flex" action="/lecture/findimpl" method="get">
                                        <div class="py-2 px-2 bg-white rounded me-1">
                                            <select class="form-select form-select-solid bg-white w-md-80px w-lg-90px w-xl-100px w-xxl-150px" data-control="select2"
                                                    id="keyword" name="keyword" data-placeholder="선택하세요" data-hide-search="true"
                                                    style="width: 30%;">
                                                <option value=""></option>
                                                <option value="title"
                                                        <c:if test="${lecSearch.keyword=='title'}">selected</c:if>>제목</option>
                                                <option value="teacher"
                                                        <c:if test="${lecSearch.keyword=='teacher'}">selected</c:if>>강사</option>
                                            </select>
                                        </div>
                                        <div class="d-flex flex-center py-2 px-4 bg-white rounded me-2">
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
                                            <input type="text" id="search" name="search"
                                                   <c:if test="${lecSearch.search!=null}">value="${lecSearch.search}"</c:if>
                                                   class="form-control border-0 fw-semibold ps-2 w-xxl-350px"
                                                   placeholder="뭘 좋아할 지 몰라 다 준비해봤어 넌 입력만 해" style="width: 70%;"/>
                                        </div>
                                        <div class="py-2 px-2 bg-primary rounded">
                                            <button type="submit" class="btn btn-primary btn-icon flex-shrink-0">
                                                <span class="svg-icon svg-icon-1 svg-icon-white">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M21.7 18.9L18.6 15.8C17.9 16.9 16.9 17.9 15.8 18.6L18.9 21.7C19.3 22.1 19.9 22.1 20.3 21.7L21.7 20.3C22.1 19.9 22.1 19.3 21.7 18.9Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M11 20C6 20 2 16 2 11C2 6 6 2 11 2C16 2 20 6 20 11C20 16 16 20 11 20ZM11 4C7.1 4 4 7.1 4 11C4 14.9 7.1 18 11 18C14.9 18 18 14.9 18 11C18 7.1 14.9 4 11 4ZM8 11C8 9.3 9.3 8 11 8C11.6 8 12 7.6 12 7C12 6.4 11.6 6 11 6C8.2 6 6 8.2 6 11C6 11.6 6.4 12 7 12C7.6 12 8 11.6 8 11Z" fill="currentColor"/>
                                                    </svg>
                                                </span>
                                            </button>
                                        </div>
                                    </form>
                            </div>
                            <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                 style="background-image: url(/assets/media/illustrations/sigma-1/5.png);width:30%"></div>
                        </div>
                    </div>
                    <div class="mb-10">
                        <div id="lec_container">
                            <div  class="row g-5 g-xxl-8" style="display: flex; flex-direction: row;">
                                    <div class="col-md-3 col-xxl-3 col-lg-3" style="width: 15%">
                                        <div class="menu menu-rounded menu-column menu-title-gray-700 menu-icon-gray-400 menu-bullet-gray-400"  data-kt-menu="true"
                                             style="font-weight: 800;">
                                            <div class="menu-item">
                                                <a href="/lecture/all" class="menu-link py-3">
                                                    <span class="menu-title">전체 강의</span>
                                                </a>
                                            </div>
                                        </div>
                                        <c:forEach var="sbjBig" items="${sideBig}" varStatus="status" begin="1">
                                        <div class="menu menu-rounded menu-column menu-title-gray-700 menu-icon-gray-400 menu-arrow-gray-400 menu-bullet-gray-400 menu-arrow-gray-400 menu-state-bg" data-kt-menu="true"
                                        style="font-weight: 800;">
                                            <div class="menu-item menu-sub-indention menu-accordion" data-kt-menu-trigger="click">
                                                <a href="#" class="menu-link py-3
                                                    <c:choose>
                                                        <c:when test="${sbjBig.sbjCode==sbjBigCode}">
                                                            active
                                                        </c:when>
                                                    </c:choose>
                                                    ">
                                                    <span class="menu-title">${sbjBig.sbjName}</span>
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <div class="menu-sub menu-sub-accordion pt-3
                                                    <c:choose>
                                                        <c:when test="${sbjBig.sbjCode==sbjBigCode}">
                                                            show
                                                        </c:when>
                                                    </c:choose>
                                                    ">
                                                    <div class="menu-item">
                                                        <a href="/lecture/${sbjBig.sbjCode}/all" class="menu-link">
                                                            <span class="menu-title">ALL</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <c:forEach var="sbjMedium" items="${sideMedium[sbjBig.sbjCode]}">
                                                    <div class="menu-sub menu-sub-accordion pt-3
                                                        <c:choose>
                                                            <c:when test="${sbjBig.sbjCode==sbjBigCode}">
                                                                <c:choose>
                                                                    <c:when test="${sbjMediumCode==null}">
                                                                        show active
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        show
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                        </c:choose>
                                                        ${sbjMedium.sbjCode == ""||sbjMedium.sbjCode==null ? 'active' : ''}">
                                                        <div class="menu-item">
                                                            <a href="/lecture/${sbjBig.sbjCode}/${sbjMedium.sbjCode}/all"
                                                               class="menu-link
                                                                    <c:choose>
                                                                        <c:when test="${sbjMedium.sbjCode==sbjMediumCode}">
                                                                            active
                                                                        </c:when>
                                                                    </c:choose>
                                                               ${param.sbjCode != null && sbjMedium.sbjCode == param.sbjCode ? 'active' : ''}">
                                                                <span class="menu-title">${sbjMedium.sbjName}</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                <div class="col-md-9 col-xxl-9 col-lg-9" style="width: 85%">
                                    <div class="d-flex justify-content-start flex-wrap  mb-7">
                                        <a href="
                                            <c:choose>
                                                <c:when test="${sbjMediumCode==null && sbjBigCode==null}">
                                                    /lecture/all
                                                </c:when>
                                                <c:when test="${sbjMediumCode==null && sbjBigCode!=null}">
                                                    /lecture/${sbjBigCode}/all
                                                </c:when>
                                                <c:otherwise>
                                                    /lecture/${sbjBigCode}/${sbjMediumCode}/all
                                                </c:otherwise>
                                            </c:choose>
                                            " class="btn
                                             <c:choose>
                                                <c:when test="${spec==null}">
                                                    btn-primary
                                                </c:when>
                                                <c:otherwise>
                                                    btn-light-primary
                                                </c:otherwise>
                                            </c:choose>
                                            btn-sm fw-bold mb-2" style="margin-right:0.5%">View All</a>
                                        <c:forEach var="cate" items="${cate}">
                                            <a href="
                                                <c:choose>
                                                    <c:when test="${sbjMediumCode==null && sbjBigCode==null}">
                                                        /lecture/spec${cate.sbjCode}/all
                                                    </c:when>
                                                    <c:when test="${sbjMediumCode==null && sbjBigCode!=null}">
                                                        /lecture/${sbjBigCode}/spec${cate.sbjCode}/all
                                                    </c:when>
                                                    <c:otherwise>
                                                        /lecture/${sbjBigCode}/${sbjMediumCode}/spec${cate.sbjCode}/all
                                                    </c:otherwise>
                                                </c:choose>
                                            " class=" btn
                                                <c:choose>
                                                    <c:when test="${cate.sbjCode==spec}">
                                                        btn-primary
                                                    </c:when>
                                                    <c:otherwise>
                                                        btn-light-primary
                                                    </c:otherwise>
                                                </c:choose>
                                            btn-sm fw-bold mb-2" style="margin-right:0.5%">${cate.sbjName}</a>
                                        </c:forEach>
                                    </div>
                                    <div class="row pb-15" >
                                        <c:forEach var="obj" items="${cpage.getList()}">
                                            <div class="col-md-4 col-xxl-4 col-lg-4">
                                                <div class="card shadow-none">
                                                    <div class="card-body p-0 overlay overlay-wrapper">
                                                        <div class="overlay-wrapper overflow-hidden" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
                                                            <div class="overlay-wrapper bg-light text-center mb-3">
                                                                <img src="/uimg/${obj.img}" alt="" class="mw-100"/>
                                                            </div>
                                                            <div class="overlay-layer clickable-div mb-3" style="border-radius: 10px; display: flex; flex-direction: column; align-items: flex-start; justify-content: space-between">
                                                                <div class="text-start text-white px-5 py-4">
                                                                    <a href="/lecture/detail?id=${obj.id}&&stdnId=${loginStdn.id}" class="fs-4 text-white text-hover-white" style="font-weight: 700;">${obj.title}</a>
                                                                    <p style="margin-top:3%;">
                                                                        <span style="color: rgb(163,223,237)">
                                                                            <span class="svg-icon" style="color: rgb(163,223,237)">
                                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path opacity="0.3" fill-rule="evenodd" clip-rule="evenodd" d="M2 4.63158C2 3.1782 3.1782 2 4.63158 2H13.47C14.0155 2 14.278 2.66919 13.8778 3.04006L12.4556 4.35821C11.9009 4.87228 11.1726 5.15789 10.4163 5.15789H7.1579C6.05333 5.15789 5.15789 6.05333 5.15789 7.1579V16.8421C5.15789 17.9467 6.05333 18.8421 7.1579 18.8421H16.8421C17.9467 18.8421 18.8421 17.9467 18.8421 16.8421V13.7518C18.8421 12.927 19.1817 12.1387 19.7809 11.572L20.9878 10.4308C21.3703 10.0691 22 10.3403 22 10.8668V19.3684C22 20.8218 20.8218 22 19.3684 22H4.63158C3.1782 22 2 20.8218 2 19.3684V4.63158Z" fill="currentColor"/>
                                                                                    <path d="M10.9256 11.1882C10.5351 10.7977 10.5351 10.1645 10.9256 9.77397L18.0669 2.6327C18.8479 1.85165 20.1143 1.85165 20.8953 2.6327L21.3665 3.10391C22.1476 3.88496 22.1476 5.15129 21.3665 5.93234L14.2252 13.0736C13.8347 13.4641 13.2016 13.4641 12.811 13.0736L10.9256 11.1882Z" fill="currentColor"/>
                                                                                    <path d="M8.82343 12.0064L8.08852 14.3348C7.8655 15.0414 8.46151 15.7366 9.19388 15.6242L11.8974 15.2092C12.4642 15.1222 12.6916 14.4278 12.2861 14.0223L9.98595 11.7221C9.61452 11.3507 8.98154 11.5055 8.82343 12.0064Z" fill="currentColor"/>
                                                                                </svg>
                                                                            </span> ${obj.parent}
                                                                        <br><span class="svg-icon" style="color: rgb(163,223,237)">
                                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                <path opacity="0.3" fill-rule="evenodd" clip-rule="evenodd" d="M2 4.63158C2 3.1782 3.1782 2 4.63158 2H13.47C14.0155 2 14.278 2.66919 13.8778 3.04006L12.4556 4.35821C11.9009 4.87228 11.1726 5.15789 10.4163 5.15789H7.1579C6.05333 5.15789 5.15789 6.05333 5.15789 7.1579V16.8421C5.15789 17.9467 6.05333 18.8421 7.1579 18.8421H16.8421C17.9467 18.8421 18.8421 17.9467 18.8421 16.8421V13.7518C18.8421 12.927 19.1817 12.1387 19.7809 11.572L20.9878 10.4308C21.3703 10.0691 22 10.3403 22 10.8668V19.3684C22 20.8218 20.8218 22 19.3684 22H4.63158C3.1782 22 2 20.8218 2 19.3684V4.63158Z" fill="currentColor"/>
                                                                                <path d="M10.9256 11.1882C10.5351 10.7977 10.5351 10.1645 10.9256 9.77397L18.0669 2.6327C18.8479 1.85165 20.1143 1.85165 20.8953 2.6327L21.3665 3.10391C22.1476 3.88496 22.1476 5.15129 21.3665 5.93234L14.2252 13.0736C13.8347 13.4641 13.2016 13.4641 12.811 13.0736L10.9256 11.1882Z" fill="currentColor"/>
                                                                                <path d="M8.82343 12.0064L8.08852 14.3348C7.8655 15.0414 8.46151 15.7366 9.19388 15.6242L11.8974 15.2092C12.4642 15.1222 12.6916 14.4278 12.2861 14.0223L9.98595 11.7221C9.61452 11.3507 8.98154 11.5055 8.82343 12.0064Z" fill="currentColor"/>
                                                                            </svg>
                                                                        </span> ${obj.topic}<br>
                                                                        <span class="svg-icon" style="color: rgb(163,223,237)">
                                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                <path opacity="0.3" fill-rule="evenodd" clip-rule="evenodd" d="M2 4.63158C2 3.1782 3.1782 2 4.63158 2H13.47C14.0155 2 14.278 2.66919 13.8778 3.04006L12.4556 4.35821C11.9009 4.87228 11.1726 5.15789 10.4163 5.15789H7.1579C6.05333 5.15789 5.15789 6.05333 5.15789 7.1579V16.8421C5.15789 17.9467 6.05333 18.8421 7.1579 18.8421H16.8421C17.9467 18.8421 18.8421 17.9467 18.8421 16.8421V13.7518C18.8421 12.927 19.1817 12.1387 19.7809 11.572L20.9878 10.4308C21.3703 10.0691 22 10.3403 22 10.8668V19.3684C22 20.8218 20.8218 22 19.3684 22H4.63158C3.1782 22 2 20.8218 2 19.3684V4.63158Z" fill="currentColor"/>
                                                                                <path d="M10.9256 11.1882C10.5351 10.7977 10.5351 10.1645 10.9256 9.77397L18.0669 2.6327C18.8479 1.85165 20.1143 1.85165 20.8953 2.6327L21.3665 3.10391C22.1476 3.88496 22.1476 5.15129 21.3665 5.93234L14.2252 13.0736C13.8347 13.4641 13.2016 13.4641 12.811 13.0736L10.9256 11.1882Z" fill="currentColor"/>
                                                                                <path d="M8.82343 12.0064L8.08852 14.3348C7.8655 15.0414 8.46151 15.7366 9.19388 15.6242L11.8974 15.2092C12.4642 15.1222 12.6916 14.4278 12.2861 14.0223L9.98595 11.7221C9.61452 11.3507 8.98154 11.5055 8.82343 12.0064Z" fill="currentColor"/>
                                                                            </svg>
                                                                        </span> ${obj.spec1}, ${obj.spec2}, ${obj.spec3}
                                                                    </span>
                                                                </p>
                                                            </div>
                                                                <div class="text-end px-3 py-1">
                                                                    <ul class="icon-tray">
                                                                        <li>
                                                                            <a href="javascript:void(0)" class="order_btn" id="order_btn_${obj.id}" data-bs-toggle="tooltip" data-bs-placement="left" title="바로구매">
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
                                                                               style="width:4%; height:4%;"> <fmt:formatNumber value="${obj.rating}" type="number" pattern="0.0"/>(${obj.cnt})
                                                                </span>
                                                        </div>
                                                    </div>
                                                </div>


                                                <!--Cart Modal-->
                                                <div class="modal fade modal_body" tabindex="-1" id="cart_modal_${obj.id}">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                            <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                <div class="text-start" style="width: 50%;">
                                                                    <p id="cart_msg_${obj.id}" style="font-weight:700"></p>
                                                                </div>
                                                                <div class="text-end" style="width: 40%;">
                                                                    <a href="/lecture/cart?id=${loginStdn.id}" id="cart_link_${obj.id}" style="font-weight: bold;">보러가기</a>
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
                                                <div class="modal fade modal_body" tabindex="-1"id="curri_modal_${obj.id}">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                            <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                <div class="text-start" style="width: 50%;">
                                                                    <p id="curri_msg_${obj.id}" style="font-weight:700"></p>
                                                                </div>
                                                                <div class="text-end" style="width: 40%;">
                                                                    <a href="/lecture/curri?id=${loginStdn.id}" id="curri_link_${obj.id}" style="font-weight: bold;">보러가기</a>
                                                                </div>
                                                                <div class="text-end" style="width: 10%;">
                                                                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Curri Modal End-->

                                                <!--Order Modal-->
                                                <div class="modal fade modal_body" tabindex="-1" id="order_modal_${obj.id}">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                            <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                <div class="text-start" style="width: 50%;">
                                                                    <p id="order_msg_${obj.id}" style="font-weight:700"></p>
                                                                </div>
                                                                <div class="text-end" style="width: 40%;">
                                                                    <a href="/lecture/orderthis?id=${loginStdn.id}" id="order_link_${obj.id}" style="font-weight: bold;"></a>
                                                                </div>
                                                                <div class="text-end" style="width: 10%;">
                                                                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <c:choose>
                                        <c:when test="${lecSearch==null}">
                                            <jsp:include page="../page.jsp"/>
                                        </c:when>
                                        <c:otherwise>
                                            <jsp:include page="../findpage.jsp"/>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>