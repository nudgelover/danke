<!--begin::Main-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    [data-bs-theme="light"] #error_background {
        background-color: #EAF9FC;
    }
    [data-bs-theme="dark"] #error_background {
        background-color: #2B2B40;
    }
</style>
<div class="d-flex flex-column flex-root">
    <!--begin::Error-->
    <div id="error_background" class="d-flex flex-column flex-column-fluid position-relative">
        <!--begin::Background-->
        <div class="px-10 px-md-20 pt-10 pt-md-14 z-index-1">
            <a href="/">
                <img alt="Logo" src="https://cdn-icons-png.flaticon.com/512/1680/1680012.png" class="h-75px"/>
            </a>
        </div>
        <div class="px-10 px-md-20 py-10 py-md-0 d-flex flex-column justify-content-md-center align-items-start flex-root w-md-700px z-index-1">
            <p class="display-6 fw-bold text-gray-800 mb-8">죄송합니다. 페이지를 찾을 수 없습니다.</p>
            <p class="fs-6 mb-8">죄송합니다. 오류가 발생하였습니다. 오류가 반복적으로 발생할 경우, 관리자에게 문의해주십시오. 다시 한번 이용에 불편을 드려 죄송합니다. 전화번호: 02-1234-5678</p>
            <a href="/" class="btn btn-primary fs-6 fw-bold py-4 px-6 me-auto">메인으로 돌아가기</a>
        </div>
        <!--end::Content-->
    </div>
    <!--end::Error-->
</div>
