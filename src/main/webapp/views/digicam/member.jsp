<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--end::Vendor Stylesheets-->
<script>

    $(document).ready(function () {
        $('#status').change(function () {
                var selectedValue = $(this).val();

                if (selectedValue === 'ALL') {
                    window.location.reload(); // 페이지 리로드
                } else {
                    $.ajax({
                        url    : '/getGrade',
                        type   : 'POST',
                        data   : {digidate: selectedValue},
                        success: function (response) {
                            displaystudents(response);
                        },
                        error  : function (xhr, status, error) {
                            console.error(error);
                        }
                    });
                }
            }
        )
        ;

        function displaystudents(data) {
            var memberCards = $('.col-md-6.col-xxl-4');
            memberCards.hide();

            for (var i = 0; i < data.length; i++) {
                var member = data[i];
                console.log(member)
                console.log(member.id);
                var newMemberCard = createMemberCard(member);
                $('#memberCardContainer').append(newMemberCard);
            }
        }


        function createMemberCard(member) {
            var modalId = 'kt_modal_' + member.id;
            var memberCard = $('<div></div>')
                .addClass('col-md-6 col-xxl-4')
                .attr('id', 'memberCard_' + member.id)
                .append($('<div></div>').addClass('card').append(
                    $('<div></div>').addClass('card-body d-flex flex-center flex-column p-9').append(
                        $('<div></div>').addClass('mb-5').append(
                            $('<div></div>').addClass('symbol symbol-75px symbol-circle').append(
                                $('<img/>').attr('src', '/uimg/' + member.img).attr('alt', 'Pic')
                            )
                        ),
                        $('<a></a>').attr('href', '/digicam/mypage?id=' + member.id)
                            .addClass('fs-4 text-gray-800 text-hover-primary fw-bold mb-0')
                            .text(member.name),
                        $('<div></div>').addClass('fw-semibold text-gray-400 mb-6').text("DIGI CAMPUS ").append(getDigiCampusBadge(member.digidate)
                        ),
                        $('<div></div>').addClass('d-flex flex-center flex-wrap mb-5').append(
                            $('<div></div>').addClass('border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3').append(
                                createMemberStatsButton(member.facebook, 'fab fa-facebook-f fs-4', 'btn btn-icon btn-light-facebook me-5'),
                                createMemberStatsButton(member.insta, 'fab fa-instagram fs-4', 'btn btn-icon btn-light-instagram me-5'),
                                createMemberStatsButton('#', 'fonticon-outgoing-call', 'btn btn-icon btn-light-twitter me-5', {
                                    'data-bs-toggle': 'modal',
                                    'data-bs-target': '#' + modalId
                                }))
                        ),
                        $('<button></button>').addClass('btn btn-sm btn-light-primary fw-bold')
                            .attr('data-kt-drawer-show', 'true')
                            .attr('data-kt-drawer-target', '#kt_drawer_chat')
                            .text('Send Message')
                    )
                ));
            var modal = $('<div class="modal fade" tabindex="-1" id="' + modalId + '">')
                .append(
                    $('<div class="modal-dialog">').append(
                        $('<div class="modal-content">').append(
                            $('<div class="modal-header">').append(
                                $('<h3 class="modal-title">').text(member.name + '의 연락처'),
                                $('<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">').append(
                                    $('<span class="svg-icon svg-icon-1">')
                                )
                            ),
                            $('<div class="modal-body">').append(
                                $('<p style="color: black">').text('PHONE :' + member.contact),
                                $('<span style="color: black">').text('EMAIL :' + member.email).append(
                                    $('<a href="https://mail.google.com/">').append(
                                        $('<img style="width: 15px;">').attr('src', 'https://cdn-icons-png.flaticon.com/512/732/732200.png')
                                    )
                                )
                            ),
                            $('<div class="modal-footer">').append(
                                $('<button type="button" class="btn btn-light" data-bs-dismiss="modal">').text('Close')
                            )
                        )
                    )
                );

            memberCard.append(modal);

            return memberCard;
        }

        function getDigiCampusBadge(digidate) {
            if (digidate === '20220201') {
                return $('<span></span>').addClass('badge badge-success').text('1TH');
            } else if (digidate === '20230201') {
                return $('<span></span>').addClass('badge badge-warning').text('2TH');
            } else {
                return ''; // return empty string if no matching badge is found
            }
        }

        function createMemberStatsButton(link, iconClass, buttonClass, additionalAttributes) {
            if (link && link.trim().length > 0) {

                button = $('<a></a>').addClass(buttonClass).attr('href', link);
                button.append($('<i></i>').addClass(iconClass));

            } else {
                // insta, facebook null 값일 때
                var button = $('<a></a>').addClass("btn btn-icon me-5").attr('href', "#").css('cursor', 'default');
                ;
                button.append($('<i></i>').addClass(iconClass));
            }

            if (additionalAttributes) {
                button.attr(additionalAttributes);
            }

            return button;
        }


    });


</script>
<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Digi Members</h3>
                <p class="text-muted">Our Digi Campus Members</p>
                <!--end::Title-->
                <!--begin::Breadcrumb-->

                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/digicam/anc/all" class="btn btn-active-accent fw-bold">Notice</a>
                <a href="/digicam/calendar" class="btn btn-active-accent  fw-bold">Calendar</a>
                <a href="/digicam/detail" class="btn btn-active-accent fw-bold ms-3">Digi Cam</a>
                <a href="/digicam/member" class="btn btn-active-accent active fw-bold ms-3">Digi Members</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Heading-->
            <div class="d-flex flex-wrap flex-stack mb-6">
                <!--begin::Title-->
                <h3 class="fw-bold my-2">ALL MEMBERS</h3>
                <!--end::Title-->
                <!--begin::Controls-->
                <div class="d-flex my-2">
                    <!--begin::Select-->
                    <select id="status" name="status" data-control="select2" data-hide-search="true"
                            class="form-select form-select-sm border-body bg-body w-125px">
                        <option value="ALL" selected="selected">ALL</option>
                        <option value="20220201">DIGI 1TH</option>
                        <option value="20230201">DIGI 2TH</option>
                    </select>

                    <!--end::Select-->
                </div>
                <!--end::Controls-->
            </div>
            <!--end::Heading-->
            <!--begin::Contacts-->
            <div id="memberCardContainer" class="row g-6 g-xl-9">
                <!--begin::Col-->
                <c:forEach var="obj" items="${studentList}">
                    <div class="col-md-6 col-xxl-4">
                        <!--begin::Card-->

                        <div class="card">
                            <!--begin::Card body-->
                            <div class="card-body d-flex flex-center flex-column p-9">
                                <!--begin::Wrapper-->
                                <div class="mb-5">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-75px symbol-circle">
                                        <img alt="Pic" src="/uimg/${obj.img}"/>
                                    </div>
                                    <!--end::Avatar-->
                                </div>
                                <!--end::Wrapper-->
                                <!--begin::Name-->
                                <a href="/mypage?id=${obj.id}"
                                   class="fs-4 text-gray-800 text-hover-primary fw-bold mb-0">${obj.name}</a>
                                <!--end::Name-->
                                <!--begin::Position-->
                                <div class="fw-semibold text-gray-400 mb-6">DIGI CAMPUS
                                    <c:if test="${obj.digidate == '20220201'}">
                                        <span class="badge badge-success">1TH</span>
                                    </c:if>
                                    <c:if test="${obj.digidate == '20230201'}">
                                        <span class="badge badge-warning">2TH</span> </c:if>
                                </div>


                                <!--end::Position-->
                                <!--begin::Info-->
                                <div class="d-flex flex-center flex-wrap mb-5">
                                    <!--begin::Stats-->
                                    <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mx-3 mb-3">
                                        <c:if test="${obj.facebook == null || obj.facebook == ' '}">
                                            <a style="cursor:default" href="#"
                                               class="btn btn-icon me-5 "><i
                                                    class="fab fa-facebook-f fs-4"></i></a>
                                        </c:if>

                                        <c:if test="${obj.facebook != null && obj.facebook != ' '}">
                                            <a href="https://www.facebook.com/${obj.facebook}"
                                               class="btn btn-icon btn-light-facebook me-5 "><i
                                                    class="fab fa-facebook-f fs-4"></i></a>
                                        </c:if>


                                        <c:if test="${obj.insta == null || obj.insta == ' '}">
                                            <a style="cursor: default;" href="#"
                                               class="btn btn-icon me-5 "><i
                                                    class="fab fa-instagram fs-4"></i></a>
                                        </c:if>

                                        <c:if test="${obj.insta != null && obj.insta != ' '}">
                                            <a href="https://www.instagram.com/${obj.insta}"
                                               class="btn btn-icon btn-light-instagram me-5 "><i
                                                    class="fab fa-instagram fs-4"></i></a>
                                        </c:if>


                                        <a href="#"
                                           class="btn btn-icon btn-light-twitter me-5 " data-bs-toggle="modal"
                                           data-bs-target="#kt_modal_1"><i
                                                class="fonticon-outgoing-call"></i></a>
                                    </div>
                                    <!--end::Stats-->
                                </div>
                                <!--end::Info-->
                                <!--begin::Link-->
                                <button class="btn btn-sm btn-light-primary fw-bold" data-kt-drawer-show="true"
                                        data-kt-drawer-target="#kt_drawer_chat">Send Message
                                </button>
                                <!--end::Link-->
                            </div>
                            <!--begin::Card body-->
                        </div>


                        <!--begin::Card-->
                    </div>
                    <%--                    모달--%>
                    <div class="modal fade" tabindex="-1" id="kt_modal_1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title"> ${obj.name}의 연락처</h3>

                                    <!--begin::Close-->
                                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                                         data-bs-dismiss="modal" aria-label="Close">
                                        <span class="svg-icon svg-icon-1"></span>
                                    </div>
                                    <!--end::Close-->
                                </div>

                                <div class="modal-body">

                                    <p style="color: black">PHONE : ${obj.contact}</p>
                                    <span style="color: black">EMAIL : ${obj.email}<a
                                            href="https://mail.google.com/">
                                                    <img style="width: 15px;"
                                                         src="https://cdn-icons-png.flaticon.com/512/732/732200.png"></a></span>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!--end::Col-->


                <!--end::Col-->
            </div>
            <!--end::Contacts-->
            <!--begin::Pagination-->
            <%--            <div class="d-flex flex-stack flex-wrap pt-10">--%>
            <%--                <div class="fs-6 fw-semibold text-gray-700">Showing 1 to 10 of 50 entries</div>--%>
            <%--                <!--begin::Pages-->--%>
            <%--                <ul class="pagination">--%>
            <%--                    <li class="page-item previous">--%>
            <%--                        <a href="#" class="page-link">--%>
            <%--                            <i class="previous"></i>--%>
            <%--                        </a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item active">--%>
            <%--                        <a href="#" class="page-link">1</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item">--%>
            <%--                        <a href="#" class="page-link">2</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item">--%>
            <%--                        <a href="#" class="page-link">3</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item">--%>
            <%--                        <a href="#" class="page-link">4</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item">--%>
            <%--                        <a href="#" class="page-link">5</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item">--%>
            <%--                        <a href="#" class="page-link">6</a>--%>
            <%--                    </li>--%>
            <%--                    <li class="page-item next">--%>
            <%--                        <a href="#" class="page-link">--%>
            <%--                            <i class="next"></i>--%>
            <%--                        </a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <!--end::Pages-->--%>
            <%--            </div>--%>
            <!--end::Pagination-->
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
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
