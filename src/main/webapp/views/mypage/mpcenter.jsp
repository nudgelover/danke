<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    #kb, #digi, #insta, #facebook {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* 그림자 스타일 설정 */
    }
</style>
<br>
<div class="separator separator-content border-dark my-15">
    <div>
        <span style="font-weight: 200; color: gray; letter-spacing: 5px;" class="w-250px">About Us</span>
        <h2 style="margin:10px 0 20px 0;letter-spacing: 5px;" class="w-250px">Who Am I?</h2>
    </div>

</div>
<div style="padding: 20px" class="card mb-5 mb-xl-10">
    <div id="kt_carousel_1_carousel" class="carousel carousel-custom slide" data-bs-ride="carousel"
         data-bs-interval="8000">
        <!--begin::Heading-->
        <div class="d-flex align-items-center justify-content-between flex-wrap">
            <!--begin::Label-->
            <div><span class="fs-4 fw-bold pe-2">MY PROFILE</span>

                <c:if test="${student.id == loginStdn.id}">
                    <a href="/mypage/settings?id=${student.id}" class="rotate-effect">
                        <img src="/assets/media/icons/duotune/coding/cod001.svg" class="h-25px me-10"/>
                    </a>
                </c:if>


            </div>

            <!--end::Label-->

            <!--begin::Carousel Indicators-->
            <ol id="myprofile_li" class="p-0 m-0 carousel-indicators carousel-indicators-dots">
                <li data-bs-target="#kt_carousel_1_carousel" data-bs-slide-to="0" class="ms-1 active"></li>
                <li data-bs-target="#kt_carousel_1_carousel" data-bs-slide-to="1" class="ms-1"></li>
            </ol>
            <!--end::Carousel Indicators-->
        </div>
        <!--end::Heading-->

        <!--begin::Carousel-->

        <div class="carousel-inner pt-8">

            <!--begin::Item-->
            <div style="padding: 10px 20px" class="carousel-item active">
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Name</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bold fs-6 text-gray-800">${student.name}</span>
                    </div>
                    <!--end::Col-->
                </div>
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Email</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bold fs-6 text-gray-800">${student.email}</span>
                    </div>
                    <!--end::Col-->
                </div>
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Contact</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <c:set var="contactString" value="${student.contact}"/>
                        <c:set var="formattedPhoneNumber"
                               value="${fn:substring(contactString, 0, 3)}-${fn:substring(contactString, 3, 7)}-${fn:substring(contactString, 7,11)}"/>

                        <span class="fw-bold fs-6 text-gray-800">${formattedPhoneNumber}</span>
                        <span class="badge badge-success">Verified</span>
                    </div>
                    <!--end::Col-->
                </div>
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Birth</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <c:set var="dateString" value="${student.birthday}"/>
                        <fmt:parseDate var="date" value="${dateString}" pattern="yyyy.MM.dd"/>
                        <fmt:formatDate var="formattedDate" value="${date}" pattern="MM월 dd일"/>
                        <span class="fw-bold fs-6 text-gray-800">${formattedDate}</span>
                    </div>
                    <!--end::Col-->
                </div>
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Instagram</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bold fs-6 text-gray-800">${mypage.insta}</span>
                    </div>
                    <!--end::Col-->
                </div>
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-semibold text-muted">Facebook</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bold fs-6 text-gray-800">${mypage.facebook}</span>
                    </div>
                    <!--end::Col-->
                </div>

            </div>
            <!--end::Item-->

            <!--begin::Item-->

            <div style="background-image: url('/img/mbti.png'); background-size: cover;" class="carousel-item">
                <c:choose>
                    <c:when test="${empty mypage.mbti}">
                        <h1>${student.name}님의 MBTI를 알려주세요.</h1>
                    </c:when>
                    <c:otherwise>
                        <h1 style="text-shadow: -1px 0px black, 0px 1px black, 1px 0px black, 0px -1px black;color: lightgray; margin-bottom: 53px; font-size: 32px; text-align: center;">I AM
                            <span style="color: #20D489; font-weight: bold;"> ${mypage.mbti}</span></h1>
                    </c:otherwise>
                </c:choose>
                <div style="text-align: center;">

                    <h2 style="font-weight: bold; margin: 0 0 60px 0; font-size: 42px;text-shadow: -1px 0px black, 0px 1px black, 1px 0px black, 0px -1px black; color: orange">
                        <c:choose>
                            <c:when test="${mypage.mbti == 'ISTJ'}">
                                Practical, Logical, Efficient
                            </c:when>
                            <c:when test="${mypage.mbti == 'ISFJ'}">
                                Considerate, Responsible
                            </c:when>
                            <c:when test="${mypage.mbti == 'INFJ'}">
                                Insightful, Creative, Decisive
                            </c:when>
                            <c:when test="${mypage.mbti == 'INTJ'}">
                                Strategic, Innovative, Independent
                            </c:when>
                            <c:when test="${mypage.mbti == 'ISTP'}">
                                Adventurous, Logical
                            </c:when>
                            <c:when test="${mypage.mbti == 'ISFP'}">
                                Creative, Considerate
                            </c:when>
                            <c:when test="${mypage.mbti == 'INFP'}">
                                Idealistic, Empathetic, Genuine
                            </c:when>
                            <c:when test="${mypage.mbti == 'INTP'}">
                                Logical, Innovative, Independent
                            </c:when>
                            <c:when test="${mypage.mbti == 'ESTP'}">
                                Energetic, Practical, Adaptable
                            </c:when>
                            <c:when test="${mypage.mbti == 'ESFP'}">
                                Fun, Sociable, Expressive
                            </c:when>
                            <c:when test="${mypage.mbti == 'ENFP'}">
                                Passionate, Imaginative, Sociable
                            </c:when>
                            <c:when test="${mypage.mbti == 'ENTP'}">
                                Creative, Curious, Logical
                            </c:when>
                            <c:when test="${mypage.mbti == 'ESTJ'}">
                                Efficient, Practical, Authoritative
                            </c:when>
                            <c:when test="${mypage.mbti == 'ESFJ'}">
                                Kind, Considerate, Sociable
                            </c:when>
                            <c:when test="${mypage.mbti == 'ENFJ'}">
                                Charismatic, Empathetic, Decisive, Leader
                            </c:when>
                            <c:when test="${mypage.mbti == 'ENTJ'}">
                                Strategic, Confident, Firm
                            </c:when>
                            <c:otherwise>
                                Unknown MBTI Type
                            </c:otherwise>
                        </c:choose>


                    </h2>
                </div>
                <p style="color:black; text-align: center; font-size: 18px; font-weight: bold; line-height: 1.5; margin-bottom: 55px;">
                    <c:if test="${mypage.mbti == 'ISTJ'}">
                        저는 책임감이 있고 체계적으로 일하며 확립된 구조와 틀 안에서 일하는 것을 선호하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFJ'}">
                        저는 지원적이고 배려심이 있으며 전통을 중요시하며 다른 사람을 돕는 데 전념하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFJ'}">
                        저는 직관력이 뛰어나며 공감 능력이 높고 세상에 긍정적인 영향을 주는 데 헌신하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTJ'}">
                        저는 분석적이고 논리적이며 혁신적인 아이디어와 전략을 개발하는 데 재능을 가진 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISTP'}">
                        저는 즉흥적이고 행동 중심인 사람으로 손으로 해결하고 문제를 실용적인 방식으로 해결하는 것을 즐깁니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFP'}">
                        저는 부드럽고 상상력이 풍부하며 주변 환경에서 아름다움과 조화를 창조하는 것을 좋아하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFP'}">
                        저는 동정심이 많고 창의적인 사람으로 가치와 신념에 따라 삶을 살아가려고 노력합니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTP'}">
                        저는 분석적이며 호기심이 많으며 새로운 아이디어와 이론을 탐구하는 것을 좋아합니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTP'}">
                        저는 외향적이고 적응력이 높으며 흥미와 모험을 추구하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFP'}">
                        저는 즐겁고 카리스마가 있으며 다른 사람들과 어울리는 것을 즐기는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFP'}">
                        저는 열정적이고 상상력이 풍부하며 주변 세계를 탐구하고 이해하려는 욕구로 이끄는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTP'}">
                        저는 분석적이며 외향적으로 논쟁하고 전통적인 지혜에 도전하는 것을 좋아하는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTJ'}">
                        저는 의지가 강하고 결단력이 있으며 리더십 역할에 잘 맞는 사람입니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFJ'}">
                        저는 따뜻하고 배려심이 있는 사람으로 다른 사람들과 강한 관계를 형성하는 데 전념합니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFJ'}">
                        저는 타고난 리더로 다른 사람들의 필요를 민감하게 인지하며 사람들을 동기부여하고 영감을 주는 데 능숙합니다.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTJ'}">
                        저는 결단력이 있으며 목표지향적인 사람으로 사람들과 자원을 이끌고 조직화하는 재능을 가지고 있습니다.
                    </c:if>
                    <!-- 다른 성격 유형에 대한 추가 조건을 추가하세요 -->
                </p>
            </div>

            <!--end::Item-->

        </div>
    </div>
    <!--end::Carousel-->
</div>
<br>
<div class="separator separator-content border-dark my-15">
    <div>
        <span style="font-weight: 200; color: gray; letter-spacing: 5px;" class="w-250px">I am happy</span>
        <h2 style="margin:10px 0 20px 0;letter-spacing: 5px;" class="w-250px">To know you</h2>
    </div>

</div>

<!--end::Underline-->
<div class="row gy-5 g-xl-10">

    <div class="col-xl-3 mb-5 mb-xl-10">
        <div class="card mb-5 mb-xl-10 d-flex flex-row-fluid  ">
            <!--begin::Card-->
            <div id="digi" class="card borcard-borderedder">
                <div class="card-header ribbon ribbon-top ribbon-vertical">
                    <div style="background-color: lightgray;" class="ribbon-label">
                        <%--                        <i class="bi bi-airplane-fill fs-2 text-white"></i>--%>
                        <i class="bi bi-mouse2 fs-2 text-white"></i>
                    </div>
                    <div class="card-title">
                              <span style="font-size:20px;" class="fw-bold align-items-center">
                      디지캠과 함께한지
                              </span>
                    </div>
                </div>
                <div class="card-body">
                    ${startDigi} Start!
                    <h1 class="text-center m-4" id="count-up">D+0 ING ~ ❤️</h1>
                </div>

            </div>
            <!--end::Card-->
        </div>
    </div>

    <div class="col-xl-3 mb-5 mb-xl-10">
        <div class="card mb-5 mb-xl-10  d-flex flex-row-fluid ">
            <!--begin::Card-->
            <div id="kb" class="card borcard-borderedder">
                <div class="card-header ribbon ribbon-top ribbon-vertical">
                    <div class="ribbon-label bg-warning">
                        <%--                        <i class="bi bi-star-fill fs-2 text-white"></i>--%>
                        <i class="bi bi-bank fs-2 text-white"></i>
                    </div>
                    <div class="card-title">
                              <span style="font-size:20px;" class="fw-bold align-items-center">
                      KB와 함께한지
                              </span>
                    </div>
                </div>
                <div class="card-body">
                    ${startKb} Start!
                    <h1 class="text-center m-4" id="count-up-kb">D+0 ING ~ ❤️‍</h1>

                </div>

            </div>
            <!--end::Card-->
        </div>
    </div>
    <div class="col-xl-3 mb-5 mb-xl-10">
        <div id="insta" class="card mb-5 mb-xl-10  d-flex flex-row-fluid ">
            <!--begin::Card-->
            <div class="card borcard-borderedder">
                <div class="card-header ribbon ribbon-top ribbon-vertical">
                    <div style="background-color: lightpink" class="ribbon-label">
                        <i class="bi-instagram fs-2 text-white"></i>
                    </div>
                    <div class="card-title">
                              <span style="font-size:20px;" class="fw-bold align-items-center">
                     INSTAGRAM
                              </span>
                    </div>
                </div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${empty mypage.insta}">
                            <p style="margin: 25px 0">등록된 정보가 없습니다.</p>
                        </c:when>
                        <c:otherwise>
                            Come to my
                            <a class="fw-bold" href="https://www.instagram.com/${mypage.insta}/">INSTAGRAM <i
                                    class="bi bi-arrow-left-circle-fill text-primary"></i></a>
                            <h1 class="text-center m-4">${mypage.insta}</h1>

                        </c:otherwise>
                    </c:choose>

                </div>

            </div>
            <!--end::Card-->
        </div>
    </div>
    <div class="col-xl-3 mb-5 mb-xl-10">
        <div id="facebook" class="card mb-5 mb-xl-10  d-flex flex-row-fluid ">
            <!--begin::Card-->
            <div class="card borcard-borderedder">
                <div class="card-header ribbon ribbon-top ribbon-vertical">
                    <div style="background-color: navy" class="ribbon-label">
                        <i class="bi-facebook fs-2 text-white"></i>
                    </div>
                    <div class="card-title">
                              <span style="font-size:20px;" class="fw-bold align-items-center">
                 FACEBOOK
                              </span>
                    </div>
                </div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${empty mypage.facebook}">
                            <p style="margin: 25px 0">등록된 정보가 없습니다.</p>
                        </c:when>
                        <c:otherwise>
                            Come to my
                            <a class="fw-bold" href="https://facebook.com/${mypage.facebook}/">FACEBOOK <i
                                    class="bi bi-arrow-left-circle-fill text-primary"></i> </a>
                            <h1 class="text-center m-4">${mypage.facebook}</h1>
                        </c:otherwise>
                    </c:choose>

                </div>

            </div>
            <!--end::Card-->
        </div>
    </div>

</div>
<br>
<div class="separator separator-content border-dark my-15">
    <div>
        <span style="font-weight: 200; color: gray; letter-spacing: 5px;" class="w-250px"> I am </span>
        <h2 style="margin:10px 0 20px 0;letter-spacing: 5px;" class="w-250px"> Interested in</h2>
    </div>
</div>
<br>
<!--begin::Row-->
<div class="row gy-5 g-xl-10">
    <!--begin::Col-->
    <div class="col-xl-4 mb-5 mb-xl-10">
        <!--begin::Engage Widget 1-->
        <div style="background-image: url('/img/${student.sbj1}.png'); background-size: cover; background-position: center center;"
             class="card h-md-100">
            <div class="card-body d-flex justify-content-center align-items-center card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark text-center">${student.sbj1}</h1>
                </div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
    <!--begin::Col-->
    <div class="col-xl-4 mb-5 mb-xl-10">
        <!--begin::Engage Widget 1-->
        <div style="background-image: url('/img/${student.sbj2}.png'); background-size: cover; background-position: center center;"
             class="card h-md-100">
            <div class="card-body d-flex justify-content-center align-items-center card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark text-center">${student.sbj2}</h1>
                </div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
    <!--begin::Col-->
    <div class="col-xl-4 mb-5 mb-xl-10">
        <!--begin::Engage Widget 1-->
        <div style="background-image: url('/img/${student.sbj3}.png'); background-size: cover; background-position: center center;"
             class="card h-md-100">
            <div class="card-body d-flex justify-content-center align-items-center card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark text-center">${student.sbj3}</h1>
                </div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
</div>
<!--end::Row-->

<script>
    // 페이지 로드가 완료되면 실행되는 함수
    window.onload = function () {
        var countUpElement = document.getElementById('count-up');
        var digidday = ${DigiDday}; // 숫자로 표시할 digidday 값
        var kbDday = ${kbDday}; // 숫자로 표시할 kbDday 값
        var duration = 3000; // 애니메이션의 지속 시간

        countUpAnimation(countUpElement, digidday, duration);
        countUpAnimation(document.getElementById('count-up-kb'), kbDday, duration);
    }

    // 숫자를 올리는 애니메이션을 실행하는 함수
    function countUpAnimation(element, targetValue, duration) {
        var startValue = 0;
        var increment = 3;
        var interval = duration / targetValue;

        function animate() {
            var timer = setInterval(function () {
                startValue += increment;
                element.innerHTML = 'D+' + startValue + ' ING ~ ❤️‍';

                if (startValue >= targetValue) {
                    clearInterval(timer);
                }

                // 애니메이션 속도를 조절하기 위한 코드
                if (startValue >= targetValue * 0.8) {
                    increment = 1; // 나중에는 천천히 증가하도록 속도 감소
                }
            }, interval);
        }

        animate(); // 애니메이션 실행

        // 5초마다 애니메이션을 반복 실행
        setInterval(function () {
            startValue = 0; // 시작 값을 초기화
            animate(); // 애니메이션 실행
        }, 10000);
    }
</script>