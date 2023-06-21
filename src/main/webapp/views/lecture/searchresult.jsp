<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<script>
    $(document).ready(function () {
        $('.youtube_btn').click(function(){
            let index = $(this).prop('id');
            alert($('#title_'+index).text());
            alert($('#rdate_'+index).text());
            alert($('#channelTitle_'+index).text());
            alert($('#description_'+index).text());
            alert($('#'+index).data('value'));
            $('#title').val($('#title_'+index).text());
            $('#rdate').val($('#rdate_'+index).text());
            $('#channelTitle').val($('#channelTitle_'+index).text());
            $('#description').val($('#description_'+index).text());
            $('#videoId').val($('#'+index).data('value'));

            $('#youtube_play').attr({
                'action': '/lecture/searchplay',
                'method': 'get'
            });
            $('#youtube_play').submit();

        })
    })
</script>




<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">학습 자료 찾기</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card card-stretch bg-light-info">
                    <div class="card-body pb-0" >
                        <div class="d-flex pt-5 pb-20">
                            <div class="d-flex flex-column text-center pt-5" style="z-index: 9999; align-items: center">
                                <div>
                                    <img src="/img/logo3.png" alt="logo3" style="width: 35%;">
                                </div>
                                <form id="youtube_search" class="d-flex" action="/lecture/searchimpl" method="get">
                                    <input type="text" id="search" name="search"
                                           <c:if test="${youtube.search!=null}">value="${youtube.search}"</c:if>
                                           class="form-control border-0 fw-semibold ps-10 w-md-400px w-lg-400px w-xl-450px w-xxl-500px me-1"
                                           placeholder="이제 DIGICampus 안에서 원큐에 검색하세요!"/>

                                    <div class="py-2 px-2 bg-light-primary rounded">
                                        <button type="submit" class="btn bg-light-primary btn-icon flex-shrink-0">
                                                <span class="svg-icon svg-icon-1 svg-icon-info">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M21.7 18.9L18.6 15.8C17.9 16.9 16.9 17.9 15.8 18.6L18.9 21.7C19.3 22.1 19.9 22.1 20.3 21.7L21.7 20.3C22.1 19.9 22.1 19.3 21.7 18.9Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M11 20C6 20 2 16 2 11C2 6 6 2 11 2C16 2 20 6 20 11C20 16 16 20 11 20ZM11 4C7.1 4 4 7.1 4 11C4 14.9 7.1 18 11 18C14.9 18 18 14.9 18 11C18 7.1 14.9 4 11 4ZM8 11C8 9.3 9.3 8 11 8C11.6 8 12 7.6 12 7C12 6.4 11.6 6 11 6C8.2 6 6 8.2 6 11C6 11.6 6.4 12 7 12C7.6 12 8 11.6 8 11Z" fill="currentColor"/>
                                                    </svg>
                                                </span>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <form id="youtube_play">
                            <input type="hidden" id="videoId" name="videoId">
                            <input type="hidden" id="title" name="title">
                            <input type="hidden" id="channelTitle" name="channelTitle">
                            <input type="hidden" id="description" name="description">
                            <input type="hidden" id="rdate" name="rdate">
                        </form>
                        <div class="py-2 px-2 rounded bg-white">
                            <div class="table-responsive">
                                <table class="table table-row-bordered table-row-solid gy-4 gs-9">
                                    <tbody class="fs-6 fw-semibold text-gray-600">
                                    <c:forEach var="youtube" items="${result}">
                                        <tr>
                                            <td class="ps-9 text-center">
                                                <a href="javascript:void(0)" class="youtube_btn" id="${youtube.index}" data-value="${youtube.videoId}">
                                                    <img src="${youtube.imageUrl}" class="rounded"/>
                                                </a>
                                            </td>
                                            <td class="text-start">
                                                <div class="d-flex flex-column flex-start">
                                                    <div class="text-start">
                                                        <span class="text-gray-900 fw-bolder fs-2" id="title_${youtube.index}">${youtube.title}</span><br>
                                                        <span class="text-gray-700" id="channelTitle_${youtube.index}">채널명: [${youtube.channelTitle}]
                                                        <span class="svg-icon svg-icon-muted">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="currentColor"/>
                                                                <path d="M10.4343 12.4343L8.75 10.75C8.33579 10.3358 7.66421 10.3358 7.25 10.75C6.83579 11.1642 6.83579 11.8358 7.25 12.25L10.2929 15.2929C10.6834 15.6834 11.3166 15.6834 11.7071 15.2929L17.25 9.75C17.6642 9.33579 17.6642 8.66421 17.25 8.25C16.8358 7.83579 16.1642 7.83579 15.75 8.25L11.5657 12.4343C11.2533 12.7467 10.7467 12.7467 10.4343 12.4343Z" fill="currentColor"/>
                                                            </svg>
                                                        </span>
                                                        </span><br>
                                                        <span class="text-gray-700" id="description_${youtube.index}">요약정보: ${youtube.description}</span><br>
                                                        <span class="text-gray-700" id="rdate_${youtube.index}">등록일: ${youtube.rdate}</span><br>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>


                                        <div class="modal fade" tabindex="-1" id="${youtube.videoId}" style="z-index: 99999;">
                                            <div class="modal-dialog modal-dialog-centered modal-xl">
                                                <div class="modal-content" style="padding: 3%">
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6"
                                                        style="display: flex; justify-content: space-between">
                                                        <li class="nav-item">
                                                            <a class="nav-link active fs-2qx text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">리뷰 수정</a>
                                                        </li>
                                                        <l1>
                                                            <div class="text-end">
                                                                <img src="/img/close.png" style="width: 8%" data-bs-dismiss="modal" aria-label="Close">
                                                            </div>
                                                        </l1>
                                                    </ul>
                                                    <form id="edit_form">
                                                        <div class="modal-body tab-content">
                                                            <div class="tab-pane fade show active" role="tabpanel">
                                                                <div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer text-center" style="border-top: 1.4px solid #d8d8d8;align-items: center;">
                                                            <button type="button" class="btn btn-light fw-bolder" data-bs-dismiss="modal">취소</button>
                                                            <button type="button" class="btn btn-primary fw-bolder" id=edit_btn">리뷰 등록</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>