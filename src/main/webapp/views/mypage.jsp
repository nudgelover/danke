<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>

<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">MYPAGE</h3>
                <p>MYPAGE</p>
                <!--end::Title-->

            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="mypage" class="btn btn-active-accent active fw-bold">MYPAGE</a>
                <a href="#" class="btn btn-active-accent fw-bold">비밀번호 변경</a>
                <a href="#" class="btn btn-active-accent fw-bold ms-3">QR코드발급</a>
                <a href="/settings" class="btn btn-active-accent fw-bold ms-3">settings</a>
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