<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>


<style>
    #lec_container {
        margin-bottom: 30px;
    }
</style>

<script>
    $(document).ready(function () {
        $('.cart_btn').on('click', function () {
            let stdnId = '${loginStdn.id}';
            let lecId = $(this).prop('id').substring(9);
            let cartModal = $('#cart_modal_' + lecId);

            $.ajax({
                url: '/cartimpl',
                data: {stdnId: stdnId, lecId: lecId},
                success: function (result) {
                    if (result === 0) {
                        let modal = new bootstrap.Modal(cartModal)
                        $('#cart_msg_' + lecId).html('Sorry, Already in Your List!');
                        modal.show()
                    } else if (result === 1) {
                        let modal = new bootstrap.Modal(cartModal)
                        $('#cart_msg_' + lecId).html('Added to Your List!');
                        modal.show()
                    }
                }
            });
        });
    });
</script>


<!--begin::Main-->

<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <h3 class="text-dark fw-bold my-1">View All Course</h3>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent active active fw-bold ms-3">View All Course</a>
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
            <!--begin::Card-->
            <div class="card">
                <div class="card-body">
                    <!--begin::Engage Widget 1-->
                    <div class="card mb-12">
                        <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                            <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                <h1 class="fw-bold text-dark">Search Goods</h1>
                                <div class="fs-3 mb-8">Get Amazing Gadgets</div>
                                <!--begin::Form-->
                                <form class="d-flex flex-center py-2 px-6 bg-white rounded">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
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
                                    <!--end::Svg Icon-->
                                    <input type="text" class="form-control border-0 fw-semibold ps-2 w-xxl-350px"
                                           placeholder="Search Goods"/>
                                </form>
                                <!--end::Form-->
                            </div>
                            <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                 style="background-image: url(/assets/media/illustrations/sigma-1/2.png);"></div>
                        </div>
                    </div>
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->
                    <div class="mb-10">
                        <!--begin::Heading-->
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <a href="#" class="btn btn-light-primary btn-sm fw-bold">View All</a>
                        </div>
                        <div id="lec_container" class="row g-5 g-xxl-8">
                            <!--begin::Product-->
                            <c:forEach var="obj" items="${cpage.getList()}">
                                <div class="col-md-4 col-xxl-4 col-lg-12">
                                    <!--begin::Card-->
                                    <div class="card shadow-none">
                                        <div class="card-body p-0">
                                            <!--begin::Image-->
                                            <div class="overlay rounded overflow-hidden">
                                                <div class="overlay-wrapper rounded bg-light text-center">
                                                    <img src="/uimg/${obj.img}" alt="" class="mw-100"/>
                                                </div>
                                                <div class="overlay-layer align-items-end justify-content-center">
                                                    <div class="py-5">
                                                        <a href="#" id="curri_btn"
                                                           class="btn fw-bold btn-sm btn-light-primary me-2">Add
                                                            Curri</a>
                                                        <a href="/lecture/orderthis?id=${obj.id}"
                                                           class="btn fw-bold btn-sm btn-light-primary"
                                                           style="margin-right: 7px;">Order</a>
                                                        <button id="cart_btn_${obj.id}"
                                                                class="btn fw-bold btn-sm btn-light-primary me-2 cart_btn">
                                                            Cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end::Image-->
                                            <!--begin::Details-->
                                            <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">
                                                <a href="/lecture/detail?id=${obj.id}"
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
                                                        <span style="text-decoration: line-through;"><fmt:formatNumber
                                                                value="${obj.price}" type="number"
                                                                pattern="###,###원"/></span>
                                                        <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                value="${obj.price * (100 - obj.discRate)/100}"
                                                                type="number" pattern="###,###원"/></span>
                                                            </c:otherwise>
                                                </c:choose>
                                                <br><span class="badge badge-light-primary">누적수강생 ${obj.hit}명</span>
                                            </div>


                                            <!--end::Details-->
                                        </div>
                                    </div>
                                    <!--end::Card-->

                                    <!--Cart Modal-->
                                    <div class="modal fade" tabindex="-1" id="cart_modal_${obj.id}">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3 class="modal-title">${obj.title}</h3>

                                                    <!--begin::Close-->
                                                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                                                         data-bs-dismiss="modal" aria-label="Close">
                                                        <span class="svg-icon svg-icon-1"></span>
                                                    </div>
                                                    <!--end::Close-->
                                                </div>

                                                <div class="modal-body">
                                                    <img src="/assets/media/products/${obj.img}" alt="" class="mw-100"/>
                                                    <a href="/lecture/detail?id=${obj.id}"
                                                       class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${obj.title}</a>
                                                    <span class="fs-6">${obj.teacher}<br>
                                                            ${obj.price}</span>
                                                    <p id="cart_msg_${obj.id}"></p>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">
                                                        CONTINUE
                                                    </button>
                                                    <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-primary">GO
                                                        TO CAR</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Modal End-->
                                </div>
                            </c:forEach>
                        </div>
                        <jsp:include page="../page.jsp"/>
                    </div>
                </div>
            </div>
            <!--end::Card-->
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
