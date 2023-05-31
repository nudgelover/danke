<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Blah Blah</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/blah" class="btn btn-active-accent active fw-bold">Blah Blah</a>
                <a href="/blah/private" class="btn btn-active-accent  fw-bold ms-3">Private Chat</a>
                <a href="/blah/group" class="btn btn-active-accent fw-bold ms-3">Group Chat</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--Begin::Row-->
            <div class="row g-5 g-xxl-8">
                <div class="col-xl-12">
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
                                <div id="kt_forms_widget_1_editor"></div>
                                <!--end::Editor-->
                                <div class="border-top mt-5"></div>
                                <!--begin::Toolbar-->
                                <div id="kt_forms_widget_1_editor_toolbar" class="ql-toolbar d-flex flex-stack py-2">
                                    <div class="me-2">
															<span class="ql-formats ql-size ms-0">
																<select class="ql-size w-75px"></select>
															</span>
                                        <span class="ql-formats">
																<button class="ql-bold"></button>
																<button class="ql-italic"></button>
																<button class="ql-underline"></button>
<%--																<button class="ql-strike"></button>--%>
<%--																<button class="ql-image"></button>--%>
<%--																<button class="ql-link"></button>--%>
																<button class="ql-clean"></button>
															</span>
                                    </div>
                                    <div class="me-n3">
															<span class="btn btn-icon btn-sm btn-active-color-primary">
																<i class="flaticon2-clip-symbol icon-ms"></i>
															</span>
                                        <span class="btn btn-icon btn-sm btn-active-color-primary">
																<i class="flaticon2-pin icon-ms"></i>
															</span>
                                    </div>
                                </div>
                                <!--end::Toolbar-->
                            </form>
                            <!--end::Form-->
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Feeds Widget 1-->

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
                                        <a href="/digicam/mypage?id=${obj.stdnId}"
                                           class="text-gray-800 text-hover-primary mb-1 fs-6 fw-bold">${obj.name}(${obj.stdnId})</a>
                                        <span class="text-muted fw-semibold">${obj.rdate}</span>
                                    </div>
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
                                        <a href="#" class="btn btn-sm btn-color-muted btn-active-light-primary fw-bold">
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
                                            <!--end::Svg Icon-->댓글 개수 카운트</a>
                                        <a href="#" class="btn btn-sm btn-color-muted btn-active-light-danger fw-bold">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen030.svg-->
                                            <span class="svg-icon svg-icon-3 pe-1">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M18.3721 4.65439C17.6415 4.23815 16.8052 4 15.9142 4C14.3444 4 12.9339 4.73924 12.003 5.89633C11.0657 4.73913 9.66 4 8.08626 4C7.19611 4 6.35789 4.23746 5.62804 4.65439C4.06148 5.54462 3 7.26056 3 9.24232C3 9.81001 3.08941 10.3491 3.25153 10.8593C4.12155 14.9013 9.69287 20 12.0034 20C14.2502 20 19.875 14.9013 20.7488 10.8593C20.9109 10.3491 21 9.81001 21 9.24232C21.0007 7.26056 19.9383 5.54462 18.3721 4.65439Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                                            <!--end::Svg Icon-->${obj.likes}</a>
                                    </div>
                                    <!--end::Action-->
                                </div>
                                <!--end::Body-->
                                <!--begin::Separator-->
                                <div class="separator pt-4"></div>
                                <!-- ... 이전 코드 생략 ... -->
                                <!--begin::Separator-->
                                <div class="separator pt-4"></div>

                                <!--begin::Comment-->
                                <c:forEach var="comment" items="${obj.commList}">
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
                                                <a href="#"
                                                   class="text-muted text-hover-primary fw-normal fs-7">Reply</a>
                                            </div>
                                            <span class="text-gray-800 fs-7 fw-normal pt-1">${comment.contents}</span>
                                            <!--end::Info-->
                                        </div>
                                        <!--end::Info-->
                                    </div>
                                </c:forEach>
                                <!--end::Separator-->
                                <!--begin::Editor-->
                                <form class="position-relative py-4 d-flex align-items-center pb-5">
                                <textarea data-kt-autosize="true"
                                          class="form-control min-h-auto border-0 p-0 pe-10 resize-none" rows="1"
                                          placeholder="Reply..."></textarea>
                                    <div class="position-absolute top-0 end-0 mt-2 me-n3">
														<span class="btn btn-icon btn-sm btn-active-color-primary">
															<i class="fas fa-paperclip fs-6"></i>
														</span>
                                        <span class="btn btn-icon btn-sm btn-active-color-primary">
															<i class="fas fa-map-marker-alt fs-6"></i>
														</span>
                                    </div>
                                </form>
                                <!--edit::Editor-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Feeds Widget 2-->
                    </c:forEach>
                    <!--begin::Feeds Widget 3-->
                    <!--end::Body-->
                </div>


                <!--end::List Widget 2-->
            </div>
        </div>
        <!--End::Row-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
