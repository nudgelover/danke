<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
<script src="/js/jsQR.js"></script>
<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->
<script src="/assets/plugins/custom/ckeditor/ckeditor-document.bundle.js"></script>
<style>
    video, canvas {
        border-radius: 15px;
        width: 100%
    }
</style>

<script>
        var dropImg;

        function dataURLtoFile(dataurl, filename) {
            var arr = dataurl.split(','),
                mime = arr[0].match(/:(.*?);/)[1],
                bstr = atob(arr[1]),
                n = bstr.length,
                u8arr = new Uint8Array(n);
            while (n--) {
                u8arr[n] = bstr.charCodeAt(n);
            }
            return new File([u8arr], filename, {type: mime});
        }

    $(document).ready(function () {

        $('#study_register_btn').click(function (e) {
            const contents = document.getElementById('kt_docs_ckeditor_document').innerHTML;
            const targetContent = '<p><br data-cke-filler="true"></p>';
            let studyEndModal = $('#study_end_modal');

            if (contents === targetContent) {
                let modal = new bootstrap.Modal(studyEndModal);
                $('#study_end_msg').html('내용을 입력해주세요!');
                modal.show();
                return;
            }
            if (!dropImg) {
                let modal = new bootstrap.Modal(studyEndModal);
                $('#study_end_msg').html('스터디 자료를 등록해주세요!')
                modal.show();
                return;
            }

            // <div>의 내용을 가져오기 ckeditor
            var studyContent = $('#kt_docs_ckeditor_document').html();
            // console.log('Detail Content:', studyContent);

            // 폼 데이터 생성
            var formData = new FormData($('#study_update')[0]);
            formData.append('contents', studyContent);
            formData.append('filenameFile', dropImg);

            // 입력된 값 출력
            formData.forEach(function (value, key) {
                console.log('Input:', key, value);
            });

            // 서버로 데이터 전송
            $.ajax({
                url        : '/study/addimpl',
                method     : 'POST',
                data       : formData,
                processData: false,
                contentType: false,
                success    : function (response) {
                    // console.log(response);
                    window.location.href = '/study/all';
                },
                error      : function (error) {
                    console.error(error);
                }
            });
        });
    });
</script>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">스터디 일지 작성</span></a>
                    </li>
                </ul>
            </div>
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/study/all" class="btn btn-active-accent fw-bold ms-3">스터디 게시판</a>
                <c:choose>
                    <c:when test="${loginStdn != null}">
                        <a href="/study/mine/${loginStdn.id}/all" class="btn btn-active-accent fw-bold ms-3">나의 스터디 기록</a>
                        <a href="/study/add" class="btn btn-active-accent active active fw-bold ms-33">스터디 일지 작성</a>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="card-body">
                    <input type="hidden" id="outputData" value=""/>
                    <div>
                        <div class="card mb-12">
                            <div class="card-body d-flex justify-content-between card-rounded p-0 d-flex bg-light-info py-3">
                                <div class="d-flex flex-column flex-lg-row-auto p-10 p-md-20">
                                    <h1 class="text-dark" style="font-weight: 900">오늘 학습한 내용을 나누고 함께 성장하세요!</h1>
                                    <div class="fs-3 mb-8">DIGICampus는 스터디 시간 및 일지 작성 통계를 바탕으로 다양한 혜택을 제공합니다.<br>
                                    이번 달 혜택 주인공은 너야 너!</div>
                                </div>
                                <div class="d-none d-md-flex flex-row-fluid mw-400px ms-auto bgi-no-repeat bgi-position-y-center bgi-position-x-left bgi-size-contain"
                                     style="background-image: url(/assets/media/illustrations/sigma-1/4.png);"></div>
                            </div>
                        </div>
                        <form class="card mb-12" id="study_update">
                            <div class="rounded">
                                <div id="kt_docs_ckeditor_document_toolbar"></div>
                                <div class="border-gray-500 my-3" id="kt_docs_ckeditor_document" contenteditable="true">

                                </div>
                                <div class="dropzone" id="kt_dropzonejs_example_1">
                                    <div class="dz-message needsclick">
                                        <i class="bi bi-file-earmark-arrow-up text-primary fs-3x"></i>
                                        <div class="ms-4">
                                            <h3 class="fs-5 fw-bold text-gray-900 mb-1">스터디 관련 자료 업로드</h3>
                                            <span class="fs-7 fw-semibold text-gray-400">상자를 클릭하거나 파일을 드랍하세요.</span><br>
                                            <span class="fs-7 fw-semibold text-gray-400">파일크기 1MB제한</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex float-end mt-10 pb-10">
                                    <a href="javascript:void(0)" id="study_register_btn" class="btn btn-primary">등록</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" tabindex="-1" id="study_qr_modal">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content" style="padding: 3%">
            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6"
                style="display: flex; justify-content: space-between">
                <li class="nav-item">
                    <a class="nav-link active fs-2qx text-gray-800" data-bs-toggle="tab" href="#kt_tab_pane_4">스터디 시작</a>
                </li>
                <l1>
                    <div class="text-end">
                        <img src="/img/close.png" style="width: 8%" data-bs-dismiss="modal" aria-label="Close">
                    </div>
                </l1>
            </ul>
            <div class="modal-body tab-content">
                <div style="position: relative;">
                    <div class="d-flex h-100 justify-content-center px-0">
                        <div id="timeajax" class="d-flex justify-content-center flex-column" style="width:30%; margin-right:2%">
                            <h1 id="server_time" class="text-center text-white" style="font-weight: 900;"></h1>
                            <!--begin::Option-->
                            <input type="radio" class="btn-check" name="start_end" value="1" checked="checked"  id="start"/>
                            <label class="btn btn-outline btn-outline-dashed btn-active-light-primary p-7 d-flex align-items-center mb-5" for="start">
                                <!--begin::Svg Icon | path: icons/duotune/coding/cod001.svg-->
                                <span class="svg-icon svg-icon-2tx me-4">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3" d="M20.9 12.9C20.3 12.9 19.9 12.5 19.9 11.9C19.9 11.3 20.3 10.9 20.9 10.9H21.8C21.3 6.2 17.6 2.4 12.9 2V2.9C12.9 3.5 12.5 3.9 11.9 3.9C11.3 3.9 10.9 3.5 10.9 2.9V2C6.19999 2.5 2.4 6.2 2 10.9H2.89999C3.49999 10.9 3.89999 11.3 3.89999 11.9C3.89999 12.5 3.49999 12.9 2.89999 12.9H2C2.5 17.6 6.19999 21.4 10.9 21.8V20.9C10.9 20.3 11.3 19.9 11.9 19.9C12.5 19.9 12.9 20.3 12.9 20.9V21.8C17.6 21.3 21.4 17.6 21.8 12.9H20.9Z" fill="currentColor"/>
                                            <path d="M16.9 10.9H13.6C13.4 10.6 13.2 10.4 12.9 10.2V5.90002C12.9 5.30002 12.5 4.90002 11.9 4.90002C11.3 4.90002 10.9 5.30002 10.9 5.90002V10.2C10.6 10.4 10.4 10.6 10.2 10.9H9.89999C9.29999 10.9 8.89999 11.3 8.89999 11.9C8.89999 12.5 9.29999 12.9 9.89999 12.9H10.2C10.4 13.2 10.6 13.4 10.9 13.6V13.9C10.9 14.5 11.3 14.9 11.9 14.9C12.5 14.9 12.9 14.5 12.9 13.9V13.6C13.2 13.4 13.4 13.2 13.6 12.9H16.9C17.5 12.9 17.9 12.5 17.9 11.9C17.9 11.3 17.5 10.9 16.9 10.9Z" fill="currentColor"/>
                                        </svg>
                                    </span>
                                <!--end::Svg Icon-->

                                <span class="d-block text-start">
                                    <span class="text-primary d-block fs-3 fw-bolder">시작</span>
                                    <span class="text-muted fw-bolder fs-8" style="margin-left:3%">시작 시간 체크 후, 원하는 강의 페이지에서 학습하고 돌아오셔도 돼요!</span>
                                </span>
                            </label>
                            <!--end::Option-->
                            <!--begin::Option-->
                            <input type="radio" class="btn-check" name="start_end" value="2" id="end"/>
                            <label class="btn btn-outline btn-outline-dashed btn-active-light-primary p-7 d-flex align-items-center" for="end">
                                <!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
                                <span class="svg-icon svg-icon-2tx me-4">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3" d="M20 15H4C2.9 15 2 14.1 2 13V7C2 6.4 2.4 6 3 6H21C21.6 6 22 6.4 22 7V13C22 14.1 21.1 15 20 15ZM13 12H11C10.5 12 10 12.4 10 13V16C10 16.5 10.4 17 11 17H13C13.6 17 14 16.6 14 16V13C14 12.4 13.6 12 13 12Z" fill="currentColor"/>
                                            <path d="M14 6V5H10V6H8V5C8 3.9 8.9 3 10 3H14C15.1 3 16 3.9 16 5V6H14ZM20 15H14V16C14 16.6 13.5 17 13 17H11C10.5 17 10 16.6 10 16V15H4C3.6 15 3.3 14.9 3 14.7V18C3 19.1 3.9 20 5 20H19C20.1 20 21 19.1 21 18V14.7C20.7 14.9 20.4 15 20 15Z" fill="currentColor"/>
                                        </svg>
                                    </span>
                                <!--end::Svg Icon-->
                                <span class="d-block fw-semibold text-start">
                                    <span class="text-primary fw-bold d-block fs-3">종료</span>
                                    <span class="text-muted fw-bolder fs-8" style="margin-left:3%">종료 시간 체크 후, 스터디 내용과 첨부파일을 작성해주세요.</span>
                                </span>
                            </label>
                            <!--end::Option-->
                        </div>
                        <div class="d-flex flex-column justify-content-center" style="width:70%">
                            <div class="text-center overlay overlay-wrapper" id="output">
                                <div class="verlay-wrapper" id="frame" >
                                    <canvas id="canvas"></canvas>
                                </div>
                                <h3 class="overlay-layer text-white" style="border-radius: 15px;">
                                    당신의 QR을 보여주세요!
                                </h3>
                            </div>
                        </div>
                        <div class="position-absolute bottom-0 end-0">
                            <img src="../img/qrphone.png" alt="qrphone" style="max-height: 300px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" tabindex="-1" id="study_end_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;background-color: #41da9b">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start text-white" style="width: 90%;">
                    <p id="study_end_msg" class="text-white" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>


<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->
<script src="/assets/plugins/custom/ckeditor/ckeditor-document.bundle.js"></script>
<script src="/sass/components/_rating.scss"></script>
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script>
    DecoupledEditor
        .create(document.querySelector('#kt_docs_ckeditor_document'))
        .then(editor => {
            const toolbarContainer = document.querySelector('#kt_docs_ckeditor_document_toolbar');

            toolbarContainer.appendChild(editor.ui.view.toolbar.element);
        })
        .catch(error => {
            console.error(error);
        })
</script>
<script>
    const myDropzone = new Dropzone("#kt_dropzonejs_example_1", {
        url           : "study/addimpl",
        paramName     : "file",
        maxFiles      : 1,
        maxFilesize   : 10, // MB
        addRemoveLinks: true,
        accept        : function (file, done) {
            if (file) {
                dropImg = file;
            } else {
                done();
            }
        }
    });
</script>


<script>
    $(document).ready(function() {
        var isVideoPlaying = false;
        function gettime () {
            let studyEndModal = $('#study_end_modal');
            $.ajax({
                url: '/getservertime',
                success: function (result) {
                    if (result.day == 1 || result.day == 7) {
                        let modal = new bootstrap.Modal(studyEndModal);
                        $('#study_end_msg').html('오늘은 휴일입니다! 월요일에 뵈어요!');
                        modal.show();
                        clearInterval(gettime);
                    } else {
                        setInterval(function () {
                            $.ajax({
                                url: '/getservertime',
                                success: function (result) {
                                    displayTime(result);
                                }
                            })
                        }, 1000)
                    }
                }
            });
        };

        function createVideo() {
            if(!isVideoPlaying){
                return;
            } else {
                var video = $("<video></video>")[0];
                var canvasElement = document.getElementById("canvas");
                var canvas = canvasElement.getContext("2d");
                var outputContainer = $("#output");
            }
            function resizeVideo() {
                var parentWidth = canvasElement.offsetWidth;
                var videoWidth = parentWidth * 0.8;

                video.style.width = videoWidth + "px";
                video.style.height = "auto";
            }

            gettime();
            resizeVideo();
            $(window).resize(resizeVideo);

            function drawLine(begin, end, color) {
                canvas.beginPath();
                canvas.moveTo(begin.x, begin.y);
                canvas.lineTo(end.x, end.y);
                canvas.lineWidth = 4;
                canvas.strokeStyle = color;
                canvas.stroke();
            }

            navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" } })
                .then(function(stream) {
                    video.srcObject = stream;
                    video.setAttribute("playsinline", true);
                    video.play();
                    requestAnimationFrame(tick);
                });

            function tick() {
                if (!isVideoPlaying) {
                    return;
                }
                if (video.readyState === video.HAVE_ENOUGH_DATA) {
                    canvasElement.hidden = false;
                    outputContainer.hidden = false;

                    canvasElement.height = video.videoHeight;
                    canvasElement.width = video.videoWidth;
                    canvas.drawImage(video, 0, 0, canvasElement.width, canvasElement.height);
                    var imageData = canvas.getImageData(0, 0, canvasElement.width, canvasElement.height);
                    var code = jsQR(imageData.data, imageData.width, imageData.height, {
                        inversionAttempts: "dontInvert",
                    });
                    // QR코드 인식에 성공한 경우
                    if (code) {

                        drawLine(code.location.topLeftCorner, code.location.topRightCorner, "rgba(13,178,103,0.66)");
                        drawLine(code.location.topRightCorner, code.location.bottomRightCorner, "rgba(13,178,103,0.66)");
                        drawLine(code.location.bottomRightCorner, code.location.bottomLeftCorner, "rgba(13,178,103,0.66)");
                        drawLine(code.location.bottomLeftCorner, code.location.topLeftCorner, "rgba(13,178,103,0.66)");

                        if(code.data.length>=15) {
                            $('#outputData').val(code.data);
                            $('#outputData').trigger("change");
                            return;
                        }
                    }
                    // QR코드 인식에 실패한 경우
                    // else {
                    //
                    // }
                }
                requestAnimationFrame(tick);
            }
        }
        createVideo();
        let stdnId='${loginStdn.id}';
        let studyModal = $('#study_qr_modal');
        let studyEndModal = $('#study_end_modal');

        $.ajax({
            url:'/studyendornot',
            data:{stdnId:stdnId},
            success: function(result){
                if(result==1){
                    let modal = new bootstrap.Modal(studyModal);
                    isVideoPlaying = true;
                    modal.show();
                    createVideo();
                } else if(result==2){
                    let modal = new bootstrap.Modal(studyEndModal);
                    $('#study_end_msg').html('스터디는 1일 1회 인정됩니다. 오늘 스터디 완료');
                    modal.show();
                    return;
                } else if(result==3){
                    let modal = new bootstrap.Modal(studyEndModal);
                    $('#study_end_msg').html('스터디 일지와 첨부파일을 저장하세요.');
                    modal.show();
                    return;
                } else if (result==4){
                    let modal1 = new bootstrap.Modal(studyModal);
                    modal1.show();
                    let modal2 = new bootstrap.Modal(studyEndModal);
                    $('#study_end_msg').html('아직 종료하지 않은 스터디가 있습니다.');
                    isVideoPlaying = true;
                    createVideo();
                    modal2.show();
                    $('#end').prop('checked',true);
                }
            }
        })

        function displayTime (result) {
                $('#server_time').html(result.now);
        };



        $('#outputData').bind("change", function() {
            let code_value=$('#outputData').val();
            let stdnId = '${loginStdn.id}';
            let start_end =  $('input[name="start_end"]:checked').val();
            let studyEndModal = $('#study_end_modal');
            $.ajax({
                url:'/studyqrimpl',
                data:{stdnId:stdnId, code_value:code_value, start_end:start_end},
                success: function(result){
                        let modal = new bootstrap.Modal(studyEndModal);
                        $('#study_end_msg').html(result);
                        modal.show();
                        setTimeout(function() {
                            window.location.href = '/study/add';
                        }, 10000);
                }
            })
        });
    });
</script>
