<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin::Sidebar-->
<div id="kt_sidebar" class="sidebar bg-info" data-kt-drawer="true" data-kt-drawer-name="sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '350px': '300px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_sidebar_toggler">
  <!--begin::Sidebar Content-->
  <div class="d-flex flex-column sidebar-body">
    <!--begin::Sidebar Nav-->
    <ul class="sidebar-nav nav nav-tabs pt-15 pb-5 px-5" id="kt_sidebar_tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_1" id="kt_sidebar_tab_1">
          <img alt="" src="/assets/media/svg/logo/purple/aven.svg" class="default" />
          <img alt="" src="/assets/media/svg/logo/colored/aven.svg" class="active" />
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_2" id="kt_sidebar_tab_2">
          <img alt="" src="/assets/media/svg/logo/purple/kanba.svg" class="default" />
          <img alt="" src="/assets/media/svg/logo/colored/kanba.svg" class="active" />
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_3" id="kt_sidebar_tab_3">
          <img alt="" src="/assets/media/svg/logo/purple/fox-hub-2.svg" class="default" />
          <img alt="" src="/assets/media/svg/logo/colored/fox-hub-2.svg" class="active" />
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_4" id="kt_sidebar_tab_4">
          <img alt="" src="/assets/media/svg/logo/purple/tower.svg" class="default" />
          <img alt="" src="/assets/media/svg/logo/colored/tower.svg" class="active" />
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_5" id="kt_sidebar_tab_5">
          <img alt="" src="/assets/media/svg/logo/purple/treva.svg" class="default" />
          <img alt="" src="/assets/media/svg/logo/colored/treva.svg" class="active" />
        </a>
      </li>
    </ul>
    <!--end::Sidebar Nav-->
    <!--begin::Sidebar Content-->
    <div id="kt_sidebar_content" class="py-10 px-5 px-lg-5">
      <div class="hover-scroll-y me-lg-n2 pe-lg-2" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-offset="0px" data-kt-scroll-dependencies="#kt_sidebar_tabs, #kt_sidebar_footer" data-kt-scroll-wrappers="#kt_sidebar_content">
        <div class="tab-content">
          <div class="tab-pane" id="kt_sidebar_tab_pane_1" role="tabpanel">
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Aven Sales</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body px-3 py-0">
                <!--begin::Chart-->
                <div id="kt_sidebar_tab_1_chart" class="apexcharts-bar-hover-danger" style="height: 250px"></div>
                <!--end::Chart-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Tasks Overview</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body pt-0">
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-1.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Sunspots</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Mark, Rowling, Esther</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin: Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-2.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Ocean Drive</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end: Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-3.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Soar, Eco</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">HTML, CSS. jQuery</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-5.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Cup & Green</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">ASP.NET Developer</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Bose QC 35 II</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
          </div>
          <div class="tab-pane" id="kt_sidebar_tab_pane_2" role="tabpanel">
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Kanba Sales</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body px-3 py-0">
                <!--begin::Chart-->
                <div id="kt_sidebar_tab_2_chart" class="apexcharts-bar-hover-danger" style="height: 250px"></div>
                <!--end::Chart-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Kanba Products</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body pt-0">
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-7.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">BP Industries</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Successful Fellas</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin: Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-8.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Automatica</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Successful Fellas</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end: Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Python Inc.</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Most Successful</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-19.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Cup & Green</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">ASP.NET Developer</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Active Customers</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Best Customers</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
          </div>
          <div class="tab-pane active" id="kt_sidebar_tab_pane_3" role="tabpanel">
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Fox Sales</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body px-3 py-0">
                <!--begin::Chart-->
                <div id="kt_sidebar_tab_3_chart" class="apexcharts-bar-hover-danger" style="height: 250px"></div>
                <!--end::Chart-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Fox Bestsellers</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body pt-0">
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-17.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Blue Donut</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin: Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-10.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Lovely Hearts</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end: Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-1.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Hands & Yellow</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Cup & Green</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-4.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Bose QC 35 II</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Study the highway types</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
          </div>
          <div class="tab-pane" id="kt_sidebar_tab_pane_4" role="tabpanel">
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Tower Sales</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body px-3 py-0">
                <!--begin::Chart-->
                <div id="kt_sidebar_tab_4_chart" class="apexcharts-bar-hover-danger" style="height: 250px"></div>
                <!--end::Chart-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Tower Latest Products</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body pt-0">
                <!--begin: Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-8.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Automatica</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Successful Fellas</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end: Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-11.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">BP Industries</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Successful Fellas</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-19.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Cup & Green</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">ASP.NET Developer</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Python Inc.</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Most Successful</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Active Customers</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Best Customers</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
          </div>
          <div class="tab-pane" id="kt_sidebar_tab_pane_5" role="tabpanel">
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Treva Sales</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body px-3 py-0">
                <!--begin::Chart-->
                <div id="kt_sidebar_tab_5_chart" class="apexcharts-bar-hover-danger" style="height: 250px"></div>
                <!--end::Chart-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
            <!--begin::Card-->
            <div class="card bg-transparent">
              <!--begin::Header-->
              <div class="card-header align-items-center border-0">
                <h3 class="card-title fw-bold text-white fs-3">Treva's Products</h3>
                <div class="card-toolbar">
                  <button type="button" class="btn btn-md btn-icon btn-icon-white btn-info" data-kt-menu-trigger="click" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                    <span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<rect x="5" y="5" width="5" height="5" rx="1" fill="currentColor" />
																	<rect x="14" y="5" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="5" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																	<rect x="14" y="14" width="5" height="5" rx="1" fill="currentColor" opacity="0.3" />
																</g>
															</svg>
														</span>
                    <!--end::Svg Icon-->
                  </button>
                  <!--begin::Menu-->
                  <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                    <div class="menu-item px-3">
                      <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Manage</div>
                    </div>
                    <div class="separator mb-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add User</a>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Add Role</a>
                    </div>
                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left-start, top">
                      <a href="#" class="menu-link px-3">
                        <span class="menu-title">Add Group</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="menu-sub menu-sub-dropdown w-200px py-4">
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Admin Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Staff Group</a>
                        </div>
                        <div class="menu-item px-3">
                          <a href="#" class="menu-link px-3">Member Group</a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-item px-3">
                      <a href="#" class="menu-link px-3">Reports</a>
                    </div>
                    <div class="separator mt-3 opacity-75"></div>
                    <div class="menu-item px-3">
                      <div class="menu-content px-3 py-3">
                        <a class="btn btn-primary fw-semibold btn-sm px-4" href="#">Create New</a>
                      </div>
                    </div>
                  </div>
                  <!--end::Menu-->
                </div>
              </div>
              <!--end::Header-->
              <!--begin::Body-->
              <div class="card-body pt-0">
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-12.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Top Authors</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Successful Fellas</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin: Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-13.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Popular Authors</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">Most Successful</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end: Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-14.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">New Users</a>
                    <span class="text-white opacity-25 fw-semibold fs-7 my-1">HTML, CSS. jQuery</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center mb-7">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-15.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Active Customers</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Awesome Users</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
                <!--begin::Item-->
                <div class="d-flex flex-wrap align-items-center">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-40px symbol-2by3 me-4">
                    <img src="/assets/media/stock/600x400/img-16.jpg" alt="" class="mw-100" />
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div class="d-flex flex-column flex-grow-1 my-lg-0 my-2 pe-3">
                    <a href="#" class="text-white fw-bold text-hover-primary fs-6">Bose QC 35 II</a>
                    <span class="text-white opacity-25 fs-7 fw-semibold my-1">Best Customers</span>
                  </div>
                  <!--end::Title-->
                </div>
                <!--end::Item-->
              </div>
              <!--end: Card Body-->
            </div>
            <!--end::Card-->
          </div>
        </div>
      </div>
    </div>
    <!--end::Sidebar Content-->
    <!--begin::Sidebar footer-->
    <div id="kt_sidebar_footer" class="py-2 px-5 pb-md-6 text-center">
      <a href="../dist/dashboards/extended.html" class="btn btn-color-white bg-white bg-opacity-10 bg-hover-opacity-20 fw-bold w-100">View Extended Layout</a>
    </div>
    <!--end::Sidebar footer-->
  </div>
  <!--end::Sidebar Content-->
</div>
<!--end::Sidebar-->


<!--begin::Engage drawers-->
<!--begin::Exolore drawer-->
<div id="kt_explore" class="explore bg-body" data-kt-drawer="true" data-kt-drawer-name="explore" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '440px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_explore_toggle" data-kt-drawer-close="#kt_explore_close">
  <!--begin::Card-->
  <div class="card shadow-none rounded-0 w-100">
    <!--begin::Header-->
    <div class="card-header" id="kt_explore_header">
      <h5 class="card-title fw-semibold text-gray-600">Purchase Start HTML Pro</h5>
      <div class="card-toolbar">
        <button type="button" class="btn btn-sm btn-icon explore-btn-dismiss me-n5" id="kt_explore_close">
          <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
          <span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
          <!--end::Svg Icon-->
        </button>
      </div>
    </div>
    <!--end::Header-->
    <!--begin::Body-->
    <div class="card-body" id="kt_explore_body">
      <!--begin::Content-->
      <div id="kt_explore_scroll" class="scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_explore_body" data-kt-scroll-dependencies="#kt_explore_header, #kt_explore_footer" data-kt-scroll-offset="5px">
        <!--begin::License-->
        <div class="rounded border border-dashed border-gray-300 py-6 px-8 mb-5">
          <!--begin::Heading-->
          <div class="d-flex flex-stack mb-5">
            <!--begin::Price-->
            <h3 class="fs-3 fw-bold mb-0">All-in License</h3>
            <!--end::Price-->
          </div>
          <!--end::Heading-->
          <!--begin::Description-->
          <div class="fs-5 fw-semibold mb-7">
            <span class="text-gray-500">Unlimited End Products and SaaS sites with paying users.</span>
            <a class="explore-link" href="https://keenthemes.com/licensing">License Terms</a>
          </div>
          <!--end::Description-->
          <!--begin::Purchase-->
          <div class="mb-7">
            <a href="https://keenthemes.com/products/start-html-pro" class="btn btn-lg explore-btn-primary w-100">Buy Now</a>
          </div>
          <!--end::Purchase-->
          <!--begin::Payment info-->
          <div class="d-flex flex-column flex-center mb-3">
            <!--begin::Heading-->
            <div class="mb-3 text-gray-500 fw-semibold fs-6">Secured Payment by
              <a href="https://www.2checkout.com/" target="_black" class="fw-bold text-dark explore-link-hover me-1">2Checkout</a>with:</div>
            <!--end::Heading-->
            <!--begin::Payment methods-->
            <div class="mb-2">
              <img src="/assets/media/svg/payment-methods/paypal.svg" alt="" class="h-30px me-3 rounded-1" />
              <img src="/assets/media/svg/payment-methods/visa.svg" alt="" class="h-30px me-3 rounded-1" />
              <img src="/assets/media/svg/payment-methods/mastercard.svg" alt="" class="h-30px me-3 rounded-1" />
              <img src="/assets/media/svg/payment-methods/americanexpress.svg" alt="" class="h-30px rounded-1" />
            </div>
            <!--end::Payment methods-->
            <!--begin::Notice-->
            <div class="text-gray-400 fs-7">100% money back guarantee!</div>
            <!--end::Notice-->
          </div>
          <!--end::Payment info-->
        </div>
        <!--end::Licenses-->
        <!--begin::Related Products-->
        <div class="pt-15 mb-0">
          <!--begin::Heading-->
          <div class="d-flex flex-stack mb-5">
            <!--begin::Title-->
            <h3 class="fw-bold text-dark me-2 mb-0">Related Products</h3>
            <!--end::Title-->
            <!--begin::Link-->
            <a href="https://keenthemes.com" target="_black" class="fs-6 fw-semibold explore-link">All Products</a>
            <!--end::Link-->
          </div>
          <!--end::Heading-->
          <!--begin::Products-->
          <div class="mb-0">
            <!--begin::Product-->
            <a href="https://keenthemes.com/products/start-html-pro" class="btn btn-flex explore-btn-outline w-100 flex-stack active px-4 mb-4">
              <!--begin::Info-->
              <div class="d-flex align-items-center me-1">
                <img src="/assets/media/framework-logos/Html5.png" alt="" class="h-30px me-3" />
                <div class="d-flex flex-column align-items-start">
                  <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start HTML Pro</h3>
                  <div class="text-gray-400 fs-7 fw-semibold">HTML5, CSS3, JS, Bootstrap 5</div>
                </div>
              </div>
              <!--end::Info-->
              <!--begin::Label-->
              <span class="badge badge-inline explore-label-pro py-2">Pro</span>
              <!--end::Label-->
            </a>
            <!--end::Product-->
            <!--begin::Product-->
            <a href="https://keenthemes.com/products/start-vue-pro" class="btn btn-flex explore-btn-outline w-100 flex-stack px-4 mb-4">
              <!--begin::Info-->
              <div class="d-flex align-items-center me-1">
                <img src="/assets/media/framework-logos/VueJS.png" alt="" class="h-30px me-3" />
                <div class="d-flex flex-column align-items-start">
                  <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start Vue Pro</h3>
                  <div class="text-gray-400 fs-7 fw-semibold">VueJS 3, Typescript, Bootstrap 5</div>
                </div>
              </div>
              <!--end::Info-->
              <!--begin::Label-->
              <span class="badge badge-inline explore-label-pro py-2">Pro</span>
              <!--end::Label-->
            </a>
            <!--end::Product-->
            <!--begin::Product-->
            <a href="https://keenthemes.com/products/start-react-pro" class="btn btn-flex explore-btn-outline w-100 flex-stack px-4 mb-4">
              <!--begin::Info-->
              <div class="d-flex align-items-center me-1">
                <img src="/assets/media/framework-logos/React.png" alt="" class="h-30px me-3" />
                <div class="d-flex flex-column align-items-start">
                  <h3 class="text-gray-800 fs-6 fw-semibold mb-0">Start React Pro</h3>
                  <div class="text-gray-400 fs-7 fw-semibold">React, Typescript, Bootstrap 5</div>
                </div>
              </div>
              <!--end::Info-->
              <!--begin::Label-->
              <span class="badge badge-inline explore-label-pro py-2">Pro</span>
              <!--end::Label-->
            </a>
            <!--end::Product-->
          </div>
          <!--end::Products-->
        </div>
        <!--end::Related Products-->
      </div>
      <!--end::Content-->
    </div>
    <!--end::Body-->
  </div>
  <!--end::Card-->
</div>
<!--end::Exolore drawer-->
<!--begin::Help drawer-->
<div id="kt_help" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="help" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'350px', 'md': '525px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_help_toggle" data-kt-drawer-close="#kt_help_close">
  <!--begin::Card-->
  <div class="card shadow-none rounded-0 w-100">
    <!--begin::Header-->
    <div class="card-header" id="kt_help_header">
      <h5 class="card-title fw-semibold text-gray-600">Learn & Get Inspired</h5>
      <div class="card-toolbar">
        <button type="button" class="btn btn-sm btn-icon explore-btn-dismiss me-n5" id="kt_help_close">
          <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
          <span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
          <!--end::Svg Icon-->
        </button>
      </div>
    </div>
    <!--end::Header-->
    <!--begin::Body-->
    <div class="card-body" id="kt_help_body">
      <!--begin::Content-->
      <div id="kt_help_scroll" class="hover-scroll-overlay-y" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_help_body" data-kt-scroll-dependencies="#kt_help_header" data-kt-scroll-offset="5px">
        <!--begin::Support-->
        <div class="rounded border border-dashed border-gray-300 p-6 p-lg-8 mb-10">
          <!--begin::Heading-->
          <h2 class="fw-bold mb-5">Support at
            <a href="https://devs.keenthemes.com" class="">devs.keenthemes.com</a></h2>
          <!--end::Heading-->
          <!--begin::Description-->
          <div class="fs-5 fw-semibold mb-5">
            <span class="text-gray-500">Join our developers community to find answer to your question and help others.</span>
            <a class="explore-link d-none" href="https://keenthemes.com/licensing">FAQs</a>
          </div>
          <!--end::Description-->
          <!--begin::Link-->
          <a href="https://devs.keenthemes.com" class="btn btn-lg explore-btn-primary w-100">Get Support</a>
          <!--end::Link-->
        </div>
        <!--end::Support-->
        <!--begin::Link-->
        <a href="https://preview.keenthemes.com/html/start-html-pro/docs" class="parent-hover d-flex align-items-center mb-7">
          <!--begin::Icon-->
          <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-warning">
            <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
            <span class="svg-icon svg-icon-warning svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="currentColor" />
										<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Icon-->
          <!--begin::Info-->
          <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column me-2 me-lg-5">
              <!--begin::Title-->
              <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Documentation</div>
              <!--end::Title-->
              <!--begin::Description-->
              <div class="text-muted fw-semibold fs-7 fs-lg-6">From guides and how-tos, to live demos and code examples to get started right away.</div>
              <!--end::Description-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
            <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Info-->
        </a>
        <!--end::Link-->
        <!--begin::Link-->
        <a href="https://preview.keenthemes.com/html/start-html-pro/docs//base/utilities" class="parent-hover d-flex align-items-center mb-7">
          <!--begin::Icon-->
          <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-primary">
            <!--begin::Svg Icon | path: icons/duotune/ecommerce/ecm007.svg-->
            <span class="svg-icon svg-icon-primary svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M21 9V11C21 11.6 20.6 12 20 12H14V8H20C20.6 8 21 8.4 21 9ZM10 8H4C3.4 8 3 8.4 3 9V11C3 11.6 3.4 12 4 12H10V8Z" fill="currentColor" />
										<path d="M15 2C13.3 2 12 3.3 12 5V8H15C16.7 8 18 6.7 18 5C18 3.3 16.7 2 15 2Z" fill="currentColor" />
										<path opacity="0.3" d="M9 2C10.7 2 12 3.3 12 5V8H9C7.3 8 6 6.7 6 5C6 3.3 7.3 2 9 2ZM4 12V21C4 21.6 4.4 22 5 22H10V12H4ZM20 12V21C20 21.6 19.6 22 19 22H14V12H20Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Icon-->
          <!--begin::Info-->
          <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column me-2 me-lg-5">
              <!--begin::Title-->
              <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Plugins & Components</div>
              <!--end::Title-->
              <!--begin::Description-->
              <div class="text-muted fw-semibold fs-7 fs-lg-6">Check out our 300+ in-house components and customized 3rd-party plugins.</div>
              <!--end::Description-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
            <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Info-->
        </a>
        <!--end::Link-->
        <!--begin::Link-->
        <a href="https://preview.keenthemes.com/start-html-pro/layout-builder.html" class="parent-hover d-flex align-items-center mb-7">
          <!--begin::Icon-->
          <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-info">
            <!--begin::Svg Icon | path: icons/duotune/art/art006.svg-->
            <span class="svg-icon svg-icon-info svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.3" d="M22 19V17C22 16.4 21.6 16 21 16H8V3C8 2.4 7.6 2 7 2H5C4.4 2 4 2.4 4 3V19C4 19.6 4.4 20 5 20H21C21.6 20 22 19.6 22 19Z" fill="currentColor" />
										<path d="M20 5V21C20 21.6 19.6 22 19 22H17C16.4 22 16 21.6 16 21V8H8V4H19C19.6 4 20 4.4 20 5ZM3 8H4V4H3C2.4 4 2 4.4 2 5V7C2 7.6 2.4 8 3 8Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Icon-->
          <!--begin::Info-->
          <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column me-2 me-lg-5">
              <!--begin::Title-->
              <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">Layout Builder</div>
              <!--end::Title-->
              <!--begin::Description-->
              <div class="text-muted fw-semibold fs-7 fs-lg-6">Build your layout, preview it and export the HTML for server side integration.</div>
              <!--end::Description-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
            <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Info-->
        </a>
        <!--end::Link-->
        <!--begin::Link-->
        <a href="https://preview.keenthemes.com/html/start-html-pro/docs/getting-started/changelog" class="parent-hover d-flex align-items-center mb-7">
          <!--begin::Icon-->
          <div class="d-flex flex-center w-50px h-50px w-lg-75px h-lg-75px flex-shrink-0 rounded bg-light-danger">
            <!--begin::Svg Icon | path: icons/duotune/electronics/elc009.svg-->
            <span class="svg-icon svg-icon-danger svg-icon-2x svg-icon-lg-3x">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M13 9V8C13 7.4 13.4 7 14 7H15C16.7 7 18 5.7 18 4V3C18 2.4 17.6 2 17 2C16.4 2 16 2.4 16 3V4C16 4.6 15.6 5 15 5H14C12.3 5 11 6.3 11 8V9H13Z" fill="currentColor" />
										<path opacity="0.3" d="M21 22H3C2.4 22 2 21.6 2 21V10C2 9.4 2.4 9 3 9H21C21.6 9 22 9.4 22 10V21C22 21.6 21.6 22 21 22ZM5 12C4.4 12 4 12.4 4 13C4 13.6 4.4 14 5 14C5.6 14 6 13.6 6 13C6 12.4 5.6 12 5 12ZM8 12C7.4 12 7 12.4 7 13C7 13.6 7.4 14 8 14C8.6 14 9 13.6 9 13C9 12.4 8.6 12 8 12ZM11 12C10.4 12 10 12.4 10 13C10 13.6 10.4 14 11 14C11.6 14 12 13.6 12 13C12 12.4 11.6 12 11 12ZM14 12C13.4 12 13 12.4 13 13C13 13.6 13.4 14 14 14C14.6 14 15 13.6 15 13C15 12.4 14.6 12 14 12ZM9 15C8.4 15 8 15.4 8 16C8 16.6 8.4 17 9 17C9.6 17 10 16.6 10 16C10 15.4 9.6 15 9 15ZM12 15C11.4 15 11 15.4 11 16C11 16.6 11.4 17 12 17C12.6 17 13 16.6 13 16C13 15.4 12.6 15 12 15ZM15 15C14.4 15 14 15.4 14 16C14 16.6 14.4 17 15 17C15.6 17 16 16.6 16 16C16 15.4 15.6 15 15 15ZM19 18C18.4 18 18 18.4 18 19C18 19.6 18.4 20 19 20C19.6 20 20 19.6 20 19C20 18.4 19.6 18 19 18ZM7 19C7 18.4 6.6 18 6 18H5C4.4 18 4 18.4 4 19C4 19.6 4.4 20 5 20H6C6.6 20 7 19.6 7 19ZM7 16C7 15.4 6.6 15 6 15H5C4.4 15 4 15.4 4 16C4 16.6 4.4 17 5 17H6C6.6 17 7 16.6 7 16ZM17 14H19C19.6 14 20 13.6 20 13C20 12.4 19.6 12 19 12H17C16.4 12 16 12.4 16 13C16 13.6 16.4 14 17 14ZM18 17H19C19.6 17 20 16.6 20 16C20 15.4 19.6 15 19 15H18C17.4 15 17 15.4 17 16C17 16.6 17.4 17 18 17ZM17 19C17 18.4 16.6 18 16 18H9C8.4 18 8 18.4 8 19C8 19.6 8.4 20 9 20H16C16.6 20 17 19.6 17 19Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Icon-->
          <!--begin::Info-->
          <div class="d-flex flex-stack flex-grow-1 ms-4 ms-lg-6">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column me-2 me-lg-5">
              <!--begin::Title-->
              <div class="text-dark parent-hover-primary fw-bold fs-6 fs-lg-4 mb-1">What's New ?</div>
              <!--end::Title-->
              <!--begin::Description-->
              <div class="text-muted fw-semibold fs-7 fs-lg-6">Latest features and improvements added with our users feedback in mind.</div>
              <!--end::Description-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
            <span class="svg-icon svg-icon-gray-400 svg-icon-2">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
										<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
									</svg>
								</span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Info-->
        </a>
        <!--end::Link-->
      </div>
      <!--end::Content-->
    </div>
    <!--end::Body-->
  </div>
  <!--end::Card-->
</div>
<!--end::Help drawer-->
<!--end::Engage drawers-->
<!--begin::Engage toolbar-->
<div class="engage-toolbar d-flex position-fixed px-5 fw-bold zindex-2 top-50 end-0 transform-90 mt-5 mt-lg-20 gap-2">
  <!--begin::Exolore drawer toggle-->
  <button id="kt_explore_toggle" class="engage-explore-toggle engage-btn btn shadow-sm fs-6 px-4 rounded-top-0" title="Explore Start HTML Pro" data-bs-custom-class="tooltip-inverse" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-dismiss="click" data-bs-trigger="hover">
    <span id="kt_explore_toggle_label">Explore</span>
  </button>
  <!--end::Exolore drawer toggle-->
  <!--begin::Help drawer toggle-->
  <button id="kt_help_toggle" class="engage-help-toggle btn engage-btn shadow-sm px-5 rounded-top-0" title="Learn & Get Inspired" data-bs-toggle="tooltip" data-bs-custom-class="tooltip-inverse" data-bs-placement="left" data-bs-dismiss="click" data-bs-trigger="hover">Help</button>
  <!--end::Help drawer toggle-->
  <!--begin::Purchase link-->
  <a href="https://keenthemes.com/products/start-html-pro" target="_blank" class="engage-purchase-link btn engage-btn px-5 shadow-sm rounded-top-0">Buy now</a>
  <!--end::Purchase link-->
</div>
<!--end::Engage toolbar-->