<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin::Aside-->
<div id="kt_aside" class="aside bg-info" data-kt-drawer="true" data-kt-drawer-name="aside"
     data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true"
     data-kt-drawer-width="70px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_toggler">
    <!--begin::Primary-->
    <div class="aside-primary d-flex flex-column align-items-center flex-row-auto">
        <!--begin::Logo-->
        <div class="aside-logo d-flex flex-column align-items-center flex-column-auto py-4 pt-lg-10 pb-lg-7"
             id="kt_aside_logo">
            <a href="/">
                <img alt="Logo" src="/img/logo.png" class="mh-50px"/>
            </a>
        </div>
        <!--end::Logo-->
        <!--begin::Nav Wrapper-->
<%--        <div class="aside-nav d-flex flex-column align-items-center flex-column-fluid pt-0 pb-5"--%>
<%--             id="kt_aside_nav">--%>
<%--            <!--begin::Nav scroll-->--%>
<%--            <div data-kt-scroll="true" data-kt-scroll-height="auto"--%>
<%--                 data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer"--%>
<%--                 data-kt-scroll-wrappers="#kt_aside_nav" data-kt-scroll-offset="10px">--%>
<%--                <!--begin::Nav-->--%>
<%--                <ul class="nav flex-column">--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="Features" data-bs-toggle="tooltip" data-bs-dismiss="click"--%>
<%--                        data-bs-placement="right">--%>
<%--                        <a href="#"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white active"--%>
<%--                           data-bs-toggle="tab" data-bs-target="#kt_aside_tab_1" role="tab">--%>
<%--                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                                     xmlns="http://www.w3.org/2000/svg">--%>
<%--													<rect x="2" y="2" width="9" height="9" rx="2" fill="currentColor"/>--%>
<%--													<rect opacity="0.3" x="13" y="2" width="9" height="9" rx="2"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect opacity="0.3" x="13" y="13" width="9" height="9" rx="2"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect opacity="0.3" x="2" y="13" width="9" height="9" rx="2"--%>
<%--                                                          fill="currentColor"/>--%>
<%--												</svg>--%>
<%--											</span>--%>
<%--                            <!--end::Svg Icon-->--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="Lecture" data-bs-toggle="tooltip" data-bs-dismiss="click"--%>
<%--                        data-bs-placement="right">--%>
<%--                        <a href="/lecture/all"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white"--%>
<%--                           data-bs-toggle="tab" data-bs-target="#kt_aside_tab_2" role="tab">--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">--%>
<%--<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor"/>--%>
<%--<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor"/>--%>
<%--</svg>--%>
<%--											</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="Latest Reports" data-bs-toggle="tooltip"--%>
<%--                        data-bs-dismiss="click" data-bs-placement="right">--%>
<%--                        <a href="#"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white"--%>
<%--                           data-bs-toggle="tab" data-bs-target="#kt_aside_tab_3" role="tab">--%>
<%--                            <!--begin::Svg Icon | path: icons/duotune/general/gen032.svg-->--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                                     xmlns="http://www.w3.org/2000/svg">--%>
<%--													<rect x="8" y="9" width="3" height="10" rx="1.5"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect opacity="0.5" x="13" y="5" width="3" height="14" rx="1.5"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect x="18" y="11" width="3" height="8" rx="1.5"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect x="3" y="13" width="3" height="6" rx="1.5"--%>
<%--                                                          fill="currentColor"/>--%>
<%--												</svg>--%>
<%--											</span>--%>
<%--                            <!--end::Svg Icon-->--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="Project Management" data-bs-toggle="tooltip"--%>
<%--                        data-bs-dismiss="click" data-bs-placement="right">--%>
<%--                        <a href="#"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white"--%>
<%--                           data-bs-toggle="tab" data-bs-target="#kt_aside_tab_2" role="tab">--%>
<%--                            <!--begin::Svg Icon | path: icons/duotune/general/gen048.svg-->--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                                     xmlns="http://www.w3.org/2000/svg">--%>
<%--													<path opacity="0.3"--%>
<%--                                                          d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"--%>
<%--                                                          fill="currentColor"/>--%>
<%--												</svg>--%>
<%--											</span>--%>
<%--                            <!--end::Svg Icon-->--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="User Management">--%>
<%--                        <a href="/blah"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white">--%>
<%--                            <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                                     xmlns="http://www.w3.org/2000/svg">--%>
<%--													<path opacity="0.3"--%>
<%--                                                          d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z"--%>
<%--                                                          fill="currentColor"/>--%>
<%--												</svg>--%>
<%--											</span>--%>
<%--                            <!--end::Svg Icon-->--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                    <!--begin::Item-->--%>
<%--                    <li class="nav-item mb-1" title="Finance & Accounting" data-bs-toggle="tooltip"--%>
<%--                        data-bs-dismiss="click" data-bs-placement="right">--%>
<%--                        <a href="#"--%>
<%--                           class="nav-link h-40px w-40px h-lg-50px w-lg-50px btn btn-custom btn-icon btn-color-white"--%>
<%--                           data-bs-toggle="tab" data-bs-target="#kt_aside_tab_6" role="tab">--%>
<%--                            <!--begin::Svg Icon | path: icons/duotune/files/fil005.svg-->--%>
<%--                            <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                                     xmlns="http://www.w3.org/2000/svg">--%>
<%--													<path opacity="0.3"--%>
<%--                                                          d="M19 22H5C4.4 22 4 21.6 4 21V3C4 2.4 4.4 2 5 2H14L20 8V21C20 21.6 19.6 22 19 22ZM16 13.5L12.5 13V10C12.5 9.4 12.6 9.5 12 9.5C11.4 9.5 11.5 9.4 11.5 10L11 13L8 13.5C7.4 13.5 7 13.4 7 14C7 14.6 7.4 14.5 8 14.5H11V18C11 18.6 11.4 19 12 19C12.6 19 12.5 18.6 12.5 18V14.5L16 14C16.6 14 17 14.6 17 14C17 13.4 16.6 13.5 16 13.5Z"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<rect x="11" y="19" width="10" height="2" rx="1"--%>
<%--                                                          transform="rotate(-90 11 19)" fill="currentColor"/>--%>
<%--													<rect x="7" y="13" width="10" height="2" rx="1"--%>
<%--                                                          fill="currentColor"/>--%>
<%--													<path d="M15 8H20L14 2V7C14 7.6 14.4 8 15 8Z" fill="currentColor"/>--%>
<%--												</svg>--%>
<%--											</span>--%>
<%--                            <!--end::Svg Icon-->--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--end::Item-->--%>
<%--                </ul>--%>
<%--                <!--end::Nav-->--%>
<%--            </div>--%>
<%--            <!--end::Nav scroll-->--%>
<%--        </div>--%>
        <!--end::Nav Wrapper-->
        <!--begin::Footer-->
<%--        <div class="aside-footer d-flex flex-column align-items-center flex-column-auto py-5 py-lg-7"--%>
<%--             id="kt_aside_footer">--%>
<%--            <!--begin::Menu-->--%>
<%--            <div class="mb-2" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-trigger="hover"--%>
<%--                 title="Quick settings">--%>
<%--                <button type="button"--%>
<%--                        class="btn btn-custom h-40px w-40px h-lg-50px w-lg-50px btn-icon btn-color-white"--%>
<%--                        data-kt-menu-trigger="click" data-kt-menu-overflow="true"--%>
<%--                        data-kt-menu-placement="top-start" data-kt-menu-flip="top-end">--%>
<%--                    <!--begin::Svg Icon | path: icons/duotune/general/gen008.svg-->--%>
<%--                    <span class="svg-icon svg-icon-2 svg-icon-lg-1">--%>
<%--										<svg width="24" height="24" viewBox="0 0 24 24" fill="none"--%>
<%--                                             xmlns="http://www.w3.org/2000/svg">--%>
<%--											<path d="M3 2H10C10.6 2 11 2.4 11 3V10C11 10.6 10.6 11 10 11H3C2.4 11 2 10.6 2 10V3C2 2.4 2.4 2 3 2Z"--%>
<%--                                                  fill="currentColor"/>--%>
<%--											<path opacity="0.3"--%>
<%--                                                  d="M14 2H21C21.6 2 22 2.4 22 3V10C22 10.6 21.6 11 21 11H14C13.4 11 13 10.6 13 10V3C13 2.4 13.4 2 14 2Z"--%>
<%--                                                  fill="currentColor"/>--%>
<%--											<path opacity="0.3"--%>
<%--                                                  d="M3 13H10C10.6 13 11 13.4 11 14V21C11 21.6 10.6 22 10 22H3C2.4 22 2 21.6 2 21V14C2 13.4 2.4 13 3 13Z"--%>
<%--                                                  fill="currentColor"/>--%>
<%--											<path opacity="0.3"--%>
<%--                                                  d="M14 13H21C21.6 13 22 13.4 22 14V21C22 21.6 21.6 22 21 22H14C13.4 22 13 21.6 13 21V14C13 13.4 13.4 13 14 13Z"--%>
<%--                                                  fill="currentColor"/>--%>
<%--										</svg>--%>
<%--									</span>--%>
<%--                    <!--end::Svg Icon-->--%>
<%--                </button>--%>
<%--                <!--begin::Menu-->--%>
<%--                <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px"--%>
<%--                     data-kt-menu="true">--%>
<%--                    <div class="menu-item px-3">--%>
<%--                        <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>--%>
<%--                    </div>--%>
<%--                    <div class="separator mb-3 opacity-75"></div>--%>
<%--                    <div class="menu-item px-3">--%>
<%--                        <a href="#" class="menu-link px-3">Add User</a>--%>
<%--                    </div>--%>
<%--                    <div class="menu-item px-3">--%>
<%--                        <a href="#" class="menu-link px-3">Add Role</a>--%>
<%--                    </div>--%>
<%--                    <div class="menu-item px-3" data-kt-menu-trigger="hover"--%>
<%--                         data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">--%>
<%--                        <a href="#" class="menu-link px-3">--%>
<%--                            <span class="menu-title">Add Group</span>--%>
<%--                            <span class="menu-arrow"></span>--%>
<%--                        </a>--%>
<%--                        <div class="menu-sub menu-sub-dropdown w-200px py-4">--%>
<%--                            <div class="menu-item px-3">--%>
<%--                                <a href="#" class="menu-link px-3">Admin Group</a>--%>
<%--                            </div>--%>
<%--                            <div class="menu-item px-3">--%>
<%--                                <a href="#" class="menu-link px-3">Staff Group</a>--%>
<%--                            </div>--%>
<%--                            <div class="menu-item px-3">--%>
<%--                                <a href="#" class="menu-link px-3">Member Group</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="menu-item px-3">--%>
<%--                        <a href="#" class="menu-link px-3">Reports</a>--%>
<%--                    </div>--%>
<%--                    <div class="separator mt-3 opacity-75"></div>--%>
<%--                    <div class="menu-item px-3">--%>
<%--                        <div class="menu-content px-3 py-3">--%>
<%--                            <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!--end::Menu-->--%>
<%--            </div>--%>
<%--            <!--end::Menu-->--%>
<%--        </div>--%>
        <!--end::Footer-->
    </div>
    <!--end::Primary-->
</div>
<!--end::Aside-->