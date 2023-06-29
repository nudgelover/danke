<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko" data-bs-theme-mode="light">
<!--begin::Head-->
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&family=Nanum+Gothic&family=Noto+Sans+KR:wght@300&display=swap"
          rel="stylesheet">
    <base href=""/>
    <title>DIGI CAMPUS</title>
    <meta charset="utf-8"/>
    <meta name="description"
          content="Check out all the features of the Start admin panel. A large number of templates, components and widgets."/>
    <meta name="keywords"
          content="Start, bootstrap, bootstrap 5, admin themes, free admin themes, bootstrap admin, bootstrap dashboard, html admin theme, html template"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta property="og:locale" content="ko_KR"/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="Start HTML Pro - Bootstrap 5 HTML Multipurpose Admin Dashboard Template"/>
    <meta property="og:url" content="https://keenthemes.com/products/start-html-pro"/>
    <meta property="og:site_name" content="Keenthemes | Start HTML Pro"/>
    <link rel="canonical" href="https://preview.keenthemes.com/start-html-pro"/>
    <link rel="shortcut icon" href="/img/logo.png"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700"/>
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <script>
        let blahalarm = {
            id         : null,
            stompClient: null,

            init: function () {
                this.id = $('#loginStdnid').val();
                var self = this;
                var sid = this.id;
                var socket = new SockJS('${serviceserver}/blahalarm');
                this.stompClient = Stomp.over(socket);

                this.stompClient.connect({}, function (frame) {
                    console.log('Connected: ' + frame);

                    self.stompClient.subscribe('/blahalarm/to/' + sid, function (msg) {
                        var sendid = JSON.parse(msg.body).sendid;
                        var postid = JSON.parse(msg.body).postid;
                        var content = JSON.parse(msg.body).content;

                        var alarmData = {
                            sendid   : sendid,
                            postid   : postid,
                            content  : content,
                            isAlerted: true
                        };

                        self.saveAlarm(alarmData);
                        self.displayAlarm(alarmData);
                        self.showAlarm();
                    });
                });

                $('[id^="add_comm_"]').click(function (event) {
                    event.preventDefault();

                    const textarea = $(this).closest('form').find('textarea');
                    const content = textarea.val();
                    $(this).data('content', content);
                    const postid = $(this).data('postid');
                    const receiveId = $(this).data('receiveid');
                    blahalarm.sendTo(postid, receiveId, content);
                });


                $('[id^="likeButton_"]').click(function (event) {
                    event.preventDefault();

                    const postid = $(this).data('postid');
                    const receiveId = $(this).data('receiveid');
                    const path = $(this).find('path');

                    if (path.attr('fill') !== 'red') {
                        // 좋아요를 누르지 않은 상태에서만 알람을 전송
                        blahalarm.sendTo(postid, receiveId);

                    }
                    // else{
                    //     alert('좋아요 취소~')
                    // }
                    // blahalarm.sendTo(postid, receiveId);
                });
                this.loadAndDisplayAlarms();
            },

            disconnect: function () {
                if (this.stompClient !== null) {
                    this.stompClient.disconnect();
                }
                console.log("Disconnected");
            },

            sendTo: function (postid, receiveId, content) {
                var msg = JSON.stringify({
                    'sendid'   : this.id,
                    'postid'   : postid,
                    'receiveid': receiveId,
                    'content'  : content
                });
                console.log(msg);
                this.stompClient.send('/blahalarmto', {}, msg);
            },

            saveAlarm: function (alarmData) {
                var storedAlarms = this.getStoredAlarms();
                storedAlarms.push(alarmData);
                localStorage.setItem('blahalarms', JSON.stringify(storedAlarms));
            },

            loadAndDisplayAlarms: function () {
                var storedAlarms = this.getStoredAlarms();
                for (var i = 0; i < storedAlarms.length; i++) {
                    var alarmData = storedAlarms[i];
                    this.displayAlarm(alarmData);
                    if (alarmData.isAlerted) {
                        this.showAlarm();
                    }
                }
            },

            displayAlarm: function (alarmData) {
                var sendid = alarmData.sendid;
                var postid = alarmData.postid;
                var content = alarmData.content;

                var timelineItem = $("<div>").addClass("timeline-item");
                var timelineLine = $("<div>").addClass("timeline-line w-40px");
                var timelineIcon = $("<div>").addClass("timeline-icon symbol symbol-circle symbol-40px me-4")
                    .append($("<div>").addClass("symbol-label bg-light").html(
                        "<span class='svg-icon svg-icon-2 svg-icon-gray-500'>" +
                        "<svg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'>" +
                        "<path opacity='0.3' d='M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z' fill='currentColor' />" +
                        "<path d='M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z' fill='currentColor' />" +
                        "</svg></span>"
                    ));
                var timelineContent = $("<div>").addClass("timeline-content mb-10 mt-n1");
                var timelineHeading = $("<div>").addClass("pe-3 mb-5");


                if (content) {
                    var title = $("<div>").addClass("fs-5 fw-semibold mb-2").html(sendid + "님이 회원님의 블라블라에 댓글을 남겼습니다: <span class='text-muted'>" + content + "</span>");
                } else {
                    var title = $("<div>").addClass("fs-5 fw-semibold mb-2").html(sendid + "님이 회원님의 블라블라에 좋아요<span style='color: red' '>♥️</span>를 누르셨습니다");
                }


                var description = $("<div>").addClass("d-flex align-items-center mt-1 fs-6");
                var info = $("<div>").addClass("text-muted me-2 fs-7").html("<a href='/blah'>블라블라로 이동하기</a>");

                timelineHeading.append(title);
                description.append(info);
                timelineHeading.append(description);
                timelineContent.append(timelineHeading);
                timelineItem.append(timelineLine);
                timelineItem.append(timelineIcon);
                timelineItem.append(timelineContent);

                $("#getactivityLogs").append(timelineItem);
                $(".pulse-ring").show();
            },

            showAlarm: function () {
                $(".pulse-ring").show();
            },

            getStoredAlarms: function () {
                var storedAlarms = localStorage.getItem('blahalarms');
                if (storedAlarms) {
                    return JSON.parse(storedAlarms);
                } else {
                    return [];
                }
            }
        };

        $(function () {
            blahalarm.init();
        });

    </script>
    <script>
        let mrkalarm = {
            id         : null,
            stompClient: null,
            init       : function () {
                this.id = $('#loginStdnid').val();
                console.log(this.id + "테스토");
                var self = this;
                var sid = this.id;
                var socket = new SockJS('${serviceserver}/alarm');
                this.stompClient = Stomp.over(socket);

                this.stompClient.connect({}, function (frame) {
                    console.log('Connected: ' + frame);

                    self.stompClient.subscribe('/alarm/to/' + sid, function (msg) {
                        var sendid = JSON.parse(msg.body).sendid;
                        var postid = JSON.parse(msg.body).postid;
                        var content = JSON.parse(msg.body).content;

                        var alarmData = {
                            sendid   : sendid,
                            postid   : postid,
                            content  : content,
                            isAlerted: true
                        };

                        self.saveAlarm(alarmData);
                        self.displayAlarm(alarmData);
                        self.showAlarm();

                    });

                });

                $("#mrk_add_comm").click(function (event) {
                    event.preventDefault();

                    const content = $('#mrkcontents').val();
                    const postid = $('#mrkpostId').val();
                    const receiveId = $('#mrkreceiver').text();
                    mrkalarm.sendTo(postid, receiveId, content);


                });
                this.loadAndDisplayAlarms();
            },
            disconnect : function () {
                if (this.stompClient !== null) {
                    this.stompClient.disconnect();
                }
                console.log("Disconnected");
            },
            sendTo     : function (postid, receiveId, content) {
                var msg = JSON.stringify({
                    'sendid'   : this.id,
                    'postid'   : postid,
                    'receiveid': receiveId,
                    'content'  : content
                });
                console.log(msg + "맛집");
                this.stompClient.send('/alarmto', {}, msg);
            },
            saveAlarm  : function (alarmData) {
                var storedAlarms = this.getStoredAlarms();
                storedAlarms.push(alarmData);
                localStorage.setItem('alarms', JSON.stringify(storedAlarms));
            },

            loadAndDisplayAlarms: function () {
                var storedAlarms = this.getStoredAlarms();
                for (var i = 0; i < storedAlarms.length; i++) {
                    var alarmData = storedAlarms[i];
                    this.displayAlarm(alarmData);
                    if (alarmData.isAlerted) {
                        this.showAlarm();
                    }
                }
            },

            displayAlarm: function (alarmData) {
                var sendid = alarmData.sendid;
                var postid = alarmData.postid;
                var content = alarmData.content;

                var timelineItem = $("<div>").addClass("timeline-item");
                var timelineLine = $("<div>").addClass("timeline-line w-40px");
                var timelineIcon = $("<div>").addClass("timeline-icon symbol symbol-circle symbol-40px me-4")
                    .append($("<div>").addClass("symbol-label bg-light").html(
                        "<span class='svg-icon svg-icon-2 svg-icon-gray-500'>" +
                        "<svg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'>" +
                        "<path opacity='0.3' d='M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z' fill='currentColor' />" +
                        "<path d='M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z' fill='currentColor' />" +
                        "</svg></span>"
                    ));
                var timelineContent = $("<div>").addClass("timeline-content mb-10 mt-n1");
                var timelineHeading = $("<div>").addClass("pe-3 mb-5");
                var title = $("<div>").addClass("fs-5 fw-semibold mb-2").html(sendid + "님이 회원님의 맛집게시글에 댓글을 남겼습니다: <span class='text-muted'>" + content + "</span>");
                var description = $("<div>").addClass("d-flex align-items-center mt-1 fs-6");
                var info = $("<div>").addClass("text-muted me-2 fs-7").html("<a href='/marker/detail?id=" + postid + "'>게시글 보러가기</a>");

                timelineHeading.append(title);
                description.append(info);
                timelineHeading.append(description);
                timelineContent.append(timelineHeading);
                timelineItem.append(timelineLine);
                timelineItem.append(timelineIcon);
                timelineItem.append(timelineContent);

                $("#getactivityLogs").append(timelineItem);
                $(".pulse-ring").show();
            },

            showAlarm: function () {
                $(".pulse-ring").show();
            },

            getStoredAlarms: function () {
                var storedAlarms = localStorage.getItem('alarms');
                if (storedAlarms) {
                    return JSON.parse(storedAlarms);
                } else {
                    return [];
                }
            }
        };
        $(function () {
            mrkalarm.init();
        });
    </script>
    <script>
        let chatbtn = {
            init: function () {
                //페이지 로드되면, 연결 자동으로 되도록


                const chatbotbox = $('#chatbot_box');
                const oneononebox = $('#oneonone_box');
                const toallbox = $('#toall_box');
                const scrollBtn = document.createElement("button");
                // scrollBtn.innerHTML = "챗봇";
                scrollBtn.setAttribute("id", "scroll-btn");
                scrollBtn.style.backgroundImage = "url('/img/chatbot.png')";
                scrollBtn.style.backgroundSize = "cover";
                scrollBtn.style.backgroundPosition = "center";
                document.body.appendChild(scrollBtn);
                scrollBtn.classList.add("show");


                const chatbotBadgeDot = document.createElement("span");
                chatbotBadgeDot.classList.add("admin-badge-dot");
                chatbotBadgeDot.setAttribute("id", "chatbot-badge-dot")
                scrollBtn.appendChild(chatbotBadgeDot);

                scrollBtn.addEventListener("click", function () {
                    // chatbot.connect();
                    chatbotbox.toggle();
                    chatbotBadgeDot.style.display = "none";
                });


                const scrollBtn2 = document.createElement("button");
                // scrollBtn2.innerHTML = "1:1";
                scrollBtn2.setAttribute("id", "scroll-btn2");
                scrollBtn2.style.backgroundImage = "url('/img/oneonone.png')";
                scrollBtn2.style.backgroundSize = "cover";
                scrollBtn2.style.backgroundPosition = "center";
                document.body.appendChild(scrollBtn2);
                scrollBtn2.classList.add("show");

                const oneononeBadgeDot = document.createElement("span");
                oneononeBadgeDot.classList.add("admin-badge-dot");
                oneononeBadgeDot.setAttribute("id", "oneonone-badge-dot")
                scrollBtn2.appendChild(oneononeBadgeDot);


                scrollBtn2.addEventListener("click", function () {
                    // oneonone.connect();
                    oneononebox.toggle();
                    oneononeBadgeDot.style.display = "none";
                });

                const scrollBtn3 = document.createElement("button");
                // scrollBtn3.innerHTML = "공지";
                scrollBtn3.setAttribute("id", "scroll-btn3");
                scrollBtn3.style.backgroundImage = "url('/img/notice.png')";
                scrollBtn3.style.backgroundSize = "cover";
                scrollBtn3.style.backgroundPosition = "center";
                document.body.appendChild(scrollBtn3);
                scrollBtn3.classList.add("show");

                const noticeBadgeDot = document.createElement("span");
                noticeBadgeDot.classList.add("admin-badge-dot");
                noticeBadgeDot.setAttribute("id", "notice-badge-dot")
                scrollBtn3.appendChild(noticeBadgeDot);

                scrollBtn3.addEventListener("click", function () {
                    // toall.connect();
                    toallbox.toggle();
                    noticeBadgeDot.style.display = "none";
                });
            }
        };

        $(function () {
            chatbtn.init();
            // chatbot.connect();
            // oneonone.connect();
            toall.connect();
        });
    </script>
    <script>
        var defaultThemeMode = "light";
        var themeMode;
        if (document.documentElement) {
            if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
                themeMode = document.documentElement.getAttribute("data-bs-theme-mode");
            } else {
                if (localStorage.getItem("data-bs-theme") !== null) {
                    themeMode = localStorage.getItem("data-bs-theme");
                } else {
                    themeMode = defaultThemeMode;
                }
            }
            if (themeMode === "system") {
                themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
            }
            document.documentElement.setAttribute("data-bs-theme", themeMode);
        }

        function toggleTheme() {
            var currentTheme = document.documentElement.getAttribute("data-bs-theme");
            var newTheme = (currentTheme === "light") ? "dark" : "light";

            updateTheme(newTheme);
            toggleIcon(newTheme);
        }

        function updateTheme(theme) {
            document.documentElement.setAttribute("data-bs-theme", theme);
            localStorage.setItem("data-bs-theme", theme);
        }

        function toggleIcon(theme) {
            var sunIcon = document.querySelector(".sun-icon");
            var moonIcon = document.querySelector(".moon-icon");

            if (theme === "dark") {
                sunIcon.style.display = "none";
                moonIcon.style.display = "block";
            } else {
                sunIcon.style.display = "block";
                moonIcon.style.display = "none";
            }
        }

        function applySavedTheme() {
            var savedTheme = localStorage.getItem("data-bs-theme");
            if (savedTheme) {
                updateTheme(savedTheme);
                toggleIcon(savedTheme);
            } else {
                var prefersDarkScheme = window.matchMedia("(prefers-color-scheme: dark)").matches;
                if (prefersDarkScheme) {
                    updateTheme("dark");
                    toggleIcon("dark");
                } else {
                    updateTheme("light");
                    toggleIcon("light");
                }
            }
            document.querySelector(".theme-icon").style.visibility = "visible"; // 버튼 아이콘 표시
        }

        applySavedTheme();
    </script>
    <style>
        html body {
            font-family: 'Gothic A1', sans-serif;
            font-family: 'Nanum Gothic', sans-serif;
            font-family: 'Noto Sans KR', sans-serif;
        }

        [data-bs-theme="dark"] #kt_body {
            background-color: black;
        }

        [data-bs-theme="dark"] .bg-white {
            background-color: black !important;
        }

        [data-bs-theme="dark"] .highlight {
            background-color: #a9a9a9 !important;
        }

        [data-bs-theme="dark"] pre {
            background-color: #a9a9a9 !important;
        }

        #scroll-btn {
            opacity: 0;
            width: 60px;
            height: 60px;
            /*color: #fff;*/
            background-color: #8681BE;
            position: fixed;
            bottom: 13.5%;
            right: 5%;
            border: 2px solid #8681BE;
            border-radius: 50%;
            font: bold 2px monospace;
            transition: opacity 2s, transform 2s;
        }

        #scroll-btn.show {
            opacity: 1;
            transition: opacity 5s, transform 5s;
        }

        #scroll-btn2 {
            opacity: 0;
            width: 60px;
            height: 60px;
            /*color: #fff;*/
            background-color: #8681BE;
            position: fixed;
            bottom: 5%;
            right: 5%;
            border: 2px solid #8681BE;
            border-radius: 50%;
            font: bold 10px monospace;
            transition: opacity 2s, transform 2s;
        }

        #scroll-btn2.show {
            opacity: 1;
            transition: opacity 5s, transform 5s;
        }

        #scroll-btn3 {
            opacity: 0;
            width: 60px;
            height: 60px;
            /*color: #fff;*/
            background-color: #8681BE;
            position: fixed;
            bottom: 21.7%;
            right: 5%;
            border: 2px solid #8681BE;
            border-radius: 50%;
            font: bold 10px monospace;
            transition: opacity 2s, transform 2s;
        }

        #scroll-btn3.show {
            opacity: 1;
            transition: opacity 5s, transform 5s;
        }

        .admin-badge-dot {
            position: relative;
            top: 16px;
            right: 6px;
            display: none;
            width: 8px;
            height: 8px;
            background-color: orange;
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
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
      class="header-fixed header-tablet-and-mobile-fixed aside-enabled aside-fixed aside-primary-enabled aside-secondary-disabled">
<!--begin::Theme mode setup on page load-->
<!--end::Theme mode setup on page load-->
<!--begin::Main-->
<!--begin::Root-->
<div class="d-flex flex-column flex-root">
    <jsp:include page="oneonone.jsp"/>
    <jsp:include page="chatbot.jsp"/>
    <jsp:include page="toall.jsp"/>
    <!--begin::Page-->
    <div class="page d-flex flex-row flex-column-fluid">
        <jsp:include page="sidebar.jsp"/>
        <!--begin::Wrapper-->
        <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
            <!--begin::Header-->
            <jsp:include page="header/header.jsp"/>
            <!--end::Header-->
            <!--begin::Main-->
            <c:choose>
                <c:when test="${center==null}">
                    <jsp:include page="center.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="${center}.jsp"/>
                </c:otherwise>
            </c:choose>
            <!--end::Main-->
            <!--begin::Footer-->
            <div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
                <!--begin::Container-->
                <div class="container-xxl d-flex flex-column flex-md-row flex-stack">
                    <!--begin::Copyright-->
                    <div class="text-dark order-2 order-md-1">
                        <span class="text-muted fw-semibold me-2">2023&copy;</span>
                        <a href="https://keenthemes.com" target="_blank" class="text-gray-800 text-hover-primary">DIGICampus
                            Danke</a>
                    </div>
                    <!--end::Copyright-->
                    <!--begin::Menu-->
                    <ul class="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
                        <li class="menu-item">
                            <a href="/digicam/detail" target="_blank" class="menu-link px-2">About</a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0)" class="menu-link px-2">Support</a>
                        </li>
                    </ul>
                    <!--end::Menu-->
                </div>
                <!--end::Container-->
            </div>
            <!--end::Footer-->
        </div>
        <!--end::Wrapper-->
    </div>
    <!--end::Page-->
</div>
<input type="hidden" id="loginStdnid" value="${loginStdn.id}">
<!--end::Root-->
<!--begin::Header Search-->
<jsp:include page="header/headerSearch.jsp"/>
<!--end::Header Search-->
<!--begin::Mega Menu-->
<jsp:include page="header/nav.jsp"/>
<!--end::Mega Menu-->
<!--begin::Drawers-->
<!--begin::Activities drawer-->
<jsp:include page="header/activityLogs.jsp"/>
<!--end::Activities drawer-->
<!--begin::Chat drawer-->
<jsp:include page="header/chat.jsp"/>
<!--end::Chat drawer-->
<!--begin::Chat drawer-->
<div id="kt_shopping_cart" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="cart"
     data-kt-drawer-activate="true" data-kt-drawer-overlay="true"
     data-kt-drawer-width="{default:'300px', 'md': '500px'}" data-kt-drawer-direction="end"
     data-kt-drawer-toggle="#kt_drawer_shopping_cart_toggle" data-kt-drawer-close="#kt_drawer_shopping_cart_close">
    <!--begin::Messenger-->
    <div class="card card-flush w-100 rounded-0">
        <!--begin::Card header-->
        <div class="card-header">
            <!--begin::Title-->
            <h3 class="card-title text-gray-900 fw-bold">Shopping Cart</h3>
            <!--end::Title-->
            <!--begin::Card toolbar-->
            <div class="card-toolbar">
                <!--begin::Close-->
                <div class="btn btn-sm btn-icon btn-active-light-primary" id="kt_drawer_shopping_cart_close">
                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                    <span class="svg-icon svg-icon-2">
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
            <!--end::Card toolbar-->
        </div>
        <!--end::Card header-->
        <!--begin::Card body-->
        <div class="card-body hover-scroll-overlay-y h-400px pt-5">
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">Iblender</a>
                        <span class="text-gray-400 fw-semibold d-block">The best kitchen gadget in 2022</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 350</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">5</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-1.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">SmartCleaner</a>
                        <span class="text-gray-400 fw-semibold d-block">Smart tool for cooking</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 650</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">4</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-3.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">CameraMaxr</a>
                        <span class="text-gray-400 fw-semibold d-block">Professional camera for edge</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 150</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">3</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-8.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">$D Printer</a>
                        <span class="text-gray-400 fw-semibold d-block">Manfactoring unique objekts</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 1450</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">7</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-26.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">MotionWire</a>
                        <span class="text-gray-400 fw-semibold d-block">Perfect animation tool</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 650</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">7</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-21.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">Samsung</a>
                        <span class="text-gray-400 fw-semibold d-block">Profile info,Timeline etc</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 720</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">6</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-34.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
            <!--begin::Separator-->
            <div class="separator separator-dashed my-6"></div>
            <!--end::Separator-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <!--begin::Wrapper-->
                <div class="d-flex flex-column me-3">
                    <!--begin::Section-->
                    <div class="mb-3">
                        <a href="../dist/apps/ecommerce/sales/details.html"
                           class="text-gray-800 text-hover-primary fs-4 fw-bold">$D Printer</a>
                        <span class="text-gray-400 fw-semibold d-block">Manfactoring unique objekts</span>
                    </div>
                    <!--end::Section-->
                    <!--begin::Section-->
                    <div class="d-flex align-items-center">
                        <span class="fw-bold text-gray-800 fs-5">$ 430</span>
                        <span class="text-muted mx-2">for</span>
                        <span class="fw-bold text-gray-800 fs-5 me-3">8</span>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                        <a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                            <span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
                                                  transform="rotate(-90 11.364 20.364)" fill="currentColor"/>
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1"
                                                  fill="currentColor"/>
										</svg>
									</span>
                            <!--end::Svg Icon-->
                        </a>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Wrapper-->
                <!--begin::Pic-->
                <div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
                    <img src="/assets/media/stock/600x400/img-27.jpg" alt=""/>
                </div>
                <!--end::Pic-->
            </div>
            <!--end::Item-->
        </div>
        <!--end::Card body-->
        <!--begin::Card footer-->
        <div class="card-footer">
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <span class="fw-bold text-gray-600">Total</span>
                <span class="text-gray-800 fw-bolder fs-5">$ 1840.00</span>
            </div>
            <!--end::Item-->
            <!--begin::Item-->
            <div class="d-flex flex-stack">
                <span class="fw-bold text-gray-600">Sub total</span>
                <span class="text-primary fw-bolder fs-5">$ 246.35</span>
            </div>
            <!--end::Item-->
            <!--end::Action-->
            <div class="d-flex justify-content-end mt-9">
                <a href="#" class="btn btn-primary d-flex justify-content-end">Pleace Order</a>
            </div>
            <!--end::Action-->
        </div>
        <!--end::Card footer-->
    </div>
    <!--end::Messenger-->
</div>
<!--end::Chat drawer-->
<!--end::Drawers-->
<!--end::Main-->
<!--begin::Engage drawers-->
<!--begin::Exolore drawer-->
<div id="kt_explore" class="explore bg-body" data-kt-drawer="true" data-kt-drawer-name="explore"
     data-kt-drawer-activate="true" data-kt-drawer-overlay="true"
     data-kt-drawer-width="{default:'300px', 'lg': '440px'}" data-kt-drawer-direction="end"
     data-kt-drawer-toggle="#kt_explore_toggle" data-kt-drawer-close="#kt_explore_close">
    <!--begin::Card-->
    <div class="card shadow-none rounded-0 w-100">
        <!--begin::Header-->
        <div class="card-header" id="kt_explore_header">
            <h5 class="card-title fw-semibold text-gray-600">Purchase Start HTML Pro</h5>
            <div class="card-toolbar">
                <button type="button" class="btn btn-sm btn-icon explore-btn-dismiss me-n5" id="kt_explore_close">
                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                    <span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                          transform="rotate(-45 6 17.3137)" fill="currentColor"/>
									<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                          transform="rotate(45 7.41422 6)" fill="currentColor"/>
								</svg>
							</span>
                    <!--end::Svg Icon-->
                </button>
            </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body" id="kt_explore_body">
            <!--begin::Content-->
            <div id="kt_explore_scroll" class="scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto"
                 data-kt-scroll-wrappers="#kt_explore_body"
                 data-kt-scroll-dependencies="#kt_explore_header, #kt_explore_footer" data-kt-scroll-offset="5px">
                <!--begin::License-->
                <div class="rounded border border-dashed border-gray-300 py-6 px-8 mb-5">
                    <!--begin::Heading-->
                    <div class="d-flex flex-stack mb-5">
                        <!--begin::Price-->
                        <h3 class="fs-3 fw-bold mb-0">All-in License</h3>
                        <!--end::Price-->
                    </div>
                    <!--end::Heading-->
                    <!--begin::Description-->
                    <div class="fs-5 fw-semibold mb-7">
                        <span class="text-gray-500">Unlimited End Products and SaaS sites with paying users.</span>
                        <a class="explore-link" href="https://keenthemes.com/licensing">License Terms</a>
                    </div>
                    <!--end::Description-->
                    <!--begin::Purchase-->
                    <div class="mb-7">
                        <a href="https://keenthemes.com/products/start-html-pro"
                           class="btn btn-lg explore-btn-primary w-100">Buy Now</a>
                    </div>
                    <!--end::Purchase-->
                    <!--begin::Payment info-->
                    <div class="d-flex flex-column flex-center mb-3">
                        <!--begin::Heading-->
                        <div class="mb-3 text-gray-500 fw-semibold fs-6">Secured Payment by
                            <a href="https://www.2checkout.com/" target="_black"
                               class="fw-bold text-dark explore-link-hover me-1">2Checkout</a>with:
                        </div>
                        <!--end::Heading-->
                        <!--begin::Payment methods-->
                        <div class="mb-2">
                            <img src="/assets/media/svg/payment-methods/paypal.svg" alt=""
                                 class="h-30px me-3 rounded-1"/>
                            <img src="/assets/media/svg/payment-methods/visa.svg" alt="" class="h-30px me-3 rounded-1"/>
                            <img src="/assets/media/svg/payment-methods/mastercard.svg" alt=""
                                 class="h-30px me-3 rounded-1"/>
                            <img src="/assets/media/svg/payment-methods/americanexpress.svg" alt=""
                                 class="h-30px rounded-1"/>
                        </div>
                        <!--end::Payment methods-->
                        <!--begin::Notice-->
                        <div class="text-gray-400 fs-7">100% money back guarantee!</div>
                        <!--end::Notice-->
                    </div>
                    <!--end::Payment info-->
                </div>
                <!--end::Licenses-->
                <!--begin::Related Products-->
                <div class="pt-15 mb-0">
                    <!--begin::Heading-->
                    <div class="d-flex flex-stack mb-5">
                        <!--begin::Title-->
                        <h3 class="fw-bold text-dark me-2 mb-0">Related Products</h3>
                        <!--end::Title-->
                        <!--begin::Link-->
                        <a href="https://keenthemes.com" target="_black" class="fs-6 fw-semibold explore-link">All
                            Products</a>
                        <!--end::Link-->
                    </div>
                    <!--end::Heading-->
                    <!--begin::Products-->
                    <div class="mb-0">
                        <!--begin::Product-->
                        <a href="https://keenthemes.com/products/start-html-pro"
                           class="btn btn-flex explore-btn-outline w-100 flex-stack active px-4 mb-4">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center me-1">
                                <img src="/assets/media/framework-logos/Html5.png" alt="" class="h-30px me-3"/>
                                <div class="d-flex flex-column align-items-start">
                                    <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start HTML Pro</h3>
                                    <div class="text-gray-400 fs-7 fw-semibold">HTML5, CSS3, JS, Bootstrap 5</div>
                                </div>
                            </div>
                            <!--end::Info-->
                            <!--begin::Label-->
                            <span class="badge badge-inline explore-label-pro py-2">Pro</span>
                            <!--end::Label-->
                        </a>
                        <!--end::Product-->
                        <!--begin::Product-->
                        <a href="https://keenthemes.com/products/start-vue-pro"
                           class="btn btn-flex explore-btn-outline w-100 flex-stack px-4 mb-4">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center me-1">
                                <img src="/assets/media/framework-logos/VueJS.png" alt="" class="h-30px me-3"/>
                                <div class="d-flex flex-column align-items-start">
                                    <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start Vue Pro</h3>
                                    <div class="text-gray-400 fs-7 fw-semibold">VueJS 3, Typescript, Bootstrap 5</div>
                                </div>
                            </div>
                            <!--end::Info-->
                            <!--begin::Label-->
                            <span class="badge badge-inline explore-label-pro py-2">Pro</span>
                            <!--end::Label-->
                        </a>
                        <!--end::Product-->
                        <!--begin::Product-->
                        <a href="https://keenthemes.com/products/start-react-pro"
                           class="btn btn-flex explore-btn-outline w-100 flex-stack px-4 mb-4">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center me-1">
                                <img src="/assets/media/framework-logos/React.png" alt="" class="h-30px me-3"/>
                                <div class="d-flex flex-column align-items-start">
                                    <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start React Pro</h3>
                                    <div class="text-gray-400 fs-7 fw-semibold">React, Typescript, Bootstrap 5</div>
                                </div>
                            </div>
                            <!--end::Info-->
                            <!--begin::Label-->
                            <span class="badge badge-inline explore-label-pro py-2">Pro</span>
                            <!--end::Label-->
                        </a>
                        <!--end::Product-->
                    </div>
                    <!--end::Products-->
                </div>
                <!--end::Related Products-->
            </div>
            <!--end::Content-->
        </div>
        <!--end::Body-->
    </div>
    <!--end::Card-->
</div>
<!--end::Exolore drawer-->
<!--begin::Help drawer-->
<div id="kt_help" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="help" data-kt-drawer-activate="true"
     data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'350px', 'md': '525px'}"
     data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_help_toggle" data-kt-drawer-close="#kt_help_close">
    <!--begin::Card-->
    <div class="card shadow-none rounded-0 w-100">
        <!--begin::Header-->
        <div class="card-header" id="kt_help_header">
            <h5 class="card-title fw-semibold text-gray-600">Learn & Get Inspired</h5>
            <div class="card-toolbar">
                <button type="button" class="btn btn-sm btn-icon explore-btn-dismiss me-n5" id="kt_help_close">
                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                    <span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                          transform="rotate(-45 6 17.3137)" fill="currentColor"/>
									<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                          transform="rotate(45 7.41422 6)" fill="currentColor"/>
								</svg>
							</span>
                    <!--end::Svg Icon-->
                </button>
            </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body" id="kt_help_body">
            <!--begin::Content-->
            <div id="kt_help_scroll" class="hover-scroll-overlay-y" data-kt-scroll="true" data-kt-scroll-height="auto"
                 data-kt-scroll-wrappers="#kt_help_body" data-kt-scroll-dependencies="#kt_help_header"
                 data-kt-scroll-offset="5px">
                <!--begin::Support-->
                <div class="rounded border border-dashed border-gray-300 p-6 p-lg-8 mb-10">
                    <!--begin::Heading-->
                    <h2 class="fw-bold mb-5">Support at
                        <a href="https://devs.keenthemes.com" class="">devs.keenthemes.com</a></h2>
                    <!--end::Heading-->
                    <!--begin::Description-->
                    <div class="fs-5 fw-semibold mb-5">
                        <span class="text-gray-500">Join our developers community to find answer to your question and help others.</span>
                        <a class="explore-link d-none" href="https://keenthemes.com/licensing">FAQs</a>
                    </div>
                    <!--end::Description-->
                    <!--begin::Link-->
                    <a href="https://devs.keenthemes.com" class="btn btn-lg explore-btn-primary w-100">Get Support</a>
                    <!--end::Link-->
                </div>
                <!--end::Support-->
                <!--begin::Link-->
                <a href="https://preview.keenthemes.com/html/start-html-pro/docs"
                   class="parent-hover d-flex align-items-center mb-7">
                    <!--begin::Icon-->
                    <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-warning">
                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                        <span class="svg-icon svg-icon-warning svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.3"
                                              d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z"
                                              fill="currentColor"/>
										<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Info-->
                    <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column me-2 me-lg-5">
                            <!--begin::Title-->
                            <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Documentation</div>
                            <!--end::Title-->
                            <!--begin::Description-->
                            <div class="text-muted fw-semibold fs-7 fs-lg-6">From guides and how-tos, to live demos and
                                code examples to get started right away.
                            </div>
                            <!--end::Description-->
                        </div>
                        <!--end::Wrapper-->
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                        <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1"
                                              transform="rotate(-180 18 13)" fill="currentColor"/>
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Info-->
                </a>
                <!--end::Link-->
                <!--begin::Link-->
                <a href="https://preview.keenthemes.com/html/start-html-pro/docs//base/utilities"
                   class="parent-hover d-flex align-items-center mb-7">
                    <!--begin::Icon-->
                    <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-primary">
                        <!--begin::Svg Icon | path: icons/duotune/ecommerce/ecm007.svg-->
                        <span class="svg-icon svg-icon-primary svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<path d="M21 9V11C21 11.6 20.6 12 20 12H14V8H20C20.6 8 21 8.4 21 9ZM10 8H4C3.4 8 3 8.4 3 9V11C3 11.6 3.4 12 4 12H10V8Z"
                                              fill="currentColor"/>
										<path d="M15 2C13.3 2 12 3.3 12 5V8H15C16.7 8 18 6.7 18 5C18 3.3 16.7 2 15 2Z"
                                              fill="currentColor"/>
										<path opacity="0.3"
                                              d="M9 2C10.7 2 12 3.3 12 5V8H9C7.3 8 6 6.7 6 5C6 3.3 7.3 2 9 2ZM4 12V21C4 21.6 4.4 22 5 22H10V12H4ZM20 12V21C20 21.6 19.6 22 19 22H14V12H20Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Info-->
                    <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column me-2 me-lg-5">
                            <!--begin::Title-->
                            <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Plugins & Components
                            </div>
                            <!--end::Title-->
                            <!--begin::Description-->
                            <div class="text-muted fw-semibold fs-7 fs-lg-6">Check out our 300+ in-house components and
                                customized 3rd-party plugins.
                            </div>
                            <!--end::Description-->
                        </div>
                        <!--end::Wrapper-->
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                        <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1"
                                              transform="rotate(-180 18 13)" fill="currentColor"/>
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Info-->
                </a>
                <!--end::Link-->
                <!--begin::Link-->
                <a href="https://preview.keenthemes.com/start-html-pro/layout-builder.html"
                   class="parent-hover d-flex align-items-center mb-7">
                    <!--begin::Icon-->
                    <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-info">
                        <!--begin::Svg Icon | path: icons/duotune/art/art006.svg-->
                        <span class="svg-icon svg-icon-info svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.3"
                                              d="M22 19V17C22 16.4 21.6 16 21 16H8V3C8 2.4 7.6 2 7 2H5C4.4 2 4 2.4 4 3V19C4 19.6 4.4 20 5 20H21C21.6 20 22 19.6 22 19Z"
                                              fill="currentColor"/>
										<path d="M20 5V21C20 21.6 19.6 22 19 22H17C16.4 22 16 21.6 16 21V8H8V4H19C19.6 4 20 4.4 20 5ZM3 8H4V4H3C2.4 4 2 4.4 2 5V7C2 7.6 2.4 8 3 8Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Info-->
                    <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column me-2 me-lg-5">
                            <!--begin::Title-->
                            <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Layout Builder</div>
                            <!--end::Title-->
                            <!--begin::Description-->
                            <div class="text-muted fw-semibold fs-7 fs-lg-6">Build your layout, preview it and export
                                the HTML for server side integration.
                            </div>
                            <!--end::Description-->
                        </div>
                        <!--end::Wrapper-->
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                        <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1"
                                              transform="rotate(-180 18 13)" fill="currentColor"/>
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Info-->
                </a>
                <!--end::Link-->
                <!--begin::Link-->
                <a href="https://preview.keenthemes.com/html/start-html-pro/docs/getting-started/changelog"
                   class="parent-hover d-flex align-items-center mb-7">
                    <!--begin::Icon-->
                    <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-danger">
                        <!--begin::Svg Icon | path: icons/duotune/electronics/elc009.svg-->
                        <span class="svg-icon svg-icon-danger svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<path d="M13 9V8C13 7.4 13.4 7 14 7H15C16.7 7 18 5.7 18 4V3C18 2.4 17.6 2 17 2C16.4 2 16 2.4 16 3V4C16 4.6 15.6 5 15 5H14C12.3 5 11 6.3 11 8V9H13Z"
                                              fill="currentColor"/>
										<path opacity="0.3"
                                              d="M21 22H3C2.4 22 2 21.6 2 21V10C2 9.4 2.4 9 3 9H21C21.6 9 22 9.4 22 10V21C22 21.6 21.6 22 21 22ZM5 12C4.4 12 4 12.4 4 13C4 13.6 4.4 14 5 14C5.6 14 6 13.6 6 13C6 12.4 5.6 12 5 12ZM8 12C7.4 12 7 12.4 7 13C7 13.6 7.4 14 8 14C8.6 14 9 13.6 9 13C9 12.4 8.6 12 8 12ZM11 12C10.4 12 10 12.4 10 13C10 13.6 10.4 14 11 14C11.6 14 12 13.6 12 13C12 12.4 11.6 12 11 12ZM14 12C13.4 12 13 12.4 13 13C13 13.6 13.4 14 14 14C14.6 14 15 13.6 15 13C15 12.4 14.6 12 14 12ZM9 15C8.4 15 8 15.4 8 16C8 16.6 8.4 17 9 17C9.6 17 10 16.6 10 16C10 15.4 9.6 15 9 15ZM12 15C11.4 15 11 15.4 11 16C11 16.6 11.4 17 12 17C12.6 17 13 16.6 13 16C13 15.4 12.6 15 12 15ZM15 15C14.4 15 14 15.4 14 16C14 16.6 14.4 17 15 17C15.6 17 16 16.6 16 16C16 15.4 15.6 15 15 15ZM19 18C18.4 18 18 18.4 18 19C18 19.6 18.4 20 19 20C19.6 20 20 19.6 20 19C20 18.4 19.6 18 19 18ZM7 19C7 18.4 6.6 18 6 18H5C4.4 18 4 18.4 4 19C4 19.6 4.4 20 5 20H6C6.6 20 7 19.6 7 19ZM7 16C7 15.4 6.6 15 6 15H5C4.4 15 4 15.4 4 16C4 16.6 4.4 17 5 17H6C6.6 17 7 16.6 7 16ZM17 14H19C19.6 14 20 13.6 20 13C20 12.4 19.6 12 19 12H17C16.4 12 16 12.4 16 13C16 13.6 16.4 14 17 14ZM18 17H19C19.6 17 20 16.6 20 16C20 15.4 19.6 15 19 15H18C17.4 15 17 15.4 17 16C17 16.6 17.4 17 18 17ZM17 19C17 18.4 16.6 18 16 18H9C8.4 18 8 18.4 8 19C8 19.6 8.4 20 9 20H16C16.6 20 17 19.6 17 19Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Info-->
                    <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-column me-2 me-lg-5">
                            <!--begin::Title-->
                            <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">What's New ?</div>
                            <!--end::Title-->
                            <!--begin::Description-->
                            <div class="text-muted fw-semibold fs-7 fs-lg-6">Latest features and improvements added with
                                our users feedback in mind.
                            </div>
                            <!--end::Description-->
                        </div>
                        <!--end::Wrapper-->
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                        <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1"
                                              transform="rotate(-180 18 13)" fill="currentColor"/>
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z"
                                              fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Info-->
                </a>
                <!--end::Link-->
            </div>
            <!--end::Content-->
        </div>
        <!--end::Body-->
    </div>
    <!--end::Card-->
</div>
<!--end::Help drawer-->
<!--end::Engage drawers-->
<!--begin::Scrolltop-->
<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
    <!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
    <span class="svg-icon">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
					<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)"
                          fill="currentColor"/>
					<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z"
                          fill="currentColor"/>
				</svg>
			</span>
    <!--end::Svg Icon-->
</div>
<!--end::Scrolltop-->
<!--begin::Javascript-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!--begin::Javascript-->
<script>var hostUrl = "/assets/";</script>
<!--begin::Global Javascript Bundle(mandatory for all pages)-->
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
<!--end::Global Javascript Bundle-->
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/create-campaign.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
<script>
    function toggleIcon(theme) {
        var sunIcon = document.querySelector(".sun-icon");
        var moonIcon = document.querySelector(".moon-icon");

        if (theme === "dark") {
            sunIcon.style.display = "none";
            moonIcon.style.display = "block";
        } else {
            sunIcon.style.display = "block";
            moonIcon.style.display = "none";
        }
    }

    function applySavedTheme() {
        var savedTheme = localStorage.getItem("data-bs-theme");
        if (savedTheme) {
            updateTheme(savedTheme);
            toggleIcon(savedTheme);
        } else {
            var prefersDarkScheme = window.matchMedia("(prefers-color-scheme: dark)").matches;
            if (prefersDarkScheme) {
                updateTheme("dark");
                toggleIcon("dark");
            } else {
                updateTheme("light");
                toggleIcon("light");
            }
        }
        document.querySelector(".theme-icon").style.visibility = "visible"; // 버튼 아이콘 표시
    }

    applySavedTheme();
</script>
</body>
<!--end::Body-->
</html>
