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


</style>
<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--<script>--%>

<%--    let marker_add = {--%>
<%--        init: function () {--%>
<%--            $('#register_btn').click(function () {--%>
<%--                marker_add.send();--%>
<%--            })--%>
<%--        },--%>
<%--        send: function () {--%>
<%--            $('#marker_form').attr({--%>
<%--                method : 'post',--%>
<%--                action : '/marker/addimpl',--%>
<%--                enctype: 'multipart/form-data'--%>
<%--            });--%>
<%--            $('#marker_form').submit();--%>
<%--        }--%>

<%--    };--%>
<%--    $(function () {--%>
<%--            marker_add.init();--%>
<%--        }--%>
<%--    )--%>
<%--</script>--%>
<script>
    $(document).ready(function () {
        $('#register_btn').click(function (e) {
            e.preventDefault();

            // var divElement = document.getElementById("kt_forms_widget_1_editor");
            // var detailValue = divElement.textContent.trim();

            var divElement = document.getElementById("kt_forms_widget_1_editor");
            var htmlContent = divElement.innerHTML;


            var trimmedContent = htmlContent.trim(); // 앞뒤 공백 제거
            var startIndex = trimmedContent.indexOf(">") + 1; // "<" 다음 인덱스부터 시작, 앞부분 삭제
            var extractedContent = trimmedContent.substring(startIndex);
            //뒷부분 삭제
            var modifiedString = extractedContent.replace('</div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div>', '');

            // console.log(modifiedString);

            // 폼 데이터 생성
            var formData = new FormData($('#marker_form')[0]);
            formData.append('detail', modifiedString);

            // 입력된 값 출력
            formData.forEach(function (value, key) {
                console.log('Input:', key, value);
            });


            // 서버로 데이터 전송
            // $.ajax({
            //     url        : '/marker/addimpl',
            //     method     : 'POST',
            //     data       : formData,
            //     processData: false,
            //     contentType: false,
            //     success    : function (response) {
            //         console.log('Data submitted successfully');
            //         console.log(response);
            //     },
            //     error      : function (error) {
            //         console.error('Error submitting data:', error);
            //     }
            // });
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
    <div class="content fs-6 d-flex flex-column-fluid">
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
                                        <h3 class="mb-5">Chose Main Image!</h3>
                                        <div id="preview_box"><img src="/img/logo.png" id="preview"/></div>
                                        <input type="file" class="form-control"
                                               id="imgfile" name="imgfile" onchange="readURL(this)">

                                    </div>
                                    <input type="hidden" id="writer" name="writer" value="writer">
                                    <div class="form-floating mb-10">
                                        <input type="text" class="form-control" id="title" name="title"
                                               placeholder="Enter title.."/>
                                        <label for="title">title</label>
                                    </div>

                                    <!--end::Input group-->
                                    <!--begin::Row-->
                                    <div class="row col-12 " data-kt-buttons="true"
                                         data-kt-buttons-target=".form-check-image, .form-check-input">
                                        <div class="col-4">
                                            <label class="form-check-image">
                                                <div class="form-check-wrapper">
                                                    <img style="padding: 40px 100px"
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
                                                <div class="form-check-wrapper">
                                                    <img style="padding: 40px 100px"
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
                                                <div class="form-check-wrapper">
                                                    <img style="padding: 40px 100px"
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


                                    <!--end::Row-->
                                    <div class="d-flex mt-10">
                                        <div style="padding-right: 10px" class="form-floating mb-7 col-sm-4">
                                            <input type="number" class="form-control" name="lat" id="lat"
                                                   placeholder="Enter Lat.."/>
                                            <label for="lat">Lat</label>
                                        </div>

                                        <div style="padding: 0 10px" class="form-floating mb-7 col-sm-4">
                                            <input type="number" class="form-control" name="lng" id="lng"
                                                   placeholder="Enter Lng.."/>
                                            <label for="lat">Lng</label>
                                        </div>
                                        <div style="padding-left: 10px" class="col-sm-4">
                                            <select class="form-select" id="rating" name="rating">
                                                <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733;</option>
                                                <option value="4">&#9733;&#9733;&#9733;&#9733;</option>
                                                <option value="3">&#9733;&#9733;&#9733;</option>
                                                <option value="2">&#9733;&#9733;</option>
                                                <option value="1">&#9733;</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="kt_docs_ckeditor_balloon">
                                        <h1>Quick and simple CKEditor 5 Integration</h1>
                                        <p>Here goes the <a href="#">Minitial content of the editor</a>. Lorem Ipsum is simply dummy text of the <em>printing and typesetting</em> industry.</p>
                                        <blockquote>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</blockquote>
                                        <ul>
                                            <li>List item 1</li>
                                            <li>List item 2</li>
                                            <li>List item 3</li>
                                            <li>List item 4</li>
                                        </ul>
                                        <figure class="image"><img src="/assets/media/stock/600x400/img-1.jpg" alt="CKEditor Demo"/></figure>
                                        Here goes the <a href="#">Minitial content of the editor</a>. Lorem Ipsum is simply dummy text of the <em>printing and typesetting</em> industry.
                                        <h1>Easy Media Embeds</h1>
                                        <figure class="symbol">
                                            <oembed url="https://www.youtube.com/watch?v=d-pSVf8Xazk"></oembed>
                                        </figure>
                                        <p>Lorem ipsum dolor sit amet,consectetuer edipiscing elit,sed diam nonummy nibh euismod tinciduntut laoreet doloremagna aliquam erat volutpat.Ut wisi enim ad minim veniam,quis nostrud exerci tation ullamcorper. Lorem ipsum dolor sit amet,consectetuer edipiscing elit,sed diam nonummy nibh euismod tinciduntut laoreet doloremagna aliquam erat volutpat.Ut wisi enim ad minim veniam,quis nostrud exerci tation ullamcorper.</p>
                                    </div>
                                    <div class="d-flex float-end mt-10">
                                        <a href="#" id="register_btn" class="btn btn-primary">Register</a>
                                    </div>
                                </form>
                                <!--begin::Form-->

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

<!--begin::Vendors Javascript(used for this page only)-->
<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
<!--end::Vendors Javascript-->
<!--begin::Custom Javascript(used for this page only)-->
<script src="/assets/js/custom/widgets.js"></script>
<script src="/assets/js/custom/apps/chat/chat.js"></script>
<script src="/assets/js/custom/utilities/modals/users-search.js"></script>
<script src="/assets/plugins/custom/ckeditor/ckeditor-balloon.bundle.js"></script>
<script>
    BalloonEditor
        .create(document.querySelector('#kt_docs_ckeditor_balloon'))
        .then(editor => {
            console.log(editor);
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

