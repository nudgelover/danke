<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>


<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap0">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">학습 자료 찾기</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/lecture/all" class="btn btn-active-accent  fw-bold ms-3">전체 강의</a>
                <a href="/lecture/mylecture?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">내 학습</a>
                <a href="/lecture/search" class="btn btn-active-accent active active fw-bold ms-3">학습 자료 찾기</a>
                <a href="/lecture/ordhistory?stdnId=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">수강신청 내역조회</a>
                <a href="/lecture/cart?id=${loginStdn.id}" class="btn btn-active-accent fw-bold ms-3">장바구니</a>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card card-stretch bg-light-info" >
                    <div class="card-body pb-0" >
                        <div class="d-flex text-center pt-20" style="position: relative;height:75vh;">
                            <div class="d-flex flex-column text-center pt-20" style="z-index: 1; align-items: center; width: 100%">
                                <div>
                                    <img src="/img/dankesearch.png" alt="logo3" style="width: 50%;">
                                </div>
                                <form id="youtube_search" class="d-flex" action="/lecture/searchimpl" method="get">
                                        <input type="text" id="search" name="search"
                                               <c:if test="${youtube.search!=null}">value="${youtube.search}"</c:if>
                                               class="form-control border-0 fw-semibold ps-10 w-md-400px w-lg-400px w-xl-450px w-xxl-500px me-1"
                                               placeholder="이제 DIGICampus 안에서 원큐에 검색하세요!"/>

                                    <div class="py-2 px-2 bg-light-primary rounded">
                                        <button type="submit" class="btn bg-light-primary btn-icon flex-shrink-0">
                                                <span class="svg-icon svg-icon-1 svg-icon-info">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M21.7 18.9L18.6 15.8C17.9 16.9 16.9 17.9 15.8 18.6L18.9 21.7C19.3 22.1 19.9 22.1 20.3 21.7L21.7 20.3C22.1 19.9 22.1 19.3 21.7 18.9Z" fill="currentColor"/>
                                                        <path opacity="0.3" d="M11 20C6 20 2 16 2 11C2 6 6 2 11 2C16 2 20 6 20 11C20 16 16 20 11 20ZM11 4C7.1 4 4 7.1 4 11C4 14.9 7.1 18 11 18C14.9 18 18 14.9 18 11C18 7.1 14.9 4 11 4ZM8 11C8 9.3 9.3 8 11 8C11.6 8 12 7.6 12 7C12 6.4 11.6 6 11 6C8.2 6 6 8.2 6 11C6 11.6 6.4 12 7 12C7.6 12 8 11.6 8 11Z" fill="currentColor"/>
                                                    </svg>
                                                </span>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="position-absolute bottom-0">
                            <img src="../assets/media/illustrations/sigma-1/17.png" alt="qrphone" style="width: 60%;border-bottom-right-radius: 10px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>