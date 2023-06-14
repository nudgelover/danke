<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<style>
    .timeline-label{
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative;
    }

    .timeline-item {
        display: flex;
        align-items: flex-start;
        position: relative;
        margin-bottom: 1.7rem;
    }

    .timeline-badge {
    /*    flex-shrink: 0;*/
    /*    background-color: var(--bs-body-bg);*/
    /*    width: 1rem;*/
    /*    height: 1rem;*/
    /*    border-radius: 100%;*/
    /*    display: flex;*/
    /*    justify-content: center;*/
    /*    align-items: center;*/
    /*    z-index: 1;*/
    /*    position: absolute;*/
    /*    top: 50%;*/
    /*    left: -0.5rem; !* Adjust the left position as needed *!*/
    /*    transform: translateY(-50%);*/
    /*    padding: 3px !important;*/
    /*    border: 6px solid var(--bs-body-bg) !important;*/
    }

    .timeline-content {
        margin-left: 2rem; /* Adjust the margin as needed */
        width: 50%;
    }

</style>


<script>
    $(document).ready(function () {
        $('.curri_settings').click( function(){
            let stdnId = '${loginStdn.id}';
            let curriId = $(this).prop('id').substring(19);
            let checked = $('#isOpen_' + curriId).is(':checked') ? 1 : 0;
            alert(checked);
            $.ajax({
                url:'/currisettingsimpl',
                data:{stdnId:stdnId, curriId:curriId, checked:checked},
                success:function(result){
                    window.location.href='/lecture/curri?id='+stdnId;
                }
            })

        })

    })

</script>


<!--begin::Main-->

<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">커리큘럼</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/courselist?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/curri?id=${loginStdn.id}" class="btn btn-active-accent active active fw-bold ms-3">커리큘럼</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent  fw-bold ms-3">장바구니</a>
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
                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_4">나의 커리큘럼</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_5">커리큘럼 엿보기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_6">MD추천 커리큘럼</a>
                        </li>
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="kt_tab_pane_4" role="tabpanel">
                            <div class="col-xl-12">
                                <!--begin::Engage Widget 1-->
                                <div class="card mb-12">
                                    <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-primary">
                                        <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-start bgi-size-contain"
                                             style="background-image: url(/assets/media/illustrations/sigma-1/2.png);"></div>
                                        <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                            <h1 class="text-dark" style="font-weight: 900">무슨 강의 들을지 고민이라면?<br>
                                            믿고 보는 DIGICAM PICK</h1>
                                            <div class="text-info-emphasis fs-3 mb-8" style="font-weight:900">매월 업데이트 NEW</div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Engage Widget 1-->
                                <div class="card card-stretch mb-5 mb-xxl-8">
                                    <!--begin::Header-->
                                    <div class="card-header align-items-center border-0 mt-5">
                                        <h3 class="card-title align-items-start flex-column">
                                            <span class="fw-bold text-dark fs-3">${loginStdn.name}님의 커리큘럼</span>
                                            <span class="text-muted mt-2 fw-semibold fs-6">코딩으로 탈큽하는 그날까지 학습 발자취를 남겨주세요</span>
                                        </h3>
                                    </div>
                                    <!--end::Header-->
                                    <!--begin::Body-->
                                    <div class="card-body pt-3">
                                        <!--begin::Timeline-->
                                        <div class="timeline-label" style="padding-right: 7.5rem">
                                            <!--begin::Item-->
                                            <c:forEach var="curri" items="${curri}">
                                                <div class="timeline-item">
                                                    <!--begin::Label-->
                                                    <div class="fw-bold text-gray-800 fs-6 px-lg-9">${curri.rdate}</div>
                                                    <!--end::Label-->
                                                    <!--begin::Badge-->
                                                    <div class="timeline-badge">
                                                        <i class="fa fa-genderless text-warning fs-1"></i>
                                                    </div>
                                                    <!--end::Badge-->
                                                    <!--begin::Text-->
                                                    <div class="timeline-content d-flex flex-wrap align-items-center mb-7 px-lg-3">
                                                        <!--begin::Symbol-->
                                                        <div class="symbol symbol-65px symbol-2by3 me-4">
                                                            <img src="/uimg/${curri.lecImg}" class="mw-100" />
                                                        </div>
                                                        <!--end::Symbol-->
                                                        <!--begin::Title-->
                                                        <div class="d-flex justify-content-center my-lg-0 my-2 pe-3">
                                                            <div>
                                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6">${curri.lecTitle}</a>
                                                            </div>
                                                            <div>
                                                                <a href="javascript:void(0)" class="text-gray-800 fw-bold text-hover-primary fs-6"
                                                                   data-bs-toggle="modal" data-bs-target="#settings_modal_${curri.id}">
                                                                    <span class="svg-icon svg-icon-muted svg-icon-2x"
                                                                          data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="right" title="설정">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path opacity="0.3" d="M22.1 11.5V12.6C22.1 13.2 21.7 13.6 21.2 13.7L19.9 13.9C19.7 14.7 19.4 15.5 18.9 16.2L19.7 17.2999C20 17.6999 20 18.3999 19.6 18.7999L18.8 19.6C18.4 20 17.8 20 17.3 19.7L16.2 18.9C15.5 19.3 14.7 19.7 13.9 19.9L13.7 21.2C13.6 21.7 13.1 22.1 12.6 22.1H11.5C10.9 22.1 10.5 21.7 10.4 21.2L10.2 19.9C9.4 19.7 8.6 19.4 7.9 18.9L6.8 19.7C6.4 20 5.7 20 5.3 19.6L4.5 18.7999C4.1 18.3999 4.1 17.7999 4.4 17.2999L5.2 16.2C4.8 15.5 4.4 14.7 4.2 13.9L2.9 13.7C2.4 13.6 2 13.1 2 12.6V11.5C2 10.9 2.4 10.5 2.9 10.4L4.2 10.2C4.4 9.39995 4.7 8.60002 5.2 7.90002L4.4 6.79993C4.1 6.39993 4.1 5.69993 4.5 5.29993L5.3 4.5C5.7 4.1 6.3 4.10002 6.8 4.40002L7.9 5.19995C8.6 4.79995 9.4 4.39995 10.2 4.19995L10.4 2.90002C10.5 2.40002 11 2 11.5 2H12.6C13.2 2 13.6 2.40002 13.7 2.90002L13.9 4.19995C14.7 4.39995 15.5 4.69995 16.2 5.19995L17.3 4.40002C17.7 4.10002 18.4 4.1 18.8 4.5L19.6 5.29993C20 5.69993 20 6.29993 19.7 6.79993L18.9 7.90002C19.3 8.60002 19.7 9.39995 19.9 10.2L21.2 10.4C21.7 10.5 22.1 11 22.1 11.5ZM12.1 8.59998C10.2 8.59998 8.6 10.2 8.6 12.1C8.6 14 10.2 15.6 12.1 15.6C14 15.6 15.6 14 15.6 12.1C15.6 10.2 14 8.59998 12.1 8.59998Z" fill="currentColor"/>
                                                                        <path d="M17.1 12.1C17.1 14.9 14.9 17.1 12.1 17.1C9.30001 17.1 7.10001 14.9 7.10001 12.1C7.10001 9.29998 9.30001 7.09998 12.1 7.09998C14.9 7.09998 17.1 9.29998 17.1 12.1ZM12.1 10.1C11 10.1 10.1 11 10.1 12.1C10.1 13.2 11 14.1 12.1 14.1C13.2 14.1 14.1 13.2 14.1 12.1C14.1 11 13.2 10.1 12.1 10.1Z" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                </a>
                                                                <a href="javascript:void(0)" class="text-gray-800 fw-bold text-hover-primary fs-6"
                                                                   data-bs-toggle="modal" data-bs-target="#delete_${curri.id}">
                                                                    <span class="svg-icon svg-icon-muted svg-icon-2x"
                                                                          data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="right" title="삭제">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="5" fill="currentColor"/>
                                                                            <rect x="7" y="15.3137" width="12" height="2" rx="1" transform="rotate(-45 7 15.3137)" fill="currentColor"/>
                                                                            <rect x="8.41422" y="7" width="12" height="2" rx="1" transform="rotate(45 8.41422 7)" fill="currentColor"/>
                                                                        </svg>
                                                                    </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <span class="badge badge-light-primary">${curri.lecTopic}</span>
                                                        <c:choose>
                                                            <c:when test="${curri.isOpen==1}">
                                                                <span class="badge badge-light-info" style="margin-left:1%">공개</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge badge-light-info" style="margin-left:1%">비공개</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <!--end::Title-->
                                                    </div>
                                                    <!--end::Text-->
                                                </div>

                                                <!--Settings Modal-->
                                                <div class="modal fade modal_body" tabindex="-1" id="settings_modal_${curri.id}">
                                                    <div class="modal-dialog modal-dialog-centered modal-dialog-lg">
                                                        <div class="modal-content" style="padding: 8% 8% 0% 8%">
                                                            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-8"
                                                                style="display: flex; justify-content: space-between">
                                                                <li class="nav-item">
                                                                    <a class="nav-link active fs-2 text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">커리큘럼 설정</a>
                                                                </li>
                                                            </ul>
                                                            <!--begin::Input group-->
                                                            <div class="d-flex flex-stack px-10 py-10">
                                                                <!--begin::Label-->
                                                                <div class="me-5">
                                                                    <label class="fs-6 fw-semibold form-label">커리큘럼에서 이 강의를 공개할까요?</label>
                                                                    <div class="fs-7 fw-semibold text-muted">비공개 강의는 타 수강생에게 보이지 않습니다.</div>
                                                                </div>
                                                                <!--end::Label-->
                                                                <!--begin::Switch-->
                                                                <label class="form-check form-switch form-check-custom form-check-solid">
                                                                    <input class="form-check-input" type="checkbox" id="isOpen_${curri.id}" value="1" name="isOpen"
                                                                           <c:choose>
                                                                            <c:when test="${curri.isOpen==1}">checked</c:when>
                                                                           <c:otherwise></c:otherwise>
                                                                           </c:choose>
                                                                    />
                                                                    <span class="form-check-label fw-semibold text-primary">
                                                                        공개여부
                                                                    </span>
                                                                </label>
                                                                <!--end::Switch-->
                                                            </div>
                                                            <div class="modal-footer text-center" style="border-top: 1px solid #d8d8d8;align-items: center;">
                                                                <button type="button" class="btn btn-light fw-bolder" data-bs-dismiss="modal">취소</button>
                                                                <button type="button" class="btn btn-primary fw-bolder curri_settings" id="curri_settings_btn_${curri.id}">저장</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Settings Modal End-->

                                                <!--Delete Modal-->
                                                <div class="modal fade modal_body" tabindex="-1"id="delete_${curri.id}">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
                                                            <div class="modal-body" style="display: flex; justify-content: space-between">
                                                                <div class="text-start" style="width: 50%;">
                                                                    <p style="font-weight:700">이 강의를 삭제할까요?</p>
                                                                </div>
                                                                <div class="text-end" style="width: 40%;">
                                                                    <a href="/lecture/curridel?id=${curri.id}" style="font-weight: bold;">삭제하기</a>
                                                                </div>
                                                                <div class="text-end" style="width: 10%;">
                                                                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Delete Modal End-->

                                            </c:forEach>
                                            <!--end::Item-->
                                            <c:choose>
                                                <c:when test="${curri.size()==0}">
                                                    <div class="py-20">
                                                        커리큘럼에 등록된 강의가 없습니다.
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                        <!--end::Timeline-->
                                    </div>
                                    <!--end: Card Body-->
                                </div>
                                <!--end::List Widget 1-->
                            </div>
                        </div>
                        <div class="tab-pane fade" id="kt_tab_pane_5" role="tabpanel">
                            <div class="card mb-12">
                                <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-info">
                                    <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                        <h1 class="text-dark" style="font-weight: 900">배우고 나누고 성장하세요!</h1>
                                        <div class="fs-3 mb-8">커리큘럼이 궁금한 DIGICAM MEMBER는?</div>
                                        <!--begin::Form-->
                                        <form class="d-flex flex-center py-2 px-6 bg-white rounded">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                                            <span class="svg-icon svg-icon-1 svg-icon-info">
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
                                                   placeholder="걔는 뭘 듣길래 그렇게 코딩을 잘 한대?"/>
                                        </form>
                                        <!--end::Form-->
                                    </div>
                                    <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                         style="background-image: url(/assets/media/illustrations/sigma-1/4.png);"></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="kt_tab_pane_6" role="tabpanel">
                            삼번입네다
                        </div>
                    </div>
                    <!--begin::Engage Widget 1-->
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->
                </div>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->
