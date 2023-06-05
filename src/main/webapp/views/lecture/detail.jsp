<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<style>
    .star-ratings {
        position: relative;
        unicode-bidi: bidi-override;
        font-size: 2rem;
        width: max-content;
        color: transparent;
        text-shadow: 0 0 0 #f0f0f0;
    }

    .star-ratings-fill {
        font-size: 2rem;
        position: absolute;
        z-index: 1;
        display: flex;
        top: 0;
        left: 0;
        overflow: hidden;
        text-shadow: 0 0 0 #5bca95;
        fill: #5bca95;
    }

    .star-ratings-base {
        z-index: 0;
        padding: 0;
    }

    .star-rating {
        text-align: left;
        display: flex;
        flex-direction: row-reverse;
        justify-content: start;
        font-size: 1.5rem;
        line-height: 1rem;
        padding: 0 0.1em;
        width: 4.5rem;
    }

    .star-rating input {
        display: none;
    }

    .star-rating label {
        color: transparent;
        text-shadow: 0 0 0 #f0f0f0;
        cursor: pointer;
    }

    .star-rating :checked ~ label {
        text-shadow: 0 0 0 #5bca95;
    }

    .star-rating label:hover,
    .star-rating label:hover ~ label {
        text-shadow: 0 0 0 #5bca95;
    }

    .modal-body {
        padding: 0 1rem 0 1rem;
    }

    #write_table {
        border-collapse: separate;
        border-spacing: 2rem;
        vertical-align: middle;
        font-size: 1.2rem;
    }

    /*.contents-over {*/
    /*    width:500px;*/
    /*    overflow:hidden;*/
    /*    text-overflow:ellipsis;*/
    /*    white-space:nowrap;*/
    /*    display:inline-block;*/
    /*}*/
</style>


<script>
    $(document).ready(function () {

        $('#lec_review_btn').click(function () {
            let stdnId = '${loginStdn.id}';
            let lecId = '${lec.id}';
            let reviewModal = $('#lec_review_modal');
            let writeModal = $('#re_write_modal');

            if (stdnId == '') {
                let modal = new bootstrap.Modal(reviewModal);
                $('#review_msg').html('로그인 후 작성가능합니다!');
                $('#review_modal_btn').html('로그인');
                modal.show();
                return;
            } else {
                let stdnId = '${loginStdn.id}';
                let lecId = '${lec.id}';
                $.ajax({
                    url: '/reviewimpl',
                    data: {stdnId: stdnId, lecId: lecId},
                    success: function (result) {
                        if (result == 1) {
                            let modal = new bootstrap.Modal(reviewModal);
                            $('#review_msg').html('수강한 강의만 작성가능합니다.');
                            $("#review_modal_btn").attr("href", "/lecture/orderthis?id=" + lecId);
                            $('#review_modal_btn').html('수강하기');
                            modal.show();
                        } else if (result == 0) {

                            $.ajax({
                                url: '/reviewaddimpl',
                                data: {stdnId: stdnId, lecId: lecId},
                                success: function (result) {
                                    if (result == 1) {
                                        let modal = new bootstrap.Modal(writeModal);
                                        modal.show();
                                    } else if (result == 0) {
                                        let modal = new bootstrap.Modal(reviewModal);
                                        $('#review_msg').html('이미 리뷰 작성한 강의입니다.');
                                        $("#review_modal_btn").attr("href", "/lecture/orderthis?id=" + lecId);
                                        $('#review_modal_btn').html('마이페이지');
                                        modal.show();
                                    }
                                    ;
                                }
                            });
                        }
                        ;
                    }
                });
            }
        })

        $('.re_like_btn').on('click', function(){
            let postId = $(this).prop('id').substring(8);
            let stdnId = '${loginStdn.id}';
            let reviewModal = $('#lec_review_modal');
            if(stdnId == ''){
                let modal = new bootstrap.Modal(reviewModal);
                $('#review_msg').html('로그인 후 좋아요 가능합니다!');
                $('#review_modal_btn').html('로그인');
                modal.show();
                return;
            } else {
                $.ajax({
                    url:'/lecreviewlikeaddimpl',
                    data: {postId:postId, stdnId:stdnId},
                    success: function(result){
                        if(result==1){
                            let cnt=$('#re_like_cnt_'+postId).text();
                            newHeart = parseInt(cnt)+1
                            $('#re_like_cnt_'+postId).text(newHeart);
                            $('#re_like_'+postId).toggleClass('btn-color-danger');
                            $('#re_like_'+postId).toggleClass('btn-color-muted');


                        } else if (result==0){
                            let cnt = $('#re_like_cnt_'+postId).text();
                            newHeart = parseInt(cnt)-1
                            $('#re_like_cnt_'+postId).text(newHeart);
                            $('#re_like_'+postId).toggleClass('btn-color-danger');
                            $('#re_like_'+postId).toggleClass('btn-color-muted');
                        }
                    }
                })
            }
        })



        $('.review_del_btn').on('click', function(){
            let id = $(this).prop('id');
            alert(id);
            let delModal = $('#del_modal_' + id);
            let modal = new bootstrap.Modal(delModal);
            $('#del_msg_' + id).html('수강 후기를 삭제하시겠습니까?');
            $('#del_btn_' + id).attr("href", "/lecture/reviewdelete?id=" + id);
            $('#del_btn_' + id).html('삭제하기');
            modal.show();
        })

        $('#review_add_btn').click(function () {
            let title = $('#title').val();
            alert(title);
            var submitModal = $('#sumbit_modal');
            if (title == '') {
                let modal = new bootstrap.Modal(submitModal);
                $('#submit_msg').html('제목을 입력하십시오!');
                modal.show();
                return;
            }

            let content = $('#content').val();
            alert(content);
            if (content.length < 20) {
                let modal = new bootstrap.Modal(submitModal);
                $('#submit_msg').html('내용을 입력하십시오!');
                modal.show();
                return;
            }

            let contents = content.replace(/\n/g, "<br />");
            $('#contents').val(contents);

            let imgfile = $('input[name="imgfile"]');
            alert(imgfile);
            let checkExtension = function (fileName, fileSize) {
                var reg = new RegExp("(.*?)\.(exe|zip|alz)$");
                let maxSize = 10485760;

                if (fileSize >= maxSize) {
                    let modal = new bootstrap.Modal(submitModal);
                    $('#submit_msg').html('이미지 파일 사이즈가 초과되었습니다!');
                    modal.show();
                    return false;
                };

                if (reg.test(fileName)) {
                    let modal = new bootstrap.Modal(submitModal);
                    $('#submit_msg').html('해당 종류의 파일은 업로드할 수 없습니다!');
                    modal.show();
                    return false;
                };
                return true;
            };

            let files = imgfile[0].files;
            for (let i = 0; i < files.length; i++) {
                alert(files[i].name);
                alert(files[i].size);

                if (!checkExtension(files[i].name, files[i].size)) {
                    return;
                }
            };

            $('#review_form').attr({
                method: 'post',
                action: '/lecture/reviewaddimpl',
                enctype: 'multipart/form-data'
            });

            $('#review_form').submit();

        });

    })
</script>


<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Course Detail</h3>
                <!--end::Title-->
            </div>
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent fw-bold ms-3">View All Course</a>
                <a href="javascripte:void(0)" class="btn btn-active-accent active active fw-bold ms-3">Course Detail</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My Course
                    List</a>
                <a href="/lecture/curriculum?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">My
                    Curriculum</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">My Cart</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Layout-->
            <div class="flex-row-fluid">
                <!--begin::Section-->
                <!--begin::Engage Widget 13-->
                <!--begin::Card-->
                <div class="card mb-5 mb-xxl-8">
                    <!--begin::Card Body-->
                    <div class="card-body d-flex p-12 flex-column flex-md-row flex-lg-column flex-xxl-row">
                        <!--begin::Image-->
                        <div class="bgi-no-repeat bgi-position-center bgi-size-cover h-300px h-md-auto h-lg-300px h-xxl-auto mw-100 w-900px mx-auto"
                             style="background-image: url('/uimg/${lec.img}');  background-size: cover; border-top-left-radius: 10px; border-bottom-left-radius: 10px"></div>
                        <!--end::Image-->
                        <!--begin::Card-->
                        <div class="card shadow-none w-auto w-md-300px w-lg-auto w-xxl-300px ml-auto">
                            <!--begin::Card Body-->
                            <div class="card-body bg-light px-12 py-10 "
                                 style="border-top-right-radius: 30px;border-bottom-right-radius: 30px;">
                                <h3 class="fw-bold fs-1 mb-1" style="padding-top: 15px;">
                                    <a href="#" class="text-gray-800">${lec.title}</a>
                                </h3>
                                <div class="text-primary fs-3 mb-9" style="font-weight: 700;">
                                    <c:choose>
                                    <c:when test="${lec.discRate == 0}">
                                    <fmt:formatNumber value="${lec.price}" type="number" pattern="KRW###,###"/></div>
                                </c:when>
                                <c:otherwise>
                                <span class="text-primary fs-3 mb-9"
                                      style="font-weight: 400; text-decoration: line-through;">
                                            <fmt:formatNumber value="${lec.price}" type="number" pattern="KRW###,###"/>
                                            </span>
                                    <fmt:formatNumber value="${lec.price * (100 - lec.discRate)/100}" type="number"
                                                      pattern="KRW###,###"/></p>
                            </div>
                            </c:otherwise>
                            </c:choose>
                            <div class="fs-7 mb-8">This is a course about ${lec.topic} and has received a rating
                                of ${lec.rating} out of 5 stars.<br>
                                The total duration of this course is ${lec.length} hours, and it will be taught
                                by instructor ${lec.teacher}.<br>
                                For more information <a href="http://${lec.target}">Click Here</a>
                            </div>
                            <!--begin::Info-->
                            <table class="table table-borderless align-middle fw-semibold">
                                <tr>
                                    <td class="text-gray-600 ps-0">Teacher</td>
                                    <td class="text-dark pe-0">${lec.teacher}</td>
                                </tr>
                                <tr>
                                    <td class="text-gray-600 ps-0">Area</td>
                                    <td class="text-dark pe-0">${lec.topic}</td>
                                </tr>
                                <tr>
                                    <td class="text-gray-600 ps-0">Duration</td>
                                    <td class="text-dark pe-0">${lec.length}</td>
                                </tr>
                                <tr>
                                    <td class="text-gray-600 ps-0">Rating</td>
                                    <td class="text-dark pe-0">
                                        <fmt:formatNumber value="${lec.rating}" type="number" pattern="0.0점"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-gray-600 ps-0">Enrolled</td>
                                    <td class="text-dark pe-0">${lec.hit}</td>
                                </tr>
                            </table>
                            <!--end::Info-->
                        </div>
                        <!--end::Card Body-->
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::Card Body-->
            </div>
            <!--end::Card-->
            <!--end::Engage Widget 13-->
            <!--end::Section-->
            <!--begin::Section-->
            <!--begin::Table Widget 4-->
            <div class="card">
                <!--begin::Header-->
                <div class="card-header border-0 py-5">
                    <h3 class="card-title align-items-start flex-column px-2">
                            <span class="card-label text-dark" style="font-size: 1.5rem;font-weight: 700">강의 리뷰
                        <fmt:formatNumber value="${lec.cnt}" type="number" pattern="###,###"/></span>
                        <span class="text-muted mt-3 fw-semibold fs-7">${lec.hit}명이 선택한 강의입니다.</span>
                    </h3>
                    <div class="card-toolbar">
                        <a href="javascript:void(0)" class="btn btn-primary fw-bold fs-7" id="lec_review_btn">리뷰 쓰기</a>
                    </div>
                </div>
                <c:choose>
                <c:when test="${lec.cnt==0}">
                    <div class="py-5 text-center">
                        <h6 class="text-center">아직 평가를 충분히 받지 못한 강의 입니다.
                                모두에게 도움이 되는 수강평의 주인공이 되어주세요!
                        </h6>
                    </div>
                </c:when>
                </c:choose>
                <div class="card-header border-0 py-3">
                    <div class="d-flex card-header border-0"
                         style="width: 100%;border-bottom-right-radius: 10px;
                         border-bottom-left-radius:10px;padding: 5%;background-color:rgba(223,223,223,0.2)">
                        <div class="text-center" style="width:60%; padding-top:4.5%;">

                            <div class="star-ratingss text-center" style="margin-left: 15%;">
                                <div class="star-ratingss-fill space-x-2 text-lg">
                                    <fmt:formatNumber value="${lec.rating}" type="number" pattern="0.0점"/>
                                </div>
                            </div>
                            <div class="star-ratings text-center" style="margin-left: 15%;">
                                <div class="star-ratings-fill space-x-2 text-lg" style="width: ${lec.rating * 20}%">
                                    <span>⭐</span><span>⭐</span><span>⭐</span><span>⭐</span><span>⭐</span>
                                </div>
                                <div class="star-ratings-base space-x-2 text-lg">
                                    <span>⭐</span><span>⭐</span><span>⭐</span><span>⭐</span><span>⭐</span>
                                </div>
                            </div>
                        </div>
                        <div class="text-center" style="width:40%; padding-right:15%">
                            <c:forEach var="ratingCnt" items="${ratingCnt}">
                                <div class="d-flex flex-column w-100 me-3" style="margin: 2% 0 2% 0;" >
                                    <div class="d-flex align-items-center">
                                        <span class="text-dark me-2 fs-6 fw-bold">
                                            <span class="badge badge-primary"><fmt:formatNumber value="${ratingCnt.rating}" type="number" pattern="0점"/></span>
                                        </span>
                                        <div class="progress h-6px w-100 bg-light-primary">
                                            <div class="progress-bar bg-primary" role="progressbar"
                                                 style="width: ${(ratingCnt.ratingCnt / lec.cnt)*100}%;" aria-valuenow="50"
                                                 aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <span class="text-muted fs-7 fw-semibold ps-3">${ratingCnt.ratingCnt}</span>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>


                <!--end::Header-->
                <!--begin::Body-->
                <div class="card-body py-0">
                    <!--begin::Table-->
                    <div class="table-responsive">
                        <table class="table align-middle border-gray-100" id="kt_advance_table_widget_4">
                            <tbody>
                            <c:forEach var="lecReview" items="${list}">
                                <tr class="text-start text-muted fw-bold text-gray-400 text-uppercase fs-7 border-gray-100 border-bottom-1">
                                    <div class="text-dark ps-0 min-w-250px py-5">
                                        <div class="d-flex">
                                            <div class="symbol symbol-35px symbol-circle" style="width: 3%;">
                                                <img alt="Pic" src="/uimg/${lecReview.stdnImg}"/>
                                            </div>
                                            <div class="ms-5" style="width: 85%;">
                                                <a href="/mypage?id=${lecReview.stdnId}"
                                                   class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">${lecReview.stdnId}</a>
                                                <div class="fw-semibold text-muted">
                                                    <span class="text-warning min-w-100px py-5">
                                                        <div class="rating">
                                                            <c:forEach var="i" begin="1" end="5">
                                                                <c:choose>
                                                                    <c:when test="${i <= lecReview.rating}">
                                                                        <div class="rating-label checked">
                                                                            <span class="svg-icon">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
                                                                                    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
                                                                                </svg>
                                                                            </span>
                                                                        </div>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <div class="rating-label">
                                                                            <span class="svg-icon">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
                                                                                    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
                                                                                </svg>
                                                                            </span>
                                                                        </div>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </div>
                                                    </span>
                                                    <span class="text-success">${lecReview.rdate}</span></div>
                                            </div>
                                            <div class="pe-0 text-end d-flex" style="width: 12%;">
                                                    <c:choose>
                                                        <c:when test="${lecReview.stdnId == loginStdn.id}">
                                                            <div>
                                                                <a href="#" class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm">
                                                                    <span class="svg-icon svg-icon-4">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24"
                                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817
                                                                             5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674
                                                                             21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor"/>
                                                                            <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375
                                                                             2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                </a>
                                                            </div>
                                                            <div>
                                                                <a href="javascript:void(0)" id="${lecReview.id}"
                                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm mx-3 review_del_btn">
                                                                    <span class="svg-icon svg-icon-4">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="currentColor"/>
                                                                            <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="currentColor"/>
                                                                            <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                </a>
                                                            </div>
                                                        </c:when>
                                                    </c:choose>
                                                    <div>
                                                        <c:choose>
                                                            <c:when test="${lecReview.isLiked == 1}">
                                                                <a href="javascript:void(0)" id="re_like_${lecReview.id}" data-vlaue="${lecReview.isLiked}"
                                                                   class="btn btn-icon btn-bg-light btn-color-danger btn-active-color-primary btn-sm re_like_btn">
                                                                    <span class="svg-icon svg-icon-4">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M18.3721 4.65439C17.6415 4.23815 16.8052 4 15.9142 4C14.3444 4 12.9339 4.73924 12.003 5.89633C11.0657 4.73913 9.66 4 8.08626 4C7.19611 4 6.35789
                                                                            4.23746 5.62804 4.65439C4.06148 5.54462 3 7.26056 3 9.24232C3 9.81001 3.08941 10.3491 3.25153 10.8593C4.12155 14.9013 9.69287 20 12.0034 20C14.2502 20
                                                                            19.875 14.9013 20.7488 10.8593C20.9109 10.3491 21 9.81001 21 9.24232C21.0007 7.26056 19.9383 5.54462 18.3721 4.65439Z" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                    <span id="re_like_cnt_${lecReview.id}" data-value="${lecReview.stdnId}">${lecReview.likes}</span>
                                                                </a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="javascript:void(0)" id="re_like_${lecReview.id}" data-vlaue="${lecReview.isLiked}"
                                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm re_like_btn">
                                                                    <span class="svg-icon svg-icon-4">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M18.3721 4.65439C17.6415 4.23815 16.8052 4 15.9142 4C14.3444 4 12.9339 4.73924 12.003 5.89633C11.0657 4.73913 9.66 4 8.08626 4C7.19611 4 6.35789
                                                                            4.23746 5.62804 4.65439C4.06148 5.54462 3 7.26056 3 9.24232C3 9.81001 3.08941 10.3491 3.25153 10.8593C4.12155 14.9013 9.69287 20 12.0034 20C14.2502 20
                                                                            19.875 14.9013 20.7488 10.8593C20.9109 10.3491 21 9.81001 21 9.24232C21.0007 7.26056 19.9383 5.54462 18.3721 4.65439Z" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                    <span id="re_like_cnt_${lecReview.id}" data-value="${lecReview.stdnId}">${lecReview.likes}</span>
                                                                </a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="align-items-center py-3 px-15">
                                            <c:choose>
                                                <c:when test="${lecReview.imgOrg!=null}">
                                                    <div class="symbol symbol-100px rounded">
                                                        <img alt="Pic" src="/uimg/${lecReview.img}" data-bs-toggle="modal" data-bs-target="#review_detail_${lecReview.id}"/>
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                            <div class="py-2">
                                                <a href="#"
                                                   class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">${lecReview.title}</a>
                                                <div class="fw-semibold text-muted">
                                                    <span class="text-dark min-w-100px py-5 contents-over">${lecReview.contents}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <!--Review Delete Modal -->
                                <div class="modal fade modal_rank" tabindex="-1" id="del_modal_${lecReview.id}">
                                    <div class="modal-dialog">
                                        <div class="modal-content" style="padding: 7% 5% 5% 5%; text-align:center;">
                                            <div class="modal-body"
                                                 style="display: flex; justify-content: space-between">
                                                <div class="text-start" style="width: 50%;">
                                                    <p id="del_msg_${lecReview.id}" style="font-weight:700"></p>
                                                </div>
                                                <div class="text-end" style="width: 40%;">
                                                    <a href="/login" style="font-weight: bold;"
                                                       id="del_btn_${lecReview.id}"></a>
                                                </div>
                                                <div class="text-end" style="width: 10%;">
                                                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal"
                                                         aria-label="Close">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End Review Delete Modal-->

                                <div class="modal fade" tabindex="-1" id="review_detail_${lecReview.id}">
                                    <div class="modal-dialog modal-fullscreen">
                                        <div class="modal-content" style="padding: 3%">
                                            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6"
                                                style="display: flex; justify-content: space-between">
                                                <li class="nav-item">
                                                    <a class="nav-link active fs-2qx text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">사진 상세 보기</a>
                                                </li>
                                                <l1>
                                                    <div class="text-end">
                                                        <img src="/img/close.png" style="width: 8%" data-bs-dismiss="modal" aria-label="Close">
                                                    </div>
                                                </l1>
                                            </ul>
                                                <div class="modal-body tab-content">
                                                    <div class="tab-pane fade show active" role="tabpanel">
                                                        <div>
                                                            <img src="/uimg/${lecReview.img}">
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!--end::Table-->
                </div>
                <!--end::Body-->
            </div>
            <!--end::Table Widget 4-->
            <!--end::Section-->
        </div>
        <!--end::Layout-->
    </div>
    <!--end::Container-->
</div>
<!--end::Content-->
</div>
<!--end::Main-->
<!--Review Modal Start-->
<div class="modal fade modal_rank" tabindex="-1" id="lec_review_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 7% 5% 5% 5%; text-align:center;">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start" style="width: 50%;">
                    <p id="review_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 40%;">
                    <a href="/login" style="font-weight: bold;" id="review_modal_btn"></a>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Review Modal-->


<div class="modal fade" tabindex="-1" id="re_write_modal">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
        <div class="modal-content" style="padding: 3%">
            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6"
                style="display: flex; justify-content: space-between">
                <li class="nav-item">
                    <a class="nav-link active fs-2qx text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">리뷰 작성</a>
                </li>
                <l1>
                    <div class="text-end">
                        <img src="/img/close.png" style="width: 8%" data-bs-dismiss="modal" aria-label="Close">
                    </div>
                </l1>
            </ul>
            <form id="review_form">
                <div class="modal-body tab-content">
                    <div class="tab-pane fade show active" role="tabpanel">
                        <div>
                            <input type="hidden" id="contents" name="contents"/>
                            <input type="hidden" id="stdnId" name="stdnId" value="${loginStdn.id}">
                            <input type="hidden" id="lecId" name="lecId" value="${lec.id}">
                            <div class="table-responsive">
                                <table id="write_table" class="table table-row table-row gs-7">
                                    <tbody>
                                    <colgroup>
                                        <col style="width: 10%">
                                        <col style="width: 90%;">
                                    </colgroup>
                                    <tr style="vertical-align:middle">
                                        <th>별점</th>
                                        <td>
                                            <div class="star-rating text-start">
                                                <input type="radio" checked id="5-stars" name="rating" value="5"
                                                       v-model="ratings"/>
                                                <label for="5-stars" class="star pr-4">⭐</label>
                                                <input type="radio" id="4-stars" name="rating" value="4"
                                                       v-model="ratings"/>
                                                <label for="4-stars" class="star">⭐</label>
                                                <input type="radio" id="3-stars" name="rating" value="3"
                                                       v-model="ratings"/>
                                                <label for="3-stars" class="star">⭐</label>
                                                <input type="radio" id="2-stars" name="rating" value="2"
                                                       v-model="ratings"/>
                                                <label for="2-stars" class="star">⭐</label>
                                                <input type="radio" id="1-star" name="rating" value="1"
                                                       v-model="ratings"/>
                                                <label for="1-star" class="star">⭐</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>제목</th>
                                        <td>
                                            <input spellcheck="false"
                                                   class="form-control form-control-lg form-control-solid" type="text"
                                                   id="title" name="title"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="vertical-align: super">내용</th>
                                        <td><textarea rows="7" spellcheck="false"
                                                      class="form-control form-control-lg form-control-solid "
                                                      placeholder="수강평을 남겨주시면 지식공유자와 이후 배우는 수강생에게 큰 도움이 됩니다.(20자 이상)"
                                                      data-kt-autosize="true" id="content" name="content"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>사진선택</th>
                                        <td>
                                            <input type="file" id="imgfile" name="imgfile"
                                                   class="form-control form-control-lg form-control-solid">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer text-center" style="border-top: 1.4px solid #d8d8d8;align-items: center;">
                    <button type="button" class="btn btn-light fw-bolder" data-bs-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary fw-bolder" id="review_add_btn">리뷰 등록</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!--Submit Modal Start-->
<div class="modal fade modal_rank" tabindex="-1" id="sumbit_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 7% 5% 5% 5%; text-align:center;background-color: #41da9b">
            <div class="modal-body text-white" style="display: flex; justify-content: space-between;font-size: 1.3rem;">
                <div class="text-start" style="width: 90%;">
                    <p id="submit_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Submit Modal-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/apps/shop.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
