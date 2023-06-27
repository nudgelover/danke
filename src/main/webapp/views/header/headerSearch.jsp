<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    [data-bs-theme="light"] #kt_header_search_modal {
        background-color: white;
    }

    [data-bs-theme="dark"] #kt_header_search_modal {
        background-color: #1e1e2d;
    }

    #matchingKeywords {
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        padding: 2em;
        border-bottom: 1px solid #ddd;
        margin-bottom: 2em;
        font-size: 14px;
        color: gray;
        display: none;

        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    #matchingKeywords a {
        font-weight: bold;
        margin-right: 8px;
        color: gray;
    }

    #matchingKeywords a:hover {
        color: #20D489;
        text-decoration: underline !important;
    }

    #notfound {
        color: gray;
        margin-bottom: 2em;
    }

    #notfound span {
        font-size: 14px;
        margin: 1em;
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
                               class="form-control bg-transparent border-0 fs-2x text-center fw-normal" name="query"
                               placeholder="Search..." oninput="showMatchingKeywords()"/>
                    </form>

                    <div id="matchingKeywords"></div>
                    <div id="notfound"></div>
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
                                            <td class="ps-0 w-250px ">
                                                <!--begin::Title-->
                                                <a href="/mypage?id=${loginStdn.id}"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                    마이페이지</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/241/241528.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0  ">
                                                <!--begin::Title-->
                                                <a href="/attd"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">출석체크
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/2797/2797387.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/digicam/anc/all"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                    공지사항</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/6062/6062646.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/lecture/mylecture?id=${loginStdn.id}" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">내 학습</a>
                                                <!--end::Title-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/4666/4666864.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/blah"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                블라블라</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/2904/2904806.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/study/add" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">스터디</a>
                                                <!--end::Title-->
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
        "마이페이지"    : "/mypage?id=${loginStdn.id}",
        "비밀번호변경"    : "/mypage/pwd?id=${loginStdn.id}",
        "프로필변경"    : "/mypage/settings?id=${loginStdn.id}",
        "정보변경"    : "/mypage/settings?id=${loginStdn.id}",
        "출석체크"     : "/attd",
        "공지사항"     : "/digicam/anc/all",
        "캘린더"      : "/digicam/calendar",
        "달력"       : "/digicam/calendar",
        "블라블라"     : "/blah",
        "디지캠퍼스"    : "/digicam/detail",
        "디지멤버스"    : "/digicam/member",
        "디지챗"      : "/blah/group",
        "디지라이브"    : "/blah/group",
        "강의검색"     : "/lecture/all",
        "유튜브검색"    : "/lecture/search",
        "학습자료찾기"   : "/lecture/search",
        "학습자료찾기"   : "/lecture/search",
        "내 강의실"    : "/lecture/mylecture?id=${loginStdn.id}",
        "내 학습"     : "/lecture/mylecture?id=${loginStdn.id}",
        "내가 결제한 강의": "/lecture/ordhistory?stdnId=${loginStdn.id}",
        "수강신청 내역조회": "/lecture/ordhistory?stdnId=${loginStdn.id}",
        "장바구니"     : "/lecture/cart?id=${loginStdn.id}",
    };

    function showMatchingKeywords() {
        var query = document.querySelector('input[name="query"]').value;  // 검색어를 소문자로 변환
        var matches = [];
        var matchingKeywords = document.getElementById('matchingKeywords');
        var pagenotfound = document.getElementById('notfound');

        if (query.trim() === '') {
            matchingKeywords.style.display = 'none';
            pagenotfound.innerHTML = "";
            return;
        }
        for (var keyword in keywordMap) {
            if (keyword.includes(query)) {
                var destination = keywordMap[keyword];
                matches.push('<a href="' + destination + '"><i class="bi bi-search"></i> ' + keyword + '</a>');
            }
        }

        if (matches.length > 0) {
            matchingKeywords.innerHTML = matches.join(" ");  // 일치하는 키워드들을 화면에 표시
            matchingKeywords.style.display = 'block';  // 입력이 있을 때는 표시
        } else {
            matchingKeywords.style.display = 'none';
            // 입력이 없거나 일치하는 키워드가 없을 때는 숨김 처리
        }
    }

    function searchPage(event) {
        event.preventDefault();  // 폼 기본 동작 방지

        var query = document.querySelector('input[name="query"]').value;  // 검색어를 그대로 저장
        var pagenotfound = document.getElementById('notfound');

        if (query.trim() === '') {
            pagenotfound.innerHTML = ""; // 검색어가 없는 경우 메시지를 지움, 문제를 엔터를 해야지만 됨. 자동으로 keyup이 될? 확인해야지
            return;  // 입력이 없는 경우 아무 동작도 하지 않음
        }

        // 검색어와 키워드 맵의 키들을 순회하며 부분 일치 검색을 수행
        for (var keyword in keywordMap) {
            if (keyword.includes(query)) {
                var destination = keywordMap[keyword];
                window.location.href = destination;  // 페이지 이동
                return;  // 일치하는 페이지를 찾았으므로 함수 종료
            }
        }

        pagenotfound.innerHTML = "<div class='d-flex w-100 flex-column text-center align-items-center justify-content-center'><h1>죄송합니다.</h2><span>해당 페이지는 존재하지 않습니다. 다시 검색해주세요.</span><img style='width: 100px' src='https://cdn-icons-png.flaticon.com/512/5696/5696039.png'> </div>"; // 페이지가 존재하지 않는 경우 알림 표시
    }
</script>