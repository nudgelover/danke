<!--begin::Vendor Stylesheets(used for this page only)-->
<link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css"/>

<!--end::Vendor Stylesheets-->
<style>
    /*a {*/
    /*    color: black;*/
    /*}*/

    /*a:hover {*/
    /*    color: #20D489 !important;*/
    /*}*/


    .hoverable-row:hover td {
        color: red;
    }


</style>
<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">NOTICE</h3>
                <p>NOTICE BOARD</p>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="/" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">DASHBOARD</li>
                    <li class="breadcrumb-item text-dark">NOTICE</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/digicam/anc/all" class="btn btn-active-accent active fw-bold">Notice</a>
                <a href="/digicam/calendar" class="btn btn-active-accent fw-bold">Calendar</a>
                <a href="/digicam/detail" class="btn btn-active-accent fw-bold ms-3">Digi Cam</a>
                <a href="/digicam/member" class="btn btn-active-accent fw-bold ms-3">Digi member</a>
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
                            <div class="d-flex flex-column mb-10 px-3">
                                <h2 class="text-dark fw-bold fs-1 mb-5">Popular Articles</h2>
                                <!--begin::SEARCH Form-->
                                <form>
                                    <div class="input-group input-group-solid" id="kt_chat_aside_search">
															<span class="input-group-text" id="basic-addon1">
																<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
																<span class="svg-icon svg-icon-1 svg-icon-dark">
																	<svg width="24" height="24" viewBox="0 0 24 24"
                                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
																		<rect opacity="0.5" x="17.0365" y="15.1223"
                                                                              width="8.15546" height="2" rx="1"
                                                                              transform="rotate(45 17.0365 15.1223)"
                                                                              fill="currentColor"/>
																		<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z"
                                                                              fill="currentColor"/>
																	</svg>
																</span>
                                                                <!--end::Svg Icon-->
															</span>
                                        <input type="text" class="form-control ps-0 py-4 h-auto" placeholder="Search"/>
                                    </div>
                                </form>
                                <!--end:: SEARCH Form-->
                            </div>
                            <div class="d-flex flex-column flex-column-fluid" style="margin: 20px;">
                                <table class="table table-hover">
                                    <colgroup>
                                        <col style="width: 10%;">
                                        <col style="width: 50%;">
                                        <col style="width: 20%;">
                                        <col style="width: 20%;">
                                    </colgroup>
                                    <tbody style="text-align: center">
                                    <tr>
                                        <th>No</th>
                                        <th>Title</th>
                                        <th>Writer</th>
                                        <th>Date</th>
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="hover">1</a></td>
                                        <td style="text-align: left"><a href="/anc/detail?id=${obj.id}">This is first
                                            anc</a>

                                        </td>
                                        <td><a href="#" class="hover">jinhee</a></td>
                                        <td><a href="#" class="hover">2023.05.26</a></td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td style="text-align:left;"><a href="/anc/detail?id=${obj.id}">This is first
                                            anc</a></td>
                                        <td>jinhee</td>
                                        <td>2023.05.26</td>
                                    </tr>
                                    <%--                                    id="hover" style="cursor: pointer;"--%>
                                    <%--                                    onclick="window.location.href='/anc/detail'--%>
<%--                                    <span class="menu-link">--%>
                                    <tr onclick="window.location.href='/digicam/anc/detail'">
                                        <td ><span class="menu-link">3</span></td>
                                        <td style="text-align: left;">This is first anc</td>
                                        <td>jinhee</td>
                                        <td>2023.05.26</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>

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