<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<!--end::Vendor Stylesheets-->
<style>
    #ancimg{
        width: 100%;
        padding: 3% 10%;
    }
</style>
<!--end::Head-->

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">공지사항 상세</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/digicam/anc/all" class="btn btn-active-accent active fw-bold">뒤로가기</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Inbox App - View & Reply -->
            <div class="d-flex flex-column flex-lg-row">

                <!--begin::Content-->
                <div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
                    <!--begin::Card-->
                    <div class="card">
                        <div class="card-body">
                            <!--begin::Title-->
                            <div class="d-flex flex-wrap gap-2 justify-content-between mb-8">
                                <div class="d-flex align-items-center flex-wrap gap-2">
                                    <!--begin::Heading-->
                                    <h2 class="fw-semibold me-3 my-1">${anc.title}</h2>
                                    <c:if test="${anc.newPost}">
                                        <span class="badge badge-light-warning my-1">new</span>
                                    </c:if>


                                </div>
                            </div>
                            <!--end::Title-->
                            <!--begin::Message accordion-->
                            <div data-kt-inbox-message="message_wrapper">
                                <!--begin::Message header-->
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">
                                    <!--begin::Author-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Avatar-->
                                        <div class="symbol symbol-50 me-4">
                                            <span class="symbol-label"
                                                  style="background-image:url(/img/logo.png);"></span>
                                        </div>
                                        <!--end::Avatar-->
                                        <div class="pe-5">
                                            <!--begin::Author details-->
                                            <div class="d-flex align-items-center flex-wrap gap-1">
                                                <a href="#"
                                                   class="fw-bold text-dark text-hover-primary">관리자</a>
                                                <!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
                                                <span class="svg-icon svg-icon-7 svg-icon-success mx-3">
																		<svg xmlns="http://www.w3.org/2000/svg"
                                                                             width="24px" height="24px"
                                                                             viewBox="0 0 24 24" version="1.1">
																			<circle fill="currentColor" cx="12" cy="12"
                                                                                    r="8"/>
																		</svg>
																	</span>
                                                <!--end::Svg Icon-->
                                                <span class="text-muted fw-bold">${anc.timeAgo}</span>
                                            </div>
                                            <!--end::Author details-->
                                        </div>
                                    </div>
                                    <!--end::Author-->
                                    <!--begin::Actions-->
                                    <div class="d-flex align-items-center flex-wrap gap-2">
                                        <!--begin::Date-->
                                        <span class="fw-semibold text-muted text-end me-3">${anc.rdate}</span>
                                        <!--end::Date-->
                                        <div class="d-flex">
<%--                                            <!--begin::Star-->--%>
<%--                                            <a href="#"--%>
<%--                                               class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3"--%>
<%--                                               data-bs-toggle="tooltip" data-bs-placement="top" title="Star">--%>
<%--                                                <!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->--%>
<%--                                                <span class="svg-icon svg-icon-2 m-0">--%>
<%--																		<svg width="24" height="24" viewBox="0 0 24 24"--%>
<%--                                                                             fill="none"--%>
<%--                                                                             xmlns="http://www.w3.org/2000/svg">--%>
<%--																			<path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"--%>
<%--                                                                                  fill="currentColor"/>--%>
<%--																		</svg>--%>
<%--																	</span>--%>
<%--                                                <!--end::Svg Icon-->--%>
<%--                                            </a>--%>
<%--                                            <!--end::Star-->--%>
<%--                                            <!--begin::Mark as important-->--%>
<%--                                            <a href="#"--%>
<%--                                               class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3"--%>
<%--                                               data-bs-toggle="tooltip" data-bs-placement="top"--%>
<%--                                               title="Mark as important">--%>
<%--                                                <!--begin::Svg Icon | path: icons/duotune/general/gen056.svg-->--%>
<%--                                                <span class="svg-icon svg-icon-2 m-0">--%>
<%--																		<svg width="24" height="24" viewBox="0 0 24 24"--%>
<%--                                                                             fill="none"--%>
<%--                                                                             xmlns="http://www.w3.org/2000/svg">--%>
<%--																			<path d="M16.0077 19.2901L12.9293 17.5311C12.3487 17.1993 11.6407 17.1796 11.0426 17.4787L6.89443 19.5528C5.56462 20.2177 4 19.2507 4 17.7639V5C4 3.89543 4.89543 3 6 3H17C18.1046 3 19 3.89543 19 5V17.5536C19 19.0893 17.341 20.052 16.0077 19.2901Z"--%>
<%--                                                                                  fill="currentColor"/>--%>
<%--																		</svg>--%>
<%--																	</span>--%>
<%--                                                <!--end::Svg Icon-->--%>
<%--                                            </a>--%>
<%--                                            <!--end::Mark as important-->--%>
                                            <a href="#" id="shareFb"
                                               class="btn btn-sm btn-icon btn-light btn-active-light-primary me-2"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title="페이스북 공유하기">
                                                <img style="width:20px; height: 20px"
                                                     src="  https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png">
                                            </a>

                                            <a id="kakaotalk-sharing-btn" href="javascript:;" class="btn btn-sm btn-icon btn-light btn-active-light-primary me-2"  data-bs-toggle="tooltip" data-bs-placement="top" title="카카오톡 공유하기">
                                                <img style="width:20px; height: 20px" src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"/>
                                            </a>
                                        </div>
                                    </div>
                                    <!--end::Actions-->
                                </div>
                                <!--end::Message header-->
                                <!--begin::Message content-->
                                <div class="collapse fade show" data-kt-inbox-message="message">
                                    <div class="py-5">
                                        <img id="ancimg" src="/uimg/${anc.img}">
                                        <p>${anc.contents}</p>
                                    </div>
                                </div>
                                <!--end::Message content-->
                            </div>
                            <!--end::Message accordion-->

                            <div class="separator my-6"></div>
                            <!--begin::Message accordion-->
                            <div data-kt-inbox-message="message_wrapper">
                                <!--begin::Message header-->
                                <div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer"
                                     data-kt-inbox-message="header">
                                    <!--begin::Author-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Avatar-->
                                        <div class="symbol symbol-50 me-4">
                                            <span class="symbol-label"
                                                  style="background-image:url(/img/logo.png);"></span>
                                        </div>
                                        <!--end::Avatar-->
                                        <div class="pe-5">
                                            <!--begin::Author details-->
                                            <div class="d-flex align-items-center flex-wrap gap-1">
                                                <a href="#" class="fw-bold text-dark text-hover-primary">당케관리자</a>
                                                <!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
                                                <span class="svg-icon svg-icon-7 svg-icon-success mx-3">
																		<svg xmlns="http://www.w3.org/2000/svg"
                                                                             width="24px" height="24px"
                                                                             viewBox="0 0 24 24" version="1.1">
																			<circle fill="currentColor" cx="12" cy="12"
                                                                                    r="8"/>
																		</svg>
																	</span>
                                                <!--end::Svg Icon-->
                                            </div>
                                            <!--end::Author details-->
                                            <!--begin::Message details-->
                                            <div class="d-none" data-kt-inbox-message="details">
                                                <span class="text-muted fw-semibold">to me</span>
                                                <!--begin::Menu toggle-->
                                                <a href="#" class="me-1" data-kt-menu-trigger="click"
                                                   data-kt-menu-placement="bottom-start">
                                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
                                                    <span class="svg-icon svg-icon-5 m-0">
																			<svg width="24" height="24"
                                                                                 viewBox="0 0 24 24" fill="none"
                                                                                 xmlns="http://www.w3.org/2000/svg">
																				<path d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
                                                                                      fill="currentColor"/>
																			</svg>
																		</span>
                                                    <!--end::Svg Icon-->
                                                </a>
                                                <!--end::Menu toggle-->
                                            </div>
                                            <!--end::Message details-->
                                            <!--begin::Preview message-->
                                            <div class="text-dark fw-semibold mw-450px"
                                                 data-kt-inbox-message="preview">공지사항에 대한 문의사항은 관리자에게 문의주시기 바랍니다.
                                            </div>
                                            <!--end::Preview message-->
                                        </div>
                                    </div>
                                    <!--end::Author-->
                                    <!--begin::Actions-->
                                    <div class="d-flex align-items-center flex-wrap gap-2">
                                        <!--begin::Date-->
                                        <span class="fw-semibold text-muted text-end me-3"></span>
                                        <!--end::Date-->
                                    </div>
                                    <!--end::Actions-->
                                </div>
                                <!--end::Message header-->
                            </div>
                            <!--end::Message accordion-->

                            <div class="separator my-6"></div>

                            <!--begin::Form-->
<%--                            <form id="kt_inbox_reply_form">--%>
<%--                                <!--begin::Body-->--%>
<%--                                <div class="d-block">--%>
<%--                                    <!--begin::To-->--%>
<%--                                    <div class="d-flex align-items-center border-bottom px-8 min-h-50px marigin">--%>
<%--                                        <!--begin::Input-->--%>
<%--                                        <img width="30px" src="/uimg/${loginStdn.img}">--%>
<%--                                        <input type="text" name="id" value="${loginStdn.id}">--%>
<%--                                        <input type="text" class="form-control border-0" name="compose_to"--%>
<%--                                               name="contents" placeholder="comment..."/>--%>
<%--                                        <a href="#" class="btn btn-primary">Send</a>--%>

<%--                                        <!--end::Input-->--%>
<%--                                    </div>--%>
<%--                                    <!--end::Message-->--%>
<%--                                </div>--%>
<%--                                <!--end::Body-->--%>
<%--                            </form>--%>
                            <!--end::Form-->
                        </div>
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::Content-->
            </div>
            <!--end::Inbox App - View & Reply -->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Main-->
</div>

<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/apps/inbox/reply.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<script>
    <%--    페이스북 공유--%>
    const btnShareFb = document.querySelector('#shareFb');

    btnShareFb.addEventListener('click', () => {
        const pageUrl = 'news.v.daum.net/v/20220319120213003';
        <%--window.open(`http://www.facebook.com/sharer/sharer.php?u=${pageUrl}`);--%>
        <%--        url 바꿔주기   --%>
        window.open(`http://www.facebook.com/sharer/sharer.php?u=http://127.0.0.1/digicam/anc/detail`);

    })
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
    Kakao.init('발급받은 JavaScript 키');

    const btnShareKs = document.querySelector('#shareKt');

    btnShareKs.addEventListener('click', () => {
        Kakao.Story.share({
            url : 'www.daum.net',
            text: '카카오스토리로 공유 합니다.'
        });
    })
</script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
        integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx"
        crossorigin="anonymous"></script>
<script>
    Kakao.init('bdeaed76dc8de3e2c25b24d04c468b43'); // 사용하려는 앱의 JavaScript 키 입력
</script>
<script>
    Kakao.Share.createDefaultButton({
        container: '#kakaotalk-sharing-btn',
        objectType: 'feed',
        content: {
            title: 'DIGI CAMPUS 공지사항',
            description: '${anc.title}',
            imageUrl:
                'https://www.cuonet.com/data/file/rev_gui/2948886887_MA3tdzUv_840685b760fe4a4462c1c3ec820feceb6a0c0832.png',
            link: {
                mobileWebUrl: 'https://developers.kakao.com',
                webUrl: 'https://developers.kakao.com',
            },
        },
        buttons: [
            {
                title: '웹으로 이동',
                link: {
                    mobileWebUrl: '${serviceserver}/anc/detail?id=${anc.id}',
                    webUrl      : '${serviceserver}/anc/detail?id=${anc.id}',
                },
            },
            {
                title: '앱으로 이동',
                link: {
                    mobileWebUrl: '${serviceserver}/anc/detail?id=${anc.id}',
                    webUrl      : '${serviceserver}/anc/detail?id=${anc.id}',
                },
            },
        ],
    });
</script>


