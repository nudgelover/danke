<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>

<!--end::Vendor Stylesheets-->
<script>
    // 마우스를 가져다 댈 때 호출되는 함수
    function changeColor(element) {
        var tds = element.getElementsByTagName("td");
        for (var i = 0; i < tds.length; i++) {
            tds[i].style.color = "#20D489";
        }
    }

    // 마우스가 떠날 때 호출되는 함수
    function restoreColor(element) {
        var tds = element.getElementsByTagName("td");
        for (var i = 0; i < tds.length; i++) {
            tds[i].style.color = "";
        }
    }
</script>


<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">준비중</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/digicam/anc/all" class="btn btn-active-accent  fw-bold">Notice</a>
                <a href="/digicam/calendar" class="btn btn-active-accent fw-bold">Calendar</a>
                <a href="/digicam/detail" class="btn btn-active-accent active fw-bold ms-3">Digi Cam</a>
                <a href="/digicam/member" class="btn btn-active-accent fw-bold ms-3">Digi Member</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Page Layout-->
            <div class="d-flex flex-column flex-md-row">

                <!--begin::Layout-->
                <div class="flex-md-row-fluid ms-md-12">
                    <!--begin::Card-->
                    <div class="card">

                        <div class="card-body py-10">
                            연혁 준비 중
                        </div>
                    </div>
                    <!--end::Card-->
                </div>
                <!--end::Layout-->
            </div>
            <!--end::Page Layout-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->

<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>

<script>
    const rows = document.querySelectorAll('.hoverable-row');
    rows.forEach(row => {
        row.addEventListener('mouseenter', () => {
            row.classList.add('hovered');
        });
        row.addEventListener('mouseleave', () => {
            row.classList.remove('hovered');
        });
    });
</script>