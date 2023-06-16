<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--end::Vendor Stylesheets-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #map03 {
        width: 100%;
    }

    #map03 > #map {

        margin: 10px 0px;
        width: 100%;
        height: 400px;
    }

    #keyword {
        background-color: var(--bs-gray-100);
        border-color: var(--bs-gray-100);
        color: var(--bs-gray-700);
        transition: color 0.2s ease;
        width: 100px;
        outline: none;
    }
</style>
<script>
    $(document).ready(function () {
        const loadingEl = document.createElement("div");
        document.body.prepend(loadingEl);
        loadingEl.classList.add("page-loader");
        loadingEl.classList.add("flex-column");
        loadingEl.innerHTML = `
        <span class="spinner-border text-primary" role="status"></span>
        <span class="text-muted fs-6 fw-semibold mt-5">Loading...</span>
    `;

        // Show page loading
        KTApp.showPageLoading();

        // Hide after 3 seconds
        setTimeout(function () {
            KTApp.hidePageLoading();
            loadingEl.remove();
        }, 100);
    });
</script>
<c:set var="currentPage" value="${cpage}"/>
<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">디지캠맛집</h3>
                <!--end::Title-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/marker/all" class="btn btn-active-accent active fw-bold ms-3">맛집 조회</a>
                <a href="/marker/add" class="btn btn-active-accent fw-bold ms-3">맛집 등록</a>
                <a href="#" class="btn btn-active-accent fw-bold ms-3">나의 맛집</a>
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
                        <div style="background-color:lavenderblush;"
                             class="card-body d-flex justify-content-between card-rounded p-0 d-flex">
                            <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                <h1 class="fw-bold text-dark">성수의 맛집을 둘러보세요👀</h1>
                                <!--begin::Form-->
                                <form action="/marker/findimpl" method="get"
                                      class="d-flex flex-center py-2 bg-white px-6 rounded">
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
                                    <select name="keyword" id="keyword">
                                        <option value="title"
                                                <c:if test="${search.keyword == 'title'}">selected</c:if>>장소
                                        </option>
                                        <option value="writer"
                                                <c:if test="${search.keyword == 'writer'}">selected</c:if>>작성자
                                        </option>
                                        <option value="keyword"
                                                <c:if test="${search.keyword == 'keyword'}">selected</c:if>>키워드
                                        </option>

                                    </select>
                                    <input type="text" id="search" name="search"
                                           <c:if test="${search.search != null}">value="${search.search}"
                                    </c:if> class="form-control border-0 fw-semibold ps-2 w-xxl-350px"
                                           placeholder="키워드는 카페,식당 또는 스터디카페로 검색해주세요."/>
                                    <button class="btn btn-light-primary" type="submit">검색</button>

                                </form>
                                <!--end::Form-->
                            </div>
                            <div class="d-none d-md-flex flex-row-fluid mw-350px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                 style="background-image: url(/img/jmt3.png);"></div>
                        </div>
                    </div>
                    <!--end::Engage Widget 1-->
                    <!--begin::Section-->

                    <div class="mt-5 mb-10">
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <div id="map03">
                                <h2>플레이스</h2>
                                <a href="#" id="r_btn" class="btn btn-bg-light btn-active-color-success">🍳레스토랑</a>
                                <a href="#" id="c_btn" class="btn btn-bg-light btn-active-color-success">☕카페</a>
                                <a href="#" id="s_btn" class="btn btn-bg-light btn-active-color-success">✍️스터디카페</a>
                                <div id="map"></div>
                            </div>

                        </div>
                    </div>

                    <div class="mb-10">
                        <!--begin::Heading-->
                        <div class="d-flex flex-stack flex-wrap flex-sm-nowrap ">
                            <!--begin::Info-->
                            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1 ">
                                <!--begin::Title-->
                                <h3 class="text-dark fw-bold my-1">오늘도 맛점 후 코딩!🍚</h3>
                                <!--end::Title-->
                            </div>
                            <!--end::Info-->
                            <!--begin::Nav-->
                            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                                <a href="#" id="recentBtn"
                                   class="btn btn-bg-light btn-active-color-success ">최신순⚡</a>
                                <a href="#" style="margin-left: 10px;" id="popularBtn"
                                   class="btn btn-bg-light btn-active-color-success ">별점순🌟</a>
                                <a href="#" style="margin-left: 10px;" id="commentBtn"
                                   class="btn btn-bg-light btn-active-color-success active">댓글순✏️</a>
                            </div>
                            <!--end::Nav-->
                        </div>
                        <!--end::Heading-->

                        <div class="row g-5 g-xxl-8">
                            <div id="dataContainer"></div>
                        </div>
                        <!--begin::Products-->
                        <div class="row g-5 g-xxl-8">

                            <!--begin::Product-->
                            <c:forEach var="obj" items="${currentPage.getList()}">

                                <div class="col-md-4 col-xxl-4 col-lg-12">
                                    <!--begin::Card-->
                                    <div class="card shadow-none">
                                        <div class="card-body p-0">
                                            <!--begin::Image-->
                                            <div class="overlay rounded overflow-hidden">
                                                <div style="height: 250px;"
                                                     class="overlay-wrapper rounded bg-light text-center">
                                                    <img class="h-250px" src="/uimg/${obj.img}" alt=""
                                                         class="mw-100 w-200px"
                                                         onerror="this.src='/uimg/default.jpg';"/>
                                                </div>

                                                <div class="overlay-layer">
                                                    <a href="/marker/detail?id=${obj.id}"
                                                       class="btn fw-bold btn-sm btn-light-primary me-2">상세보기</a>
                                                    <a href="../dist/apps/shop/product.html"
                                                       class="btn fw-bold btn-sm btn-light-primary">찜하기</a>
                                                </div>
                                            </div>
                                            <!--end::Image-->
                                            <!--begin::Details-->
                                            <div class="text-center mt-5 mb-md-0 mb-lg-5 mb-md-0 mb-lg-5 mb-lg-0 mb-5 d-flex flex-column">

                                                <a href="/marker/detail?id=${obj.id}"
                                                   class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">
                                                        ${obj.title}
                                                    <c:if test="${obj.keyword=='R'}">
                                                        🍳
                                                    </c:if>
                                                    <c:if test="${obj.keyword=='C'}">
                                                        ☕
                                                    </c:if>
                                                    <c:if test="${obj.keyword=='S'}">
                                                        ✍️
                                                    </c:if>

                                                </a>


                                                <c:if test="${obj.rating== 5.0}">
                                                    <span class="fs-6 text-gray-400">⭐⭐⭐⭐⭐ 댓글 ${obj.commentCount}</span>
                                                </c:if>
                                                <c:if test="${obj.rating== 4.0}">
                                                    <span class="fs-6 text-gray-400">⭐⭐⭐⭐ 댓글 ${obj.commentCount}</span>
                                                </c:if>
                                                <c:if test="${obj.rating== 3.0}">
                                                    <span class="fs-6 text-gray-400">⭐⭐⭐ 댓글 ${obj.commentCount}</span>
                                                </c:if>
                                                <c:if test="${obj.rating== 2.0}">
                                                    <span class="fs-6 text-gray-400">⭐⭐ 댓글 ${obj.commentCount}</span>
                                                </c:if>
                                                <c:if test="${obj.rating== 1.0}">
                                                    <span class="fs-6 text-gray-400">⭐ 댓글 ${obj.commentCount}</span>
                                                </c:if>

                                            </div>
                                            <!--end::Details-->
                                        </div>
                                    </div>
                                    <!--end::Card-->
                                </div>
                                <!--end::Product-->

                            </c:forEach>


                        </div>
                        <!-- pagination start -->
                        <div class="col text-center">
                            <ul class="pagination ">
                                <c:choose>
                                    <c:when test="${currentPage.getPrePage() != 0}">
                                        <li>
                                            <a href="/marker/allcomment?pageNo=${currentPage.getPrePage()}"
                                               class="btn btn-light"><</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="#" class="btn btn-bg-light btn-color-secondary"><</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                                <c:forEach begin="${currentPage.getNavigateFirstPage() }"
                                           end="${currentPage.getNavigateLastPage() }" var="page">
                                    <c:choose>
                                        <c:when test="${currentPage.getPageNum() == page}">
                                            <li>
                                                <a href="/marker/allcomment?pageNo=${page}"
                                                   class="btn btn-bg-light btn-color-primary">${page }</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                <a href="/marker/allcomment?pageNo=${page}"
                                                   class="btn btn-active-light-secondary">${page }</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>

                                </c:forEach>
                                <c:choose>
                                    <c:when test="${currentPage.getNextPage() != 0}">
                                        <li>
                                            <a href="/marker/allcomment?pageNo=${currentPage.getNextPage()}"
                                               class="btn btn-light">></a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="#" class="btn btn-bg-light btn-color-secondary">></a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                            </ul>
                        </div>
                        <!-- pagination end -->

                    </div>
                </div>
                <!--end::Products-->
            </div>
            <!--end::Section-->
        </div>
    </div>
    <!--end::Card-->
</div>
<!--end::Container-->
<!--end::Content-->
<!--end::Main-->


<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/apps/shop.js"></script>
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdeaed76dc8de3e2c25b24d04c468b43&libraries=services"></script>


<script>
    let map03 = {
        map           : null,
        markerss      : [],
        init          : function () {
            this.display();
            $('#c_btn').click(function () {
                map03.markers('C');
            });
            $('#r_btn').click(function () {
                map03.markers('R');
            });
            $('#s_btn').click(function () {
                map03.markers('S');
            });
        },
        display       : function () {
            var mapContainer = document.querySelector('#map03 > #map');
            var mapOption = {
                center: new kakao.maps.LatLng(37.5444568, 127.0572981), // 지도의 중심좌표
                level : 7 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);
            var mapTypeControl = new kakao.maps.MapTypeControl();

            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var markerPosition = new kakao.maps.LatLng(37.5444568, 127.0572981);

            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            marker.setMap(map)
            map03.markerss.push(marker);
        },
        go            : function (lat, lng, keyword) {
            var mapContainer = document.querySelector('#map03 > #map');
            var mapOption = {
                center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
                level : 1 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();

            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
            var moveLatLon = new kakao.maps.LatLng(lat, lng);
            map.panTo(moveLatLon);

            var markerPosition = new kakao.maps.LatLng(lat, lng);

            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
            map03.markers.push(marker);


        },
        markers       : function (keyword) {
            map03.deleteMarkers();
            $.ajax({
                url    : '/markers',
                data   : {'keyword': keyword},
                success: function (data) {
                    map03.displaymarkers(data);
                }
            });

        },
        displaymarkers: function (positions) {

            var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
            for (var i = 0; i < positions.length; i++) {
                var imageSize = new kakao.maps.Size(20, 30);
                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
                var markerPosition = new kakao.maps.LatLng(positions[i].lat, positions[i].lng);

                var marker = new kakao.maps.Marker({
                    map     : map,
                    position: markerPosition,
                    title   : positions[i].title,
                    image   : markerImage,
                    target  : positions[i].id

                });
                map03.markerss.push(marker);

                // infoWindow
                // var iwContent = '<div style="display: flex;flex-direction: column; justify-content: center;align-items: center"><div style="font-size: 18px;">' + positions[i].title + '</div>';
                // iwContent += '<div><img style="width: 100px;" " src="/uimg/' + positions[i].img + '" style="width:100px"></div></div>';


                var iwContent = '<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center;">';
                iwContent += '<div style="font-size: 18px; font-weight: bold;">' + positions[i].title + '</div>';
                iwContent += '<div style="padding: 5px 20px"><img src="/uimg/' + positions[i].img + '" style="width: 100px;"></div>';
                iwContent += '</div>';


                var infowindow = new kakao.maps.InfoWindow({
                    position: markerPosition,
                    content : iwContent
                });

                kakao.maps.event.addListener(marker, 'mouseover', mouseoverListener(marker, infowindow));
                kakao.maps.event.addListener(marker, 'mouseout', mouseoutListener(marker, infowindow));
                kakao.maps.event.addListener(marker, 'click', mouseclickListener(positions[i].id));


                function mouseoverListener(marker, infowindow) {
                    return function () {
                        infowindow.open(map, marker);
                    };
                }

                function mouseoutListener(marker, infowindow) {
                    return function () {
                        infowindow.close();
                    };
                }

                function mouseclickListener(target) {
                    return function () {
                        location.href = '/marker/detail?id=' + target;
                    };
                }

            } // end for

        },
        deleteMarkers : () => {
            // 이전에 생성된 마커를 제거합니다
            for (let i = 0; i < map03.markerss.length; i++) {
                map03.markerss[i].setMap(null);
            }
            map03.markerss = []; // 마커 배열 초기화

        }
    };
    $(function () {
        map03.init();
    })
</script>
<script>
    // 최신순 버튼 클릭 시 스크롤 위치를 저장하고 페이지 이동
    document.getElementById("recentBtn").addEventListener("click", function (event) {
        event.preventDefault();
        saveScrollPosition();
        window.location.href = "/marker/all";
    });

    // 인기순 버튼 클릭 시 스크롤 위치를 저장하고 페이지 이동
    document.getElementById("popularBtn").addEventListener("click", function (event) {
        event.preventDefault();
        saveScrollPosition();
        window.location.href = "/marker/allrating";
    });

    // 인기순 버튼 클릭 시 스크롤 위치를 저장하고 페이지 이동
    document.getElementById("commentBtn").addEventListener("click", function (event) {
        event.preventDefault();
        saveScrollPosition();
        window.location.href = "/marker/allcomment";
    });

    // 페이지 네이션 링크 클릭 시 스크롤 위치를 저장하고 페이지 이동
    document.querySelectorAll(".pagination a").forEach(function (link) {
        link.addEventListener("click", function (event) {
            event.preventDefault();
            saveScrollPosition();
            window.location.href = this.href;
        });
    });

    // 스크롤 위치를 저장하는 함수
    function saveScrollPosition() {
        var scrollPosition = window.pageYOffset || document.documentElement.scrollTop;
        localStorage.setItem("scrollPosition", scrollPosition);
    }

    // 페이지 로드 시 저장된 스크롤 위치로 이동
    window.onload = function () {
        var storedScrollPosition = localStorage.getItem("scrollPosition");
        if (storedScrollPosition) {
            setTimeout(function () {
                window.scrollTo(0, storedScrollPosition);
                localStorage.removeItem("scrollPosition");
            }, 0);
        } else {
            // 저장된 스크롤 위치가 없을 경우 페이지 맨 위로 이동
            window.scrollTo(0, 0);
        }
    };
</script>

