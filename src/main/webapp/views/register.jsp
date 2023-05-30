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
                            <label class="col-lg-3 col-form-label">ID</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           id="id" name="id"/>
                                    <span id="check_id"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Password</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd" name="pwd"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Confirm Password</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd2"/>
                                    <span id="check_pwd"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Name</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           id="name" name="name"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Date of Birth</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <div class="form-floating">
                                        <select class="form-control form-control-solid" id="year"
                                            name="date_of_birth" aria-label="Floating label select example">
                                            <option selected>Year</option>
                                            <option value="1970">1970</option>
                                            <option value="1971">1971</option>
                                            <option value="1972">1972</option>
                                            <option value="1973">1973</option>
                                            <option value="1974">1974</option>
                                            <option value="1975">1975</option>
                                            <option value="1976">1976</option>
                                            <option value="1977">1977</option>
                                            <option value="1978">1978</option>
                                            <option value="1979">1979</option>
                                            <option value="1980">1980</option>
                                            <option value="1981">1981</option>
                                            <option value="1982">1982</option>
                                            <option value="1983">1983</option>
                                            <option value="1984">1984</option>
                                            <option value="1985">1985</option>
                                            <option value="1986">1986</option>
                                            <option value="1987">1987</option>
                                            <option value="1988">1988</option>
                                            <option value="1989">1989</option>
                                            <option value="1990">1990</option>
                                            <option value="1991">1991</option>
                                            <option value="1992">1992</option>
                                            <option value="1993">1993</option>
                                            <option value="1994">1994</option>
                                            <option value="1995">1995</option>
                                            <option value="1996">1996</option>
                                            <option value="1997">1997</option>
                                            <option value="1998">1998</option>
                                            <option value="1999">1999</option>
                                            <option value="2000">2000</option>
                                            <option value="2001">2001</option>
                                            <option value="2002">2002</option>
                                            <option value="2003">2003</option>
                                            <option value="2004">2004</option>
                                            <option value="2005">2005</option>
                                            <option value="2006">2006</option>
                                            <option value="2007">2007</option>
                                            <option value="2008">2008</option>
                                            <option value="2009">2009</option>
                                        </select>
                                        <label for="year">Year</label>
                                    </div>
                                    <div class="form-floating" style="width: 32%">
                                        <select class="form-control form-control-solid" id="month"
                                                name="date_of_birth" aria-label="Floating label select example">
                                            <option selected>Month</option>
                                            <option value="01">Jan</option>
                                            <option value="02">Feb</option>
                                            <option value="03">Mar</option>
                                            <option value="04">Apr</option>
                                            <option value="05">May</option>
                                            <option value="06">Jun</option>
                                            <option value="07">Jul</option>
                                            <option value="08">Aug</option>
                                            <option value="09">Sep</option>
                                            <option value="10">Oct</option>
                                            <option value="11">Nov</option>
                                            <option value="12">Dec</option>
                                        </select>
                                        <label for="month">Month</label>
                                    </div>
                                    <div class="form-floating">
                                        <select class="form-control form-control-solid" id="day"
                                                name="date_of_birth" aria-label="Floating label select example">
                                            <option selected>Day</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select>
                                        <label for="day">Day</label>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Email</label>
                            <div class="col-lg-9">
                                <div class="input-group input-group-lg input-group-solid">
                                    <input type="email" class="form-control form-control-lg form-control-solid"
                                           id="email" name="email"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label">Contact</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="number"
                                           id="contact" name="contact"/>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-center mb-3">
                            <label class="col-lg-3 col-form-label">Subject of Interest</label>
                            <div class="col-lg-9">
                                <div class="d-flex align-items-center">
                                    <div class="form-check form-check-custom form-check-solid me-5">
                                        <input class="form-check-input" type="checkbox" checked="checked"
                                               id="inlineCheckbox1" value="JAVA" name="sbj"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox1">JAVA</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid me-5">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                               value="React" name="sbj"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox2">React</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid"
                                         style="margin-right:15px;">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                               value="CS" name="sbj"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox3">CS</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid"
                                         style="margin-right:15px;">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox4"
                                               value="Algorithm" name="sbj"/>
                                        <label class="form-check-label fw-semibold"
                                               for="inlineCheckbox4">Algorithm</label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-solid"
                                         style="margin-right:15px;">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox5"
                                               value="Machine Learning" name="sbj"/>
                                        <label class="form-check-label fw-semibold" for="inlineCheckbox5">Machine
                                            Learning</label>
                                    </div>
                                </div>
                            </div>
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9">
                                <div class="form-text" style="margin-bottom: 5px">Choose three different Areas of Interest.
                                </div>
                            </div>
                        </div>
                        <!--begin::Form row-->
                        <div class="separator separator-dashed my-10"></div>
                        <div class="row">
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9">
                                <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3" id="register_btn">
                                    REGISTER
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


<!--begin::Javascript-->
<script>var hostUrl = "/assets/";</script>
<!--begin::Global Javascript Bundle(mandatory for all pages)-->
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
<!--end::Global Javascript Bundle-->
<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<!--end::Custom Javascript-->
<!--end::Javascript-->
