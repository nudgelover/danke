<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

    /* CSS for the red dot indicator */
    .badge-dot {
        position: relative;
        top: 4.5px;
        right: 6px;
        display: none;
        width: 8px;
        height: 8px;
        background-color: orangered;
        border-radius: 50%;
        animation: pulsate 1s ease-in-out infinite;
    }

    @keyframes pulsate {
        0% {
            transform: scale(1);
            opacity: 1;
        }
        50% {
            transform: scale(1.5);
            opacity: 0.8;
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }

</style>


<!--begin::Header-->
<div id="kt_header" class="header" data-kt-sticky="true" data-kt-sticky-name="header"
     data-kt-sticky-offset="{default: '200px', lg: '300px'}">
    <!--begin::Container-->
    <div class="container-xxl d-flex align-items-stretch justify-content-between">
        <!--begin::Left-->
        <div class="d-flex align-items-center">
            <!--begin::Mega Menu Toggler-->
            <button class="btn btn-icon btn-accent me-2 me-lg-6" id="kt_mega_menu_toggle" data-bs-toggle="modal"
                    data-bs-target="#kt_mega_menu_modal">
                <!--begin::Svg Icon | path: icons/duotune/general/gen059.svg-->
                <span class="svg-icon svg-icon-3">
										<svg width="16" height="15" viewBox="0 0 16 15" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect y="6" width="16" height="3" rx="1.5" fill="currentColor"/>
											<rect opacity="0.3" y="12" width="8" height="3" rx="1.5"
                                                  fill="currentColor"/>
											<rect opacity="0.3" width="12" height="3" rx="1.5" fill="currentColor"/>
										</svg>
									</span>
                <!--end::Svg Icon-->
            </button>
            <!--end::Mega Menu Toggler-->
            <!--begin::Logo-->
            <a href="/">
                <img alt="Logo" src="/img/logo3.png" class="h-60px"/>
            </a>
            <!--end::Logo-->
        </div>
        <!--end::Left-->
        <!--begin::Right-->
        <div class="d-flex align-items-center">

            <c:choose>
                <c:when test="${loginStdn!=null}">
                    <!--begin::Search-->
                    <%--                    <button class="btn btn-icon btn-sm btn-active-bg-accent ms-1 ms-lg-6" data-bs-toggle="modal"--%>
                    <%--                            data-bs-target="#kt_header_search_modal" id="kt_header_search_toggle">--%>
                    <%--                        <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->--%>
                    <%--                        <span class="svg-icon svg-icon-1 svg-icon-dark">--%>
                    <%--										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
                    <%--                                             xmlns="http://www.w3.org/2000/svg">--%>
                    <%--											<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2"--%>
                    <%--                                                  rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor"/>--%>
                    <%--											<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z"--%>
                    <%--                                                  fill="currentColor"/>--%>
                    <%--										</svg>--%>
                    <%--									</span>--%>
                    <%--                        <!--end::Svg Icon-->--%>
                    <%--                    </button>--%>

                    <!--begin::Search-->
                    <a href="/attd" class="btn btn-icon btn-sm btn-active-bg-accent ms-1 ms-lg-6">
                        <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-dark">
										<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                             fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
</svg>
									</span>
                        <!--end::Svg Icon-->
                    </a>
                    <!--end::Search-->
                    <!--begin::Message-->
                    <button class="btn btn-icon btn-sm btn-active-bg-accent ms-1 ms-lg-6" id="kt_drawer_chat_toggle">
                        <!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
                            <%--                        메신저 토글--%>
                        <span class="svg-icon svg-icon-1 svg-icon-dark">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<path opacity="0.3"
                                                  d="M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z"
                                                  fill="currentColor"/>
											<path d="M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z"
                                                  fill="currentColor"/>
										</svg>
									</span>
                        <span class="badge-dot"></span>
                        <!--end::Svg Icon-->
                    </button>
                    <!--end::Message-->
                    <!--begin::User-->
                    <div class="ms-1 ms-lg-6">
                        <!--begin::Toggle-->
                        <div class="btn btn-icon btn-sm btn-active-bg-accent" data-kt-menu-trigger="click"
                             data-kt-menu-placement="bottom-end" id="kt_header_user_menu_toggle">
                            <!--begin::Svg Icon | path: icons/duotune/communication/com013.svg-->
                            <span class="svg-icon svg-icon-1 svg-icon-dark">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
												<path d="M6.28548 15.0861C7.34369 13.1814 9.35142 12 11.5304 12H12.4696C14.6486 12 16.6563 13.1814 17.7145 15.0861L19.3493 18.0287C20.0899 19.3618 19.1259 21 17.601 21H6.39903C4.87406 21 3.91012 19.3618 4.65071 18.0287L6.28548 15.0861Z"
                                                      fill="currentColor"/>
												<rect opacity="0.3" x="8" y="3" width="8" height="8" rx="4"
                                                      fill="currentColor"/>
											</svg>
										</span>
                            <!--end::Svg Icon-->
                        </div>
                        <!--begin::Menu-->
                        <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-300px"
                             data-kt-menu="true">
                            <div class="menu-content fw-semibold d-flex align-items-center bgi-no-repeat bgi-position-y-top rounded-top"
                                 style="background-color: whitesmoke">
                                <div class="symbol symbol-45px mx-5 py-5">
												<span class="symbol-label bg-primary align-items-end">
													<img alt="Logo" src="/assets/media/svg/avatars/001-boy.svg"
                                                         class="mh-35px"/>
												</span>
                                </div>
                                <div class="">
                                    <span class="text-black fw-bold fs-4">HELLO, ${loginStdn.name}님</span>
                                    <span class="text-black fw-semibold fs-7 d-block">오늘도 열정가득한 하루 되세요!</span>
                                </div>
                            </div>
                            <!--begin::Row-->
                            <div class="row row-cols-2 g-0">
                                <a href="/mypage?id=${loginStdn.id}"
                                   class="border-bottom border-end text-center py-10 btn btn-active-color-primary rounded-0">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<rect x="2" y="2" width="9" height="9" rx="2"
                                                              fill="currentColor"/>
														<rect opacity="0.3" x="13" y="2" width="9" height="9" rx="2"
                                                              fill="currentColor"/>
														<rect opacity="0.3" x="13" y="13" width="9" height="9" rx="2"
                                                              fill="currentColor"/>
														<rect opacity="0.3" x="2" y="13" width="9" height="9" rx="2"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                    <!--end::Svg Icon-->
                                    <span class="fw-bold fs-6 d-block pt-3">마이페이지</span>
                                </a>
                                <a href="/mypage/settings?id=${loginStdn.id}"
                                   class="col border-bottom text-center py-10 btn btn-active-color-primary rounded-0">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                    <span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z"
                                                              fill="currentColor"/>
														<path opacity="0.3"
                                                              d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                    <!--end::Svg Icon-->
                                    <span class="fw-bold fs-6 d-block pt-3">프로필 변경</span>
                                </a>
                                <a href="/attd"
                                   class="col text-center border-end py-10 btn btn-active-color-primary rounded-0">
                                    <!--begin::Svg Icon | path: icons/duotune/finance/fin009.svg-->
                                    <span class="svg-icon svg-icon-3x me-n1">
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-qr-code" viewBox="0 0 16 16">
  <path d="M2 2h2v2H2V2Z"/>
  <path d="M6 0v6H0V0h6ZM5 1H1v4h4V1ZM4 12H2v2h2v-2Z"/>
  <path d="M6 10v6H0v-6h6Zm-5 1v4h4v-4H1Zm11-9h2v2h-2V2Z"/>
  <path d="M10 0v6h6V0h-6Zm5 1v4h-4V1h4ZM8 1V0h1v2H8v2H7V1h1Zm0 5V4h1v2H8ZM6 8V7h1V6h1v2h1V7h5v1h-4v1H7V8H6Zm0 0v1H2V8H1v1H0V7h3v1h3Zm10 1h-1V7h1v2Zm-1 0h-1v2h2v-1h-1V9Zm-4 0h2v1h-1v1h-1V9Zm2 3v-1h-1v1h-1v1H9v1h3v-2h1Zm0 0h3v1h-2v1h-1v-2Zm-4-1v1h1v-2H7v1h2Z"/>
  <path d="M7 12h1v3h4v1H7v-4Zm9 2v2h-3v-1h2v-1h1Z"/>
</svg>
												</span>
                                    <!--end::Svg Icon-->
                                    <span class="fw-bold fs-6 d-block pt-3">출석체크</span>
                                </a>
                                <a href="#" id="logoutBtn"
                                   class="col text-center py-10 btn btn-active-color-primary rounded-0">
                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr077.svg-->
                                    <span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
														<rect opacity="0.3" x="4" y="11" width="12" height="2" rx="1"
                                                              fill="currentColor"/>
														<path d="M5.86875 11.6927L7.62435 10.2297C8.09457 9.83785 8.12683 9.12683 7.69401 8.69401C7.3043 8.3043 6.67836 8.28591 6.26643 8.65206L3.34084 11.2526C2.89332 11.6504 2.89332 12.3496 3.34084 12.7474L6.26643 15.3479C6.67836 15.7141 7.3043 15.6957 7.69401 15.306C8.12683 14.8732 8.09458 14.1621 7.62435 13.7703L5.86875 12.3073C5.67684 12.1474 5.67684 11.8526 5.86875 11.6927Z"
                                                              fill="currentColor"/>
														<path d="M8 5V6C8 6.55228 8.44772 7 9 7C9.55228 7 10 6.55228 10 6C10 5.44772 10.4477 5 11 5H18C18.5523 5 19 5.44772 19 6V18C19 18.5523 18.5523 19 18 19H11C10.4477 19 10 18.5523 10 18C10 17.4477 9.55228 17 9 17C8.44772 17 8 17.4477 8 18V19C8 20.1046 8.89543 21 10 21H19C20.1046 21 21 20.1046 21 19V5C21 3.89543 20.1046 3 19 3H10C8.89543 3 8 3.89543 8 5Z"
                                                              fill="currentColor"/>
													</svg>
												</span>
                                    <!--end::Svg Icon-->
                                    <span class="fw-bold fs-6 d-block pt-3">Sign Out</span>
                                </a>
                            </div>
                            <!--end::Row-->
                        </div>
                        <!--end::Menu-->
                    </div>
                    <!--end::User-->
                    <!--begin::Notifications-->

                    <div class="ms-1 ms-lg-6">
                        <!--begin::Dropdown-->
                        <button class="btn btn-icon btn-sm btn-light-danger fw-bold pulse pulse-danger"
                                data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end"
                                id="kt_activities_toggle">
                            <span class="position-absolute fs-6">3</span>
                            <span class="pulse-ring"></span>
                        </button>
                        <!--end::Dropdown-->
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="ms-1 ms-lg-6">
                        <a href="/login"><span>Login</span>
                        </a>
                    </div>
                    <div class="ms-1 ms-lg-6">
                        <a href="/register"><span>Register</span>
                        </a>
                    </div>
                </c:otherwise>
            </c:choose>

            <!--begin::Aside Toggler-->
            <!--end::Aside Toggler-->

        </div>
        <!--end::Right-->
    </div>
    <!--end::Container-->
</div>
<!--end::Header-->
<%--<script>--%>
<%--    const checkMsgBtn = document.querySelector("#kt_drawer_chat_toggle")--%>
<%--    const badgeDot = document.querySelector(".badge-dot");--%>
<%--    console.log(checkMsgBtn+"클릭");--%>
<%--    checkMsgBtn.addEventListener("click", function() {--%>
<%--        badgeDot.style.display = "none";--%>
<%--    });--%>
<%--</script>--%>

<script>
    const checkMsgBtn = document.querySelector("#kt_drawer_chat_toggle");
    const badgeDot = document.querySelector(".badge-dot");

    const storageKey = "messengerModalShown";

    // 새로고침을 해도 버튼을 누르기 전까지는 ture로 badge유지
    //  localStorage.setItem("messengerModalShown", "true"); 이렇게 메신저 수신될 때 set해놈
    const isModalShown = localStorage.getItem(storageKey) === "true";

    // Show the badge dot if the modal was previously shown
    if (isModalShown) {
        badgeDot.style.display = "block";
    }

    checkMsgBtn.addEventListener("click", function () {
        badgeDot.style.display = "none";
        // Update the flag in web storage to indicate that the modal was shown
        localStorage.setItem(storageKey, "false");
    });
</script>
<script>
    document.getElementById('logoutBtn').addEventListener('click', function (event) {
        event.preventDefault(); // 기본 이벤트 동작 방지
        // 로컬 스토리지 비우기
        localStorage.removeItem("messages");

        // 로그아웃 페이지로 이동
        // 로그아웃 페이지로 이동
        window.location.href = "/logout";//logout 페이지로 이동하는 로직
    });
</script>