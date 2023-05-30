<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>


<!--begin::Main-->
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">Register</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="/" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item text-dark">Register</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Profile Account-->
            <div class="card">
                <!--begin::Form-->
                <form class="form d-flex flex-center">
                    <div class="card-body mw-800px py-20">
                        <!--begin::Form row-->
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Username</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           value="max_stone"/>
                                </div>
                            </div>
                        </div>
                        <!--end::Form row-->
                        <!--begin::Form row-->
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Email Address</label>
                            <div class="col-lg-9">
                                <div class="input-group input-group-lg input-group-solid">
														<span class="input-group-text pe-0">
															<i class="la la-at fs-4"></i>
														</span>
                                    <input type="text" class="form-control form-control-lg form-control-solid"
                                           value="nick.watson@loop.com" placeholder="Email"/>
                                </div>
                                <div class="form-text">Email will not be publicly displayed.
                                    <a href="#" class="fw-semibold">Learn more</a>.
                                </div>
                            </div>
                        </div>
                        <!--end::Form row-->
                        <!--begin::Form row-->

                        <div class="row">
                            <div class="col-sm-6">
                                <label for="kt_td_picker_linked_1_input" class="form-label">Study time</label>
                                <div class="input-group log-event" id="kt_td_picker_linked_1"
                                     data-td-target-input="nearest" data-td-target-toggle="nearest">
                                    <input id="kt_td_picker_linked_1_input" type="text" class="form-control"
                                           data-td-target="#kt_td_picker_linked_1"/>
                                    <span class="input-group-text" data-td-target="#kt_td_picker_linked_1"
                                          data-td-toggle="datetimepicker">
                <span class="fa-solid fa-calendar"></span>
            </span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label for="kt_td_picker_linked_2_input" class="form-label">To</label>
                                <div class="input-group log-event" id="kt_td_picker_linked_2"
                                     data-td-target-input="nearest" data-td-target-toggle="nearest">
                                    <input id="kt_td_picker_linked_2_input" type="text" class="form-control"
                                           data-td-target="#kt_td_picker_linked_2"/>
                                    <span class="input-group-text" data-td-target="#kt_td_picker_linked_2"
                                          data-td-toggle="datetimepicker">
                <span class="fa-solid fa-calendar"></span>
            </span>
                                </div>
                            </div>
                        </div>


                        <!--end::Form row-->
                        <!--begin::Form row-->
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Time Zone</label>
                            <div class="col-lg-9">
                                <select class="form-select form-select-lg form-select-solid" data-control="select2"
                                        data-placeholder="Select Timezone...">
                                    <option data-offset="-39600" value="International Date Line West">(GMT-11:00)
                                        International Date Line West
                                    </option>
                                    <option data-offset="-39600" value="Midway Island">(GMT-11:00) Midway Island
                                    </option>
                                    <option data-offset="-39600" value="Samoa">(GMT-11:00) Samoa</option>
                                    <option data-offset="-36000" value="Hawaii">(GMT-10:00) Hawaii</option>
                                    <option data-offset="-28800" value="Alaska">(GMT-08:00) Alaska</option>
                                    <option data-offset="-25200" value="Pacific Time (US &amp; Canada)">(GMT-07:00)
                                        Pacific Time (US &amp; Canada)
                                    </option>
                                    <option data-offset="-25200" value="Tijuana">(GMT-07:00) Tijuana</option>
                                    <option data-offset="-25200" value="Arizona">(GMT-07:00) Arizona</option>
                                    <option data-offset="-21600" value="Mountain Time (US &amp; Canada)">(GMT-06:00)
                                        Mountain Time (US &amp; Canada)
                                    </option>
                                    <option data-offset="-21600" value="Chihuahua">(GMT-06:00) Chihuahua</option>
                                    <option data-offset="-21600" value="Mazatlan">(GMT-06:00) Mazatlan</option>
                                    <option data-offset="-21600" value="Saskatchewan">(GMT-06:00) Saskatchewan</option>
                                    <option data-offset="-21600" value="Central America">(GMT-06:00) Central America
                                    </option>
                                    <option data-offset="-18000" value="Central Time (US &amp; Canada)">(GMT-05:00)
                                        Central Time (US &amp; Canada)
                                    </option>
                                    <option data-offset="-18000" value="Guadalajara">(GMT-05:00) Guadalajara</option>
                                    <option data-offset="-18000" value="Mexico City">(GMT-05:00) Mexico City</option>
                                    <option data-offset="-18000" value="Monterrey">(GMT-05:00) Monterrey</option>
                                    <option data-offset="-18000" value="Bogota">(GMT-05:00) Bogota</option>
                                    <option data-offset="-18000" value="Lima">(GMT-05:00) Lima</option>
                                    <option data-offset="-18000" value="Quito">(GMT-05:00) Quito</option>
                                    <option data-offset="-14400" value="Eastern Time (US &amp; Canada)">(GMT-04:00)
                                        Eastern Time (US &amp; Canada)
                                    </option>
                                    <option data-offset="-14400" value="Indiana (East)">(GMT-04:00) Indiana (East)
                                    </option>
                                    <option data-offset="-14400" value="Caracas">(GMT-04:00) Caracas</option>
                                    <option data-offset="-14400" value="La Paz">(GMT-04:00) La Paz</option>
                                    <option data-offset="-14400" value="Georgetown">(GMT-04:00) Georgetown</option>
                                    <option data-offset="-10800" value="Atlantic Time (Canada)">(GMT-03:00) Atlantic
                                        Time (Canada)
                                    </option>
                                    <option data-offset="-10800" value="Santiago">(GMT-03:00) Santiago</option>
                                    <option data-offset="-10800" value="Brasilia">(GMT-03:00) Brasilia</option>
                                    <option data-offset="-10800" value="Buenos Aires">(GMT-03:00) Buenos Aires</option>
                                    <option data-offset="-9000" value="Newfoundland">(GMT-02:30) Newfoundland</option>
                                    <option data-offset="-7200" value="Greenland">(GMT-02:00) Greenland</option>
                                    <option data-offset="-7200" value="Mid-Atlantic">(GMT-02:00) Mid-Atlantic</option>
                                    <option data-offset="-3600" value="Cape Verde Is.">(GMT-01:00) Cape Verde Is.
                                    </option>
                                    <option data-offset="0" value="Azores">(GMT) Azores</option>
                                    <option data-offset="0" value="Monrovia">(GMT) Monrovia</option>
                                    <option data-offset="0" value="UTC">(GMT) UTC</option>
                                    <option data-offset="3600" value="Dublin">(GMT+01:00) Dublin</option>
                                    <option data-offset="3600" value="Edinburgh">(GMT+01:00) Edinburgh</option>
                                    <option data-offset="3600" value="Lisbon">(GMT+01:00) Lisbon</option>
                                    <option data-offset="3600" value="London">(GMT+01:00) London</option>
                                    <option data-offset="3600" value="Casablanca">(GMT+01:00) Casablanca</option>
                                    <option data-offset="3600" value="West Central Africa">(GMT+01:00) West Central
                                        Africa
                                    </option>
                                    <option data-offset="7200" value="Belgrade">(GMT+02:00) Belgrade</option>
                                    <option data-offset="7200" value="Bratislava">(GMT+02:00) Bratislava</option>
                                    <option data-offset="7200" value="Budapest">(GMT+02:00) Budapest</option>
                                    <option data-offset="7200" value="Ljubljana">(GMT+02:00) Ljubljana</option>
                                    <option data-offset="7200" value="Prague">(GMT+02:00) Prague</option>
                                    <option data-offset="7200" value="Sarajevo">(GMT+02:00) Sarajevo</option>
                                    <option data-offset="7200" value="Skopje">(GMT+02:00) Skopje</option>
                                    <option data-offset="7200" value="Warsaw">(GMT+02:00) Warsaw</option>
                                    <option data-offset="7200" value="Zagreb">(GMT+02:00) Zagreb</option>
                                    <option data-offset="7200" value="Brussels">(GMT+02:00) Brussels</option>
                                    <option data-offset="7200" value="Copenhagen">(GMT+02:00) Copenhagen</option>
                                    <option data-offset="7200" value="Madrid">(GMT+02:00) Madrid</option>
                                    <option data-offset="7200" value="Paris">(GMT+02:00) Paris</option>
                                    <option data-offset="7200" value="Amsterdam">(GMT+02:00) Amsterdam</option>
                                    <option data-offset="7200" value="Berlin">(GMT+02:00) Berlin</option>
                                    <option data-offset="7200" value="Bern">(GMT+02:00) Bern</option>
                                    <option data-offset="7200" value="Rome">(GMT+02:00) Rome</option>
                                    <option data-offset="7200" value="Stockholm">(GMT+02:00) Stockholm</option>
                                    <option data-offset="7200" value="Vienna">(GMT+02:00) Vienna</option>
                                    <option data-offset="7200" value="Cairo">(GMT+02:00) Cairo</option>
                                    <option data-offset="7200" value="Harare">(GMT+02:00) Harare</option>
                                    <option data-offset="7200" value="Pretoria">(GMT+02:00) Pretoria</option>
                                    <option data-offset="10800" value="Bucharest">(GMT+03:00) Bucharest</option>
                                    <option data-offset="10800" value="Helsinki">(GMT+03:00) Helsinki</option>
                                    <option data-offset="10800" value="Kiev">(GMT+03:00) Kiev</option>
                                    <option data-offset="10800" value="Kyiv">(GMT+03:00) Kyiv</option>
                                    <option data-offset="10800" value="Riga">(GMT+03:00) Riga</option>
                                    <option data-offset="10800" value="Sofia">(GMT+03:00) Sofia</option>
                                    <option data-offset="10800" value="Tallinn">(GMT+03:00) Tallinn</option>
                                    <option data-offset="10800" value="Vilnius">(GMT+03:00) Vilnius</option>
                                    <option data-offset="10800" value="Athens">(GMT+03:00) Athens</option>
                                    <option data-offset="10800" value="Istanbul">(GMT+03:00) Istanbul</option>
                                    <option data-offset="10800" value="Minsk">(GMT+03:00) Minsk</option>
                                    <option data-offset="10800" value="Jerusalem">(GMT+03:00) Jerusalem</option>
                                    <option data-offset="10800" value="Moscow">(GMT+03:00) Moscow</option>
                                    <option data-offset="10800" value="St. Petersburg">(GMT+03:00) St. Petersburg
                                    </option>
                                    <option data-offset="10800" value="Volgograd">(GMT+03:00) Volgograd</option>
                                    <option data-offset="10800" value="Kuwait">(GMT+03:00) Kuwait</option>
                                    <option data-offset="10800" value="Riyadh">(GMT+03:00) Riyadh</option>
                                    <option data-offset="10800" value="Nairobi">(GMT+03:00) Nairobi</option>
                                    <option data-offset="10800" value="Baghdad">(GMT+03:00) Baghdad</option>
                                    <option data-offset="14400" value="Abu Dhabi">(GMT+04:00) Abu Dhabi</option>
                                    <option data-offset="14400" value="Muscat">(GMT+04:00) Muscat</option>
                                    <option data-offset="14400" value="Baku">(GMT+04:00) Baku</option>
                                    <option data-offset="14400" value="Tbilisi">(GMT+04:00) Tbilisi</option>
                                    <option data-offset="14400" value="Yerevan">(GMT+04:00) Yerevan</option>
                                    <option data-offset="16200" value="Tehran">(GMT+04:30) Tehran</option>
                                    <option data-offset="16200" value="Kabul">(GMT+04:30) Kabul</option>
                                    <option data-offset="18000" value="Ekaterinburg">(GMT+05:00) Ekaterinburg</option>
                                    <option data-offset="18000" value="Islamabad">(GMT+05:00) Islamabad</option>
                                    <option data-offset="18000" value="Karachi">(GMT+05:00) Karachi</option>
                                    <option data-offset="18000" value="Tashkent">(GMT+05:00) Tashkent</option>
                                    <option data-offset="19800" value="Chennai">(GMT+05:30) Chennai</option>
                                    <option data-offset="19800" value="Kolkata">(GMT+05:30) Kolkata</option>
                                    <option data-offset="19800" value="Mumbai">(GMT+05:30) Mumbai</option>
                                    <option data-offset="19800" value="New Delhi">(GMT+05:30) New Delhi</option>
                                    <option data-offset="19800" value="Sri Jayawardenepura">(GMT+05:30) Sri
                                        Jayawardenepura
                                    </option>
                                    <option data-offset="20700" value="Kathmandu">(GMT+05:45) Kathmandu</option>
                                    <option data-offset="21600" value="Astana">(GMT+06:00) Astana</option>
                                    <option data-offset="21600" value="Dhaka">(GMT+06:00) Dhaka</option>
                                    <option data-offset="21600" value="Almaty">(GMT+06:00) Almaty</option>
                                    <option data-offset="21600" value="Urumqi">(GMT+06:00) Urumqi</option>
                                    <option data-offset="23400" value="Rangoon">(GMT+06:30) Rangoon</option>
                                    <option data-offset="25200" value="Novosibirsk">(GMT+07:00) Novosibirsk</option>
                                    <option data-offset="25200" value="Bangkok">(GMT+07:00) Bangkok</option>
                                    <option data-offset="25200" value="Hanoi">(GMT+07:00) Hanoi</option>
                                    <option data-offset="25200" value="Jakarta">(GMT+07:00) Jakarta</option>
                                    <option data-offset="25200" value="Krasnoyarsk">(GMT+07:00) Krasnoyarsk</option>
                                    <option data-offset="28800" value="Beijing">(GMT+08:00) Beijing</option>
                                    <option data-offset="28800" value="Chongqing">(GMT+08:00) Chongqing</option>
                                    <option data-offset="28800" value="Hong Kong">(GMT+08:00) Hong Kong</option>
                                    <option data-offset="28800" value="Kuala Lumpur">(GMT+08:00) Kuala Lumpur</option>
                                    <option data-offset="28800" value="Singapore">(GMT+08:00) Singapore</option>
                                    <option data-offset="28800" value="Taipei">(GMT+08:00) Taipei</option>
                                    <option data-offset="28800" value="Perth">(GMT+08:00) Perth</option>
                                    <option data-offset="28800" value="Irkutsk">(GMT+08:00) Irkutsk</option>
                                    <option data-offset="28800" value="Ulaan Bataar">(GMT+08:00) Ulaan Bataar</option>
                                    <option data-offset="32400" value="Seoul">(GMT+09:00) Seoul</option>
                                    <option data-offset="32400" value="Osaka">(GMT+09:00) Osaka</option>
                                    <option data-offset="32400" value="Sapporo">(GMT+09:00) Sapporo</option>
                                    <option data-offset="32400" value="Tokyo">(GMT+09:00) Tokyo</option>
                                    <option data-offset="32400" value="Yakutsk">(GMT+09:00) Yakutsk</option>
                                    <option data-offset="34200" value="Darwin">(GMT+09:30) Darwin</option>
                                    <option data-offset="34200" value="Adelaide">(GMT+09:30) Adelaide</option>
                                    <option data-offset="36000" value="Canberra">(GMT+10:00) Canberra</option>
                                    <option data-offset="36000" value="Melbourne">(GMT+10:00) Melbourne</option>
                                    <option data-offset="36000" value="Sydney">(GMT+10:00) Sydney</option>
                                    <option data-offset="36000" value="Brisbane">(GMT+10:00) Brisbane</option>
                                    <option data-offset="36000" value="Hobart">(GMT+10:00) Hobart</option>
                                    <option data-offset="36000" value="Vladivostok">(GMT+10:00) Vladivostok</option>
                                    <option data-offset="36000" value="Guam">(GMT+10:00) Guam</option>
                                    <option data-offset="36000" value="Port Moresby">(GMT+10:00) Port Moresby</option>
                                    <option data-offset="36000" value="Solomon Is.">(GMT+10:00) Solomon Is.</option>
                                    <option data-offset="39600" value="Magadan">(GMT+11:00) Magadan</option>
                                    <option data-offset="39600" value="New Caledonia">(GMT+11:00) New Caledonia</option>
                                    <option data-offset="43200" value="Fiji">(GMT+12:00) Fiji</option>
                                    <option data-offset="43200" value="Kamchatka">(GMT+12:00) Kamchatka</option>
                                    <option data-offset="43200" value="Marshall Is.">(GMT+12:00) Marshall Is.</option>
                                    <option data-offset="43200" value="Auckland">(GMT+12:00) Auckland</option>
                                    <option data-offset="43200" value="Wellington">(GMT+12:00) Wellington</option>
                                    <option data-offset="46800" value="Nuku'alofa">(GMT+13:00) Nuku'alofa</option>
                                </select>
                            </div>
                        </div>
                        <!--end::Form row-->
                        <!--begin::Form row-->
                        <div class="row align-items-center mb-3">
                            <label class="col-lg-3 col-form-label">Communication</label>
                            <div class="col-lg-9">
                                <div class="d-flex align-items-center">
                                    <div class="form-check form-check-custom form-check-solid me-5">
                                        <input class="form-check-input" type="checkbox" checked="checked"
                                               id="inlineCheckbox1" value="option1"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox1">Email</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid me-5">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                               value="option2"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox2">SMS</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                               value="option3"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox3">Phone</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--begin::Form row-->
                        <div class="separator separator-dashed my-10"></div>
                        <!--begin::Form row-->
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Login verification</label>
                            <div class="col-lg-9">
                                <button type="button" class="btn btn-light-primary fw-semibold btn-sm">Setup login
                                    verification
                                </button>
                                <div class="form-text">After you log in, you will be asked for additional information to
                                    confirm your identity and protect your account from being compromised.
                                    <a href="#" class="fw-semibold">Learn more</a>.
                                </div>
                            </div>
                        </div>
                        <!--end::Form row-->
                        <!--begin::Form row-->
                        <div class="row mb-13">
                            <label class="col-lg-3 col-form-label">Password reset verification</label>
                            <div class="col-lg-9">
                                <div class="form-check form-check-custom form-check-solid me-5">
                                    <input class="form-check-input" type="checkbox" id="customCheck5" value="option1"/>
                                    <label class="form-check-label fw-semibold" for="customCheck5">Require personal
                                        information to reset your password.</label>
                                </div>
                                <div class="form-text py-2">For extra security, this requires you to confirm your email
                                    or phone number when you reset your password.
                                    <a href="#" class="fw-boldk">Learn more</a>.
                                </div>
                                <button type="button" class="btn btn-light-danger fw-semibold btn-sm">Deactivate your
                                    account ?
                                </button>
                            </div>
                        </div>
                        <!--end::Form row-->
                        <!--begin::Form row-->
                        <div class="row">
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9">
                                <button type="reset" class="btn btn-primary fw-bold px-6 py-3 me-3">Save Changes
                                </button>
                                <button type="reset"
                                        class="btn btn-color-gray-600 btn-active-light-primary fw-bold px-6 py-3">Cancel
                                </button>
                            </div>
                        </div>
                        <!--end::Form row-->
                    </div>
                </form>
                <!--end::Form-->
            </div>
            <!--end::Profile Account-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->
<%--캘린더 스크립트--%>
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script>
    const linkedPicker1Element = document.getElementById("kt_td_picker_linked_1");
    const linked1 = new tempusDominus.TempusDominus(linkedPicker1Element);
    const linked2 = new tempusDominus.TempusDominus(document.getElementById("kt_td_picker_linked_2"), {
        useCurrent: false,
    });

    //using event listeners
    linkedPicker1Element.addEventListener(tempusDominus.Namespace.events.change, (e) => {
        linked2.updateOptions({
            restrictions: {
                minDate: e.detail.date,
            },
        });
    });

    //using subscribe method
    const subscription = linked2.subscribe(tempusDominus.Namespace.events.change, (e) => {
        linked1.updateOptions({
            restrictions: {
                maxDate: e.date,
            },
        });
    });
</script>
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>


<!--end::Custom Javascript-->
<!--end::Javascript-->