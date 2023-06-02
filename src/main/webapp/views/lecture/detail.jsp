<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>


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
                                    <td class="text-dark pe-0">${lec.rating}</td>
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
                    <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-dark">강의 리뷰
                        <fmt:formatNumber value="${lec.cnt}" type="number" pattern="###,###"/></span>
                        <span class="text-muted mt-3 fw-semibold fs-7">${lec.hit}명이 선택한 강의입니다.</span>
                    </h3>
                    <div class="card-toolbar">
                        <a href="#" class="btn btn-primary fw-bold fs-7">리뷰 쓰기</a>
                    </div>
                </div>
                <div class="card-header border-0 py-5">
                <div class="d-flex card-header border-0 bg-light-primary" style="width: 100%;border-bottom-right-radius: 10px; border-bottom-left-radius:  10px;">
                    <div class="rating" id="sum_rating" style=" width: 30%;">
                        <div class="rating-label me-2 checked">
                            <i class="bi bi-star fs-1"></i>
                        </div>
                        <div class="rating-label me-2 checked">
                            <i class="bi bi-star fs-1"></i>
                        </div>
                        <div class="rating-label me-2 checked">
                            <i class="bi bi-star fs-1"></i>
                        </div>
                        <div class="rating-label me-2 checked">
                            <i class="bi bi-star fs-1"></i>
                        </div>
                        <div class="rating-label me-2 checked">
                            <i class="bi bi-star fs-1"></i>
                        </div>
                    </div>
                    <label for
                    <div class="d-flex count_rating" style="flex-direction: column; width: 70%; padding: 10%;">
                        <div class="rating-label checked"><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span></div>
                        <div class="ratiang">
                            <div class="rating-label checked">
                                <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span>
                            </div>
                    </div>
                        <div class="ratiang">
                            <div class="rating-label checked">
                                <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span>              </div>
                        </div>
                        <div class="ratiang">
                            <div class="rating-label checked">
                                <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span><span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span>           </div>
                        </div>
                        <div class="rating-label checked">
                                <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg></span>           </div>
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
                                    <td class="text-dark ps-0 min-w-250px py-5">
                                        <div class="d-flex align-items-center">
                                            <div class="symbol symbol-35px symbol-circle">
                                                <img alt="Pic" src="/uimg/${lecReview.stdnImg}"/>
                                            </div>
                                            <div class="ms-5">
                                                <a href="/mypage?id=${lecReview.stdnId}"
                                                   class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">${lecReview.stdnId}</a>
                                                <div class="fw-semibold text-muted"><span
                                                        class="text-warning min-w-100px py-5">
<div class="rating">
    <c:forEach var="i" begin="1" end="5">
        <c:choose>
            <c:when test="${i <= lecReview.rating}">
                <div class="rating-label checked">
                    <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
    <path d="M12 2l3.09 6.31 7 1.02-5 4.87 1.18 7.31-6.27-3.29L5.73 22 6.91 14.69 2 10.81l7-1.02L12 2z"/>
</svg>
</span>
                </div>
            </c:when>
            <c:otherwise>
                <div class="rating-label">
                    <span class="svg-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="24" height="24">
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
                                        </div>
                                        <div class="align-items-center py-3 px-15">
                                            <c:choose>
                                                <c:when test="${lecReview.img!=null}">
                                                    <div class="symbol symbol-100px rounded">
                                                        <img alt="Pic" src="/uimg/${lecReview.img}"/>
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                            <div class="py-2">
                                                <a href="#"
                                                   class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">${lecReview.title}</a>
                                                <div class="fw-semibold text-muted"><span
                                                        class="text-dark min-w-100px py-5">
                                                        ${lecReview.contents}</span></div>
                                            </div>
                                        </div>
                                    </td>
                                    <c:choose>
                                        <c:when test="${lecReview.stdnId == loginStdn.id}">
                                            <td class="pe-0 text-end">
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm mx-3">
                                                    <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                    <span class="svg-icon svg-icon-4">
    <svg width="24" height="24" viewBox="0 0 24 24"
         fill="none"
         xmlns="http://www.w3.org/2000/svg">
    <path opacity="0.3"
          d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z"
          fill="currentColor"/>
    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z"
          fill="currentColor"/>
    </svg>
    </span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-color-muted btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
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
                                                    <!--end::Svg Icon-->
                                                </a>
                                            </td>
                                        </c:when>
                                    </c:choose>
                                </tr>
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
