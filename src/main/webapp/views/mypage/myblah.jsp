<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    #register_btn {
        margin-right: 10px;
        font-weight: bold;
    }

    .bi-trash {
        color: gray; /* Set the default color to gray */
        transition: color 0.3s; /* Add a smooth transition effect */
    }

    .bi-trash:hover {
        color: #20D489; /* Change the color to red on hover */
    }


</style>
<script>
    $(document).ready(function () {
            const loadingEl = document.createElement("div");
            document.body.prepend(loadingEl);
            loadingEl.classList.add("page-loader");
            loadingEl.classList.add("flex-column");
            loadingEl.classList.add("bg-dark");
            loadingEl.classList.add("bg-opacity-25");
            loadingEl.innerHTML = `
        <span class="spinner-border text-primary" role="status"></span>
        <span class="text-gray-800 fs-6 fw-semibold mt-5">Loading...</span>
    `;

            // Show page loading
            KTApp.showPageLoading();

            // Hide after 3 seconds
            setTimeout(function () {
                KTApp.hidePageLoading();
                loadingEl.remove();
            }, 500);

            function checkEditorContent() {
                const quillContent = $('.ql-editor').html().trim();
                // console.log(quillContent);
                if (quillContent === '<p><br></p>') {
                    // ql-editor is empty
                    $('#register_btn').css('cursor', 'default');
                    $('#register_btn').css('transition', 'color 0.3s');
                    $('#register_btn').css('color', '#6c757d');
                } else {
                    // ql-editor has content
                    $('#register_btn').css('cursor', 'pointer');
                    $('#register_btn').css('transition', 'color 0.3s');
                    $('#register_btn').css('color', '#20D489');
                }
            }


            checkEditorContent();


            // Call checkEditorContent when the content changes
            $('.ql-editor').on('keyup', checkEditorContent);


            $('#register_btn').click(function (e) {
                //content 글자 제한 하기, 아무내용 없을때 게시 버튼 비활성화.    수정 삭제버튼
                // const contents = document.getElementById('kt_forms_widget_1_editor').innerHTML;
                // console.log(contents);


                // Quill 에디터에서 사용자의 입력 추출
                const quillContent = document.querySelector('.ql-editor').innerHTML;

                // 출력할 요소 생성 및 설정

                const outputElement = document.createElement('div');
                outputElement.innerHTML = quillContent;
                outputElement.classList.add('ql-editor'); // 필요한 CSS 클래스 추가
                const outerDiv = document.createElement('div');
                outerDiv.appendChild(outputElement);
                // console.log(outerDiv.innerHTML);

                if (outerDiv.innerHTML == '<div class="ql-editor"><p><br></p></div>') {
                    // alert("게시글을 입력해주세요")
                    $('#kt_modal_1_alert').modal('show');
                    return;
                }

                // 폼 데이터 생성
                const formData = new FormData($('#kt_forms_widget_1_form')[0]);
                formData.append('contents', outerDiv.innerHTML);
                // 입력된 값 출력
                formData.forEach(function (value, key) {
                    console.log('Input:', key, value);
                });


                // 서버로 데이터 전송
                $.ajax({
                    url        : '/blah/addimpl',
                    method     : 'POST',
                    data       : formData,
                    processData: false,
                    contentType: false,
                    success    : function (response) {
                        console.log('Data submitted successfully');
                        window.location.href = '/mypage/myblah?id=${loginStdn.id}';
                    },
                    error      : function (error) {
                        console.error('Error submitting data:', error);
                    }
                });
            });

            $('[id^="add_comm_"]').on('click', function () {
                const postId = $(this).closest('form').find('input[name="postId"]').val();
                // console.log(postId+'postid')
                const contents = $(this).closest('form').find('textarea[name="contents"]').val();
                // console.log(contents+'contents')

                if (contents == '' || contents == null) {
                    $('#kt_modal_1_alert').modal('show');
                    return;
                }

                var formData = new FormData($('#comm_from_' + postId)[0]);


                formData.forEach(function (value, key) {
                    // console.log('Input:', key, value);
                });

                $.ajax({
                    url        : '/blah/addcomm',
                    method     : 'POST',
                    data       : formData,
                    processData: false,
                    contentType: false,
                    success    : function (response) {
                        console.log('Data submitted successfully');
                        var scrollPosition = $(window).scrollTop();
                        // 댓글 추가 후 스크롤 위치 복원
                        $('html, body').animate({scrollTop: scrollPosition}, 0);
                        window.location.reload(); // 페이지 새로고침
                    },
                    error      : function (error) {
                        console.error('Error submitting data:', error);
                    }
                });
            });

            $('[id^="likeButton_"]').each(function () {
                const postId = $(this).closest('form').find('input[name="postId"]').val();
                const stdnId = $(this).closest('form').find('input[name="stdnId"]').val();
                const board = $(this).closest('form').find('input[name="board"]').val();
                console.log(postId, stdnId, board)
                // 좋아요를 이미 누른 상태인지 확인하는 AJAX 요청
                $.ajax({
                    url    : '/blah/checklike',
                    method : 'GET',
                    data   : {postId: postId, stdnId: stdnId, board: board},
                    success: function (response) {
                        if (response === 'liked') {
                            const path = $(this).find('path');
                            path.attr('fill', 'red');
                        }
                    }.bind(this),
                    error  : function (xhr, status, error) {
                        console.log('에러가 발생했습니다.');
                    }
                });

                // 클릭 이벤트 처리
                $(this).click(function (e) {
                    e.preventDefault();
                    const stdnId = $(this).closest('form').find('input[name="stdnId"]').val();
                    // console.log(stdnId+"로그인한 사람");

                    if (stdnId === null || stdnId === "") {
                        alert('로그인해주세요')
                        window.location.href = '/login';
                        //모달로 바꾸기------------------------------------
                        return;
                    }

                    const path = $(this).find('path');
                    const currentColor = path.attr('fill');

                    if (currentColor === 'currentColor') {
                        path.attr('fill', 'red');
                        // AJAX 요청을 보냅니다.
                        $.ajax({
                            url    : '/blah/addlike',
                            method : 'POST',
                            data   : $('#likeblah_' + postId).serialize(),
                            success: function (response) {
                                console.log('요청이 성공적으로 보내졌습니다.');
                                var scrollPosition = $(window).scrollTop();
                                $('html, body').animate({scrollTop: scrollPosition}, 0);
                                window.location.reload(); // 페이지 새로고침
                            },
                            error  : function (xhr, status, error) {
                                console.log('에러가 발생했습니다.');
                            }
                        });
                    } else {
                        path.attr('fill', 'currentColor');
                        // AJAX 요청을 보냅니다.
                        $.ajax({
                            url    : '/blah/deletelike',
                            method : 'POST',
                            data   : $('#likeblah_' + postId).serialize(),
                            success: function (response) {
                                console.log('요청이 성공적으로 보내졌습니다.');
                                var scrollPosition = $(window).scrollTop();
                                $('html, body').animate({scrollTop: scrollPosition}, 0);
                                window.location.reload(); // 페이지 새로고침
                            },
                            error  : function (xhr, status, error) {
                                console.log('에러가 발생했습니다.');
                            }
                        });
                    }
                });
            });


        }
    )
    ;
</script>

<div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
    <div class="col-xl-12">
        <div style="text-align: right;">

            <a href="/blah" class="btn btn-active-accent active fw-bold">블라블라로 이동하기</a>
        </div>

        <div class="card mb-5 mb-xxl-8">
            <!--begin::Body-->
            <div class="card-body pb-0">
                <!--begin::Top-->
                <div style="height: 200px" class="d-flex align-items-center">


                </div>
            </div>
        </div>
        <c:if test="${student.id == loginStdn.id}">

            <!--begin::Feeds Widget 1-->
            <div class="card mb-5 mb-xxl-8">
                <!--begin::Body-->
                <div class="card-body pb-0">
                    <!--begin::Top-->
                    <div class="d-flex align-items-center">
                        <!--begin::Symbol-->
                        <div class="symbol symbol-45px me-5">
														<span class="symbol-label bg-light align-items-end">
															<img alt="Logo"
                                                                 src="/uimg/${loginStdn.img}"
                                                                 class="mh-40px"/>
														</span>
                        </div>
                        <!--end::Symbol-->
                        <!--begin::Description-->
                        <c:set var="name" value="${loginStdn.name}"/>
                        <c:set var="substring" value="${name.substring(1)}"/>
                        <span class="text-muted fw-semibold fs-6">What’s on your mind, ${substring}?</span>

                        <!--end::Description-->
                    </div>
                    <!--end::Top-->
                    <!--begin::Form-->
                    <form id="kt_forms_widget_1_form" class="pt-7 ql-quil ql-quil-plain">
                        <!--begin::Editor-->
                        <input type="hidden" name="stdnId" value="${loginStdn.id}">
                        <div id="kt_forms_widget_1_editor"></div>
                        <!--end::Editor-->
                        <div class="border-top mt-5"></div>
                        <!--begin::Toolbar-->
                        <div id="kt_forms_widget_1_editor_toolbar" class="ql-toolbar d-flex flex-stack py-2">
                            <div class="me-2">
															<span class="ql-formats ql-size ms-0">
																<select class="ql-size w-75px"></select>
															</span>
                                <button class="ql-bold"></button>
                                <button class="ql-italic"></button>
                                <button class="ql-underline"></button>
                                <button class="ql-image"></button>
                                <button class="ql-clean"></button>


                            </div>
                            <div class="me-n3">
                                <span id="register_btn">게시</span>
                            </div>
                        </div>
                        <!--end::Toolbar-->
                    </form>
                    <!--end::Form-->
                </div>
                <!--end::Body-->
            </div>
            <!--end::Feeds Widget 1-->
        </c:if>


        <c:forEach var="obj" items="${blahList}">
            <!--begin::Feeds Widget 2-->
            <div class="card mb-5 mb-xxl-8">
                <!--begin::Body-->
                <div class="card-body pb-0">
                    <!--begin::Header-->
                    <div class="d-flex align-items-center">
                        <!--begin::Symbol-->
                        <div class="symbol symbol-45px me-5">
														<span class="symbol-label bg-light align-items-end">
															<img alt="Logo"
                                                                 src="/uimg/${obj.img}"
                                                                 class="mh-40px"/>
														</span>
                        </div>
                        <!--end::Symbol-->
                        <!--begin::Info-->


                        <div class="d-flex flex-column flex-grow-1">
                            <a href="/mypage?id=${obj.stdnId}"
                               class="text-gray-800 text-hover-primary mb-1 fs-6 fw-bold">
                                    ${obj.name} <span
                                    style="color: gray;font-weight: 200">@ ${obj.stdnId}</span>
                            </a>
                            <span class="text-muted fw-semibold">${obj.rdate}</span>
                        </div>
                        <c:if test="${obj.stdnId == loginStdn.id}">
                            <i class="bi-trash" class="btn btn-active-accent active fw-bold"
                               data-bs-toggle="modal" data-bs-target="#kt_modal_1_${obj.id}"></i>
                        </c:if>
                        <!--end::Info-->
                    </div>
                    <!--end::Header-->
                    <!--begin::Body-->
                    <div class="pt-5">
                        <!--begin::Text-->
                        <p class="text-gray-800 fs-6 fw-normal mb-2">${obj.contents}</p>
                        <!--end::Text-->
                        <!--begin::Action-->
                        <div class="d-flex align-items-center">
                            <a href="#" data-bs-toggle="modal"
                               data-bs-target="#kt_modal_scrollable_2_${obj.id}"
                               class="btn btn-sm btn-color-muted btn-active-light-primary fw-bold">
                                <!--begin::Svg Icon | path: icons/duotune/communication/com012.svg-->
                                <span class="svg-icon svg-icon-3 pe-2">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path opacity="0.3"
                                                                      d="M20 3H4C2.89543 3 2 3.89543 2 5V16C2 17.1046 2.89543 18 4 18H4.5C5.05228 18 5.5 18.4477 5.5 19V21.5052C5.5 22.1441 6.21212 22.5253 6.74376 22.1708L11.4885 19.0077C12.4741 18.3506 13.6321 18 14.8167 18H20C21.1046 18 22 17.1046 22 16V5C22 3.89543 21.1046 3 20 3Z"
                                                                      fill="currentColor"/>
																<rect x="6" y="12" width="7" height="2" rx="1"
                                                                      fill="currentColor"/>
																<rect x="6" y="7" width="12" height="2" rx="1"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                                    ${obj.commentCount}
                            </a>
                            <form id="likeblah_${obj.id}">
                                <input type="hidden" id="postId" name="postId" value="${obj.id}">
                                <input type="hidden" id="stdnId" name="stdnId" value="${loginStdn.id}">
                                <input type="hidden" id="board" name="board" value="B">
                                <a href="#" id="likeButton_${obj.id}"
                                   class="btn btn-sm btn-color-muted btn-active-light-danger fw-bold">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen030.svg-->
                                    <span class="svg-icon svg-icon-3 pe-1">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M18.3721 4.65439C17.6415 4.23815 16.8052 4 15.9142 4C14.3444 4 12.9339 4.73924 12.003 5.89633C11.0657 4.73913 9.66 4 8.08626 4C7.19611 4 6.35789 4.23746 5.62804 4.65439C4.06148 5.54462 3 7.26056 3 9.24232C3 9.81001 3.08941 10.3491 3.25153 10.8593C4.12155 14.9013 9.69287 20 12.0034 20C14.2502 20 19.875 14.9013 20.7488 10.8593C20.9109 10.3491 21 9.81001 21 9.24232C21.0007 7.26056 19.9383 5.54462 18.3721 4.65439Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                                    <!--end::Svg Icon-->${obj.likeCount}</a>
                            </form>
                        </div>
                        <!--end::Action-->
                    </div>
                        <%--전체댓글 모달--%>
                    <div class="modal fade" tabindex="-1" id="kt_modal_scrollable_2_${obj.id}">
                        <div class="modal-dialog modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">전체 댓글 보기</h5>

                                    <!--begin::Close-->
                                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                                         data-bs-dismiss="modal" aria-label="Close">
                                        <span class="svg-icon svg-icon-2x"></span>
                                    </div>
                                    <!--end::Close-->
                                </div>

                                <div class="modal-body">
                                    <c:forEach var="comment" items="${obj.commList}" varStatus="status">
                                        <div class="d-flex py-5">
                                            <!--begin::Symbol-->
                                            <div class="symbol symbol-40px me-5">
            <span class="symbol-label bg-light align-items-end">
                <img alt="Logo" src="/uimg/${comment.stdnImg}" class="mh-35px"/>
            </span>
                                            </div>
                                            <!--end::Symbol-->
                                            <!--begin::Info-->
                                            <div class="d-flex flex-column flex-row-fluid">
                                                <!--begin::Info-->
                                                <div class="d-flex align-items-center flex-wrap">
                                                    <a href="#"
                                                       class="text-gray-800 text-hover-primary mb-1 fs-6 fw-bold pe-6">${comment.stdnName}</a>
                                                    <span class="text-muted fw-normal flex-grow-1 fs-7">${comment.rdate}</span>
                                                    <c:choose>
                                                        <c:when test="${comment.stdnId == loginStdn.id || obj.stdnId == loginStdn.id}">
                                                            <a style="margin-left: 10px" href="#"
                                                               class="text-muted text-hover-primary fw-normal fs-7"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#kt_modal_1_com_${comment.id}"
                                                            >Delete</a>
                                                        </c:when>
                                                    </c:choose>
                                                </div>
                                                <span class="text-gray-800 fs-7 fw-normal pt-1">${comment.contents}</span>
                                                <!--end::Info-->
                                            </div>
                                            <!--end::Info-->
                                        </div>
                                    </c:forEach>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end::Body-->
                    <!--begin::Separator-->
                    <div class="separator pt-4"></div>
                    <!-- ... 이전 코드 생략 ... -->
                    <!--begin::Comment-->


                    <c:forEach var="comment" items="${obj.commList}" varStatus="status">
                        <c:if test="${status.index < 2}">
                            <div class="d-flex py-5">
                                <!--begin::Symbol-->
                                <div class="symbol symbol-40px me-5">
            <span class="symbol-label bg-light align-items-end">
                <img alt="Logo" src="/uimg/${comment.stdnImg}" class="mh-35px"/>
            </span>
                                </div>
                                <!--end::Symbol-->
                                <!--begin::Info-->
                                <div class="d-flex flex-column flex-row-fluid">
                                    <!--begin::Info-->
                                    <div class="d-flex align-items-center flex-wrap">
                                        <a href="#"
                                           class="text-gray-800 text-hover-primary mb-1 fs-6 fw-bold pe-6">${comment.stdnName}</a>
                                        <span class="text-muted fw-normal flex-grow-1 fs-7">${comment.rdate}</span>
                                            <%--                                                <a href="#"--%>
                                            <%--                                                   class="text-muted text-hover-primary fw-normal fs-7">Reply</a>--%>
                                        <c:choose>
                                            <c:when test="${comment.stdnId == loginStdn.id || obj.stdnId == loginStdn.id}">
                                                <a style="margin-left: 10px" href="#"
                                                   class="text-muted text-hover-primary fw-normal fs-7"
                                                   data-bs-toggle="modal"
                                                   data-bs-target="#kt_modal_1_com_${comment.id}"
                                                >Delete</a>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                    <span class="text-gray-800 fs-7 fw-normal pt-1">${comment.contents}</span>
                                    <!--end::Info-->
                                </div>
                                <!--end::Info-->
                            </div>
                            <div class="modal fade" tabindex="-1" id="kt_modal_1_com_${comment.id}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="modal-title">Warning⚠️</h3>

                                            <!--begin::Close-->
                                            <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                                                 data-bs-dismiss="modal" aria-label="Close">
                                                <span class="svg-icon svg-icon-1"></span>
                                            </div>
                                            <!--end::Close-->
                                        </div>

                                        <div class="modal-body">
                                            <p>댓글을 정말로 삭제하시겠습니까?</p>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light"
                                                    data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <a href="/blah/deletecom?id=${comment.id}"
                                               class="btn btn-light">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>

                    <!--end::Separator-->
                    <!--begin::Editor-->
                    <form id="comm_from_${obj.id}"
                          class="position-relative py-4 d-flex align-items-center pb-5">
                        <input type="hidden" name="stdnId" value="${loginStdn.id}">
                        <input type="hidden" name="postId" value="${obj.id}">
                        <textarea id="commcontents${obj.id}" name="contents"
                                  class="form-control min-h-auto border-0 p-0 pe-10 resize-none" rows="1"
                                  placeholder="Reply..." onkeyup="checkTextareaEmpty(${obj.id})"></textarea>
                        <div class="position-absolute top-0 end-0 mt-2 me-n3">
                                        <span style="color: #6c757d; font-weight: bold"
                                              id="add_comm_${obj.id}">게시</span>
                        </div>
                    </form>
                    <!--edit::Editor-->
                </div>
                <!--end::Body-->
            </div>
            <!--end::Feeds Widget 2-->
            <%--                        delete 모달--%>
            <div class="modal fade" tabindex="-1" id="kt_modal_1_${obj.id}">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Warning⚠️</h3>

                            <!--begin::Close-->
                            <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                                 data-bs-dismiss="modal" aria-label="Close">
                                <span class="svg-icon svg-icon-1"></span>
                            </div>
                            <!--end::Close-->
                        </div>

                        <div class="modal-body">
                            <p>게시글을 정말로 삭제하시겠습니까?</p>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close
                            </button>
                            <a class="btn btn-primary" href="/blah/delete?id=${obj.id}">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <!--begin::Feeds Widget 3-->
        <!--end::Body-->
    </div>


    <!--end::List Widget 2-->
    <%--        </div>--%>
    <%--    </div>--%>
</div>

<script>
    // keyup 이벤트 핸들러 함수
    function checkTextareaEmpty(objId) {
        var textarea = document.getElementById('commcontents' + objId);
        var addButton = document.getElementById('add_comm_' + objId);

        if (textarea.value.trim() !== '') {
            addButton.style.color = '#20D489'; // 입력된 경우 초록색으로 변경
            addButton.style.transition = 'color 0.3s';
            addButton.style.cursor = 'pointer';
        } else {
            addButton.style.color = '#6c757d'; // 입력되지 않은 경우 회색으로 변경
            addButton.style.transition = 'color 0.3s';
        }
    }


</script>
