<!--begin::Main-->
<style>
    #preview_box {
        display: flex;
        justify-content: center;
        align-items: center;

    }

    #preview {
        margin: 20px;
        width: 250px;
        height: 250px;
    }

    .map_wrap, .map_wrap * {
        margin: 0;
        padding: 0;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        font-size: 12px;
    }

    .map_wrap a, .map_wrap a:hover, .map_wrap a:active {
        color: #000;
        text-decoration: none;
    }

    .map_wrap {
        position: relative;
        width: 100%;
        height: 500px;
    }

    #menu_wrap {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 250px;
        margin: 10px 0 30px 10px;
        padding: 5px;
        overflow-y: auto;
        background: rgba(255, 255, 255, 0.7);
        z-index: 1;
        font-size: 12px;
        border-radius: 10px;
    }

    .bg_white {
        background: #fff;
    }

    #menu_wrap hr {
        display: block;
        height: 1px;
        border: 0;
        border-top: 2px solid #5F5F5F;
        margin: 3px 0;
    }

    #menu_wrap .option {
        text-align: center;
    }

    #menu_wrap .option p {
        margin: 10px 0;
    }

    #menu_wrap .option button {
        margin-left: 5px;
    }

    #placesList li {
        list-style: none;
    }

    #placesList .item {
        position: relative;
        border-bottom: 1px solid #888;
        overflow: hidden;
        cursor: pointer;
        min-height: 65px;
    }

    #placesList .item span {
        display: block;
        margin-top: 4px;
    }

    #placesList .item h5, #placesList .item .info {
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
    }

    #placesList .item .info {
        padding: 10px 0 10px 55px;
    }

    #placesList .info .gray {
        color: #8a8a8a;
    }

    #placesList .info .jibun {
        padding-left: 26px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
    }

    #placesList .info .tel {
        color: #009900;
    }

    #placesList .item .markerbg {
        float: left;
        position: absolute;
        width: 36px;
        height: 37px;
        margin: 10px 0 0 10px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
    }

    #placesList .item .marker_1 {
        background-position: 0 -10px;
    }

    #placesList .item .marker_2 {
        background-position: 0 -56px;
    }

    #placesList .item .marker_3 {
        background-position: 0 -102px
    }

    #placesList .item .marker_4 {
        background-position: 0 -148px;
    }

    #placesList .item .marker_5 {
        background-position: 0 -194px;
    }

    #placesList .item .marker_6 {
        background-position: 0 -240px;
    }

    #placesList .item .marker_7 {
        background-position: 0 -286px;
    }

    #placesList .item .marker_8 {
        background-position: 0 -332px;
    }

    #placesList .item .marker_9 {
        background-position: 0 -378px;
    }

    #placesList .item .marker_10 {
        background-position: 0 -423px;
    }

    #placesList .item .marker_11 {
        background-position: 0 -470px;
    }

    #placesList .item .marker_12 {
        background-position: 0 -516px;
    }

    #placesList .item .marker_13 {
        background-position: 0 -562px;
    }

    #placesList .item .marker_14 {
        background-position: 0 -608px;
    }

    #placesList .item .marker_15 {
        background-position: 0 -654px;
    }

    #pagination {
        margin: 10px auto;
        text-align: center;
    }

    #pagination a {
        display: inline-block;
        margin-right: 10px;
    }

    #pagination .on {
        font-weight: bold;
        cursor: default;
        color: #777;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('#register_btn').click(function (e) {

            // <div>의 내용을 가져오기
            var detailContent = $('#kt_docs_ckeditor_document').html();
            // console.log('Detail Content:', detailContent);

            // 폼 데이터 생성
            var formData = new FormData($('#marker_form')[0]);
            formData.append('detail', detailContent);

            // 입력된 값 출력
            formData.forEach(function (value, key) {
                // console.log('Input:', key, value);
            });


            // 서버로 데이터 전송
            $.ajax({
                url        : '/marker/addimpl',
                method     : 'POST',
                data       : formData,
                processData: false,
                contentType: false,
                success    : function (response) {
                    console.log('Data submitted successfully');
                    // console.log(response);
                    window.location.href = '/marker/all';
                },
                error      : function (error) {
                    console.error('Error submitting data:', error);
                }
            });
        });
    });
</script>
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <!--begin::Title-->
                <h3 class="text-dark fw-bold my-1">JMTGR</h3>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-line bg-transparent text-muted fw-semibold p-0 my-1 fs-7">
                    <li class="breadcrumb-item">
                        <a href="/" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item">Apps</li>
                    <li class="breadcrumb-item text-dark">Shop 1</li>
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/marker/add" class="btn btn-active-accent active fw-bold ms-3">JMTGR ADD</a>
                <a href="/marker/all" class="btn btn-active-accent fw-bold ms-3">JMTGR ALL</a>
                <a href="/marker/detail" class="btn btn-active-accent fw-bold ms-3">JMTGR DETAIL</a>
                <a href="/inbox" class="btn btn-active-accent fw-bold ms-3">Inbox</a>
                <a href="/shop2" class="btn btn-active-accent  fw-bold ms-3">Shop 2</a>
                <a href="/product" class="btn btn-active-accent fw-bold ms-3">Shop Product</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <!--end::toolbar-->
    <!--begin::Content-->
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <!--begin::Inbox App - View & Reply -->
            <div class="d-flex flex-column flex-lg-row">

                <!--begin::Content-->
                <div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
                    <!--begin::Card-->
                    <div class="card">
                        <div class="card-body">
                            <!--begin::Title-->
                            <div class="d-flex container-fluid">
                                <!--begin::Heading-->
                                <img width="100%" height="400px" src="/img/jmt.png">

                            </div>
                            <div class="d-flex flex-column px-11">
                                <form id="marker_form">
                                    <div class="form-group mb-10">
                                        <h3 class="mb-5">Choose Image!</h3>
                                        <div id="preview_box"><img src="/img/logo.png" id="preview"/></div>
                                        <input type="file" class="form-control"
                                               id="imgfile" name="imgfile" onchange="readURL(this)">

                                    </div>
                                    <input type="hidden" id="writer" name="writer" value="writer">
                                    <!--end::Input group-->
                                    <!--begin::Row-->
                                    <div class="row col-12 mt-10 mb-10 " data-kt-buttons="true"
                                         data-kt-buttons-target=".form-check-image, .form-check-input">
                                        <div class="col-4">
                                            <label class="form-check-image">
                                                <div class="form-check-wrapper d-flex justify-content-center">
                                                    <img style="width:30%;height:30%; margin:20px 0"
                                                         src="https://cdn-icons-png.flaticon.com/512/3170/3170733.png"/>
                                                </div>

                                                <div class="form-check form-check-custom form-check-solid me-10">
                                                    <input class="form-check-input" type="radio" value="R"
                                                           name="keyword"/>
                                                    <div class="form-check-label">
                                                        Restaurant
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
                                        <div class="col-4">
                                            <label class="form-check-image">
                                                <div class="form-check-wrapper d-flex justify-content-center">
                                                    <img style="width:30%;height:30%; margin:20px 0"
                                                         src="https://cdn-icons-png.flaticon.com/512/3361/3361447.png"/>
                                                </div>

                                                <div class="form-check form-check-custom form-check-solid me-10">
                                                    <input class="form-check-input" type="radio" value="C"
                                                           name="keyword"/>
                                                    <div class="form-check-label">
                                                        Cafe
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <!--end::Col-->

                                        <!--begin::Col-->
                                        <div class="col-4">
                                            <label class="form-check-image">
                                                <div class="form-check-wrapper d-flex justify-content-center">
                                                    <img style="width:30%;height:30%; margin:20px 0"
                                                         src="https://cdn-icons-png.flaticon.com/512/3227/3227053.png"/>
                                                </div>

                                                <div class="form-check form-check-custom form-check-solid me-10">
                                                    <input class="form-check-input" type="radio" value="S"
                                                           name="keyword"/>
                                                    <div class="form-check-label">
                                                        Study Cafe
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <div class="map_wrap">
                                        <div id="map"
                                             style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

                                        <div id="menu_wrap" class="bg_white">
                                            <div class="option">
                                                <div>
                                                    keyword: <input type="text" value="sinchon" id="search" size="15">
                                                    <button type="button" onclick="searchPlaces(); return false;">
                                                        search
                                                    </button>

                                                </div>
                                            </div>
                                            <hr>
                                            <ul id="placesList"></ul>
                                            <div id="pagination"></div>
                                        </div>
                                    </div>

                                    <!--end::Row-->
                                    <div class="d-flex mt-10">
                                        <div style="padding-right: 10px" class="form-floating mb-7 col-sm-4">
                                            <input type="text" class="form-control" name="title" id="title"
                                                   placeholder="title"/>
                                            <label for="title">title</label>
                                        </div>

                                        <div style="padding: 0 10px" class="form-floating mb-7 col-sm-4">
                                            <input type="number" class="form-control" name="lat" id="lat"
                                                   placeholder="Enter Lat.."/>
                                            <label for="lat">Lat</label>
                                        </div>
                                        <div style="padding-left: 10px" class="form-floating mb-7 col-sm-4">
                                            <input type="number" class="form-control" name="lng" id="lng"
                                                   placeholder="Enter Lng.."/>
                                            <label for="lat">Lng</label>
                                        </div>

                                    </div>
                                    <div class="d-flex mt-10">
                                        <div class="rating">
                                            <!--begin::Reset rating-->
                                            <label class="btn btn-light fw-bold btn-sm rating-label me-3"
                                                   for="kt_rating_input_0">
                                                Reset
                                            </label>
                                            <input class="rating-input" name="rating" value="0" checked type="radio"
                                                   id="kt_rating_input_0"/>
                                            <!--end::Reset rating-->

                                            <!--begin::Star 1-->
                                            <label class="rating-label" for="kt_rating_input_1">
                                                <span class="svg-icon svg-icon-1">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"
          fill="currentColor"></path></svg>
                                                </span>
                                            </label>
                                            <input class="rating-input" name="rating" value="1" type="radio"
                                                   id="kt_rating_input_1"/>
                                            <!--end::Star 1-->

                                            <!--begin::Star 2-->
                                            <label class="rating-label" for="kt_rating_input_2">
                                                <span class="svg-icon svg-icon-1"> <svg width="24" height="24"
                                                                                        viewBox="0 0 24 24" fill="none"
                                                                                        xmlns="http://www.w3.org/2000/svg">
    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"
          fill="currentColor"></path></svg></span>
                                            </label>
                                            <input class="rating-input" name="rating" value="2" type="radio"
                                                   id="kt_rating_input_2"/>
                                            <!--end::Star 2-->

                                            <!--begin::Star 3-->
                                            <label class="rating-label" for="kt_rating_input_3">
                                                <span class="svg-icon svg-icon-1"> <svg width="24" height="24"
                                                                                        viewBox="0 0 24 24" fill="none"
                                                                                        xmlns="http://www.w3.org/2000/svg">
    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"
          fill="currentColor"></path></svg></span>
                                            </label>
                                            <input class="rating-input" name="rating" value="3" type="radio"
                                                   id="kt_rating_input_3"/>
                                            <!--end::Star 3-->

                                            <!--begin::Star 4-->
                                            <label class="rating-label" for="kt_rating_input_4">
                                                <span class="svg-icon svg-icon-1"> <svg width="24" height="24"
                                                                                        viewBox="0 0 24 24" fill="none"
                                                                                        xmlns="http://www.w3.org/2000/svg">
    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"
          fill="currentColor"></path></svg></span>
                                            </label>
                                            <input class="rating-input" name="rating" value="4" type="radio"
                                                   id="kt_rating_input_4"/>
                                            <!--end::Star 4-->

                                            <!--begin::Star 5-->
                                            <label class="rating-label" for="kt_rating_input_5">
                                                <span class="svg-icon svg-icon-1"> <svg width="24" height="24"
                                                                                        viewBox="0 0 24 24" fill="none"
                                                                                        xmlns="http://www.w3.org/2000/svg">
    <path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z"
          fill="currentColor"></path></svg></span>
                                            </label>
                                            <input class="rating-input" name="rating" value="5" type="radio"
                                                   id="kt_rating_input_5"/>
                                            <!--end::Star 5-->
                                        </div>
                                    </div>

                                    <div id="kt_docs_ckeditor_document_toolbar"></div>
                                    <div class="border-gray-500 " id="kt_docs_ckeditor_document" contenteditable="true">
                                        <h1>Let me introduce jmtgr</h1>
                                        <h2>recommend menu</h2>
                                        <ul>
                                            <li>ex) reman : 10000</li>
                                            <li>List item 1</li>
                                            <li>List item 2</li>
                                            <li>List item 3</li>
                                            <li>List item 4</li>
                                        </ul>
                                        <p>Reason/ detail</p>
                                    </div>
                                    <div class="d-flex float-end mt-10">
                                        <a href="#" id="register_btn" class="btn btn-primary">Register</a>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--end::Content-->
        </div>
        <!--end::Inbox App - View & Reply -->
    </div>
    <!--end::Container-->
</div>
<!--end::Main-->

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
<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->
<script src="/assets/plugins/custom/ckeditor/ckeditor-document.bundle.js"></script>
<script src="/sass/components/_rating.scss"></script>
<script>
    DecoupledEditor
        .create(document.querySelector('#kt_docs_ckeditor_document'))
        .then(editor => {
            const toolbarContainer = document.querySelector('#kt_docs_ckeditor_document_toolbar');

            toolbarContainer.appendChild(editor.ui.view.toolbar.element);
        })
        .catch(error => {
            console.error(error);
        });
</script>

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('preview').src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        } else {
            document.getElementById('preview').src = "";
        }
    }
</script>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdeaed76dc8de3e2c25b24d04c468b43&libraries=services"></script>
<script>
    // 마커를 담을 배열입니다
    var markers = [];

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
            level : 3 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 장소 검색 객체를 생성합니다
    var ps = new kakao.maps.services.Places();

    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({zIndex: 1});

    // 키워드로 장소를 검색합니다
    searchPlaces();

    // 키워드 검색을 요청하는 함수입니다
    function searchPlaces() {

        var keyword = document.getElementById('search').value;

        if (!keyword.replace(/^\s+|\s+$/g, '')) {
            alert('키워드를 입력해주세요!');
            return false;
        }

        // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
        ps.keywordSearch(keyword, placesSearchCB);
    }

    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
    function placesSearchCB(data, status, pagination) {
        if (status === kakao.maps.services.Status.OK) {

            // 정상적으로 검색이 완료됐으면
            // 검색 목록과 마커를 표출합니다
            displayPlaces(data);

            // 페이지 번호를 표출합니다
            displayPagination(pagination);

        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

            alert('검색 결과가 존재하지 않습니다.');
            return;

        } else if (status === kakao.maps.services.Status.ERROR) {

            alert('검색 결과 중 오류가 발생했습니다.');
            return;

        }
    }

    // 검색 결과 목록과 마커를 표출하는 함수입니다
    function displayPlaces(places) {

        var listEl = document.getElementById('placesList'),
            menuEl = document.getElementById('menu_wrap'),
            fragment = document.createDocumentFragment(),
            bounds = new kakao.maps.LatLngBounds(),
            listStr = '';

        // 검색 결과 목록에 추가된 항목들을 제거합니다
        removeAllChildNods(listEl);

        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();

        for (let i = 0; i < places.length; i++) {

            // 마커를 생성하고 지도에 표시합니다
            let placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                marker = addMarker(placePosition, i),
                itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            bounds.extend(placePosition);
            // 마커와 검색결과 항목에 mouseover 했을때
            // 해당 장소에 인포윈도우에 장소명을 표시합니다
            // mouseout 했을 때는 인포윈도우를 닫습니다
            (function (marker, title) {
                kakao.maps.event.addListener(marker, 'mouseover', function () {
                    displayInfowindow(marker, title);
                });

                kakao.maps.event.addListener(marker, 'mouseout', function () {
                    infowindow.close();
                });
                kakao.maps.event.addListener(marker, 'click', function () {
                    // console.log(i);
                    // console.log(placePosition.getLat());
                    // console.log(placePosition.getLng());
                    // console.log(title);
                    var markerTitle = title; // 충돌을 피하기 위해 변수 이름 변경
                    var lat = placePosition.getLat().toFixed(2); // 위도 값 가져오기
                    var lng = placePosition.getLng().toFixed(2); // 경도 값 가져오기
                    // <input> 요소를 선택하고 값을 설정합니다
                    $('#lat').val(lat);
                    $('#lng').val(lng);
                    $('#title').val(markerTitle);

                });
                itemEl.onmouseover = function () {
                    displayInfowindow(marker, title);
                };

                itemEl.onmouseout = function () {
                    infowindow.close();
                };
                itemEl.onclick = function () {
                    var markerTitle = title; // 충돌을 피하기 위해 변수 이름 변경
                    var lat = placePosition.getLat().toFixed(2); // 위도 값 가져오기
                    var lng = placePosition.getLng().toFixed(2); // 경도 값 가져오기
                    // <input> 요소를 선택하고 값을 설정합니다
                    $('#lat').val(lat);
                    $('#lng').val(lng);
                    $('#title').val(markerTitle);
                }
            })(marker, places[i].place_name, placePosition);

            fragment.appendChild(itemEl);
        }

        // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
        listEl.appendChild(fragment);
        menuEl.scrollTop = 0;

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    }

    // 검색결과 항목을 Element로 반환하는 함수입니다
    function getListItem(index, places) {

        var el = document.createElement('li'),
            itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

        if (places.road_address_name) {
            itemStr += '    <span>' + places.road_address_name + '</span>' +
                '   <span class="jibun gray">' + places.address_name + '</span>';
        } else {
            itemStr += '    <span>' + places.address_name + '</span>';
        }

        itemStr += '  <span class="tel">' + places.phone + '</span>' +
            '</div>';

        el.innerHTML = itemStr;
        el.className = 'item';

        return el;
    }

    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
    function addMarker(position, idx, title) {
        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
            imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
            imgOptions = {
                spriteSize  : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                offset      : new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
            },
            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
                position: position, // 마커의 위치
                image   : markerImage
            });

        marker.setMap(map); // 지도 위에 마커를 표출합니다
        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

        return marker;
    }

    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
    function removeMarker() {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
    }

    // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
    function displayPagination(pagination) {
        var paginationEl = document.getElementById('pagination'),
            fragment = document.createDocumentFragment(),
            i;

        // 기존에 추가된 페이지번호를 삭제합니다
        while (paginationEl.hasChildNodes()) {
            paginationEl.removeChild(paginationEl.lastChild);
        }

        for (i = 1; i <= pagination.last; i++) {
            var el = document.createElement('a');
            el.href = "#";
            el.innerHTML = i;

            if (i === pagination.current) {
                el.className = 'on';
            } else {
                el.onclick = (function (i) {
                    return function () {
                        pagination.gotoPage(i);
                    }
                })(i);
            }

            fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
    }

    // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
    // 인포윈도우에 장소명을 표시합니다
    function displayInfowindow(marker, title) {
        var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

        infowindow.setContent(content);
        infowindow.open(map, marker);
    }

    // 검색결과 목록의 자식 Element를 제거하는 함수입니다
    function removeAllChildNods(el) {
        while (el.hasChildNodes()) {
            el.removeChild(el.lastChild);
        }
    }
</script>