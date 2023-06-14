<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    #kb, #digi ,#insta,#facebook{
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
                    <label class="col-lg-4 fw-semibold text-muted">Social</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">

                        <span class="fw-bold fs-6 text-gray-800">${mypage.insta} / ${mypage.facebook}</span>
                    </div>
                    <!--end::Col-->
                </div>


            </div>
            <!--end::Item-->

            <!--begin::Item-->

            <div class="carousel-item">
                옙흐게 ~~ 꾸며봐요호 ~~
                <c:choose>
                    <c:when test="${mypage.mbti==null}">
                        <h1>Let me know your MBTI</h1>
                    </c:when>
                    <c:otherwise>
                        <span style="color: gray">I AM </span>
                        <span style="font-size:20px; color:black; font-weight:bold; font-size: 20px"> ${mypage.mbti}</span>
                    </c:otherwise>
                </c:choose>
                <h2 style="font-weight: bold">
                    <c:if test="${mypage.mbti == 'ISTJ'}">
                        Practical, logical, and efficient
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFJ'}">
                        Caring, dependable, and responsible
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFJ'}">
                        Insightful, creative, and decisive
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTJ'}">
                        Strategic, innovative, and independent
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISTP'}">
                        Adventurous, logical, and hands-on
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFP'}">
                        Sensitive, creative, and caring
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFP'}">
                        Idealistic, empathetic, and authentic
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTP'}">
                        Logical, innovative, and independent
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTP'}">
                        Energetic, practical, and adaptable
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFP'}">
                        Playful, social, and expressive
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFP'}">
                        Enthusiastic, creative, and sociable
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTP'}">
                        Inventive, curious, and logical
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTJ'}">
                        Efficient, practical, and authoritative
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFJ'}">
                        Friendly, caring, and sociable
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFJ'}">
                        Charismatic, empathetic, and decisive
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTJ'}">
                        Strategic, confident, and assertive
                    </c:if>
                    <!-- Add more conditions for other personality types -->
                </h2>
                <p>
                    <c:if test="${mypage.mbti == 'ISTJ'}">
                        I am a responsible, organized, and dependable individual who prefers to work within established structures and frameworks.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFJ'}">
                        I am a supportive and considerate individual who values traditions and is committed to helping others.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFJ'}">
                        I am a highly intuitive and empathetic individual who is dedicated to making a positive impact on the world.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTJ'}">
                        I am an analytical and logical individual who has a talent for developing innovative ideas and strategies.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISTP'}">
                        I am a spontaneous, action-oriented individual who enjoys working with my hands and solving problems in practical ways.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ISFP'}">
                        I am a gentle and imaginative individual who enjoys creating beauty and harmony in my surroundings.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INFP'}">
                        I am a compassionate and creative individual who strives to live my life in accordance with my values and beliefs.
                    </c:if>

                    <c:if test="${mypage.mbti == 'INTP'}">
                        I am an analytical and curious individual who enjoys exploring new ideas and theories.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTP'}">
                        I am an outgoing and spontaneous individual who thrives on excitement and adventure.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFP'}">
                        I am a fun-loving and charismatic individual who enjoys entertaining and being around other people.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFP'}">
                        I am a passionate and imaginative individual who is driven by a desire to explore and understand the world around me.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTP'}">
                        I am an analytical and outgoing individual who enjoys debating and challenging conventional wisdom.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESTJ'}">
                        I am a strong-willed and decisive individual who is well-suited to leadership roles.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ESFJ'}">
                        I am a warm and considerate individual who is committed to building strong relationships with others.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENFJ'}">
                        I am a natural leader who is highly attuned to the needs of others and is skilled at motivating and inspiring people.
                    </c:if>

                    <c:if test="${mypage.mbti == 'ENTJ'}">
                        I am a decisive and goal-oriented individual who has a talent for leading and organizing people and resources
                    </c:if>

                </p>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>


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
                      WITH DIGI️
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
                      WITH KB
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
                    Come to my
                    <h1 class="text-center m-4">${mypage.insta}</h1>
                </div>

            </div>
            <!--end::Card-->
        </div>
    </div>
    <div class="col-xl-3 mb-5 mb-xl-10">
        <div id="facebook"  class="card mb-5 mb-xl-10  d-flex flex-row-fluid ">
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
                    Come to my
                    <h1 class="text-center m-4">${mypage.facebook}</h1>

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
        <div class="card h-md-100">
            <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark"> ${student.sbj1}</h1>
                    <div class="fs-3 mb-8">${student.sbj1}</div>
                    ${student.sbj1}
                </div>
                <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto"></div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
    <!--begin::Col-->
    <div class="col-xl-4 mb-5 mb-xl-10">
        <!--begin::Engage Widget 1-->
        <div class="card h-md-100">
            <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark">${student.sbj2}</h1>
                    <div class="fs-3 mb-8">${student.sbj2}</div>
                    ${student.sbj2}
                </div>
                <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto"></div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
    <!--begin::Col-->
    <div class="col-xl-4 mb-5 mb-xl-10">
        <!--begin::Engage Widget 1-->
        <div class="card h-md-100">
            <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex">
                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                    <h1 class="fw-bold text-dark">${student.sbj3}</h1>
                    <div class="fs-3 mb-8">${student.sbj3}</div>
                    <!--begin::Form-->
                    ${student.sbj3}
                    <!--end::Form-->
                </div>
                <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto"></div>
            </div>
        </div>
        <!--end::Engage Widget 1-->
    </div>
    <!--end::Col-->
</div>
<!--end::Row-->
<!--begin::Row-->
<div class="row gy-5 g-xl-10">
    <!--begin::Col-->
    <div class="col-xl-4">
        <!--begin::List Widget 5-->
        <div class="card h-xl-100">
            <!--begin::Body-->
            <div class="card-body pt-2">
                <!--begin::Item-->
                <div class="d-flex mb-6">
                    <!--begin::Icon-->
                    <div class="me-1">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                        <span class="svg-icon svg-icon-sm svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Content-->
                    <div class="d-flex flex-column">
                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">How to Create
                            Your First Project with Start Admin Theme</a>
                        <div class="fw-semibold text-muted">But nothing can prepare you for the real thing
                        </div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex mb-6">
                    <!--begin::Icon-->
                    <div class="me-1">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                        <span class="svg-icon svg-icon-sm svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Content-->
                    <div class="d-flex flex-column">
                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Start Admin
                            Theme Getting Started & Installation</a>
                        <div class="fw-semibold text-muted">Long before you sit down to put digital pen
                        </div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex mb-6">
                    <!--begin::Icon-->
                    <div class="me-1">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                        <span class="svg-icon svg-icon-sm svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Content-->
                    <div class="d-flex flex-column">
                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Craft a
                            headline that is both informative and will capture</a>
                        <div class="fw-semibold text-muted">But nothing can prepare you for the real thing
                        </div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex mb-6">
                    <!--begin::Icon-->
                    <div class="me-1">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                        <span class="svg-icon svg-icon-sm svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Content-->
                    <div class="d-flex flex-column">
                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Write your
                            post, either writing a draft in a single</a>
                        <div class="fw-semibold text-muted">Long before you sit down to put pen</div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex mb-6">
                    <!--begin::Icon-->
                    <div class="me-1">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
                        <span class="svg-icon svg-icon-sm svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z"
                                                                      fill="currentColor"/>
															</svg>
														</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Icon-->
                    <!--begin::Content-->
                    <div class="d-flex flex-column">
                        <a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Use images to
                            enhance your post, improve its flow</a>
                        <div class="fw-semibold text-muted">Long before you sit down to put digital pen
                        </div>
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Item-->
            </div>
            <!--end::Body-->
        </div>
        <!--end::List Widget 5-->
    </div>
    <!--end::Col-->
    <!--begin::Col-->
    <div class="col-xl-8">
        <!--begin::Table Widget 5-->
        <div class="card card-flush h-xl-100">
            <!--begin::Card header-->
            <div class="card-header pt-7">
                <!--begin::Title-->
                <h3 class="card-title align-items-start flex-column">
                    <span class="card-label fw-bold text-dark">찜한 맛집</span>
                    <span class="text-gray-400 mt-1 fw-semibold fs-6">Total 2,356 Items in the Stock</span>
                </h3>
                <!--end::Title-->
                <!--begin::Actions-->
                <div class="card-toolbar">
                    <!--begin::Filters-->
                    <div class="d-flex flex-stack flex-wrap gap-4">
                        <!--begin::Destination-->
                        <div class="d-flex align-items-center fw-bold">
                            <!--begin::Label-->
                            <div class="text-muted fs-7 me-2">Cateogry</div>
                            <!--end::Label-->
                            <!--begin::Select-->
                            <select class="form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto"
                                    data-control="select2" data-hide-search="true"
                                    data-dropdown-css-class="w-150px" data-placeholder="Select an option">
                                <option></option>
                                <option value="Show All" selected="selected">Show All</option>
                                <option value="a">Category A</option>
                                <option value="b">Category B</option>
                            </select>
                            <!--end::Select-->
                        </div>
                        <!--end::Destination-->
                        <!--begin::Status-->
                        <div class="d-flex align-items-center fw-bold">
                            <!--begin::Label-->
                            <div class="text-muted fs-7 me-2">Status</div>
                            <!--end::Label-->
                            <!--begin::Select-->
                            <select class="form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto"
                                    data-control="select2" data-hide-search="true"
                                    data-dropdown-css-class="w-150px" data-placeholder="Select an option"
                                    data-kt-table-widget-5="filter_status">
                                <option></option>
                                <option value="Show All" selected="selected">Show All</option>
                                <option value="In Stock">In Stock</option>
                                <option value="Out of Stock">Out of Stock</option>
                                <option value="Low Stock">Low Stock</option>
                            </select>
                            <!--end::Select-->
                        </div>
                        <!--end::Status-->
                        <!--begin::Search-->
                        <a href="../dist/apps/ecommerce/catalog/products.html" class="btn btn-light btn-sm">View
                            Stock</a>
                        <!--end::Search-->
                    </div>
                    <!--begin::Filters-->
                </div>
                <!--end::Actions-->
            </div>
            <!--end::Card header-->
            <!--begin::Card body-->
            <div class="card-body">
                <!--begin::Table-->
                <table class="table align-middle table-row-dashed fs-6 gy-3" id="kt_table_widget_5_table">
                    <!--begin::Table head-->
                    <thead>
                    <!--begin::Table row-->
                    <tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
                        <th class="min-w-100px">Item</th>
                        <th class="text-end pe-3 min-w-100px">Product ID</th>
                        <th class="text-end pe-3 min-w-150px">Date Added</th>
                        <th class="text-end pe-3 min-w-100px">Price</th>
                        <th class="text-end pe-3 min-w-50px">Status</th>
                        <th class="text-end pe-0 min-w-25px">Qty</th>
                    </tr>
                    <!--end::Table row-->
                    </thead>
                    <!--end::Table head-->
                    <!--begin::Table body-->
                    <tbody class="fw-bold text-gray-600">
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">Macbook Air M1</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#XGY-356</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">02 Apr, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$1,230</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="58">
                            <span class="text-dark fw-bold">58 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">Surface Laptop 4</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#YHD-047</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">01 Apr, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$1,060</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-danger">Out of Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="0">
                            <span class="text-dark fw-bold">0 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">Logitech MX 250</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#SRR-678</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">24 Mar, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$64</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="290">
                            <span class="text-dark fw-bold">290 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">AudioEngine HD3</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#PXF-578</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">24 Mar, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$1,060</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-danger">Out of Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="46">
                            <span class="text-dark fw-bold">46 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">HP Hyper LTR</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#PXF-778</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">16 Jan, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$4500</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="78">
                            <span class="text-dark fw-bold">78 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">Dell 32 UltraSharp</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#XGY-356</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">22 Dec, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$1,060</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-warning">Low Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="8">
                            <span class="text-dark fw-bold">8 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    <tr>
                        <!--begin::Item-->
                        <td>
                            <a href="../dist/apps/ecommerce/catalog/edit-product.html"
                               class="text-dark text-hover-primary">Google Pixel 6 Pro</a>
                        </td>
                        <!--end::Item-->
                        <!--begin::Product ID-->
                        <td class="text-end">#XVR-425</td>
                        <!--end::Product ID-->
                        <!--begin::Date added-->
                        <td class="text-end">27 Dec, 2023</td>
                        <!--end::Date added-->
                        <!--begin::Price-->
                        <td class="text-end">$1,060</td>
                        <!--end::Price-->
                        <!--begin::Status-->
                        <td class="text-end">
                            <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                        </td>
                        <!--end::Status-->
                        <!--begin::Qty-->
                        <td class="text-end" data-order="124">
                            <span class="text-dark fw-bold">124 PCS</span>
                        </td>
                        <!--end::Qty-->
                    </tr>
                    </tbody>
                    <!--end::Table body-->
                </table>
                <!--end::Table-->
            </div>
            <!--end::Card body-->
        </div>
        <!--end::Table Widget 5-->
    </div>
    <!--end::Col-->
</div>

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