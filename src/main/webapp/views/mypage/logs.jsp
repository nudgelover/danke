<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--end::Navbar-->
<style>
    #ord_title:hover {
        color: #20D489 !important;
    }
</style>

<!--begin::Login sessions-->
<c:set var="lastMonthFormattedDate" value="${lastMonthFormattedDate}"/>
<c:set var="lastMonth" value="${lastMonthFormattedDate.substring(5)}"/>
<c:set var="twoMonthsAgoFormattedDate" value="${twoMonthsAgoFormattedDate}"/>
<c:set var="twoMonthsAgo" value="${twoMonthsAgoFormattedDate.substring(5)}"/>
<div class="card pt-4  mb-5 mb-lg-10">
    <!--begin::Header-->
    <div class="card-header card-header-stretch">
        <!--begin::Title-->
        <div class="card-title">
            <h3 class="m-0 text-gray-800">출석체크</h3>
        </div>
        <!--end::Title-->
        <!--begin::Toolbar-->
        <div class="card-toolbar m-0">
            <!--begin::Tab nav-->
            <ul class="nav nav-stretch fs-5 fw-semibold nav-line-tabs border-transparent" role="tablist">
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_first_tab" class="nav-link text-active-gray-800 active"
                       data-bs-toggle="tab" role="tab" href="#kt_attd_1">이번 달</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_second_tab" class="nav-link text-active-gray-800 me-4"
                       data-bs-toggle="tab" role="tab" href="#kt_attd_2">전월(${lastMonth}월)</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_third_tab" class="nav-link text-active-gray-800 me-4"
                       data-bs-toggle="tab" role="tab" href="#kt_attd_3">전전월(${twoMonthsAgo}월)</a>
                </li>
            </ul>
            <!--end::Tab nav-->
        </div>
        <!--end::Toolbar-->
    </div>
    <!--end::Header-->
    <!--begin::Tab Content-->
    <div id="kt_referred_attd_tab_content" class="tab-content">
        <!--begin::Tab panel-->
        <div id="kt_attd_1" class="card-body p-0 tab-pane fade show active" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">날짜</th>
                        <th class="min-w-250px px-0">출근시간</th>
                        <th class="min-w-250px">퇴근시간</th>
                        <th class="min-w-125px">상태</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${thistMonthAttd}">
                        <tr>
                            <td class="ps-9">${obj.rdate}</td>
                            <td class="ps-0">${obj.startTime}</td>
                            <td>${obj.endTime}</td>
                            <c:if test="${obj.isAttend == 0}">
                                <td class="text-success"><span class="badge badge-danger">결석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 1}">
                                <td class="text-success"><span class="badge badge-success">출석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 2}">
                                <td class="text-success"><span class="badge badge-warning">지각</span></td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty thistMonthAttd}">
                        <td colspan="4" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
        <!--end::Tab panel-->
        <!--begin::Tab panel-->
        <div id="kt_attd_2" class="card-body p-0 tab-pane fade" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">날짜</th>
                        <th class="min-w-250px px-0">출근시간</th>
                        <th class="min-w-250px">퇴근시간</th>
                        <th class="min-w-125px">상태</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${lastMonthAttd}">
                        <tr>
                            <td class="ps-9">${obj.rdate}</td>
                            <td class="ps-0">${obj.startTime}</td>
                            <td>${obj.endTime}</td>
                            <c:if test="${obj.isAttend == 0}">
                                <td class="text-success"><span class="badge badge-danger">결석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 1}">
                                <td class="text-success"><span class="badge badge-success">출석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 2}">
                                <td class="text-success"><span class="badge badge-warning">지각</span></td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty lastMonthAttd}">
                        <td colspan="4" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
        <!--end::Tab panel-->
        <!--begin::Tab panel-->
        <div id="kt_attd_3" class="card-body p-0 tab-pane fade" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">날짜</th>
                        <th class="min-w-250px px-0">출근시간</th>
                        <th class="min-w-250px">퇴근시간</th>
                        <th class="min-w-125px">상태</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${twoMonthsAgoAttd}">
                        <tr>
                            <td class="ps-9">${obj.rdate}</td>
                            <td class="ps-0">${obj.startTime}</td>
                            <td>${obj.endTime}</td>
                            <c:if test="${obj.isAttend == 0}">
                                <td class="text-success"><span class="badge badge-danger">결석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 1}">
                                <td class="text-success"><span class="badge badge-success">출석</span></td>
                            </c:if>
                            <c:if test="${obj.isAttend == 2}">
                                <td class="text-success"><span class="badge badge-warning">지각</span></td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty twoMonthsAgoAttd}">
                        <td colspan="4" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
    </div>
    <!--end::Tab Content-->
</div>
<!--end::Login sessions-->
<div class="card pt-4 mb-5 mb-lg-10">
    <!--begin::Header-->
    <div class="card-header card-header-stretch">
        <!--begin::Title-->
        <div class="card-title">
            <h3 class="m-0 text-gray-800">스터디</h3>
        </div>
        <!--end::Title-->
        <!--begin::Toolbar-->
        <div class="card-toolbar m-0">
            <!--begin::Tab nav-->
            <ul class="nav nav-stretch fs-5 fw-semibold nav-line-tabs border-transparent" role="tablist">
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_year_tab" class="nav-link text-active-gray-800 active"
                       data-bs-toggle="tab" role="tab" href="#kt_referrals_1">이번달</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_2019_tab" class="nav-link text-active-gray-800 me-4"
                       data-bs-toggle="tab" role="tab" href="#kt_referrals_2">전월(${lastMonth}월)</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_referrals_2018_tab" class="nav-link text-active-gray-800 me-4"
                       data-bs-toggle="tab" role="tab" href="#kt_referrals_3">전전월(${twoMonthsAgo}월)</a>
                </li>
                <li class="pt-7">
                    <a class="text-active-gray-800" href="/study/mine/${loginStdn.id}/all">전체보기<i
                            class="bi bi-arrow-right-circle text-primary"></i></a>
                </li>
            </ul>
            <!--end::Tab nav-->
        </div>
        <!--end::Toolbar-->
    </div>
    <!--end::Header-->
    <!--begin::Tab Content-->
    <div id="kt_referred_users_tab_content" class="tab-content">
        <!--begin::Tab panel-->
        <div id="kt_referrals_1" class="card-body p-0 tab-pane fade show active" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">번호</th>
                        <th class="min-w-250px px-0">시작시간</th>
                        <th class="min-w-250px">종료시간</th>
                        <th class="min-w-125px">진행시간</th>
                        <th class="min-w-125px text-center">파일</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${thisMonthStdy}" varStatus="status">
                        <tr>
                            <td class="ps-12">${status.index+1}</td>
                            <td class="ps-0">${obj.startTime}</td>
                            <td class="ps-3">${obj.endTime}</td>
                            <td class="ps-7 "><span class="badge badge-primary">${obj.duration}분</span></td>
                            <td class="text-center">
                                <a class="btn btn-light btn-sm btn-active-light-primary"
                                   href="/study/download/${obj.filename}"
                                   data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse"
                                   data-bs-placement="left" title="다운로드">
                                    <span class="shorttitle text-center">Download</span>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty thisMonthStdy}">
                        <td colspan="5" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
        <!--end::Tab panel-->
        <!--begin::Tab panel-->
        <div id="kt_referrals_2" class="card-body p-0 tab-pane fade" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">번호</th>
                        <th class="min-w-250px px-0">시작시간</th>
                        <th class="min-w-250px">종료시간</th>
                        <th class="min-w-125px">진행시간</th>
                        <th class="min-w-125px text-center">파일</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${lastMonthStdy}" varStatus="status">
                        <tr>
                            <td class="ps-12">${status.index+1}</td>
                            <td class="ps-0">${obj.startTime}</td>
                            <td class="ps-3">${obj.endTime}</td>
                            <td class="ps-7 "><span class="badge badge-primary">${obj.duration}분</span></td>
                            <td class="text-center">
                                <a class="btn btn-light btn-sm btn-active-light-primary"
                                   href="/study/download/${obj.filename}"
                                   data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse"
                                   data-bs-placement="left" title="다운로드">
                                    <span class="shorttitle text-center">Download</span>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty lastMonthStdy}">
                        <td colspan="5" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
        <!--end::Tab panel-->
        <!--begin::Tab panel-->
        <div id="kt_referrals_3" class="card-body p-0 tab-pane fade" role="tabpanel">
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table align-middle table-row-bordered table-row-solid gy-4 gs-9">
                    <!--begin::Thead-->
                    <thead class="border-gray-200 fs-5 fw-semibold bg-lighten">
                    <tr>
                        <th class="min-w-175px ps-9">번호</th>
                        <th class="min-w-250px px-0">시작시간</th>
                        <th class="min-w-250px">종료시간</th>
                        <th class="min-w-125px">진행시간</th>
                        <th class="min-w-125px text-center">파일</th>
                    </tr>
                    </thead>
                    <!--end::Thead-->
                    <!--begin::Tbody-->
                    <tbody class="fs-6 fw-semibold text-gray-600">
                    <c:forEach var="obj" items="${twoMonthsAgoStdy}" varStatus="status">
                        <td class="ps-12">${status.index+1}</td>
                        <td class="ps-0">${obj.startTime}</td>
                        <td class="ps-3">${obj.endTime}</td>
                        <td class="ps-7 "><span class="badge badge-primary">${obj.duration}분</span></td>
                        <td class="text-center">
                            <a class="btn btn-light btn-sm btn-active-light-primary"
                               href="/study/download/${obj.filename}"
                               data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse"
                               data-bs-placement="left" title="다운로드">
                                <span class="shorttitle text-center">Download</span>
                            </a>
                        </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty twoMonthsAgoStdy}">
                        <td colspan="5" class="text-center">데이터가 없습니다.</td>
                    </c:if>
                    </tbody>
                    <!--end::Tbody-->
                </table>
                <!--end::Table-->
            </div>
        </div>
        <!--end::Tab panel-->

    </div>
    <!--end::Tab Content-->
</div>
<!--begin::Card-->
<div class="card pt-4">
    <!--begin::Card header-->
    <div class="card-header border-0">
        <!--begin::Card title-->
        <div class="card-title">
            <h2>내가 구매한 강의</h2>
        </div>
        <!--end::Card title-->
        <!--begin::Card toolbar-->
        <div class="card-toolbar">
            <!--begin::Button-->
            <a href="/lecture/mylecture?id=${loginStdn.id}" type="button" class="btn btn-sm btn-light-primary">
                <!--begin::Svg Icon | path: icons/duotune/files/fil021.svg-->
                <span class="svg-icon svg-icon-3">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
  <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z"/>
</svg>
											</span>
                <!--end::Svg Icon-->학습하러가기
            </a>
            <!--end::Button-->
        </div>
        <!--end::Card toolbar-->
    </div>
    <!--end::Card header-->
    <!--begin::Card body-->
    <div class="card-body py-0">
        <!--begin::Table wrapper-->

        <!--begin::Table-->
        <table class="table align-middle table-row-dashed fw-semibold fs-6 gy-5">
            <!--begin::Table body-->
            <thead>
            <tr>
                <th class="min-w-100px ps-2">번호</th>
                <th class="min-w-250px">제목</th>
                <th class="min-w-125px">강사</th>
                <th class="min-w-125px">토픽</th>
                <th class="min-w-125px">가격</th>
                <th class="min-w-125px">구매 날짜</th>
            </tr>
            </thead>
            <tbody class="fw-semibold text-gray-600">
            <!--begin::Table row-->
            <c:forEach var="obj" items="${ordDetail}" varStatus="status">
                <tr>
                    <td class="ps-4">${status.index+1}</td>
                    <td class="ps-3"><a id="ord_title" class="text-gray-600"
                                        href="/lecture/detail?id=${obj.lecId}&&stdnId=${loginStdn.id}"> ${obj.lecTitle}</a>
                    </td>
                    <td class="ps-3">${obj.lecTeacher}</td>
                    <td class="ps-3">${obj.lecTopic}</td>
                    <td class="ps-3">
                        <fmt:formatNumber value="${obj.price}" type="number"
                                          pattern="###,###"/>원
                    </td>
                    <td class="ps-3">${obj.rdate}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty ordDetail}">
                <td colspan="4" class="text-center">데이터가 없습니다.</td>
            </c:if>

            </tbody>
            <!--end::Table body-->
        </table>
        <!--end::Table-->

        <!--end::Table wrapper-->
    </div>
    <!--end::Card body-->
</div>
<!--end::Card-->

<!--end::Main-->

<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/pages/user-profile/general.js"></script>
<script src="/assets/js/custom/account/api-keys/api-keys.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/type.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/details.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/finance.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/complete.js"></script>
<script src="/assets/js/custom/utilities/modals/offer-a-deal/main.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
