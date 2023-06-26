<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    [data-bs-theme="light"] #kt_header_search_modal {
        background-color: white;
    }

    [data-bs-theme="dark"] #kt_header_search_modal {
        background-color: #1e1e2d;
    }

</style>

<!--begin::Header Search-->
<div class="modal fade" id="kt_header_search_modal" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content shadow-none">
            <div class="container w-lg-800px">
                <div class="modal-header d-flex justify-content-end border-0">
                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-light-primary ms-2" data-bs-dismiss="modal">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                        <span class="svg-icon svg-icon-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                              transform="rotate(-45 6 17.3137)" fill="currentColor"/>
										<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                              transform="rotate(45 7.41422 6)" fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Close-->
                </div>
                <div class="modal-body">
                    <!--begin::Search-->
                    <form class="pb-10" onsubmit="searchPage(event)">
                        <input autofocus="" type="text"
                               class="form-control bg-transparent border-0 fs-4x text-center fw-normal" name="query"
                               placeholder="Search..."/>
                    </form>
                    <div id="notfound"> </div>
                    <!--end::Search-->
                    <!--begin::Framework Users-->
                    <div>
                        <h3 class="text-dark fw-bold fs-1 mb-6">자주 찾는 페이지</h3>
                        <!--begin::List Widget 4-->
                        <div class="card bg-transparent mb-5 shadow-none">
                            <!--begin::Body-->
                            <div class="card-body pt-2 px-0">
                                <div class="table-responsive">
                                    <table class="table table-borderless align-middle">
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 flex-column">
                                                <!--begin::Title-->
                                                <a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad
                                                    Simmons</a>
                                                <div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
                                                <!--end::Title-->
                                                <!--begin::Btn-->
                                                <a href="#"
                                                   class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                    <span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24"
                                                                     fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13"
                                                                          height="2" rx="1"
                                                                          transform="rotate(-180 18 13)"
                                                                          fill="currentColor"/>
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                                                          fill="currentColor"/>
																</svg>
															</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Btn-->
                                            </td>
                                        </tr>


                                    </table>


                                </div>
                            </div>
                        </div>
                        <!--end::List Widget 4-->
                    </div>
                    <!--end::Framework Users-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--end::Header Search-->
<script>
    // 미리 저장된 키워드와 대응하는 페이지 정보
    var keywordMap = {
        "출석": "/attd",
        "공지": "/digicam/anc/all",
        // 추가 키워드와 대응하는 페이지 정보를 여기에 추가할 수 있습니다.
        // 예: "캘린더": "/calendar"
    };

    function searchPage(event) {
        event.preventDefault();  // 폼 기본 동작 방지

        var query = document.querySelector('input[name="query"]').value.toLowerCase();  // 검색어를 소문자로 변환
        var pagenotfound = document.getElementById('notfound');

        // 검색어와 키워드 맵의 키들을 순회하며 부분 일치 검색을 수행
        for (var keyword in keywordMap) {
            if (query.includes(keyword.toLowerCase())) {
                var destination = keywordMap[keyword];
                window.location.href = destination;  // 페이지 이동
                return;  // 일치하는 페이지를 찾았으므로 함수 종료
            }
        }

        pagenotfound.innerHTML = "<h1>해당 페이지는 존재하지 않습니다</h1>"; // 페이지가 존재하지 않는 경우 알림 표시
    }
