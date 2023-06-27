<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
<script src="https://cdn.amcharts.com/lib/5/radar.js"></script>
<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
<style>
    #chartdiv {
        width: 100%;
        height: 300px;
    }

    .chart-container {
        position: relative;
    }

    .chart-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4);
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 18px;
        z-index: 1;
    }
</style>
<script>
    am5.ready(function () {
// Create root element
// https://www.amcharts.com/docs/v5/getting-started/#Root_element
        var root = am5.Root.new("chartdiv");

// Set themes
// https://www.amcharts.com/docs/v5/concepts/themes/
        root.setThemes([
            am5themes_Animated.new(root)
        ]);

// Create chart
// https://www.amcharts.com/docs/v5/charts/radar-chart/
        var chart = root.container.children.push(am5radar.RadarChart.new(root, {
            panX       : false,
            panY       : false,
            wheelX     : "panX",
            wheelY     : "zoomX",
            innerRadius: am5.percent(20),
            startAngle : -90,
            endAngle   : 180
        }));

// Data
        var data = [{
            category: "금일스터디",
            value   : ${did==1 ? 100 : 0},
            //스터디 완료가 됬으면 100
            full          : 100,
            columnSettings: {
                fill: chart.get("colors").getIndex(0)
            }
        }, {
            category      : "이번달스터디(10회)",
            value         : ${monthStudy.monthlyCnt * 10},
            full          : 100,
            columnSettings: {
                fill: chart.get("colors").getIndex(1)
            }
        }, {
            category      : "이번달스터디(20H)",
            value         : ${monthStudy.monthlyDuration / 10},
            full          : 120,
            columnSettings: {
                fill: chart.get("colors").getIndex(2)
            }
        }];

// Add cursor
// https://www.amcharts.com/docs/v5/charts/radar-chart/#Cursor
        var cursor = chart.set("cursor", am5radar.RadarCursor.new(root, {
            behavior: "zoomX"
        }));

        cursor.lineY.set("visible", false);

// Create axes and their renderers
// https://www.amcharts.com/docs/v5/charts/radar-chart/#Adding_axes
        var xRenderer = am5radar.AxisRendererCircular.new(root, {
            //minGridDistance: 50
        });

        xRenderer.labels.template.setAll({
            radius: 10
        });

        xRenderer.grid.template.setAll({
            forceHidden: true
        });

        var xAxis = chart.xAxes.push(am5xy.ValueAxis.new(root, {
            renderer    : xRenderer,
            min         : 0,
            max         : 100,
            strictMinMax: true,
            numberFormat: "#'%'",
            tooltip     : am5.Tooltip.new(root, {})
        }));


        var yRenderer = am5radar.AxisRendererRadial.new(root, {
            minGridDistance: 20
        });

        yRenderer.labels.template.setAll({
            centerX      : am5.p100,
            fontWeight   : "400",
            fontSize     : 14,
            templateField: "columnSettings"
        });

        yRenderer.grid.template.setAll({
            forceHidden: true
        });

        var yAxis = chart.yAxes.push(am5xy.CategoryAxis.new(root, {
            categoryField: "category",
            renderer     : yRenderer
        }));

        yAxis.data.setAll(data);


// Create series
// https://www.amcharts.com/docs/v5/charts/radar-chart/#Adding_series
        var series1 = chart.series.push(am5radar.RadarColumnSeries.new(root, {
            xAxis         : xAxis,
            yAxis         : yAxis,
            clustered     : false,
            valueXField   : "full",
            categoryYField: "category",
            fill          : root.interfaceColors.get("alternativeBackground")
        }));

        series1.columns.template.setAll({
            width        : am5.p100,
            fillOpacity  : 0.08,
            strokeOpacity: 0,
            cornerRadius : 20
        });

        series1.data.setAll(data);


        var series2 = chart.series.push(am5radar.RadarColumnSeries.new(root, {
            xAxis         : xAxis,
            yAxis         : yAxis,
            clustered     : false,
            valueXField   : "value",
            categoryYField: "category"
        }));

        series2.columns.template.setAll({
            width        : am5.p100,
            strokeOpacity: 0,
            tooltipText  : "{category}: {valueX}%",
            cornerRadius : 20,
            templateField: "columnSettings"
        });

        series2.data.setAll(data);

// Animate chart and series in
// https://www.amcharts.com/docs/v5/concepts/animations/#Initial_animation
        series1.appear(1000);
        series2.appear(1000);
        chart.appear(1000, 100);

    }); // end am5.ready()
</script>
<div class="d-flex flex-column flex-column-fluid">
    <c:set var="fullname" value="${loginStdn.name}"/>
    <c:set var="name" value="${fullname.substring(1)}"/>
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Row-->
            <div class="row g-0 g-xl-5 g-xxl-8">
                <div class="col-xl-4">
                    <!--begin::Engage Widget 5-->
                    <div class="card card-stretch mb-5 mb-xxl-8">
                        <!--begin::Body-->
                        <div class="card-body pb-0">
                            <!--begin::Wrapper-->
                            <div class="d-flex flex-column h-100">
                                <!--begin::Text-->
                                <c:choose>
                                    <c:when test="${loginStdn!=null}">
                                        <h3 class="text-dark text-center fs-1 fw-bold pt-15 lh-lg">${name}님, 반가워요!🖐</h3>
                                        <span class="text-center fs-3">오늘은 어떤 하루를 보내셨나요?</span>
                                        <span style="font-weight: 100" class="text-center text-gray-600">${name}님의 하루를 공유해주세요.</span>
                                        <div class="text-center pt-7">
                                            <a style="font-size: large" href="/blah">블라블라 <i
                                                    class="bi bi-arrow-right-circle text-primary fs-2"></i></a>
                                        </div>
                                        <!--end::Action-->
                                        <!--begin::Image-->
                                        <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-end bgi-position-y-bottom card-rounded-bottom h-200px"
                                             style="background-image:url('/img/hello.png')"></div>

                                    </c:when>
                                    <c:otherwise>
                                        <h3 class="text-dark text-center fs-1 fw-bold pt-15 lh-lg">안녕하세요,
                                            <br/>디지캠퍼스입니다!</h3>
                                        <span style="letter-spacing: -1px;" class="text-center text-gray-600">회원이 되시면 다양한 서비스를 이용하실 수 있어요.</span>
                                        <div class="text-center pt-5 pb-3">
                                            <a href="/register"
                                               class="btn btn-primary fw-bold fs-6 px-5 py-3">회원가입하기</a>
                                        </div>
                                        <!--end::Action-->
                                        <!--begin::Image-->
                                        <div class="flex-grow-1 bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom h-200px"
                                             style="background-image:url(/img/회원가입.png)"></div>
                                    </c:otherwise>
                                </c:choose>

                                <!--end::Text-->
                                <!--begin::Action-->

                                <!--end::Image-->
                            </div>
                            <!--end::Wrapper-->
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Engage Widget 5-->
                </div>
                <div class="col-xl-8">
                    <!--begin::Table Widget 1-->
                    <div class="card card-stretch mb-5 mb-xxl-8">
                        <!--begin::Header-->
                        <div class="card-header border-0 pt-5">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label fw-bold text-dark fs-3">오늘은 여기어때요?🍚</span>
                                <div class="d-flex align-items-center">
                                    <span class="text-muted mt-2 fw-semibold fs-6">매일매일 새로운 맛집을 즐겨봐요!</span>
                                    <a style="font-size: 13px; margin: 7px 0 0 10px" href="/marker/all">전체보기 <i
                                            class="bi bi-arrow-right-circle text-primary"></i></a>
                                </div>
                            </h3>
                            <div class="card-toolbar">
                                <ul class="nav nav-pills nav-pills-sm nav-light">
                                    <li class="nav-item">
                                        <a class="nav-link btn btn-active-light btn-color-muted py-2 px-4 active fw-bold me-2"
                                           data-bs-toggle="tab" href="#kt_tab_pane_1_1">최근순🔥</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link btn btn-active-light btn-color-muted py-2 px-4 fw-bold me-2"
                                           data-bs-toggle="tab" href="#kt_tab_pane_1_2">별점순🌟</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link btn btn-active-light btn-color-muted py-2 px-4 fw-bold"
                                           data-bs-toggle="tab" href="#kt_tab_pane_1_3">댓글순✏️</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body pt-2 pb-0 mt-n3">
                            <div class="tab-content mt-5" id="myTabTables1">
                                <!--begin::Tap pane-->
                                <div class="tab-pane fade show active" id="kt_tab_pane_1_1" role="tabpanel"
                                     aria-labelledby="kt_tab_pane_1_1">
                                    <!--begin::Table-->
                                    <div class="table-responsive">
                                        <div class="row g-5 g-xxl-8">
                                            <div class="tns" style="direction: ltr">
                                                <!--begin::Slider-->
                                                <div
                                                        data-tns="true"
                                                        data-tns-loop="true"
                                                        data-tns-swipe-angle="false"
                                                        data-tns-speed="2000"
                                                        data-tns-autoplay="true"
                                                        data-tns-autoplay-timeout="5000"
                                                        data-tns-controls="true"
                                                        data-tns-nav="false"
                                                        data-tns-items="3"
                                                        data-tns-center="false"
                                                        data-tns-dots="false"
                                                        data-tns-prev-button="#kt_team_slider_prev1"
                                                        data-tns-next-button="#kt_team_slider_next1"
                                                >

                                                    <c:forEach var="obj" items="${recent}">
                                                        <div class="col-md-4 col-xxl-4 col-lg-12">
                                                            <!--begin::Card-->
                                                            <div class="card shadow-none">
                                                                <div class="card-body p-0">
                                                                    <!--begin::Image-->
                                                                    <div class="overlay rounded overflow-hidden">
                                                                        <div class="overlay-wrapper rounded bg-light text-center">
                                                                            <img class="h-250px" src="/uimg/${obj.img}"
                                                                                 alt=""
                                                                                 class="mw-100 w-200px"/>
                                                                        </div>
                                                                        <div class="overlay-layer">
                                                                            <a href="/marker/detail?id=${obj.id}"
                                                                               class="btn fw-bold btn-sm btn-light-primary me-2">상세보기</a>
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
                                                                            <span class="fs-6">⭐⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 4.0}">
                                                                            <span class="fs-6">⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 3.0}">
                                                                            <span class="fs-6">⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 2.0}">
                                                                            <span class="fs-6">⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 1.0}">
                                                                            <span class="fs-6">⭐</span>
                                                                        </c:if>

                                                                    </div>
                                                                    <!--end::Details-->
                                                                </div>
                                                            </div>
                                                            <!--end::Card-->
                                                        </div>
                                                    </c:forEach>
                                                    <!--end::Item-->
                                                    ...
                                                </div>
                                                <button style="display: none" id="kt_team_slider_prev1"></button>
                                                <button style="display: none" id="kt_team_slider_next1"></button>
                                                <!--end::Slider-->
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Table-->
                                </div>
                                <!--end::Tap pane-->
                                <!--begin::Tap pane-->
                                <div class="tab-pane fade" id="kt_tab_pane_1_2" role="tabpanel"
                                     aria-labelledby="kt_tab_pane_1_2">
                                    <!--begin::Table-->
                                    <div class="table-responsive">
                                        <div class="row g-5 g-xxl-8">
                                            <div class="tns" style="direction: ltr">
                                                <!--begin::Slider-->
                                                <div
                                                        data-tns="true"
                                                        data-tns-loop="true"
                                                        data-tns-swipe-angle="false"
                                                        data-tns-speed="2000"
                                                        data-tns-autoplay="true"
                                                        data-tns-autoplay-timeout="5000"
                                                        data-tns-controls="true"
                                                        data-tns-nav="false"
                                                        data-tns-items="3"
                                                        data-tns-center="false"
                                                        data-tns-dots="false"
                                                        data-tns-prev-button="#kt_team_slider_prev2"
                                                        data-tns-next-button="#kt_team_slider_next2"
                                                >

                                                    <c:forEach var="obj" items="${rating}">
                                                        <div class="col-md-4 col-xxl-4 col-lg-12">
                                                            <!--begin::Card-->
                                                            <div class="card shadow-none">
                                                                <div class="card-body p-0">
                                                                    <!--begin::Image-->
                                                                    <div class="overlay rounded overflow-hidden">
                                                                        <div class="overlay-wrapper rounded bg-light text-center">
                                                                            <img class="h-250px" src="/uimg/${obj.img}"
                                                                                 alt=""
                                                                                 class="mw-100 w-200px"/>
                                                                        </div>
                                                                        <div class="overlay-layer">
                                                                            <a href="/marker/detail?id=${obj.id}"
                                                                               class="btn fw-bold btn-sm btn-light-primary me-2">상세보기</a>
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
                                                                            <span class="fs-6">⭐⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 4.0}">
                                                                            <span class="fs-6">⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 3.0}">
                                                                            <span class="fs-6">⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 2.0}">
                                                                            <span class="fs-6">⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 1.0}">
                                                                            <span class="fs-6">⭐</span>
                                                                        </c:if>

                                                                    </div>
                                                                    <!--end::Details-->
                                                                </div>
                                                            </div>
                                                            <!--end::Card-->
                                                        </div>
                                                    </c:forEach>
                                                    <!--end::Item-->
                                                    ...
                                                </div>
                                                <button style="display: none" id="kt_team_slider_prev2"></button>
                                                <button style="display: none" id="kt_team_slider_next2"></button>
                                                <!--end::Slider-->
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Table-->
                                </div>
                                <!--end::Tap pane-->
                                <!--begin::Tap pane-->
                                <div class="tab-pane fade" id="kt_tab_pane_1_3" role="tabpanel"
                                     aria-labelledby="kt_tab_pane_1_3">
                                    <!--begin::Table-->
                                    <div class="table-responsive">
                                        <div class="row g-5 g-xxl-8">
                                            <div class="tns" style="direction: ltr">
                                                <!--begin::Slider-->
                                                <div
                                                        data-tns="true"
                                                        data-tns-loop="true"
                                                        data-tns-swipe-angle="false"
                                                        data-tns-speed="2000"
                                                        data-tns-autoplay="true"
                                                        data-tns-autoplay-timeout="5000"
                                                        data-tns-controls="true"
                                                        data-tns-nav="false"
                                                        data-tns-items="3"
                                                        data-tns-center="false"
                                                        data-tns-dots="false"
                                                        data-tns-prev-button="#kt_team_slider_prev3"
                                                        data-tns-next-button="#kt_team_slider_next3"
                                                >

                                                    <c:forEach var="obj" items="${comment}">
                                                        <div class="col-md-4 col-xxl-4 col-lg-12">
                                                            <!--begin::Card-->
                                                            <div class="card shadow-none">
                                                                <div class="card-body p-0">
                                                                    <!--begin::Image-->
                                                                    <div class="overlay rounded overflow-hidden">
                                                                        <div class="overlay-wrapper rounded bg-light text-center">
                                                                            <img class="h-250px" src="/uimg/${obj.img}"
                                                                                 alt=""
                                                                                 class="mw-100 w-200px"/>
                                                                        </div>
                                                                        <div class="overlay-layer">
                                                                            <a href="/marker/detail?id=${obj.id}"
                                                                               class="btn fw-bold btn-sm btn-light-primary me-2">상세보기</a>
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
                                                                            <span class="fs-6">⭐⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 4.0}">
                                                                            <span class="fs-6">⭐⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 3.0}">
                                                                            <span class="fs-6">⭐⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 2.0}">
                                                                            <span class="fs-6">⭐⭐</span>
                                                                        </c:if>
                                                                        <c:if test="${obj.rating== 1.0}">
                                                                            <span class="fs-6">⭐</span>
                                                                        </c:if>

                                                                    </div>
                                                                    <!--end::Details-->
                                                                </div>
                                                            </div>
                                                            <!--end::Card-->
                                                        </div>
                                                    </c:forEach>
                                                    <!--end::Item-->
                                                    ...
                                                </div>
                                                <button style="display: none" id="kt_team_slider_prev3"></button>
                                                <button style="display: none" id="kt_team_slider_next3"></button>
                                                <!--end::Slider-->
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Table-->
                                </div>
                                <!--end::Tap pane-->
                            </div>
                        </div>
                    </div>
                    <!--end::Table Widget 1-->
                </div>
            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <div class="row g-0 g-xl-5 g-xxl-8">
                <div class="col-xl-4">
                    <!--begin::Stats Widget 1-->
                    <div class="card card-stretch mb-5 mb-xxl-8">
                        <!--begin::Header-->
                        <div class="card-header align-items-center border-0 mt-5">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="fw-bold text-dark fs-3">이번주는 내가 스터디 왕!👑</span>
                                <span class="text-muted mt-2 fw-semibold fs-6">
                                <c:choose>
                                    <c:when test="${sessionScope.loginStdn != null}">
                                        <c:if test="${didStdy && !endedStudy}">
                                            금일 스터디를 완료하셨습니다!짝짝짝!👏
                                                     </span>

                            </h3>
                            <div class="card-toolbar">
                                <a style="font-size: small" href="/study/all">스터디게시판 <i
                                        class="bi bi-arrow-right-circle text-primary fs-6"></i></a>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${didStdy && endedStudy}">
                        ⚠️잠깐, 스터디 종료 잊지않으셨겠죠⁉️
                        </span>

                        </h3>
                        <div class="card-toolbar">
                            <a style="font-size: small" href="/study/add">스터디종료 <i
                                    class="bi bi-arrow-right-circle text-primary fs-6"></i></a>
                        </div>
                    </div>
                    </c:if>
                    <c:if test="${!didStdy}">
                    오늘은 아직 스터디를 하지않으셨어요😢
                    </span>

                    </h3>
                    <div class="card-toolbar">
                        <a style="font-size: small" href="/study/add">스터디하러가기 <i
                                class="bi bi-arrow-right-circle text-primary fs-6"></i></a>
                    </div>
                </div>
                </c:if>
                </c:when>
                <c:otherwise>
                로그인이 필요한 서비스입니다.
                </span>
                </h3>
                <div class="card-toolbar">
                    <a style="font-size: small" href="/login">로그인 <i
                            class="bi bi-arrow-right-circle text-primary fs-6"></i></a>
                </div>
            </div>
            </c:otherwise>
            </c:choose>

            <!--end::Header-->
            <!--begin::Body-->
            <div class="card-body pt-5 pb-5">
                <c:choose>
                    <c:when test="${sessionScope.loginStdn != null}">
                        <c:if test="${didStdy && !endedStudy}">
                            <div id="chartdiv"></div>
                        </c:if>
                        <c:if test="${didStdy && endedStudy}">
                            <div id="chartdiv"></div>
                        </c:if>
                        <c:if test="${!didStdy}">
                            <div id="chartdiv"></div>
                        </c:if>
                    </c:when>
                    <c:otherwise>
                        <div id="chartdiv" class="chart-container">
                            <div class="chart-overlay">
                                수강생 전용 서비스입니다.
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>

            </div>
            <!--end: Card Body-->
        </div>
        <!--end::Stats Widget 1-->
    </div>
    <div class="col-xl-8">
        <!--begin::Stats Widget 2-->
        <div class="card card-stretch mb-5 mb-xxl-8">
            <!--begin::Header-->
            <div class="card-header align-items-center border-0 mt-5">
                <h3 class="card-title align-items-start flex-column">
                    <span class="fw-bold text-dark fs-3">디지캠 수강생이 가장 많이 들은 강좌는?👀</span>
                    <span class="text-muted mt-2 fw-semibold fs-6">오늘은 이 강좌 어때요?</span>
                </h3>
                <div class="card-toolbar">
                    <a style="font-size: small" href="/lecture/all">강좌 전체보기 <i
                            class="bi bi-arrow-right-circle text-primary fs-6"></i></a>
                </div>
            </div>
            <!--end::Header-->
            <!--begin::Body-->
            <div class="card-body pt-0">
                <div class="d-flex flex-wrap flex-xxl-nowrap justify-content-center justify-content-md-start pt-4">
                    <!--begin::Nav-->
                    <div class="me-sm-10 me-0">

                        <ul class="nav flex-column nav-pills nav-pills-start">
                            <c:forEach var="obj" items="${leclist}" varStatus="loop">
                                <c:if test="${loop.index < 5}">
                                    <li class="nav-item mb-3">
                                        <a class="nav-link ${loop.first ? 'active' : ''} w-225px h-60px"
                                           data-bs-toggle="pill"
                                           id="kt_stats_widget_2_tab_${obj.id}"
                                           href="#kt_stats_widget_2_tab_${obj.id}_content">
                                            <div class="nav-icon me-3">
                                                <img style="opacity: 60%" alt="" src="https://cdn-icons-png.flaticon.com/512/4185/4185218.png"
                                                     class="default"/>
                                                <img alt="" src="https://cdn-icons-png.flaticon.com/512/4185/4185447.png"
                                                     class="active"/>
                                            </div>
                                            <div class="ps-1">
                                                <span class="nav-text text-gray-600 fw-bold fs-12">${obj.title}</span>
                                            </div>
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <!--end::Nav-->
                    <!--begin::Tab Content-->
                    <div class="tab-content flex-grow-1">
                        <c:forEach var="obj" items="${leclist}" varStatus="loop">
                            <c:if test="${loop.index < 5}">
                                <div class="tab-pane fade ${loop.first ? 'show active' : ''}"
                                     id="kt_stats_widget_2_tab_${obj.id}_content">
                                    <div class="d-flex flex-column justify-content-center">
                                        <div class="text-center d-flex flex-column">
                                            <img class="h-250px mb-5" src="/uimg/${obj.img}"
                                                 alt=""
                                                 class="mw-100 w-170px"/>
                                            <a href="/lecture/detail?id=${obj.id}&&stdnId=${loginStdn.id}"
                                               class="fs-4 fw-bold text-gray-800 text-hover-primary mb-1">${obj.title} <span style="font-weight: 200" class="text-muted fs-6">- ${obj.teacher}</span></a>
                                            <span class="fs-6">
                                                        <c:choose>
                                                            <c:when test="${obj.discRate == 0}">
                                                                <span class="text-gray-800 fw-bold fs-6">
                                                                <fmt:formatNumber value="${obj.price}" type="number"
                                                                                  pattern="###,###원"/>
                                                                    </span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span style="font-size:smaller;text-decoration: line-through;"><fmt:formatNumber
                                                                        value="${obj.price}" type="number"
                                                                        pattern="###,###원"/></span>
                                                                <span class="text-success fw-bold fs-6"><fmt:formatNumber
                                                                        value="${obj.price * (100 - obj.discRate)/100}"
                                                                        type="number" pattern="###,###원"/><span
                                                                        class="badge badge-light-danger">sale</span></span>
                                                                    </c:otherwise>
                                                        </c:choose>
                                                        <br><span
                                                        class="badge badge-light-primary">누적수강생 ${obj.hit}명</span>
                                                            <br><span><img src="/img/rating.png"
                                                                           style="width:4%; height:4%;"> <fmt:formatNumber
                                                        value="${obj.rating}" type="number" pattern="0.0"/>(${obj.cnt})</span>
                                        </div>
                                        <!--end::Item-->
                                    </div>
                                    <!--end::Content-->
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <!--end::Tab Content-->
                </div>
            </div>
            <!--end: Card Body-->
        </div>
        <!--end::Stats Widget 2-->
    </div>
</div>
<!--end::Row-->
