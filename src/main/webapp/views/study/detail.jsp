<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>

<script>
    $(document).ready(function () {
        $('#likes_btn').click( function(){
            let postId='${stdy.id}';
            let stdnId='${loginStdn.id}';
            let likesModal =$('#likes_modal');
            if(stdnId==''){
                let modal = new bootstrap.Modal(likesModal);
                modal.show();
            } else {
                $.ajax({
                    url:'/studylikesaddimpl',
                    data:{postId:postId, stdnId:stdnId},
                    success: function(result){
                        if(result==1){
                            let cnt = $('#cnt_likes').text();
                            newHeart = parseInt(cnt)+1;
                            $('#cnt_likes').text(newHeart);
                            $('#likes_btn').addClass('btn-color-danger');
                            $('#likes_btn').removeClass('btn-color-muted');
                        }else if(result==0){
                            let cnt = $('#cnt_likes').text();
                            newHeart = parseInt(cnt)-1;
                            $('#cnt_likes').text(newHeart);
                            $('#likes_btn').addClass('btn-color-muted');
                            $('#likes_btn').removeClass('btn-color-danger');
                        };
                    }
                });
            };
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
                            <span class="fs-2x text-gray-800" style="font-weight: 900">스터디 게시판</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/study/all" class="btn btn-active-accent active active fw-bold ms-33">스터디 게시판</a>
                <c:choose>
                    <c:when test="${loginStdn != null}">
                        <a href="/study/mine/${loginStdn.id}/all" class="btn btn-active-accent fw-bold ms-3">나의 스터디 기록</a>
                        <a href="/study/add" class="btn btn-active-accent fw-bold ms-3">스터디 일지 작성</a>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="d-flex flex-column flex-lg-row">
                <div class="flex-lg-row-fluid" style="margin-left:0">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-wrap gap-2 justify-content-between mb-8">
                                <div class="d-flex align-items-center flex-wrap gap-2">
                                    <div class="symbol symbol-35px symbol-circle me-5n">
                                        <img alt="Pic" class="mx-2" src="/uimg/${stdy.stdnImg}"/>
                                        <span class="text-gray-800 fw-bolder mx-2">${stdy.stdnName}</span>
                                        <span class="text-muted fw-bold">(${stdy.rdate})</span>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center flex-wrap">
                                    <c:choose>
                                        <c:when test="${stdy.writer == loginStdn.id}">
                                            <div>
                                                <a href="/study/edit?id=${stdy.id}"
                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm"
                                                   data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="bottom" title="수정하기">
                                                                        <span class="svg-icon svg-icon-4">
                                                                            <svg width="24" height="24" viewBox="0 0 24 24"
                                                                                 fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817
                                                                                 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674
                                                                                 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z"
                                                                                      fill="currentColor"/>
                                                                                <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375
                                                                                 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z"
                                                                                      fill="currentColor"/>
                                                                            </svg>
                                                                        </span>
                                                </a>
                                            </div>
                                            <div class="mx-0 px-0 pe-0">
                                                <a href="/study/delete?id=${stdy.id}"
                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm mx-3 review_del_btn"
                                                   data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="bottom" title="삭제하기">
                                                                    <span class="svg-icon svg-icon-4">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z"
                                                                                  fill="currentColor"/>
                                                                            <path opacity="0.5"
                                                                                  d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z"
                                                                                  fill="currentColor"/>
                                                                            <path opacity="0.5"
                                                                                  d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z"
                                                                                  fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                </a>
                                            </div>
                                        </c:when>
                                    </c:choose>
                                    <div>
                                        <a href="javascript:void(0)" id="likes_btn"
                                        class="btn btn-icon btn-bg-light
                                        <c:choose>
                                            <c:when test="${stdy.isLiked==1}">
                                            btn-color-danger
                                            </c:when>
                                            <c:otherwise>
                                            btn-color-muted
                                            </c:otherwise>
                                        </c:choose>
                                        btn-active-color-primary btn-sm mx-3 review_del_btn"
                                        data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="bottom" title="좋아요">
                                            <span class="svg-icon svg-icon-4">
                                                <svg width="24" height="24" viewBox="0 0 24 24"
                                                     fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M18.3721 4.65439C17.6415 4.23815 16.8052 4 15.9142 4C14.3444 4 12.9339 4.73924 12.003 5.89633C11.0657 4.73913 9.66 4 8.08626 4C7.19611 4 6.35789
                                                    4.23746 5.62804 4.65439C4.06148 5.54462 3 7.26056 3 9.24232C3 9.81001 3.08941 10.3491 3.25153 10.8593C4.12155 14.9013 9.69287 20 12.0034 20C14.2502 20
                                                    19.875 14.9013 20.7488 10.8593C20.9109 10.3491 21 9.81001 21 9.24232C21.0007 7.26056 19.9383 5.54462 18.3721 4.65439Z"
                                                          fill="currentColor"/>
                                                </svg>
                                            <span id="cnt_likes">${stdy.likes}</span></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div data-kt-inbox-message="message_wrapper">
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">
                                    <div class="d-flex align-items-center flex-wrap gap-2">
                                        <div class="d-flex">
                                            <a href="#"
                                               class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title="Star">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="collapse fade show" data-kt-inbox-message="message">
                                    <div class="py-5 px-15">
                                        ${stdy.contents}
                                    </div>
                                </div>
                            </div>
                            <div class="separator my-6"></div>
                            <div data-kt-inbox-message="message_wrapper">
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">
                                    <div class="d-flex align-items-center flex-wrap px-12">
                                        <span class="fw-bolder text-muted text-end me-3"><span class="badge badge-light-info">스터디 시간</span> ${stdy.startTime} - ${stdy.endTime}</span>
                                    </div>
                                </div>
                            </div>
                            </form>
                            <div class="separator my-6"></div>
                            <form id="kt_inbox_reply_form">
                                <div class="d-block mx-4">
                                    <div class="d-flex align-items-center border-bottom px-8 min-h-50px">
                                        <span class="svg-icon svg-icon-muted svg-icon-2hx">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path opacity="0.3" d="M10 4H21C21.6 4 22 4.4 22 5V7H10V4Z" fill="currentColor"/>
                                                <path opacity="0.3" d="M13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H13Z" fill="currentColor"/>
                                                <path d="M10.4 3.60001L12 6H21C21.6 6 22 6.4 22 7V19C22 19.6 21.6 20 21 20H3C2.4 20 2 19.6 2 19V4C2 3.4 2.4 3 3 3H9.20001C9.70001 3 10.2 3.20001 10.4 3.60001ZM13 14.4V9C13 8.4 12.6 8 12 8C11.4 8 11 8.4 11 9V14.4H8L11.3 17.7C11.7 18.1 12.3 18.1 12.7 17.7L16 14.4H13Z" fill="currentColor"/>
                                            </svg>
                                        </span>
                                        <span class="fw-bolder text-primay text-end me-3 mx-2">${stdy.filenameOrg}</span>
                                        <a href="/study/download/${stdy.filename}" class="btn btn-light btn-sm btn-active-light-primary">다운로드</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Likes Modal-->
<div class="modal fade modal_rank" tabindex="-1" id="likes_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start" style="width: 50%;">
                    <p id="review_msg" style="font-weight:700">로그인이 필요한 서비스입니다.</p>
                </div>
                <div class="text-end" style="width: 40%;">
                    <a href="/login" style="font-weight: bold;" id="review_modal_btn">로그인</a>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Likes Modal-->



