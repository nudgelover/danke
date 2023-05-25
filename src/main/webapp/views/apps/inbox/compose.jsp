<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Start
Product Version: 1.1.2
Purchase: https://keenthemes.com/products/start-html-pro
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en" data-bs-theme-mode="light">
	<!--begin::Head-->
	<head><base href="../../"/>
		<title>Start HTML Pro - Bootstrap 5 HTML Multipurpose Admin Dashboard Template by Keenthemes</title>
		<meta charset="utf-8" />
		<meta name="description" content="Check out all the features of the Start admin panel. A large number of templates, components and widgets." />
		<meta name="keywords" content="Start, bootstrap, bootstrap 5, admin themes, free admin themes, bootstrap admin, bootstrap dashboard, html admin theme, html template" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Start HTML Pro - Bootstrap 5 HTML Multipurpose Admin Dashboard Template" />
		<meta property="og:url" content="https://keenthemes.com/products/start-html-pro" />
		<meta property="og:site_name" content="Keenthemes | Start HTML Pro" />
		<link rel="canonical" href="https://preview.keenthemes.com/start-html-pro" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" data-sidebar="on" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled sidebar-enabled">
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Header-->
					<div id="kt_header" class="header" data-kt-sticky="true" data-kt-sticky-name="header" data-kt-sticky-offset="{default: '200px', lg: '300px'}">
						<!--begin::Container-->
						<div class="container-xxl d-flex align-items-stretch justify-content-between">
							<!--begin::Left-->
							<div class="d-flex align-items-center">
								<!--begin::Mega Menu Toggler-->
								<button class="btn btn-icon btn-accent me-2 me-lg-6" id="kt_mega_menu_toggle" data-bs-toggle="modal" data-bs-target="#kt_mega_menu_modal">
									<!--begin::Svg Icon | path: icons/duotune/general/gen059.svg-->
									<span class="svg-icon svg-icon-3">
										<svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect y="6" width="16" height="3" rx="1.5" fill="currentColor" />
											<rect opacity="0.3" y="12" width="8" height="3" rx="1.5" fill="currentColor" />
											<rect opacity="0.3" width="12" height="3" rx="1.5" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</button>
								<!--end::Mega Menu Toggler-->
								<!--begin::Logo-->
								<a href="../dist/index.html">
									<img alt="Logo" src="assets/media/logos/logo-default.svg" class="h-30px" />
								</a>
								<!--end::Logo-->
							</div>
							<!--end::Left-->
							<!--begin::Right-->
							<div class="d-flex align-items-center">
								<!--begin::Search-->
								<button class="btn btn-icon btn-sm btn-active-bg-accent ms-1 ms-lg-6" data-bs-toggle="modal" data-bs-target="#kt_header_search_modal" id="kt_header_search_toggle">
									<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
									<span class="svg-icon svg-icon-1 svg-icon-dark">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor" />
											<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</button>
								<!--end::Search-->
								<!--begin::Message-->
								<button class="btn btn-icon btn-sm btn-active-bg-accent ms-1 ms-lg-6" id="kt_drawer_chat_toggle">
									<!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
									<span class="svg-icon svg-icon-1 svg-icon-dark">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path opacity="0.3" d="M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z" fill="currentColor" />
											<path d="M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</button>
								<!--end::Message-->
								<!--begin::User-->
								<div class="ms-1 ms-lg-6">
									<!--begin::Toggle-->
									<div class="btn btn-icon btn-sm btn-active-bg-accent" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" id="kt_header_user_menu_toggle">
										<!--begin::Svg Icon | path: icons/duotune/communication/com013.svg-->
										<span class="svg-icon svg-icon-1 svg-icon-dark">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M6.28548 15.0861C7.34369 13.1814 9.35142 12 11.5304 12H12.4696C14.6486 12 16.6563 13.1814 17.7145 15.0861L19.3493 18.0287C20.0899 19.3618 19.1259 21 17.601 21H6.39903C4.87406 21 3.91012 19.3618 4.65071 18.0287L6.28548 15.0861Z" fill="currentColor" />
												<rect opacity="0.3" x="8" y="3" width="8" height="8" rx="4" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
									<!--begin::Menu-->
									<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold w-300px" data-kt-menu="true">
										<div class="menu-content fw-semibold d-flex align-items-center bgi-no-repeat bgi-position-y-top rounded-top" style="background-image:url('assets/media//misc/dropdown-header-bg.jpg')">
											<div class="symbol symbol-45px mx-5 py-5">
												<span class="symbol-label bg-primary align-items-end">
													<img alt="Logo" src="assets/media/svg/avatars/001-boy.svg" class="mh-35px" />
												</span>
											</div>
											<div class="">
												<span class="text-white fw-bold fs-4">Hello, James</span>
												<span class="text-white fw-semibold fs-7 d-block">CRM Product Designer</span>
											</div>
										</div>
										<!--begin::Row-->
										<div class="row row-cols-2 g-0">
											<a href="../dist/profile/overview.html" class="border-bottom border-end text-center py-10 btn btn-active-color-primary rounded-0">
												<!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
												<span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<rect x="2" y="2" width="9" height="9" rx="2" fill="currentColor" />
														<rect opacity="0.3" x="13" y="2" width="9" height="9" rx="2" fill="currentColor" />
														<rect opacity="0.3" x="13" y="13" width="9" height="9" rx="2" fill="currentColor" />
														<rect opacity="0.3" x="2" y="13" width="9" height="9" rx="2" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
												<span class="fw-bold fs-6 d-block pt-3">My Profile</span>
											</a>
											<a href="../dist/profile/account.html" class="col border-bottom text-center py-10 btn btn-active-color-primary rounded-0">
												<!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
												<span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="currentColor" />
														<path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
												<span class="fw-bold fs-6 d-block pt-3">Settings</span>
											</a>
											<a href="../dist/profile/settings.html" class="col text-center border-end py-10 btn btn-active-color-primary rounded-0">
												<!--begin::Svg Icon | path: icons/duotune/finance/fin009.svg-->
												<span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M15.8 11.4H6C5.4 11.4 5 11 5 10.4C5 9.80002 5.4 9.40002 6 9.40002H15.8C16.4 9.40002 16.8 9.80002 16.8 10.4C16.8 11 16.3 11.4 15.8 11.4ZM15.7 13.7999C15.7 13.1999 15.3 12.7999 14.7 12.7999H6C5.4 12.7999 5 13.1999 5 13.7999C5 14.3999 5.4 14.7999 6 14.7999H14.8C15.3 14.7999 15.7 14.2999 15.7 13.7999Z" fill="currentColor" />
														<path d="M18.8 15.5C18.9 15.7 19 15.9 19.1 16.1C19.2 16.7 18.7 17.2 18.4 17.6C17.9 18.1 17.3 18.4999 16.6 18.7999C15.9 19.0999 15 19.2999 14.1 19.2999C13.4 19.2999 12.7 19.2 12.1 19.1C11.5 19 11 18.7 10.5 18.5C10 18.2 9.60001 17.7999 9.20001 17.2999C8.80001 16.8999 8.49999 16.3999 8.29999 15.7999C8.09999 15.1999 7.80001 14.7 7.70001 14.1C7.60001 13.5 7.5 12.8 7.5 12.2C7.5 11.1 7.7 10.1 8 9.19995C8.3 8.29995 8.79999 7.60002 9.39999 6.90002C9.99999 6.30002 10.7 5.8 11.5 5.5C12.3 5.2 13.2 5 14.1 5C15.2 5 16.2 5.19995 17.1 5.69995C17.8 6.09995 18.7 6.6 18.8 7.5C18.8 7.9 18.6 8.29998 18.3 8.59998C18.2 8.69998 18.1 8.69993 18 8.79993C17.7 8.89993 17.4 8.79995 17.2 8.69995C16.7 8.49995 16.5 7.99995 16 7.69995C15.5 7.39995 14.9 7.19995 14.2 7.19995C13.1 7.19995 12.1 7.6 11.5 8.5C10.9 9.4 10.5 10.6 10.5 12.2C10.5 13.3 10.7 14.2 11 14.9C11.3 15.6 11.7 16.1 12.3 16.5C12.9 16.9 13.5 17 14.2 17C15 17 15.7 16.8 16.2 16.4C16.8 16 17.2 15.2 17.9 15.1C18 15 18.5 15.2 18.8 15.5Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
												<span class="fw-bold fs-6 d-block pt-3">Subscriptions</span>
											</a>
											<a href="../dist/general/login.html" class="col text-center py-10 btn btn-active-color-primary rounded-0">
												<!--begin::Svg Icon | path: icons/duotune/arrows/arr077.svg-->
												<span class="svg-icon svg-icon-3x me-n1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<rect opacity="0.3" x="4" y="11" width="12" height="2" rx="1" fill="currentColor" />
														<path d="M5.86875 11.6927L7.62435 10.2297C8.09457 9.83785 8.12683 9.12683 7.69401 8.69401C7.3043 8.3043 6.67836 8.28591 6.26643 8.65206L3.34084 11.2526C2.89332 11.6504 2.89332 12.3496 3.34084 12.7474L6.26643 15.3479C6.67836 15.7141 7.3043 15.6957 7.69401 15.306C8.12683 14.8732 8.09458 14.1621 7.62435 13.7703L5.86875 12.3073C5.67684 12.1474 5.67684 11.8526 5.86875 11.6927Z" fill="currentColor" />
														<path d="M8 5V6C8 6.55228 8.44772 7 9 7C9.55228 7 10 6.55228 10 6C10 5.44772 10.4477 5 11 5H18C18.5523 5 19 5.44772 19 6V18C19 18.5523 18.5523 19 18 19H11C10.4477 19 10 18.5523 10 18C10 17.4477 9.55228 17 9 17C8.44772 17 8 17.4477 8 18V19C8 20.1046 8.89543 21 10 21H19C20.1046 21 21 20.1046 21 19V5C21 3.89543 20.1046 3 19 3H10C8.89543 3 8 3.89543 8 5Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
												<span class="fw-bold fs-6 d-block pt-3">Sign Out</span>
											</a>
										</div>
										<!--end::Row-->
									</div>
									<!--end::Menu-->
								</div>
								<!--end::User-->
								<!--begin::Notifications-->
								<div class="ms-1 ms-lg-6">
									<!--begin::Dropdown-->
									<button class="btn btn-icon btn-sm btn-light-danger fw-bold pulse pulse-danger" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" id="kt_activities_toggle">
										<span class="position-absolute fs-6">3</span>
										<span class="pulse-ring"></span>
									</button>
									<!--begin::Menu-->
									<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded fw-semibold menu-title-gray-800 menu-hover-bg menu-state-title-primary w-250px w-md-300px" data-kt-menu="true">
										<div class="menu-item mx-3">
											<div class="menu-content fs-6 text-dark fw-bold py-6">4 New Notifications</div>
										</div>
										<div class="separator mb-3"></div>
										<div class="menu-item mx-3">
											<a href="#" class="menu-link px-4 py-3">
												<div class="symbol symbol-35px">
													<span class="symbol-label bg-light-info">
														<!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
														<span class="svg-icon svg-icon-3 svg-icon-info">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="currentColor" />
																<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="currentColor" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</span>
												</div>
												<div class="ps-4">
													<span class="menu-title fw-semibold mb-1">New Uer Library Added</span>
													<span class="text-muted fw-semibold d-block fs-7">3 Hours ago</span>
												</div>
											</a>
										</div>
										<div class="menu-item mx-3">
											<a href="#" class="menu-link px-4 py-3">
												<div class="symbol symbol-35px">
													<span class="symbol-label bg-light-warning">
														<!--begin::Svg Icon | path: icons/duotune/communication/com004.svg-->
														<span class="svg-icon svg-icon-3 svg-icon-warning">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path opacity="0.3" d="M14 3V20H2V3C2 2.4 2.4 2 3 2H13C13.6 2 14 2.4 14 3ZM11 13V11C11 9.7 10.2 8.59995 9 8.19995V7C9 6.4 8.6 6 8 6C7.4 6 7 6.4 7 7V8.19995C5.8 8.59995 5 9.7 5 11V13C5 13.6 4.6 14 4 14V15C4 15.6 4.4 16 5 16H11C11.6 16 12 15.6 12 15V14C11.4 14 11 13.6 11 13Z" fill="currentColor" />
																<path d="M2 20H14V21C14 21.6 13.6 22 13 22H3C2.4 22 2 21.6 2 21V20ZM9 3V2H7V3C7 3.6 7.4 4 8 4C8.6 4 9 3.6 9 3ZM6.5 16C6.5 16.8 7.2 17.5 8 17.5C8.8 17.5 9.5 16.8 9.5 16H6.5ZM21.7 12C21.7 11.4 21.3 11 20.7 11H17.6C17 11 16.6 11.4 16.6 12C16.6 12.6 17 13 17.6 13H20.7C21.2 13 21.7 12.6 21.7 12ZM17 8C16.6 8 16.2 7.80002 16.1 7.40002C15.9 6.90002 16.1 6.29998 16.6 6.09998L19.1 5C19.6 4.8 20.2 5 20.4 5.5C20.6 6 20.4 6.60005 19.9 6.80005L17.4 7.90002C17.3 8.00002 17.1 8 17 8ZM19.5 19.1C19.4 19.1 19.2 19.1 19.1 19L16.6 17.9C16.1 17.7 15.9 17.1 16.1 16.6C16.3 16.1 16.9 15.9 17.4 16.1L19.9 17.2C20.4 17.4 20.6 18 20.4 18.5C20.2 18.9 19.9 19.1 19.5 19.1Z" fill="currentColor" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</span>
												</div>
												<div class="ps-4">
													<span class="menu-title fw-semibold mb-1">Clean Microphone</span>
													<span class="text-muted fw-semibold d-block fs-7">5 Hours ago</span>
												</div>
											</a>
										</div>
										<div class="menu-item mx-3">
											<a href="#" class="menu-link px-4 py-3">
												<div class="symbol symbol-35px">
													<span class="symbol-label bg-light-primary">
														<!--begin::Svg Icon | path: icons/duotune/communication/com012.svg-->
														<span class="svg-icon svg-icon-3 svg-icon-primary">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path opacity="0.3" d="M20 3H4C2.89543 3 2 3.89543 2 5V16C2 17.1046 2.89543 18 4 18H4.5C5.05228 18 5.5 18.4477 5.5 19V21.5052C5.5 22.1441 6.21212 22.5253 6.74376 22.1708L11.4885 19.0077C12.4741 18.3506 13.6321 18 14.8167 18H20C21.1046 18 22 17.1046 22 16V5C22 3.89543 21.1046 3 20 3Z" fill="currentColor" />
																<rect x="6" y="12" width="7" height="2" rx="1" fill="currentColor" />
																<rect x="6" y="7" width="12" height="2" rx="1" fill="currentColor" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</span>
												</div>
												<div class="ps-4">
													<span class="menu-title fw-semibold mb-1">Quick Chat Created</span>
													<span class="text-muted fw-semibold d-block fs-7">A Day ago</span>
												</div>
											</a>
										</div>
										<div class="menu-item mx-3">
											<a href="#" class="menu-link px-4 py-3">
												<div class="symbol symbol-35px">
													<span class="symbol-label bg-light-danger">
														<!--begin::Svg Icon | path: icons/duotune/coding/cod008.svg-->
														<span class="svg-icon svg-icon-3 svg-icon-danger">
															<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path d="M11.2166 8.50002L10.5166 7.80007C10.1166 7.40007 10.1166 6.80005 10.5166 6.40005L13.4166 3.50002C15.5166 1.40002 18.9166 1.50005 20.8166 3.90005C22.5166 5.90005 22.2166 8.90007 20.3166 10.8001L17.5166 13.6C17.1166 14 16.5166 14 16.1166 13.6L15.4166 12.9C15.0166 12.5 15.0166 11.9 15.4166 11.5L18.3166 8.6C19.2166 7.7 19.1166 6.30002 18.0166 5.50002C17.2166 4.90002 16.0166 5.10007 15.3166 5.80007L12.4166 8.69997C12.2166 8.89997 11.6166 8.90002 11.2166 8.50002ZM11.2166 15.6L8.51659 18.3001C7.81659 19.0001 6.71658 19.2 5.81658 18.6C4.81658 17.9 4.71659 16.4 5.51659 15.5L8.31658 12.7C8.71658 12.3 8.71658 11.7001 8.31658 11.3001L7.6166 10.6C7.2166 10.2 6.6166 10.2 6.2166 10.6L3.6166 13.2C1.7166 15.1 1.4166 18.1 3.1166 20.1C5.0166 22.4 8.51659 22.5 10.5166 20.5L13.3166 17.7C13.7166 17.3 13.7166 16.7001 13.3166 16.3001L12.6166 15.6C12.3166 15.2 11.6166 15.2 11.2166 15.6Z" fill="currentColor" />
																<path opacity="0.3" d="M5.0166 9L2.81659 8.40002C2.31659 8.30002 2.0166 7.79995 2.1166 7.19995L2.31659 5.90002C2.41659 5.20002 3.21659 4.89995 3.81659 5.19995L6.0166 6.40002C6.4166 6.60002 6.6166 7.09998 6.5166 7.59998L6.31659 8.30005C6.11659 8.80005 5.5166 9.1 5.0166 9ZM8.41659 5.69995H8.6166C9.1166 5.69995 9.5166 5.30005 9.5166 4.80005L9.6166 3.09998C9.6166 2.49998 9.2166 2 8.5166 2H7.81659C7.21659 2 6.71659 2.59995 6.91659 3.19995L7.31659 4.90002C7.41659 5.40002 7.91659 5.69995 8.41659 5.69995ZM14.6166 18.2L15.1166 21.3C15.2166 21.8 15.7166 22.2 16.2166 22L17.6166 21.6C18.1166 21.4 18.4166 20.8 18.1166 20.3L16.7166 17.5C16.5166 17.1 16.1166 16.9 15.7166 17L15.2166 17.1C14.8166 17.3 14.5166 17.7 14.6166 18.2ZM18.4166 16.3L19.8166 17.2C20.2166 17.5 20.8166 17.3 21.0166 16.8L21.3166 15.9C21.5166 15.4 21.1166 14.8 20.5166 14.8H18.8166C18.0166 14.8 17.7166 15.9 18.4166 16.3Z" fill="currentColor" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</span>
												</div>
												<div class="ps-4">
													<span class="menu-title fw-semibold mb-1">32 New Attachements</span>
													<span class="text-muted fw-semibold d-block fs-7">2 Day ago</span>
												</div>
											</a>
										</div>
										<div class="separator mt-3"></div>
										<div class="menu-item mx-2">
											<div class="menu-content py-5">
												<a href="#" class="btn btn-primary fw-bold me-2 px-5">Report</a>
												<a href="#" class="btn btn-light fw-bold px-5">Reset</a>
											</div>
										</div>
									</div>
									<!--end::Menu-->
									<!--end::Dropdown-->
								</div>
								<!--end::Notifications-->
								<!--begin::Aside Toggler-->
								<!--end::Aside Toggler-->
								<!--begin::Sidebar Toggler-->
								<button class="btn btn-icon btn-sm btn-active-bg-accent d-lg-none ms-1 ms-lg-6" id="kt_sidebar_toggler">
									<!--begin::Svg Icon | path: icons/duotune/abstract/abs015.svg-->
									<span class="svg-icon svg-icon-1 svg-icon-dark">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M21 7H3C2.4 7 2 6.6 2 6V4C2 3.4 2.4 3 3 3H21C21.6 3 22 3.4 22 4V6C22 6.6 21.6 7 21 7Z" fill="currentColor" />
											<path opacity="0.3" d="M21 14H3C2.4 14 2 13.6 2 13V11C2 10.4 2.4 10 3 10H21C21.6 10 22 10.4 22 11V13C22 13.6 21.6 14 21 14ZM22 20V18C22 17.4 21.6 17 21 17H3C2.4 17 2 17.4 2 18V20C2 20.6 2.4 21 3 21H21C21.6 21 22 20.6 22 20Z" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</button>
								<!--end::Sidebar Toggler-->
							</div>
							<!--end::Right-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Header-->
					<!--begin::Main-->
					<div class="d-flex flex-column flex-column-fluid">
						<!--begin::toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
									<!--begin::Title-->
									<h3 class="text-dark fw-bold my-1">Compose</h3>
									<!--end::Title-->
								</div>
								<!--end::Info-->
								<!--begin::Nav-->
								<div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
									<a href="../dist/apps/calendar.html" class="btn btn-active-accent fw-bold">Calendar</a>
									<a href="../dist/apps/chat/private.html" class="btn btn-active-accent fw-bold ms-3">Private Chat</a>
									<a href="../dist/apps/chat/group.html" class="btn btn-active-accent fw-bold ms-3">Group Chat</a>
									<a href="../dist/apps/chat/drawer.html" class="btn btn-active-accent fw-bold ms-3">Drawer Chat</a>
									<a href="../dist/apps/inbox.html" class="btn btn-active-accent fw-bold ms-3">Inbox</a>
									<a href="../dist/apps/shop/shop-1.html" class="btn btn-active-accent fw-bold ms-3">Shop 1</a>
									<a href="../dist/apps/shop/shop-2.html" class="btn btn-active-accent fw-bold ms-3">Shop 2</a>
									<a href="../dist/apps/shop/product.html" class="btn btn-active-accent fw-bold ms-3">Shop Product</a>
								</div>
								<!--end::Nav-->
							</div>
						</div>
						<!--end::toolbar-->
						<!--begin::Content-->
						<div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Inbox App - Compose -->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="d-none d-lg-flex flex-column flex-lg-row-auto w-100 w-lg-275px" data-kt-drawer="true" data-kt-drawer-name="inbox-aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_inbox_aside_toggle">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="false" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '100px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="100px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												<!--begin::Button-->
												<a href="../dist/apps/inbox/compose.html" class="btn btn-primary fw-bold w-100 mb-8">New Message</a>
												<!--end::Button-->
												<!--begin::Menu-->
												<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary mb-10">
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Inbox-->
														<span class="menu-link active">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/communication/com010.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M6 8.725C6 8.125 6.4 7.725 7 7.725H14L18 11.725V12.925L22 9.725L12.6 2.225C12.2 1.925 11.7 1.925 11.4 2.225L2 9.725L6 12.925V8.725Z" fill="currentColor" />
																		<path opacity="0.3" d="M22 9.72498V20.725C22 21.325 21.6 21.725 21 21.725H3C2.4 21.725 2 21.325 2 20.725V9.72498L11.4 17.225C11.8 17.525 12.3 17.525 12.6 17.225L22 9.72498ZM15 11.725H18L14 7.72498V10.725C14 11.325 14.4 11.725 15 11.725Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-bold">Inbox</span>
															<span class="badge badge-light-success">3</span>
														</span>
														<!--end::Inbox-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Marked-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/abstract/abs024.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path opacity="0.3" d="M7.16973 20.95C6.26973 21.55 5.16972 20.75 5.46972 19.75L7.36973 14.05L2.46972 10.55C1.56972 9.95005 2.06973 8.55005 3.06973 8.55005H20.8697C21.9697 8.55005 22.3697 9.95005 21.4697 10.55L7.16973 20.95Z" fill="currentColor" />
																		<path d="M11.0697 2.75L7.46973 13.95L16.9697 20.85C17.8697 21.45 18.9697 20.65 18.6697 19.65L13.1697 2.75C12.7697 1.75 11.3697 1.75 11.0697 2.75Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-bold">Marked</span>
														</span>
														<!--end::Marked-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Draft-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/general/gen009.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path opacity="0.3" d="M21 22H14C13.4 22 13 21.6 13 21V3C13 2.4 13.4 2 14 2H21C21.6 2 22 2.4 22 3V21C22 21.6 21.6 22 21 22Z" fill="currentColor" />
																		<path d="M10 22H3C2.4 22 2 21.6 2 21V3C2 2.4 2.4 2 3 2H10C10.6 2 11 2.4 11 3V21C11 21.6 10.6 22 10 22Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-bold">Draft</span>
															<span class="badge badge-light-warning">5</span>
														</span>
														<!--end::Draft-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Sent-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor" />
																		<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-bold">Sent</span>
														</span>
														<!--end::Sent-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item">
														<!--begin::Trash-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="currentColor" />
																		<path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="currentColor" />
																		<path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-bold">Trash</span>
														</span>
														<!--end::Trash-->
													</div>
													<!--end::Menu item-->
												</div>
												<!--end::Menu-->
												<!--begin::Menu-->
												<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary">
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Custom work-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/abstract/abs009.svg-->
																<span class="svg-icon svg-icon-6 svg-icon-danger me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M22 12C22 17.5 17.5 22 12 22C6.5 22 2 17.5 2 12C2 6.5 6.5 2 12 2C17.5 2 22 6.5 22 12ZM12 6C8.7 6 6 8.7 6 12C6 15.3 8.7 18 12 18C15.3 18 18 15.3 18 12C18 8.7 15.3 6 12 6Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-semibold">Custom Work</span>
															<span class="badge badge-light-danger">6</span>
														</span>
														<!--end::Custom work-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Partnership-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/abstract/abs009.svg-->
																<span class="svg-icon svg-icon-6 svg-icon-success me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M22 12C22 17.5 17.5 22 12 22C6.5 22 2 17.5 2 12C2 6.5 6.5 2 12 2C17.5 2 22 6.5 22 12ZM12 6C8.7 6 6 8.7 6 12C6 15.3 8.7 18 12 18C15.3 18 18 15.3 18 12C18 8.7 15.3 6 12 6Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-semibold">Partnership</span>
														</span>
														<!--end::Partnership-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::In progress-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/abstract/abs009.svg-->
																<span class="svg-icon svg-icon-6 svg-icon-info me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M22 12C22 17.5 17.5 22 12 22C6.5 22 2 17.5 2 12C2 6.5 6.5 2 12 2C17.5 2 22 6.5 22 12ZM12 6C8.7 6 6 8.7 6 12C6 15.3 8.7 18 12 18C15.3 18 18 15.3 18 12C18 8.7 15.3 6 12 6Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-semibold">In Progress</span>
														</span>
														<!--end::In progress-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item">
														<!--begin::Add label-->
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/arrows/arr087.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<rect opacity="0.5" x="11" y="18" width="12" height="2" rx="1" transform="rotate(-90 11 18)" fill="currentColor" />
																		<rect x="6" y="11" width="12" height="2" rx="1" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title fw-semibold">Add Label</span>
														</span>
														<!--end::Add label-->
													</div>
													<!--end::Menu item-->
												</div>
												<!--end::Menu-->
											</div>
											<!--end::Aside content-->
										</div>
										<!--end::Sticky aside-->
									</div>
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Card-->
										<div class="card">
											<div class="card-header align-items-center">
												<div class="card-title">
													<h2>Compose Message</h2>
												</div>
											</div>
											<div class="card-body p-0">
												<!--begin::Form-->
												<form id="kt_inbox_compose_form">
													<!--begin::Body-->
													<div class="d-block">
														<!--begin::To-->
														<div class="d-flex align-items-center border-bottom px-8 min-h-50px">
															<!--begin::Label-->
															<div class="text-dark fw-bold w-75px">To:</div>
															<!--end::Label-->
															<!--begin::Input-->
															<input type="text" class="form-control form-control-transparent border-0" name="compose_to" value="" data-kt-inbox-form="tagify" />
															<!--end::Input-->
															<!--begin::CC & BCC buttons-->
															<div class="ms-auto w-75px text-end">
																<span class="text-muted fs-bold cursor-pointer text-hover-primary me-2" data-kt-inbox-form="cc_button">Cc</span>
																<span class="text-muted fs-bold cursor-pointer text-hover-primary" data-kt-inbox-form="bcc_button">Bcc</span>
															</div>
															<!--end::CC & BCC buttons-->
														</div>
														<!--end::To-->
														<!--begin::CC-->
														<div class="d-none align-items-center border-bottom ps-8 pe-5 min-h-50px" data-kt-inbox-form="cc">
															<!--begin::Label-->
															<div class="text-dark fw-bold w-75px">Cc:</div>
															<!--end::Label-->
															<!--begin::Input-->
															<input type="text" class="form-control form-control-transparent border-0" name="compose_cc" value="" data-kt-inbox-form="tagify" />
															<!--end::Input-->
															<!--begin::Close-->
															<span class="btn btn-clean btn-xs btn-icon" data-kt-inbox-form="cc_close">
																<i class="la la-close"></i>
															</span>
															<!--end::Close-->
														</div>
														<!--end::CC-->
														<!--begin::BCC-->
														<div class="d-none align-items-center border-bottom inbox-to-bcc ps-8 pe-5 min-h-50px" data-kt-inbox-form="bcc">
															<!--begin::Label-->
															<div class="text-dark fw-bold w-75px">Bcc:</div>
															<!--end::Label-->
															<!--begin::Input-->
															<input type="text" class="form-control form-control-transparent border-0" name="compose_bcc" value="" data-kt-inbox-form="tagify" />
															<!--end::Input-->
															<!--begin::Close-->
															<span class="btn btn-clean btn-xs btn-icon" data-kt-inbox-form="bcc_close">
																<i class="la la-close"></i>
															</span>
															<!--end::Close-->
														</div>
														<!--end::BCC-->
														<!--begin::Subject-->
														<div class="border-bottom">
															<input class="form-control form-control-transparent border-0 px-8 min-h-45px" name="compose_subject" placeholder="Subject" />
														</div>
														<!--end::Subject-->
														<!--begin::Message-->
														<div id="kt_inbox_form_editor" class="bg-transparent border-0 h-350px px-3"></div>
														<!--end::Message-->
														<!--begin::Attachments-->
														<div class="dropzone dropzone-queue px-8 py-4" id="kt_inbox_reply_attachments" data-kt-inbox-form="dropzone">
															<div class="dropzone-items">
																<div class="dropzone-item" style="display:none">
																	<!--begin::Dropzone filename-->
																	<div class="dropzone-file">
																		<div class="dropzone-filename" title="some_image_file_name.jpg">
																			<span data-dz-name="">some_image_file_name.jpg</span>
																			<strong>(
																			<span data-dz-size="">340kb</span>)</strong>
																		</div>
																		<div class="dropzone-error" data-dz-errormessage=""></div>
																	</div>
																	<!--end::Dropzone filename-->
																	<!--begin::Dropzone progress-->
																	<div class="dropzone-progress">
																		<div class="progress">
																			<div class="progress-bar bg-primary" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0" data-dz-uploadprogress=""></div>
																		</div>
																	</div>
																	<!--end::Dropzone progress-->
																	<!--begin::Dropzone toolbar-->
																	<div class="dropzone-toolbar">
																		<span class="dropzone-delete" data-dz-remove="">
																			<i class="bi bi-x fs-1"></i>
																		</span>
																	</div>
																	<!--end::Dropzone toolbar-->
																</div>
															</div>
														</div>
														<!--end::Attachments-->
													</div>
													<!--end::Body-->
													<!--begin::Footer-->
													<div class="d-flex flex-stack flex-wrap gap-2 py-5 ps-8 pe-5 border-top">
														<!--begin::Actions-->
														<div class="d-flex align-items-center me-3">
															<!--begin::Send-->
															<div class="btn-group me-4">
																<!--begin::Submit-->
																<span class="btn btn-primary fs-bold px-6" data-kt-inbox-form="send">
																	<span class="indicator-label">Send</span>
																	<span class="indicator-progress">Please wait...
																	<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
																</span>
																<!--end::Submit-->
																<!--begin::Send options-->
																<span class="btn btn-primary btn-icon fs-bold" role="button">
																	<span class="btn btn-icon" data-kt-menu-trigger="click" data-kt-menu-placement="top-start">
																		<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
																		<span class="svg-icon svg-icon-2 m-0">
																			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																				<path d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z" fill="currentColor" />
																			</svg>
																		</span>
																		<!--end::Svg Icon-->
																	</span>
																	<!--begin::Menu-->
																	<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-150px py-4" data-kt-menu="true">
																		<!--begin::Menu item-->
																		<div class="menu-item px-3">
																			<a href="#" class="menu-link px-3">Schedule send</a>
																		</div>
																		<!--end::Menu item-->
																		<!--begin::Menu item-->
																		<div class="menu-item px-3">
																			<a href="#" class="menu-link px-3">Save & archive</a>
																		</div>
																		<!--end::Menu item-->
																		<!--begin::Menu item-->
																		<div class="menu-item px-3">
																			<a href="#" class="menu-link px-3">Cancel</a>
																		</div>
																		<!--end::Menu item-->
																	</div>
																	<!--end::Menu-->
																</span>
																<!--end::Send options-->
															</div>
															<!--end::Send-->
															<!--begin::Upload attachement-->
															<span class="btn btn-icon btn-sm btn-clean btn-active-light-primary me-2" id="kt_inbox_reply_attachments_select" data-kt-inbox-form="dropzone_upload">
																<!--begin::Svg Icon | path: icons/duotune/communication/com008.svg-->
																<span class="svg-icon svg-icon-2 m-0">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path opacity="0.3" d="M4.425 20.525C2.525 18.625 2.525 15.525 4.425 13.525L14.825 3.125C16.325 1.625 18.825 1.625 20.425 3.125C20.825 3.525 20.825 4.12502 20.425 4.52502C20.025 4.92502 19.425 4.92502 19.025 4.52502C18.225 3.72502 17.025 3.72502 16.225 4.52502L5.82499 14.925C4.62499 16.125 4.62499 17.925 5.82499 19.125C7.02499 20.325 8.82501 20.325 10.025 19.125L18.425 10.725C18.825 10.325 19.425 10.325 19.825 10.725C20.225 11.125 20.225 11.725 19.825 12.125L11.425 20.525C9.525 22.425 6.425 22.425 4.425 20.525Z" fill="currentColor" />
																		<path d="M9.32499 15.625C8.12499 14.425 8.12499 12.625 9.32499 11.425L14.225 6.52498C14.625 6.12498 15.225 6.12498 15.625 6.52498C16.025 6.92498 16.025 7.525 15.625 7.925L10.725 12.8249C10.325 13.2249 10.325 13.8249 10.725 14.2249C11.125 14.6249 11.725 14.6249 12.125 14.2249L19.125 7.22493C19.525 6.82493 19.725 6.425 19.725 5.925C19.725 5.325 19.525 4.825 19.125 4.425C18.725 4.025 18.725 3.42498 19.125 3.02498C19.525 2.62498 20.125 2.62498 20.525 3.02498C21.325 3.82498 21.725 4.825 21.725 5.925C21.725 6.925 21.325 7.82498 20.525 8.52498L13.525 15.525C12.325 16.725 10.525 16.725 9.32499 15.625Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<!--end::Upload attachement-->
															<!--begin::Pin-->
															<span class="btn btn-icon btn-sm btn-clean btn-active-light-primary">
																<!--begin::Svg Icon | path: icons/duotune/general/gen018.svg-->
																<span class="svg-icon svg-icon-2 m-0">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path opacity="0.3" d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z" fill="currentColor" />
																		<path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<!--end::Pin-->
														</div>
														<!--end::Actions-->
														<!--begin::Toolbar-->
														<div class="d-flex align-items-center">
															<!--begin::More actions-->
															<span class="btn btn-icon btn-sm btn-clean btn-active-light-primary me-2" data-toggle="tooltip" title="More actions">
																<!--begin::Svg Icon | path: icons/duotune/coding/cod001.svg-->
																<span class="svg-icon svg-icon-2">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path opacity="0.3" d="M22.1 11.5V12.6C22.1 13.2 21.7 13.6 21.2 13.7L19.9 13.9C19.7 14.7 19.4 15.5 18.9 16.2L19.7 17.2999C20 17.6999 20 18.3999 19.6 18.7999L18.8 19.6C18.4 20 17.8 20 17.3 19.7L16.2 18.9C15.5 19.3 14.7 19.7 13.9 19.9L13.7 21.2C13.6 21.7 13.1 22.1 12.6 22.1H11.5C10.9 22.1 10.5 21.7 10.4 21.2L10.2 19.9C9.4 19.7 8.6 19.4 7.9 18.9L6.8 19.7C6.4 20 5.7 20 5.3 19.6L4.5 18.7999C4.1 18.3999 4.1 17.7999 4.4 17.2999L5.2 16.2C4.8 15.5 4.4 14.7 4.2 13.9L2.9 13.7C2.4 13.6 2 13.1 2 12.6V11.5C2 10.9 2.4 10.5 2.9 10.4L4.2 10.2C4.4 9.39995 4.7 8.60002 5.2 7.90002L4.4 6.79993C4.1 6.39993 4.1 5.69993 4.5 5.29993L5.3 4.5C5.7 4.1 6.3 4.10002 6.8 4.40002L7.9 5.19995C8.6 4.79995 9.4 4.39995 10.2 4.19995L10.4 2.90002C10.5 2.40002 11 2 11.5 2H12.6C13.2 2 13.6 2.40002 13.7 2.90002L13.9 4.19995C14.7 4.39995 15.5 4.69995 16.2 5.19995L17.3 4.40002C17.7 4.10002 18.4 4.1 18.8 4.5L19.6 5.29993C20 5.69993 20 6.29993 19.7 6.79993L18.9 7.90002C19.3 8.60002 19.7 9.39995 19.9 10.2L21.2 10.4C21.7 10.5 22.1 11 22.1 11.5ZM12.1 8.59998C10.2 8.59998 8.6 10.2 8.6 12.1C8.6 14 10.2 15.6 12.1 15.6C14 15.6 15.6 14 15.6 12.1C15.6 10.2 14 8.59998 12.1 8.59998Z" fill="currentColor" />
																		<path d="M17.1 12.1C17.1 14.9 14.9 17.1 12.1 17.1C9.30001 17.1 7.10001 14.9 7.10001 12.1C7.10001 9.29998 9.30001 7.09998 12.1 7.09998C14.9 7.09998 17.1 9.29998 17.1 12.1ZM12.1 10.1C11 10.1 10.1 11 10.1 12.1C10.1 13.2 11 14.1 12.1 14.1C13.2 14.1 14.1 13.2 14.1 12.1C14.1 11 13.2 10.1 12.1 10.1Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<!--end::More actions-->
															<!--begin::Dismiss reply-->
															<span class="btn btn-icon btn-sm btn-clean btn-active-light-primary" data-inbox="dismiss" data-toggle="tooltip" title="Dismiss reply">
																<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
																<span class="svg-icon svg-icon-2">
																	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="currentColor" />
																		<path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="currentColor" />
																		<path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="currentColor" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<!--end::Dismiss reply-->
														</div>
														<!--end::Toolbar-->
													</div>
													<!--end::Footer-->
												</form>
												<!--end::Form-->
											</div>
										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Inbox App - Compose -->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Content-->
					</div>
					<!--end::Main-->
					<!--begin::Footer-->
					<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
						<!--begin::Container-->
						<div class="container-xxl d-flex flex-column flex-md-row flex-stack">
							<!--begin::Copyright-->
							<div class="text-dark order-2 order-md-1">
								<span class="text-muted fw-semibold me-2">2023&copy;</span>
								<a href="https://keenthemes.com" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
							</div>
							<!--end::Copyright-->
							<!--begin::Menu-->
							<ul class="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
								<li class="menu-item">
									<a href="https://keenthemes.com" target="_blank" class="menu-link px-2">About</a>
								</li>
								<li class="menu-item">
									<a href="https://devs.keenthemes.com" target="_blank" class="menu-link px-2">Support</a>
								</li>
								<li class="menu-item">
									<a href="https://keenthemes.com/products/start-html-pro" target="_blank" class="menu-link px-2">Purchase</a>
								</li>
							</ul>
							<!--end::Menu-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Wrapper-->
				<!--begin::Sidebar-->
				<div id="kt_sidebar" class="sidebar bg-info" data-kt-drawer="true" data-kt-drawer-name="sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '350px': '300px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_sidebar_toggler">
					<!--begin::Sidebar Content-->
					<div class="d-flex flex-column sidebar-body">
						<!--begin::Sidebar Nav-->
						<ul class="sidebar-nav nav nav-tabs pt-15 pb-5 px-5" id="kt_sidebar_tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_1" id="kt_sidebar_tab_1">
									<img alt="" src="assets/media/svg/logo/purple/aven.svg" class="default" />
									<img alt="" src="assets/media/svg/logo/colored/aven.svg" class="active" />
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_2" id="kt_sidebar_tab_2">
									<img alt="" src="assets/media/svg/logo/purple/kanba.svg" class="default" />
									<img alt="" src="assets/media/svg/logo/colored/kanba.svg" class="active" />
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link active" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_3" id="kt_sidebar_tab_3">
									<img alt="" src="assets/media/svg/logo/purple/fox-hub-2.svg" class="default" />
									<img alt="" src="assets/media/svg/logo/colored/fox-hub-2.svg" class="active" />
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_4" id="kt_sidebar_tab_4">
									<img alt="" src="assets/media/svg/logo/purple/tower.svg" class="default" />
									<img alt="" src="assets/media/svg/logo/colored/tower.svg" class="active" />
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#kt_sidebar_tab_pane_5" id="kt_sidebar_tab_5">
									<img alt="" src="assets/media/svg/logo/purple/treva.svg" class="default" />
									<img alt="" src="assets/media/svg/logo/colored/treva.svg" class="active" />
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
														<img src="assets/media/stock/600x400/img-1.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-2.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-3.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-5.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-7.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-8.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-19.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-17.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-10.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-1.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-4.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-8.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-11.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-19.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-9.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-6.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-12.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-13.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-14.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-15.jpg" alt="" class="mw-100" />
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
														<img src="assets/media/stock/600x400/img-16.jpg" alt="" class="mw-100" />
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
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
		<!--begin::Header Search-->
		<div class="modal bg-white fade" id="kt_header_search_modal" aria-hidden="true">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content shadow-none">
					<div class="container w-lg-800px">
						<div class="modal-header d-flex justify-content-end border-0">
							<!--begin::Close-->
							<div class="btn btn-icon btn-sm btn-light-primary ms-2" data-bs-dismiss="modal">
								<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
								<span class="svg-icon svg-icon-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
										<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
							</div>
							<!--end::Close-->
						</div>
						<div class="modal-body">
							<!--begin::Search-->
							<form class="pb-10">
								<input autofocus="" type="text" class="form-control bg-transparent border-0 fs-4x text-center fw-normal" name="query" placeholder="Search..." />
							</form>
							<!--end::Search-->
							<!--begin::Shop Goods-->
							<div class="py-10">
								<h3 class="fw-bold mb-8">Shop Goods</h3>
								<!--begin::Row-->
								<div class="row g-5">
									<div class="col-sm-6">
										<div class="row g-5">
											<div class="col-sm-6">
												<div class="card overlay min-h-125px mb-5 shadow-none">
													<div class="card-body d-flex flex-column p-0">
														<div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded" style="background-image:url('assets/media/stock/600x400/img-17.jpg')"></div>
														<div class="overlay-layer bg-white bg-opacity-50">
															<a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
														</div>
													</div>
												</div>
												<div class="card overlay min-h-125px mb-5 shadow-none">
													<div class="card-body d-flex flex-column p-0">
														<div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded" style="background-image:url('assets/media/stock/600x400/img-1.jpg')"></div>
														<div class="overlay-layer bg-white bg-opacity-50">
															<a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="card card-stretch overlay mb-5 shadow-none min-h-250px">
													<div class="card-body d-flex flex-column p-0">
														<div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded" style="background-image:url('assets/media/stock/600x400/img-23.jpg')"></div>
														<div class="overlay-layer bg-white bg-opacity-50">
															<a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="card card-stretch overlay mb-5 shadow-none min-h-250px">
											<div class="card-body d-flex flex-column p-0">
												<div class="overlay-wrapper flex-grow-1 bgi-no-repeat bgi-size-cover bgi-position-center card-rounded" style="background-image:url('assets/media/stock/600x400/img-11.jpg')"></div>
												<div class="overlay-layer bg-white bg-opacity-50">
													<a href="#" class="btn btn-sm fw-semibold btn-primary">Explore</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--end::Row-->
							</div>
							<!--end::Shop Goods-->
							<!--begin::Framework Users-->
							<div>
								<h3 class="text-dark fw-bold fs-1 mb-6">Framework Users</h3>
								<!--begin::List Widget 4-->
								<div class="card bg-transparent mb-5 shadow-none">
									<!--begin::Body-->
									<div class="card-body pt-2 px-0">
										<div class="table-responsive">
											<table class="table table-borderless align-middle">
												<!--begin::Item-->
												<tr>
													<th class="ps-0 w-55px">
														<!--begin::Symbol-->
														<div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="assets/media/svg/avatars/009-boy-4.svg" class="h-75 align-self-end" alt="" />
															</span>
														</div>
														<!--end::Symbol-->
													</th>
													<td class="ps-0 flex-column min-w-300px">
														<!--begin::Title-->
														<a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Brad Simmons</a>
														<div class="text-muted fw-semibold">Uses: HTML/CSS/JS, Python</div>
														<!--end::Title-->
													</td>
													<td>
														<!--begin::Label-->
														<div class="me-4 me-md-19 text-md-right">
															<div class="text-gray-800 fw-bold fs-6 mb-1">$2,000,000</div>
															<span class="text-muted fw-semibold">Paid</span>
														</div>
														<!--end::Label-->
													</td>
													<td class="text-end pe-0">
														<!--begin::Btn-->
														<a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
															<!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
															<span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
																</svg>
															</span>
															<!--end::Svg Icon-->
														</a>
														<!--end::Btn-->
													</td>
												</tr>
												<!--end::Item-->
												<!--begin::Item-->
												<tr>
													<th class="ps-0">
														<!--begin::Symbol-->
														<div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-danger">
																<img src="assets/media/svg/avatars/006-girl-3.svg" class="h-75 align-self-end" alt="" />
															</span>
														</div>
														<!--end::Symbol-->
													</th>
													<td class="ps-0 flex-column min-w-300px">
														<!--begin::Title-->
														<a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Jessie Clarcson</a>
														<div class="text-muted fw-semibold">Uses: HTML, ReactJS, ASP.NET</div>
														<!--end::Title-->
													</td>
													<td>
														<!--end::Label-->
														<div class="me-4 me-md-19 text-md-right">
															<div class="text-gray-800 fw-bold fs-6 mb-1">$1,200,000</div>
															<span class="text-muted fw-semibold">Paid</span>
														</div>
														<!--end::Label-->
													</td>
													<td class="text-end pe-0">
														<!--begin::Btn-->
														<a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
															<!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
															<span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
																</svg>
															</span>
															<!--end::Svg Icon-->
														</a>
														<!--end::Btn-->
													</td>
												</tr>
												<!--end::Item-->
												<!--begin::Item-->
												<tr>
													<th class="ps-0">
														<!--begin::Symbol-->
														<div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-success">
																<img src="assets/media/svg/avatars/011-boy-5.svg" class="h-75 align-self-end" alt="" />
															</span>
														</div>
														<!--end::Symbol-->
													</th>
													<td class="ps-0 flex-column min-w-300px">
														<!--begin::Title-->
														<a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Lebron Wayde</a>
														<div class="text-muted fw-semibold">Uses: HTML. Laravel Framework</div>
														<!--end::Title-->
													</td>
													<td>
														<!--end::Label-->
														<div class="me-4 me-md-19 text-md-right">
															<div class="text-gray-800 fw-bold fs-6 mb-1">$3,400,000</div>
															<span class="text-muted fw-semibold">Paid</span>
														</div>
														<!--end::Label-->
													</td>
													<td class="text-end pe-0">
														<!--begin::Btn-->
														<a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
															<!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
															<span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
																</svg>
															</span>
															<!--end::Svg Icon-->
														</a>
														<!--end::Btn-->
													</td>
												</tr>
												<!--end::Item-->
												<!--begin::Item-->
												<tr>
													<th class="ps-0">
														<!--begin::Symbol-->
														<div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-warning">
																<img src="assets/media/svg/avatars/015-boy-6.svg" class="h-75 align-self-end" alt="" />
															</span>
														</div>
														<!--end::Symbol-->
													</th>
													<td class="ps-0 flex-column min-w-300px">
														<!--begin::Title-->
														<a href="#" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">Kevin Leonard</a>
														<div class="text-muted fw-semibold">Uses: VueJS, Laravel Framework</div>
														<!--end::Title-->
													</td>
													<td>
														<!--end::Label-->
														<div class="me-4 me-md-19 text-md-right">
															<div class="text-gray-800 fw-bold fs-6 mb-1">$35,600,000</div>
															<span class="text-muted fw-semibold">Paid</span>
														</div>
														<!--end::Label-->
													</td>
													<td class="text-end pe-0">
														<!--begin::Btn-->
														<a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
															<!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
															<span class="svg-icon svg-icon-4">
																<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
																	<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
																</svg>
															</span>
															<!--end::Svg Icon-->
														</a>
														<!--end::Btn-->
													</td>
												</tr>
												<!--end::Item-->
											</table>
										</div>
									</div>
									<!--end::Body-->
								</div>
								<!--end::List Widget 4-->
							</div>
							<!--end::Framework Users-->
							<!--begin::Tutorials-->
							<div class="pb-10">
								<h3 class="text-dark fw-bold fs-1 mb-6">Tutorials</h3>
								<!--begin::List Widget 5-->
								<div class="card mb-5 shadow-none">
									<!--begin::Body-->
									<div class="card-body pt-2 px-0">
										<!--begin::Item-->
										<div class="d-flex mb-6">
											<!--begin::Icon-->
											<div class="me-1">
												<!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
												<span class="svg-icon svg-icon-sm svg-icon-primary">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</div>
											<!--end::Icon-->
											<!--begin::Content-->
											<div class="d-flex flex-column">
												<a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">How to Create Your First Project with Start Admin Theme</a>
												<div class="fw-semibold text-muted">But nothing can prepare you for the real thing</div>
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
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</div>
											<!--end::Icon-->
											<!--begin::Content-->
											<div class="d-flex flex-column">
												<a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Start Admin Theme Getting Started & Installation</a>
												<div class="fw-semibold text-muted">Long before you sit down to put digital pen</div>
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
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</div>
											<!--end::Icon-->
											<!--begin::Content-->
											<div class="d-flex flex-column">
												<a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Craft a headline that is both informative and will capture</a>
												<div class="fw-semibold text-muted">But nothing can prepare you for the real thing</div>
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
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</div>
											<!--end::Icon-->
											<!--begin::Content-->
											<div class="d-flex flex-column">
												<a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Write your post, either writing a draft in a single</a>
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
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</div>
											<!--end::Icon-->
											<!--begin::Content-->
											<div class="d-flex flex-column">
												<a href="#" class="fs-6 fw-bold text-hover-primary text-gray-800 mb-2">Use images to enhance your post, improve its flow</a>
												<div class="fw-semibold text-muted">Long before you sit down to put digital pen</div>
											</div>
											<!--end::Content-->
										</div>
										<!--end::Item-->
									</div>
									<!--end::Body-->
								</div>
								<!--end::List Widget 5-->
							</div>
							<!--end::Tutorials-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end::Header Search-->
		<!--begin::Mega Menu-->
		<div class="modal bg-white fade" id="kt_mega_menu_modal" tabindex="-1" aria-hidden="true">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content shadow-none">
					<div class="container">
						<div class="modal-header d-flex flex-stack border-0">
							<div class="d-flex align-items-center">
								<!--begin::Logo-->
								<a href="../dist/index.html">
									<img alt="Logo" src="assets/media/logos/logo-default.svg" class="h-30px" />
								</a>
								<!--end::Logo-->
							</div>
							<!--begin::Close-->
							<div class="btn btn-icon btn-sm btn-light-primary ms-2" data-bs-dismiss="modal">
								<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
								<span class="svg-icon svg-icon-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
										<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
							</div>
							<!--end::Close-->
						</div>
						<div class="modal-body">
							<!--begin::Row-->
							<div class="row py-10 g-5">
								<!--begin::Column-->
								<div class="col-lg-6 pe-lg-25">
									<!--begin::Row-->
									<div class="row">
										<div class="col-sm-4">
											<h3 class="fw-bold mb-5">Dashboards</h3>
											<ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/index.html">Start</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/layouts/extended.html">Extended</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/layouts/light.html">Light</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/layouts/compact.html">Compact</a>
												</li>
											</ul>
										</div>
										<div class="col-sm-4">
											<h3 class="fw-bold mb-5">Apps</h3>
											<ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/calendar.html">Calendar</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/chat/private.html">Private Chat</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/chat/group.html">Group Chat</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/chat/drawer.html">Drawer Chat</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/inbox.html">Inbox</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/shop/shop-1.html">Shop 1</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/shop/shop-2.html">Shop 2</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/apps/shop/product.html">Shop Product</a>
												</li>
											</ul>
										</div>
										<div class="col-sm-4">
											<h3 class="fw-bold mb-5">General</h3>
											<ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/faq.html">FAQ</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/pricing.html">Pricing</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/invoice.html">Invoice</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/login.html">Login</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/wizard.html">Wizard</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/general/error.html">Error</a>
												</li>
											</ul>
										</div>
									</div>
									<!--end::Row-->
									<!--begin::Row-->
									<div class="row">
										<div class="col-sm-4">
											<h3 class="fw-bold mb-5">Profile</h3>
											<ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/profile/overview.html">Overview</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/profile/account.html">Account</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="../dist/profile/settings.html">Settings</a>
												</li>
											</ul>
										</div>
										<div class="col-sm-4">
											<h3 class="fw-bold mb-5">Resources</h3>
											<ul class="menu menu-column menu-fit menu-rounded menu-gray-600 menu-hover-primary menu-active-primary fw-semibold fs-6 mb-10">
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="https://preview.keenthemes.com/html/start-html-pro/docs/base/utilities">Components</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="https://preview.keenthemes.com/html/start-html-pro/docs">Documentation</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="https://preview.keenthemes.com/start-html-pro/layout-builder.html">Layout Builder</a>
												</li>
												<li class="menu-item">
													<a class="menu-link ps-0 py-2" href="https://preview.keenthemes.com/html/start-html-pro/docs/getting-started/changelog">Changelog
													<span class="badge badge-changelog badge-light-danger bg-hover-danger text-hover-white fw-semibold fs-9 px-2 ms-2">v1.1.2</span></a>
												</li>
											</ul>
										</div>
									</div>
									<!--end::Row-->
								</div>
								<!--end::Column-->
								<!--begin::Column-->
								<div class="col-lg-6">
									<h3 class="fw-bold mb-8">Quick Links</h3>
									<!--begin::Row-->
									<div class="row g-5">
										<div class="col-sm-4">
											<a href="#" class="card bg-light-success hoverable min-h-125px shadow-none mb-5">
												<div class="card-body d-flex flex-column flex-center">
													<h3 class="fs-3 mb-2 text-dark fw-bold">Security</h3>
													<p class="mb-0 text-gray-600">$2.99/month</p>
												</div>
											</a>
										</div>
										<div class="col-sm-4">
											<a href="#" class="card bg-light-danger hoverable min-h-125px shadow-none mb-5">
												<div class="card-body d-flex flex-column flex-center text-center">
													<h3 class="fs-3 mb-2 text-dark fw-bold">Demo</h3>
													<p class="mb-0 text-gray-600">Free Version</p>
												</div>
											</a>
										</div>
										<div class="col-sm-4">
											<a href="#" class="card bg-light-warning hoverable min-h-125px shadow-none mb-5">
												<div class="card-body d-flex flex-column flex-center text-center">
													<h3 class="fs-3 mb-2 text-dark text-hover-primary fw-bold">Try Now</h3>
													<p class="mb-0 text-gray-600">Pro Version</p>
												</div>
											</a>
										</div>
									</div>
									<!--end::Row-->
									<!--begin::Row-->
									<div class="row g-5">
										<div class="col-sm-8">
											<a href="#" class="card bg-light-primary hoverable min-h-125px shadow-none mb-5">
												<div class="card-body d-flex flex-column flex-center text-center">
													<h3 class="fs-3 mb-2 text-dark fw-bold">Payment Methods</h3>
													<p class="mb-0 text-gray-600">Credit Cards/Debit Cards, Paypal,
													<br />Transferwise & Others</p>
												</div>
											</a>
											<!--begin::Row-->
											<div class="row g-5">
												<div class="col-sm-6">
													<a class="card bg-light-warning hoverable shadow-none min-h-125px mb-5">
														<div class="card-body d-flex flex-column flex-center text-center">
															<h3 class="fs-3 mb-2 text-dark fw-bold">Support</h3>
															<p class="mb-0 text-gray-600">6 Month Free</p>
														</div>
													</a>
												</div>
												<div class="col-sm-6">
													<a href="#" class="card bg-light-success hoverable shadow-none min-h-125px mb-5">
														<div class="card-body d-flex flex-column flex-center text-center">
															<h3 class="fs-3 mb-2 text-dark fw-bold">Installation</h3>
															<p class="mb-0 text-gray-600">$0.99 Per Machine</p>
														</div>
													</a>
												</div>
											</div>
											<!--end::Row-->
										</div>
										<div class="col-sm-4">
											<a href="#" class="card card-stretch mb-5 bg-light-info hoverable shadow-none min-h-250px">
												<div class="card-body d-flex flex-column p-0">
													<div class="d-flex flex-column flex-grow-1 flex-center text-center px-5 pt-10">
														<h3 class="fs-3 mb-2 text-dark fw-bold">Quick Start</h3>
														<p class="mb-0 text-gray-600">Single Click Import</p>
													</div>
													<div class="min-h-125px bgi-no-repeat bgi-size-contain bgi-position-x-center bgi-position-y-bottom card-rounded-bottom" style="background-image:url('assets/media/illustrations/sigma-1/2.png')"></div>
												</div>
											</a>
										</div>
									</div>
									<!--end::Row-->
								</div>
								<!--end::Column-->
							</div>
							<!--end::Row-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end::Mega Menu-->
		<!--begin::Drawers-->
		<!--begin::Activities drawer-->
		<div id="kt_activities" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="activities" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '900px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_activities_toggle" data-kt-drawer-close="#kt_activities_close">
			<div class="card shadow-none border-0 rounded-0">
				<!--begin::Header-->
				<div class="card-header" id="kt_activities_header">
					<h3 class="card-title fw-bold text-dark">Activity Logs</h3>
					<div class="card-toolbar">
						<button type="button" class="btn btn-sm btn-icon btn-active-light-primary me-n5" id="kt_activities_close">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
							<span class="svg-icon svg-icon-1">
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
				<div class="card-body position-relative" id="kt_activities_body">
					<!--begin::Content-->
					<div id="kt_activities_scroll" class="position-relative scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_activities_body" data-kt-scroll-dependencies="#kt_activities_header, #kt_activities_footer" data-kt-scroll-offset="5px">
						<!--begin::Timeline items-->
						<div class="timeline">
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px me-4">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path opacity="0.3" d="M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z" fill="currentColor" />
												<path d="M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">There are 2 new tasks for you in “AirPlus Mobile App” project:</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Added at 4:23 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Nina Nilson">
												<img src="assets/media/avatars/300-14.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
									<!--begin::Timeline details-->
									<div class="overflow-auto pb-5">
										<!--begin::Record-->
										<div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-750px px-7 py-3 mb-5">
											<!--begin::Title-->
											<a href="../dist/apps/projects/project.html" class="fs-5 text-dark text-hover-primary fw-semibold w-375px min-w-200px">Meeting with customer</a>
											<!--end::Title-->
											<!--begin::Label-->
											<div class="min-w-175px pe-2">
												<span class="badge badge-light text-muted">Application Design</span>
											</div>
											<!--end::Label-->
											<!--begin::Users-->
											<div class="symbol-group symbol-hover flex-nowrap flex-grow-1 min-w-100px pe-2">
												<!--begin::User-->
												<div class="symbol symbol-circle symbol-25px">
													<img src="assets/media/avatars/300-2.jpg" alt="img" />
												</div>
												<!--end::User-->
												<!--begin::User-->
												<div class="symbol symbol-circle symbol-25px">
													<img src="assets/media/avatars/300-14.jpg" alt="img" />
												</div>
												<!--end::User-->
												<!--begin::User-->
												<div class="symbol symbol-circle symbol-25px">
													<div class="symbol-label fs-8 fw-semibold bg-primary text-inverse-primary">A</div>
												</div>
												<!--end::User-->
											</div>
											<!--end::Users-->
											<!--begin::Progress-->
											<div class="min-w-125px pe-2">
												<span class="badge badge-light-primary">In Progress</span>
											</div>
											<!--end::Progress-->
											<!--begin::Action-->
											<a href="../dist/apps/projects/project.html" class="btn btn-sm btn-light btn-active-light-primary">View</a>
											<!--end::Action-->
										</div>
										<!--end::Record-->
										<!--begin::Record-->
										<div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-750px px-7 py-3 mb-0">
											<!--begin::Title-->
											<a href="../dist/apps/projects/project.html" class="fs-5 text-dark text-hover-primary fw-semibold w-375px min-w-200px">Project Delivery Preparation</a>
											<!--end::Title-->
											<!--begin::Label-->
											<div class="min-w-175px">
												<span class="badge badge-light text-muted">CRM System Development</span>
											</div>
											<!--end::Label-->
											<!--begin::Users-->
											<div class="symbol-group symbol-hover flex-nowrap flex-grow-1 min-w-100px">
												<!--begin::User-->
												<div class="symbol symbol-circle symbol-25px">
													<img src="assets/media/avatars/300-20.jpg" alt="img" />
												</div>
												<!--end::User-->
												<!--begin::User-->
												<div class="symbol symbol-circle symbol-25px">
													<div class="symbol-label fs-8 fw-semibold bg-success text-inverse-primary">B</div>
												</div>
												<!--end::User-->
											</div>
											<!--end::Users-->
											<!--begin::Progress-->
											<div class="min-w-125px">
												<span class="badge badge-light-success">Completed</span>
											</div>
											<!--end::Progress-->
											<!--begin::Action-->
											<a href="../dist/apps/projects/project.html" class="btn btn-sm btn-light btn-active-light-primary">View</a>
											<!--end::Action-->
										</div>
										<!--end::Record-->
									</div>
									<!--end::Timeline details-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/communication/com009.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path opacity="0.3" d="M5.78001 21.115L3.28001 21.949C3.10897 22.0059 2.92548 22.0141 2.75004 21.9727C2.57461 21.9312 2.41416 21.8418 2.28669 21.7144C2.15923 21.5869 2.06975 21.4264 2.0283 21.251C1.98685 21.0755 1.99507 20.892 2.05201 20.7209L2.886 18.2209L7.22801 13.879L10.128 16.774L5.78001 21.115Z" fill="currentColor" />
												<path d="M21.7 8.08899L15.911 2.30005C15.8161 2.2049 15.7033 2.12939 15.5792 2.07788C15.455 2.02637 15.3219 1.99988 15.1875 1.99988C15.0531 1.99988 14.92 2.02637 14.7958 2.07788C14.6717 2.12939 14.5589 2.2049 14.464 2.30005L13.74 3.02295C13.548 3.21498 13.4402 3.4754 13.4402 3.74695C13.4402 4.01849 13.548 4.27892 13.74 4.47095L14.464 5.19397L11.303 8.35498C10.1615 7.80702 8.87825 7.62639 7.62985 7.83789C6.38145 8.04939 5.2293 8.64265 4.332 9.53601C4.14026 9.72817 4.03256 9.98855 4.03256 10.26C4.03256 10.5315 4.14026 10.7918 4.332 10.984L13.016 19.667C13.208 19.859 13.4684 19.9668 13.74 19.9668C14.0115 19.9668 14.272 19.859 14.464 19.667C15.3575 18.77 15.9509 17.618 16.1624 16.3698C16.374 15.1215 16.1932 13.8383 15.645 12.697L18.806 9.53601L19.529 10.26C19.721 10.452 19.9814 10.5598 20.253 10.5598C20.5245 10.5598 20.785 10.452 20.977 10.26L21.7 9.53601C21.7952 9.44108 21.8706 9.32825 21.9221 9.2041C21.9737 9.07995 22.0002 8.94691 22.0002 8.8125C22.0002 8.67809 21.9737 8.54505 21.9221 8.4209C21.8706 8.29675 21.7952 8.18392 21.7 8.08899Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n2">
									<!--begin::Timeline heading-->
									<div class="overflow-auto pe-3">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">Invitation for crafting engaging designs that speak human workshop</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Sent at 4:23 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Alan Nilson">
												<img src="assets/media/avatars/300-1.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/coding/cod008.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M11.2166 8.50002L10.5166 7.80007C10.1166 7.40007 10.1166 6.80005 10.5166 6.40005L13.4166 3.50002C15.5166 1.40002 18.9166 1.50005 20.8166 3.90005C22.5166 5.90005 22.2166 8.90007 20.3166 10.8001L17.5166 13.6C17.1166 14 16.5166 14 16.1166 13.6L15.4166 12.9C15.0166 12.5 15.0166 11.9 15.4166 11.5L18.3166 8.6C19.2166 7.7 19.1166 6.30002 18.0166 5.50002C17.2166 4.90002 16.0166 5.10007 15.3166 5.80007L12.4166 8.69997C12.2166 8.89997 11.6166 8.90002 11.2166 8.50002ZM11.2166 15.6L8.51659 18.3001C7.81659 19.0001 6.71658 19.2 5.81658 18.6C4.81658 17.9 4.71659 16.4 5.51659 15.5L8.31658 12.7C8.71658 12.3 8.71658 11.7001 8.31658 11.3001L7.6166 10.6C7.2166 10.2 6.6166 10.2 6.2166 10.6L3.6166 13.2C1.7166 15.1 1.4166 18.1 3.1166 20.1C5.0166 22.4 8.51659 22.5 10.5166 20.5L13.3166 17.7C13.7166 17.3 13.7166 16.7001 13.3166 16.3001L12.6166 15.6C12.3166 15.2 11.6166 15.2 11.2166 15.6Z" fill="currentColor" />
												<path opacity="0.3" d="M5.0166 9L2.81659 8.40002C2.31659 8.30002 2.0166 7.79995 2.1166 7.19995L2.31659 5.90002C2.41659 5.20002 3.21659 4.89995 3.81659 5.19995L6.0166 6.40002C6.4166 6.60002 6.6166 7.09998 6.5166 7.59998L6.31659 8.30005C6.11659 8.80005 5.5166 9.1 5.0166 9ZM8.41659 5.69995H8.6166C9.1166 5.69995 9.5166 5.30005 9.5166 4.80005L9.6166 3.09998C9.6166 2.49998 9.2166 2 8.5166 2H7.81659C7.21659 2 6.71659 2.59995 6.91659 3.19995L7.31659 4.90002C7.41659 5.40002 7.91659 5.69995 8.41659 5.69995ZM14.6166 18.2L15.1166 21.3C15.2166 21.8 15.7166 22.2 16.2166 22L17.6166 21.6C18.1166 21.4 18.4166 20.8 18.1166 20.3L16.7166 17.5C16.5166 17.1 16.1166 16.9 15.7166 17L15.2166 17.1C14.8166 17.3 14.5166 17.7 14.6166 18.2ZM18.4166 16.3L19.8166 17.2C20.2166 17.5 20.8166 17.3 21.0166 16.8L21.3166 15.9C21.5166 15.4 21.1166 14.8 20.5166 14.8H18.8166C18.0166 14.8 17.7166 15.9 18.4166 16.3Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="mb-5 pe-3">
										<!--begin::Title-->
										<a href="#" class="fs-5 fw-semibold text-gray-800 text-hover-primary mb-2">3 New Incoming Project Files:</a>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Sent at 10:30 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Jan Hummer">
												<img src="assets/media/avatars/300-23.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
									<!--begin::Timeline details-->
									<div class="overflow-auto pb-5">
										<div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-700px p-5">
											<!--begin::Item-->
											<div class="d-flex flex-aligns-center pe-10 pe-lg-20">
												<!--begin::Icon-->
												<img alt="" class="w-30px me-3" src="assets/media/svg/files/pdf.svg" />
												<!--end::Icon-->
												<!--begin::Info-->
												<div class="ms-1 fw-semibold">
													<!--begin::Desc-->
													<a href="../dist/apps/projects/project.html" class="fs-6 text-hover-primary fw-bold">Finance KPI App Guidelines</a>
													<!--end::Desc-->
													<!--begin::Number-->
													<div class="text-gray-400">1.9mb</div>
													<!--end::Number-->
												</div>
												<!--begin::Info-->
											</div>
											<!--end::Item-->
											<!--begin::Item-->
											<div class="d-flex flex-aligns-center pe-10 pe-lg-20">
												<!--begin::Icon-->
												<img alt="../dist/apps/projects/project.html" class="w-30px me-3" src="assets/media/svg/files/doc.svg" />
												<!--end::Icon-->
												<!--begin::Info-->
												<div class="ms-1 fw-semibold">
													<!--begin::Desc-->
													<a href="#" class="fs-6 text-hover-primary fw-bold">Client UAT Testing Results</a>
													<!--end::Desc-->
													<!--begin::Number-->
													<div class="text-gray-400">18kb</div>
													<!--end::Number-->
												</div>
												<!--end::Info-->
											</div>
											<!--end::Item-->
											<!--begin::Item-->
											<div class="d-flex flex-aligns-center">
												<!--begin::Icon-->
												<img alt="../dist/apps/projects/project.html" class="w-30px me-3" src="assets/media/svg/files/css.svg" />
												<!--end::Icon-->
												<!--begin::Info-->
												<div class="ms-1 fw-semibold">
													<!--begin::Desc-->
													<a href="#" class="fs-6 text-hover-primary fw-bold">Finance Reports</a>
													<!--end::Desc-->
													<!--begin::Number-->
													<div class="text-gray-400">20mb</div>
													<!--end::Number-->
												</div>
												<!--end::Icon-->
											</div>
											<!--end::Item-->
										</div>
									</div>
									<!--end::Timeline details-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="currentColor" />
												<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">Task
										<a href="#" class="text-primary fw-bold me-1">#45890</a>merged with
										<a href="#" class="text-primary fw-bold me-1">#45890</a>in “Ads Pro Admin Dashboard project:</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Initiated at 4:23 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Nina Nilson">
												<img src="assets/media/avatars/300-14.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor" />
												<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">3 new application design concepts added:</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Created at 4:23 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Marcus Dotson">
												<img src="assets/media/avatars/300-2.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
									<!--begin::Timeline details-->
									<div class="overflow-auto pb-5">
										<div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-700px p-7">
											<!--begin::Item-->
											<div class="overlay me-10">
												<!--begin::Image-->
												<div class="overlay-wrapper">
													<img alt="img" class="rounded w-150px" src="assets/media/stock/600x400/img-29.jpg" />
												</div>
												<!--end::Image-->
												<!--begin::Link-->
												<div class="overlay-layer bg-dark bg-opacity-10 rounded">
													<a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
												</div>
												<!--end::Link-->
											</div>
											<!--end::Item-->
											<!--begin::Item-->
											<div class="overlay me-10">
												<!--begin::Image-->
												<div class="overlay-wrapper">
													<img alt="img" class="rounded w-150px" src="assets/media/stock/600x400/img-31.jpg" />
												</div>
												<!--end::Image-->
												<!--begin::Link-->
												<div class="overlay-layer bg-dark bg-opacity-10 rounded">
													<a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
												</div>
												<!--end::Link-->
											</div>
											<!--end::Item-->
											<!--begin::Item-->
											<div class="overlay">
												<!--begin::Image-->
												<div class="overlay-wrapper">
													<img alt="img" class="rounded w-150px" src="assets/media/stock/600x400/img-40.jpg" />
												</div>
												<!--end::Image-->
												<!--begin::Link-->
												<div class="overlay-layer bg-dark bg-opacity-10 rounded">
													<a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
												</div>
												<!--end::Link-->
											</div>
											<!--end::Item-->
										</div>
									</div>
									<!--end::Timeline details-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/communication/com010.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M6 8.725C6 8.125 6.4 7.725 7 7.725H14L18 11.725V12.925L22 9.725L12.6 2.225C12.2 1.925 11.7 1.925 11.4 2.225L2 9.725L6 12.925V8.725Z" fill="currentColor" />
												<path opacity="0.3" d="M22 9.72498V20.725C22 21.325 21.6 21.725 21 21.725H3C2.4 21.725 2 21.325 2 20.725V9.72498L11.4 17.225C11.8 17.525 12.3 17.525 12.6 17.225L22 9.72498ZM15 11.725H18L14 7.72498V10.725C14 11.325 14.4 11.725 15 11.725Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">New case
										<a href="#" class="text-primary fw-bold me-1">#67890</a>is assigned to you in Multi-platform Database Design project</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="overflow-auto pb-5">
											<!--begin::Wrapper-->
											<div class="d-flex align-items-center mt-1 fs-6">
												<!--begin::Info-->
												<div class="text-muted me-2 fs-7">Added at 4:23 PM by</div>
												<!--end::Info-->
												<!--begin::User-->
												<a href="#" class="text-primary fw-bold me-1">Alice Tan</a>
												<!--end::User-->
											</div>
											<!--end::Wrapper-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor" />
												<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mb-10 mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">You have received a new order:</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Placed at 5:05 AM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="Robert Rich">
												<img src="assets/media/avatars/300-4.jpg" alt="img" />
											</div>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
									<!--begin::Timeline details-->
									<div class="overflow-auto pb-5">
										<!--begin::Notice-->
										<div class="notice d-flex bg-light-primary rounded border-primary border border-dashed min-w-lg-600px flex-shrink-0 p-6">
											<!--begin::Icon-->
											<!--begin::Svg Icon | path: icons/duotune/coding/cod004.svg-->
											<span class="svg-icon svg-icon-2tx svg-icon-primary me-4">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path opacity="0.3" d="M19.0687 17.9688H11.0687C10.4687 17.9688 10.0687 18.3687 10.0687 18.9688V19.9688C10.0687 20.5687 10.4687 20.9688 11.0687 20.9688H19.0687C19.6687 20.9688 20.0687 20.5687 20.0687 19.9688V18.9688C20.0687 18.3687 19.6687 17.9688 19.0687 17.9688Z" fill="currentColor" />
													<path d="M4.06875 17.9688C3.86875 17.9688 3.66874 17.8688 3.46874 17.7688C2.96874 17.4688 2.86875 16.8688 3.16875 16.3688L6.76874 10.9688L3.16875 5.56876C2.86875 5.06876 2.96874 4.46873 3.46874 4.16873C3.96874 3.86873 4.56875 3.96878 4.86875 4.46878L8.86875 10.4688C9.06875 10.7688 9.06875 11.2688 8.86875 11.5688L4.86875 17.5688C4.66875 17.7688 4.36875 17.9688 4.06875 17.9688Z" fill="currentColor" />
												</svg>
											</span>
											<!--end::Svg Icon-->
											<!--end::Icon-->
											<!--begin::Wrapper-->
											<div class="d-flex flex-stack flex-grow-1 flex-wrap flex-md-nowrap">
												<!--begin::Content-->
												<div class="mb-3 mb-md-0 fw-semibold">
													<h4 class="text-gray-900 fw-bold">Database Backup Process Completed!</h4>
													<div class="fs-6 text-gray-700 pe-7">Login into Admin Dashboard to make sure the data integrity is OK</div>
												</div>
												<!--end::Content-->
												<!--begin::Action-->
												<a href="#" class="btn btn-primary px-6 align-self-center text-nowrap">Proceed</a>
												<!--end::Action-->
											</div>
											<!--end::Wrapper-->
										</div>
										<!--end::Notice-->
									</div>
									<!--end::Timeline details-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
							<!--begin::Timeline item-->
							<div class="timeline-item">
								<!--begin::Timeline line-->
								<div class="timeline-line w-40px"></div>
								<!--end::Timeline line-->
								<!--begin::Timeline icon-->
								<div class="timeline-icon symbol symbol-circle symbol-40px">
									<div class="symbol-label bg-light">
										<!--begin::Svg Icon | path: icons/duotune/ecommerce/ecm002.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-gray-500">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M21 10H13V11C13 11.6 12.6 12 12 12C11.4 12 11 11.6 11 11V10H3C2.4 10 2 10.4 2 11V13H22V11C22 10.4 21.6 10 21 10Z" fill="currentColor" />
												<path opacity="0.3" d="M12 12C11.4 12 11 11.6 11 11V3C11 2.4 11.4 2 12 2C12.6 2 13 2.4 13 3V11C13 11.6 12.6 12 12 12Z" fill="currentColor" />
												<path opacity="0.3" d="M18.1 21H5.9C5.4 21 4.9 20.6 4.8 20.1L3 13H21L19.2 20.1C19.1 20.6 18.6 21 18.1 21ZM13 18V15C13 14.4 12.6 14 12 14C11.4 14 11 14.4 11 15V18C11 18.6 11.4 19 12 19C12.6 19 13 18.6 13 18ZM17 18V15C17 14.4 16.6 14 16 14C15.4 14 15 14.4 15 15V18C15 18.6 15.4 19 16 19C16.6 19 17 18.6 17 18ZM9 18V15C9 14.4 8.6 14 8 14C7.4 14 7 14.4 7 15V18C7 18.6 7.4 19 8 19C8.6 19 9 18.6 9 18Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Timeline icon-->
								<!--begin::Timeline content-->
								<div class="timeline-content mt-n1">
									<!--begin::Timeline heading-->
									<div class="pe-3 mb-5">
										<!--begin::Title-->
										<div class="fs-5 fw-semibold mb-2">New order
										<a href="#" class="text-primary fw-bold me-1">#67890</a>is placed for Workshow Planning & Budget Estimation</div>
										<!--end::Title-->
										<!--begin::Description-->
										<div class="d-flex align-items-center mt-1 fs-6">
											<!--begin::Info-->
											<div class="text-muted me-2 fs-7">Placed at 4:23 PM by</div>
											<!--end::Info-->
											<!--begin::User-->
											<a href="#" class="text-primary fw-bold me-1">Jimmy Bold</a>
											<!--end::User-->
										</div>
										<!--end::Description-->
									</div>
									<!--end::Timeline heading-->
								</div>
								<!--end::Timeline content-->
							</div>
							<!--end::Timeline item-->
						</div>
						<!--end::Timeline items-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Body-->
				<!--begin::Footer-->
				<div class="card-footer py-5 text-center" id="kt_activities_footer">
					<a href="../dist/pages/user-profile/activity.html" class="btn btn-bg-body text-primary">View All Activities
					<!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
					<span class="svg-icon svg-icon-3 svg-icon-primary">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="currentColor" />
							<path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="currentColor" />
						</svg>
					</span>
					<!--end::Svg Icon--></a>
				</div>
				<!--end::Footer-->
			</div>
		</div>
		<!--end::Activities drawer-->
		<!--begin::Chat drawer-->
		<div id="kt_drawer_chat" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="chat" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'md': '500px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_drawer_chat_toggle" data-kt-drawer-close="#kt_drawer_chat_close">
			<!--begin::Messenger-->
			<div class="card w-100 rounded-0 border-0" id="kt_drawer_chat_messenger">
				<!--begin::Card header-->
				<div class="card-header pe-5" id="kt_drawer_chat_messenger_header">
					<!--begin::Title-->
					<div class="card-title">
						<!--begin::User-->
						<div class="d-flex justify-content-center flex-column me-3">
							<a href="#" class="fs-4 fw-bold text-gray-900 text-hover-primary me-1 mb-2 lh-1">Brian Cox</a>
							<!--begin::Info-->
							<div class="mb-0 lh-1">
								<span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
								<span class="fs-7 fw-semibold text-muted">Active</span>
							</div>
							<!--end::Info-->
						</div>
						<!--end::User-->
					</div>
					<!--end::Title-->
					<!--begin::Card toolbar-->
					<div class="card-toolbar">
						<!--begin::Menu-->
						<div class="me-2">
							<button class="btn btn-sm btn-icon btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="bi bi-three-dots fs-3"></i>
							</button>
							<!--begin::Menu 3-->
							<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px py-3" data-kt-menu="true">
								<!--begin::Heading-->
								<div class="menu-item px-3">
									<div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Contacts</div>
								</div>
								<!--end::Heading-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="#" class="menu-link px-3" data-bs-toggle="modal" data-bs-target="#kt_modal_users_search">Add Contact</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="#" class="menu-link flex-stack px-3" data-bs-toggle="modal" data-bs-target="#kt_modal_invite_friends">Invite Contacts
									<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="Specify a contact email to send an invitation"></i></a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
									<a href="#" class="menu-link px-3">
										<span class="menu-title">Groups</span>
										<span class="menu-arrow"></span>
									</a>
									<!--begin::Menu sub-->
									<div class="menu-sub menu-sub-dropdown w-175px py-4">
										<!--begin::Menu item-->
										<div class="menu-item px-3">
											<a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="Coming soon">Create Group</a>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-3">
											<a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="Coming soon">Invite Members</a>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-3">
											<a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="Coming soon">Settings</a>
										</div>
										<!--end::Menu item-->
									</div>
									<!--end::Menu sub-->
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3 my-1">
									<a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="Coming soon">Settings</a>
								</div>
								<!--end::Menu item-->
							</div>
							<!--end::Menu 3-->
						</div>
						<!--end::Menu-->
						<!--begin::Close-->
						<div class="btn btn-sm btn-icon btn-active-light-primary" id="kt_drawer_chat_close">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
							<span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</div>
						<!--end::Close-->
					</div>
					<!--end::Card toolbar-->
				</div>
				<!--end::Card header-->
				<!--begin::Card body-->
				<div class="card-body" id="kt_drawer_chat_messenger_body">
					<!--begin::Messages-->
					<div class="scroll-y me-n5 pe-5" data-kt-element="messages" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_drawer_chat_messenger_header, #kt_drawer_chat_messenger_footer" data-kt-scroll-wrappers="#kt_drawer_chat_messenger_body" data-kt-scroll-offset="0px">
						<!--begin::Message(in)-->
						<div class="d-flex justify-content-start mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-start">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
									</div>
									<!--end::Avatar-->
									<!--begin::Details-->
									<div class="ms-3">
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">Brian Cox</a>
										<span class="text-muted fs-7 mb-1">2 mins</span>
									</div>
									<!--end::Details-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">How likely are you to recommend our company to your friends and family ?</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(in)-->
						<!--begin::Message(out)-->
						<div class="d-flex justify-content-end mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-end">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Details-->
									<div class="me-3">
										<span class="text-muted fs-7 mb-1">5 mins</span>
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">You</a>
									</div>
									<!--end::Details-->
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
									</div>
									<!--end::Avatar-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end" data-kt-element="message-text">Hey there, we’re just writing to let you know that you’ve been subscribed to a repository on GitHub.</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(out)-->
						<!--begin::Message(in)-->
						<div class="d-flex justify-content-start mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-start">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
									</div>
									<!--end::Avatar-->
									<!--begin::Details-->
									<div class="ms-3">
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">Brian Cox</a>
										<span class="text-muted fs-7 mb-1">1 Hour</span>
									</div>
									<!--end::Details-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">Ok, Understood!</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(in)-->
						<!--begin::Message(out)-->
						<div class="d-flex justify-content-end mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-end">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Details-->
									<div class="me-3">
										<span class="text-muted fs-7 mb-1">2 Hours</span>
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">You</a>
									</div>
									<!--end::Details-->
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
									</div>
									<!--end::Avatar-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end" data-kt-element="message-text">You’ll receive notifications for all issues, pull requests!</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(out)-->
						<!--begin::Message(in)-->
						<div class="d-flex justify-content-start mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-start">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
									</div>
									<!--end::Avatar-->
									<!--begin::Details-->
									<div class="ms-3">
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">Brian Cox</a>
										<span class="text-muted fs-7 mb-1">3 Hours</span>
									</div>
									<!--end::Details-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">You can unwatch this repository immediately by clicking here:
								<a href="https://keenthemes.com">Keenthemes.com</a></div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(in)-->
						<!--begin::Message(out)-->
						<div class="d-flex justify-content-end mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-end">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Details-->
									<div class="me-3">
										<span class="text-muted fs-7 mb-1">4 Hours</span>
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">You</a>
									</div>
									<!--end::Details-->
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
									</div>
									<!--end::Avatar-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end" data-kt-element="message-text">Most purchased Business courses during this sale!</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(out)-->
						<!--begin::Message(in)-->
						<div class="d-flex justify-content-start mb-10">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-start">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
									</div>
									<!--end::Avatar-->
									<!--begin::Details-->
									<div class="ms-3">
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">Brian Cox</a>
										<span class="text-muted fs-7 mb-1">5 Hours</span>
									</div>
									<!--end::Details-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">Company BBQ to celebrate the last quater achievements and goals. Food and drinks provided</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(in)-->
						<!--begin::Message(template for out)-->
						<div class="d-flex justify-content-end mb-10 d-none" data-kt-element="template-out">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-end">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Details-->
									<div class="me-3">
										<span class="text-muted fs-7 mb-1">Just now</span>
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">You</a>
									</div>
									<!--end::Details-->
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
									</div>
									<!--end::Avatar-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-primary text-dark fw-semibold mw-lg-400px text-end" data-kt-element="message-text"></div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(template for out)-->
						<!--begin::Message(template for in)-->
						<div class="d-flex justify-content-start mb-10 d-none" data-kt-element="template-in">
							<!--begin::Wrapper-->
							<div class="d-flex flex-column align-items-start">
								<!--begin::User-->
								<div class="d-flex align-items-center mb-2">
									<!--begin::Avatar-->
									<div class="symbol symbol-35px symbol-circle">
										<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
									</div>
									<!--end::Avatar-->
									<!--begin::Details-->
									<div class="ms-3">
										<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">Brian Cox</a>
										<span class="text-muted fs-7 mb-1">Just now</span>
									</div>
									<!--end::Details-->
								</div>
								<!--end::User-->
								<!--begin::Text-->
								<div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">Right before vacation season we have the next Big Deal for you.</div>
								<!--end::Text-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Message(template for in)-->
					</div>
					<!--end::Messages-->
				</div>
				<!--end::Card body-->
				<!--begin::Card footer-->
				<div class="card-footer pt-4" id="kt_drawer_chat_messenger_footer">
					<!--begin::Input-->
					<textarea class="form-control form-control-flush mb-3" rows="1" data-kt-element="input" placeholder="Type a message"></textarea>
					<!--end::Input-->
					<!--begin:Toolbar-->
					<div class="d-flex flex-stack">
						<!--begin::Actions-->
						<div class="d-flex align-items-center me-2">
							<button class="btn btn-sm btn-icon btn-active-light-primary me-1" type="button" data-bs-toggle="tooltip" title="Coming soon">
								<i class="bi bi-paperclip fs-3"></i>
							</button>
							<button class="btn btn-sm btn-icon btn-active-light-primary me-1" type="button" data-bs-toggle="tooltip" title="Coming soon">
								<i class="bi bi-upload fs-3"></i>
							</button>
						</div>
						<!--end::Actions-->
						<!--begin::Send-->
						<button class="btn btn-primary" type="button" data-kt-element="send">Send</button>
						<!--end::Send-->
					</div>
					<!--end::Toolbar-->
				</div>
				<!--end::Card footer-->
			</div>
			<!--end::Messenger-->
		</div>
		<!--end::Chat drawer-->
		<!--begin::Chat drawer-->
		<div id="kt_shopping_cart" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="cart" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'md': '500px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_drawer_shopping_cart_toggle" data-kt-drawer-close="#kt_drawer_shopping_cart_close">
			<!--begin::Messenger-->
			<div class="card card-flush w-100 rounded-0">
				<!--begin::Card header-->
				<div class="card-header">
					<!--begin::Title-->
					<h3 class="card-title text-gray-900 fw-bold">Shopping Cart</h3>
					<!--end::Title-->
					<!--begin::Card toolbar-->
					<div class="card-toolbar">
						<!--begin::Close-->
						<div class="btn btn-sm btn-icon btn-active-light-primary" id="kt_drawer_shopping_cart_close">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
							<span class="svg-icon svg-icon-2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</div>
						<!--end::Close-->
					</div>
					<!--end::Card toolbar-->
				</div>
				<!--end::Card header-->
				<!--begin::Card body-->
				<div class="card-body hover-scroll-overlay-y h-400px pt-5">
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">Iblender</a>
								<span class="text-gray-400 fw-semibold d-block">The best kitchen gadget in 2022</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 350</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">5</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-1.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">SmartCleaner</a>
								<span class="text-gray-400 fw-semibold d-block">Smart tool for cooking</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 650</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">4</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-3.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">CameraMaxr</a>
								<span class="text-gray-400 fw-semibold d-block">Professional camera for edge</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 150</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">3</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-8.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">$D Printer</a>
								<span class="text-gray-400 fw-semibold d-block">Manfactoring unique objekts</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 1450</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">7</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-26.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">MotionWire</a>
								<span class="text-gray-400 fw-semibold d-block">Perfect animation tool</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 650</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">7</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-21.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">Samsung</a>
								<span class="text-gray-400 fw-semibold d-block">Profile info,Timeline etc</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 720</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">6</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-34.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
					<!--begin::Separator-->
					<div class="separator separator-dashed my-6"></div>
					<!--end::Separator-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column me-3">
							<!--begin::Section-->
							<div class="mb-3">
								<a href="../dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fs-4 fw-bold">$D Printer</a>
								<span class="text-gray-400 fw-semibold d-block">Manfactoring unique objekts</span>
							</div>
							<!--end::Section-->
							<!--begin::Section-->
							<div class="d-flex align-items-center">
								<span class="fw-bold text-gray-800 fs-5">$ 430</span>
								<span class="text-muted mx-2">for</span>
								<span class="fw-bold text-gray-800 fs-5 me-3">8</span>
								<a href="#" class="btn btn-sm btn-light-success btn-icon-success btn-icon w-25px h-25px me-2">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr090.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
								<a href="#" class="btn btn-sm btn-light-success btn-icon w-25px h-25px">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
									<span class="svg-icon svg-icon-4">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="currentColor" />
											<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</a>
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Wrapper-->
						<!--begin::Pic-->
						<div class="symbol symbol-70px symbol-2by3 flex-shrink-0">
							<img src="assets/media/stock/600x400/img-27.jpg" alt="" />
						</div>
						<!--end::Pic-->
					</div>
					<!--end::Item-->
				</div>
				<!--end::Card body-->
				<!--begin::Card footer-->
				<div class="card-footer">
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<span class="fw-bold text-gray-600">Total</span>
						<span class="text-gray-800 fw-bolder fs-5">$ 1840.00</span>
					</div>
					<!--end::Item-->
					<!--begin::Item-->
					<div class="d-flex flex-stack">
						<span class="fw-bold text-gray-600">Sub total</span>
						<span class="text-primary fw-bolder fs-5">$ 246.35</span>
					</div>
					<!--end::Item-->
					<!--end::Action-->
					<div class="d-flex justify-content-end mt-9">
						<a href="#" class="btn btn-primary d-flex justify-content-end">Pleace Order</a>
					</div>
					<!--end::Action-->
				</div>
				<!--end::Card footer-->
			</div>
			<!--end::Messenger-->
		</div>
		<!--end::Chat drawer-->
		<!--end::Drawers-->
		<!--end::Main-->
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
									<img src="assets/media/svg/payment-methods/paypal.svg" alt="" class="h-30px me-3 rounded-1" />
									<img src="assets/media/svg/payment-methods/visa.svg" alt="" class="h-30px me-3 rounded-1" />
									<img src="assets/media/svg/payment-methods/mastercard.svg" alt="" class="h-30px me-3 rounded-1" />
									<img src="assets/media/svg/payment-methods/americanexpress.svg" alt="" class="h-30px rounded-1" />
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
										<img src="assets/media/framework-logos/Html5.png" alt="" class="h-30px me-3" />
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
										<img src="assets/media/framework-logos/VueJS.png" alt="" class="h-30px me-3" />
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
										<img src="assets/media/framework-logos/React.png" alt="" class="h-30px me-3" />
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
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
			<span class="svg-icon">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
					<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor" />
					<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor" />
				</svg>
			</span>
			<!--end::Svg Icon-->
		</div>
		<!--end::Scrolltop-->
		<!--begin::Modals-->
		<!--begin::Modal - Users Search-->
		<div class="modal fade" id="kt_modal_users_search" tabindex="-1" aria-hidden="true">
			<!--begin::Modal dialog-->
			<div class="modal-dialog modal-dialog-centered mw-650px">
				<!--begin::Modal content-->
				<div class="modal-content">
					<!--begin::Modal header-->
					<div class="modal-header pb-0 border-0 justify-content-end">
						<!--begin::Close-->
						<div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
							<span class="svg-icon svg-icon-1">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</div>
						<!--end::Close-->
					</div>
					<!--begin::Modal header-->
					<!--begin::Modal body-->
					<div class="modal-body scroll-y mx-5 mx-xl-18 pt-0 pb-15">
						<!--begin::Content-->
						<div class="text-center mb-13">
							<h1 class="mb-3">Search Users</h1>
							<div class="text-muted fw-semibold fs-5">Invite Collaborators To Your Project</div>
						</div>
						<!--end::Content-->
						<!--begin::Search-->
						<div id="kt_modal_users_search_handler" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="enter" data-kt-search-layout="inline">
							<!--begin::Form-->
							<form data-kt-search-element="form" class="w-100 position-relative mb-5" autocomplete="off">
								<!--begin::Hidden input(Added to disable form autocomplete)-->
								<input type="hidden" />
								<!--end::Hidden input-->
								<!--begin::Icon-->
								<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
								<span class="svg-icon svg-icon-2 svg-icon-lg-1 svg-icon-gray-500 position-absolute top-50 ms-5 translate-middle-y">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor" />
										<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
								<!--end::Icon-->
								<!--begin::Input-->
								<input type="text" class="form-control form-control-lg form-control-solid px-15" name="search" value="" placeholder="Search by username, full name or email..." data-kt-search-element="input" />
								<!--end::Input-->
								<!--begin::Spinner-->
								<span class="position-absolute top-50 end-0 translate-middle-y lh-0 d-none me-5" data-kt-search-element="spinner">
									<span class="spinner-border h-15px w-15px align-middle text-muted"></span>
								</span>
								<!--end::Spinner-->
								<!--begin::Reset-->
								<span class="btn btn-flush btn-active-color-primary position-absolute top-50 end-0 translate-middle-y lh-0 me-5 d-none" data-kt-search-element="clear">
									<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
									<span class="svg-icon svg-icon-2 svg-icon-lg-1 me-0">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
											<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</span>
								<!--end::Reset-->
							</form>
							<!--end::Form-->
							<!--begin::Wrapper-->
							<div class="py-5">
								<!--begin::Suggestions-->
								<div data-kt-search-element="suggestions">
									<!--begin::Heading-->
									<h3 class="fw-semibold mb-5">Recently searched:</h3>
									<!--end::Heading-->
									<!--begin::Users-->
									<div class="mh-375px scroll-y me-n7 pe-7">
										<!--begin::User-->
										<a href="#" class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1">
											<!--begin::Avatar-->
											<div class="symbol symbol-35px symbol-circle me-5">
												<img alt="Pic" src="assets/media/avatars/300-6.jpg" />
											</div>
											<!--end::Avatar-->
											<!--begin::Info-->
											<div class="fw-semibold">
												<span class="fs-6 text-gray-800 me-2">Emma Smith</span>
												<span class="badge badge-light">Art Director</span>
											</div>
											<!--end::Info-->
										</a>
										<!--end::User-->
										<!--begin::User-->
										<a href="#" class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1">
											<!--begin::Avatar-->
											<div class="symbol symbol-35px symbol-circle me-5">
												<span class="symbol-label bg-light-danger text-danger fw-semibold">M</span>
											</div>
											<!--end::Avatar-->
											<!--begin::Info-->
											<div class="fw-semibold">
												<span class="fs-6 text-gray-800 me-2">Melody Macy</span>
												<span class="badge badge-light">Marketing Analytic</span>
											</div>
											<!--end::Info-->
										</a>
										<!--end::User-->
										<!--begin::User-->
										<a href="#" class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1">
											<!--begin::Avatar-->
											<div class="symbol symbol-35px symbol-circle me-5">
												<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
											</div>
											<!--end::Avatar-->
											<!--begin::Info-->
											<div class="fw-semibold">
												<span class="fs-6 text-gray-800 me-2">Max Smith</span>
												<span class="badge badge-light">Software Enginer</span>
											</div>
											<!--end::Info-->
										</a>
										<!--end::User-->
										<!--begin::User-->
										<a href="#" class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1">
											<!--begin::Avatar-->
											<div class="symbol symbol-35px symbol-circle me-5">
												<img alt="Pic" src="assets/media/avatars/300-5.jpg" />
											</div>
											<!--end::Avatar-->
											<!--begin::Info-->
											<div class="fw-semibold">
												<span class="fs-6 text-gray-800 me-2">Sean Bean</span>
												<span class="badge badge-light">Web Developer</span>
											</div>
											<!--end::Info-->
										</a>
										<!--end::User-->
										<!--begin::User-->
										<a href="#" class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1">
											<!--begin::Avatar-->
											<div class="symbol symbol-35px symbol-circle me-5">
												<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
											</div>
											<!--end::Avatar-->
											<!--begin::Info-->
											<div class="fw-semibold">
												<span class="fs-6 text-gray-800 me-2">Brian Cox</span>
												<span class="badge badge-light">UI/UX Designer</span>
											</div>
											<!--end::Info-->
										</a>
										<!--end::User-->
									</div>
									<!--end::Users-->
								</div>
								<!--end::Suggestions-->
								<!--begin::Results(add d-none to below element to hide the users list by default)-->
								<div data-kt-search-element="results" class="d-none">
									<!--begin::Users-->
									<div class="mh-375px scroll-y me-n7 pe-7">
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="0">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='0']" value="0" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-6.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Emma Smith</a>
													<div class="fw-semibold text-muted">smith@kpmg.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="1">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='1']" value="1" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-danger text-danger fw-semibold">M</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Melody Macy</a>
													<div class="fw-semibold text-muted">melody@altbox.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1" selected="selected">Guest</option>
													<option value="2">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="2">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='2']" value="2" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Max Smith</a>
													<div class="fw-semibold text-muted">max@kt.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="3">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='3']" value="3" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-5.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Sean Bean</a>
													<div class="fw-semibold text-muted">sean@dellito.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="4">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='4']" value="4" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Brian Cox</a>
													<div class="fw-semibold text-muted">brian@exchange.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="5">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='5']" value="5" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-warning text-warning fw-semibold">C</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Mikaela Collins</a>
													<div class="fw-semibold text-muted">mik@pex.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="6">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='6']" value="6" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-9.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Francis Mitcham</a>
													<div class="fw-semibold text-muted">f.mit@kpmg.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="7">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='7']" value="7" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-danger text-danger fw-semibold">O</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Olivia Wild</a>
													<div class="fw-semibold text-muted">olivia@corpmail.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="8">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='8']" value="8" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-primary text-primary fw-semibold">N</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Neil Owen</a>
													<div class="fw-semibold text-muted">owen.neil@gmail.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1" selected="selected">Guest</option>
													<option value="2">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="9">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='9']" value="9" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-23.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Dan Wilson</a>
													<div class="fw-semibold text-muted">dam@consilting.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="10">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='10']" value="10" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-danger text-danger fw-semibold">E</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Emma Bold</a>
													<div class="fw-semibold text-muted">emma@intenso.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="11">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='11']" value="11" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-12.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Ana Crown</a>
													<div class="fw-semibold text-muted">ana.cf@limtel.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1" selected="selected">Guest</option>
													<option value="2">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="12">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='12']" value="12" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-info text-info fw-semibold">A</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Robert Doe</a>
													<div class="fw-semibold text-muted">robert@benko.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="13">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='13']" value="13" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-13.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">John Miller</a>
													<div class="fw-semibold text-muted">miller@mapple.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="14">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='14']" value="14" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-success text-success fw-semibold">L</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Lucy Kunic</a>
													<div class="fw-semibold text-muted">lucy.m@fentech.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2" selected="selected">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="15">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='15']" value="15" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<img alt="Pic" src="assets/media/avatars/300-21.jpg" />
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Ethan Wilder</a>
													<div class="fw-semibold text-muted">ethan@loop.com.au</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1" selected="selected">Guest</option>
													<option value="2">Owner</option>
													<option value="3">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
										<!--begin::Separator-->
										<div class="border-bottom border-gray-300 border-bottom-dashed"></div>
										<!--end::Separator-->
										<!--begin::User-->
										<div class="rounded d-flex flex-stack bg-active-lighten p-4" data-user-id="16">
											<!--begin::Details-->
											<div class="d-flex align-items-center">
												<!--begin::Checkbox-->
												<label class="form-check form-check-custom form-check-solid me-5">
													<input class="form-check-input" type="checkbox" name="users" data-kt-check="true" data-kt-check-target="[data-user-id='16']" value="16" />
												</label>
												<!--end::Checkbox-->
												<!--begin::Avatar-->
												<div class="symbol symbol-35px symbol-circle">
													<span class="symbol-label bg-light-danger text-danger fw-semibold">O</span>
												</div>
												<!--end::Avatar-->
												<!--begin::Details-->
												<div class="ms-5">
													<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Olivia Wild</a>
													<div class="fw-semibold text-muted">olivia@corpmail.com</div>
												</div>
												<!--end::Details-->
											</div>
											<!--end::Details-->
											<!--begin::Access menu-->
											<div class="ms-2 w-100px">
												<select class="form-select form-select-solid form-select-sm" data-control="select2" data-hide-search="true">
													<option value="1">Guest</option>
													<option value="2">Owner</option>
													<option value="3" selected="selected">Can Edit</option>
												</select>
											</div>
											<!--end::Access menu-->
										</div>
										<!--end::User-->
									</div>
									<!--end::Users-->
									<!--begin::Actions-->
									<div class="d-flex flex-center mt-15">
										<button type="reset" id="kt_modal_users_search_reset" data-bs-dismiss="modal" class="btn btn-active-light me-3">Cancel</button>
										<button type="submit" id="kt_modal_users_search_submit" class="btn btn-primary">Add Selected Users</button>
									</div>
									<!--end::Actions-->
								</div>
								<!--end::Results-->
								<!--begin::Empty-->
								<div data-kt-search-element="empty" class="text-center d-none">
									<!--begin::Message-->
									<div class="fw-semibold py-10">
										<div class="text-gray-600 fs-3 mb-2">No users found</div>
										<div class="text-muted fs-6">Try to search by username, full name or email...</div>
									</div>
									<!--end::Message-->
									<!--begin::Illustration-->
									<div class="text-center px-5">
										<img src="assets/media/illustrations/sigma-1/1.png" alt="" class="w-100 h-200px h-sm-325px" />
									</div>
									<!--end::Illustration-->
								</div>
								<!--end::Empty-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Search-->
					</div>
					<!--end::Modal body-->
				</div>
				<!--end::Modal content-->
			</div>
			<!--end::Modal dialog-->
		</div>
		<!--end::Modal - Users Search-->
		<!--begin::Modal - Invite Friends-->
		<div class="modal fade" id="kt_modal_invite_friends" tabindex="-1" aria-hidden="true">
			<!--begin::Modal dialog-->
			<div class="modal-dialog mw-650px">
				<!--begin::Modal content-->
				<div class="modal-content">
					<!--begin::Modal header-->
					<div class="modal-header pb-0 border-0 justify-content-end">
						<!--begin::Close-->
						<div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
							<span class="svg-icon svg-icon-1">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor" />
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</div>
						<!--end::Close-->
					</div>
					<!--begin::Modal header-->
					<!--begin::Modal body-->
					<div class="modal-body scroll-y mx-5 mx-xl-18 pt-0 pb-15">
						<!--begin::Heading-->
						<div class="text-center mb-13">
							<!--begin::Title-->
							<h1 class="mb-3">Invite a Friend</h1>
							<!--end::Title-->
							<!--begin::Description-->
							<div class="text-muted fw-semibold fs-5">If you need more info, please check out
							<a href="#" class="link-primary fw-bold">FAQ Page</a>.</div>
							<!--end::Description-->
						</div>
						<!--end::Heading-->
						<!--begin::Google Contacts Invite-->
						<div class="btn btn-light-primary fw-bold w-100 mb-8">
						<img alt="Logo" src="assets/media/svg/brand-logos/google-icon.svg" class="h-20px me-3" />Invite Gmail Contacts</div>
						<!--end::Google Contacts Invite-->
						<!--begin::Separator-->
						<div class="separator d-flex flex-center mb-8">
							<span class="text-uppercase bg-body fs-7 fw-semibold text-muted px-3">or</span>
						</div>
						<!--end::Separator-->
						<!--begin::Textarea-->
						<textarea class="form-control form-control-solid mb-8" rows="3" placeholder="Type or paste emails here"></textarea>
						<!--end::Textarea-->
						<!--begin::Users-->
						<div class="mb-10">
							<!--begin::Heading-->
							<div class="fs-6 fw-semibold mb-2">Your Invitations</div>
							<!--end::Heading-->
							<!--begin::List-->
							<div class="mh-300px scroll-y me-n7 pe-7">
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-6.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Emma Smith</a>
											<div class="fw-semibold text-muted">smith@kpmg.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-danger text-danger fw-semibold">M</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Melody Macy</a>
											<div class="fw-semibold text-muted">melody@altbox.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1" selected="selected">Guest</option>
											<option value="2">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-1.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Max Smith</a>
											<div class="fw-semibold text-muted">max@kt.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-5.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Sean Bean</a>
											<div class="fw-semibold text-muted">sean@dellito.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-25.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Brian Cox</a>
											<div class="fw-semibold text-muted">brian@exchange.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-warning text-warning fw-semibold">C</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Mikaela Collins</a>
											<div class="fw-semibold text-muted">mik@pex.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-9.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Francis Mitcham</a>
											<div class="fw-semibold text-muted">f.mit@kpmg.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-danger text-danger fw-semibold">O</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Olivia Wild</a>
											<div class="fw-semibold text-muted">olivia@corpmail.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-primary text-primary fw-semibold">N</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Neil Owen</a>
											<div class="fw-semibold text-muted">owen.neil@gmail.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1" selected="selected">Guest</option>
											<option value="2">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-23.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Dan Wilson</a>
											<div class="fw-semibold text-muted">dam@consilting.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-danger text-danger fw-semibold">E</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Emma Bold</a>
											<div class="fw-semibold text-muted">emma@intenso.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-12.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Ana Crown</a>
											<div class="fw-semibold text-muted">ana.cf@limtel.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1" selected="selected">Guest</option>
											<option value="2">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-info text-info fw-semibold">A</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Robert Doe</a>
											<div class="fw-semibold text-muted">robert@benko.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-13.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">John Miller</a>
											<div class="fw-semibold text-muted">miller@mapple.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<span class="symbol-label bg-light-success text-success fw-semibold">L</span>
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Lucy Kunic</a>
											<div class="fw-semibold text-muted">lucy.m@fentech.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2" selected="selected">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-21.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Ethan Wilder</a>
											<div class="fw-semibold text-muted">ethan@loop.com.au</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1" selected="selected">Guest</option>
											<option value="2">Owner</option>
											<option value="3">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
								<!--begin::User-->
								<div class="d-flex flex-stack py-4">
									<!--begin::Details-->
									<div class="d-flex align-items-center">
										<!--begin::Avatar-->
										<div class="symbol symbol-35px symbol-circle">
											<img alt="Pic" src="assets/media/avatars/300-9.jpg" />
										</div>
										<!--end::Avatar-->
										<!--begin::Details-->
										<div class="ms-5">
											<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">Francis Mitcham</a>
											<div class="fw-semibold text-muted">f.mit@kpmg.com</div>
										</div>
										<!--end::Details-->
									</div>
									<!--end::Details-->
									<!--begin::Access menu-->
									<div class="ms-2 w-100px">
										<select class="form-select form-select-solid form-select-sm" data-control="select2" data-dropdown-parent="#kt_modal_invite_friends" data-hide-search="true">
											<option value="1">Guest</option>
											<option value="2">Owner</option>
											<option value="3" selected="selected">Can Edit</option>
										</select>
									</div>
									<!--end::Access menu-->
								</div>
								<!--end::User-->
							</div>
							<!--end::List-->
						</div>
						<!--end::Users-->
						<!--begin::Notice-->
						<div class="d-flex flex-stack">
							<!--begin::Label-->
							<div class="me-5 fw-semibold">
								<label class="fs-6">Adding Users by Team Members</label>
								<div class="fs-7 text-muted">If you need more info, please check budget planning</div>
							</div>
							<!--end::Label-->
							<!--begin::Switch-->
							<label class="form-check form-switch form-check-custom form-check-solid">
								<input class="form-check-input" type="checkbox" value="1" checked="checked" />
								<span class="form-check-label fw-semibold text-muted">Allowed</span>
							</label>
							<!--end::Switch-->
						</div>
						<!--end::Notice-->
					</div>
					<!--end::Modal body-->
				</div>
				<!--end::Modal content-->
			</div>
			<!--end::Modal dialog-->
		</div>
		<!--end::Modal - Invite Friend-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="assets/js/custom/apps/inbox/compose.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>