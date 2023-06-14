<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
<script src="/js/jsQR.js"></script>
<style>
    video, canvas {
        border-radius: 15px;
        width: 100%
    }
</style>





<div class="d-flex flex-column flex-column-fluid">
    <!--begin::toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">출석체크</span></a>
                    </li>
                </ul>
            </div>
            <!--end::Info-->
            <!--begin::Nav-->
            <div class="d-flex align-items-center flex-nowrap text-nowrap overflow-auto py-1">
                <a href="/attd" class="btn btn-active-accent active fw-bold ms-3">출석체크</a>
                <a href="/test" class="btn btn-active-accent fw-bold ms-3">테스트</a>
                <a href="/study" class="btn btn-active-accent fw-bold ms-3">스터디</a>
            </div>
            <!--end::Nav-->
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <!--begin::Container-->
        <div class="container-xxl">
            <div class="card">
                <!--begin::Form-->
                    <input type="hidden" id="outputData" value=""/>
                <div class="card card-stretch">
                    <div class="card-body pb-7 rounded" style="background-color: rgba(13,178,103,0.66); position: relative;">
                        <div class="d-flex h-100 justify-content-center px-0">
                            <div id="timeajax" class="d-flex justify-content-center flex-column" style="width:30%; margin-right:2%">
                                <h1 id="server_time" class="text-center text-white" style="font-weight: 900;"></h1>
                                <!--begin::Option-->
                                <input type="radio" class="btn-check" name="on_off" value="1" checked="checked"  id="hello"/>
                                <label class="btn btn-outline btn-outline-dashed btn-active-light-primary p-7 d-flex align-items-center mb-5" for="hello">
                                    <!--begin::Svg Icon | path: icons/duotune/coding/cod001.svg-->
                                    <span class="svg-icon svg-icon-4x me-4">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3" d="M20.9 12.9C20.3 12.9 19.9 12.5 19.9 11.9C19.9 11.3 20.3 10.9 20.9 10.9H21.8C21.3 6.2 17.6 2.4 12.9 2V2.9C12.9 3.5 12.5 3.9 11.9 3.9C11.3 3.9 10.9 3.5 10.9 2.9V2C6.19999 2.5 2.4 6.2 2 10.9H2.89999C3.49999 10.9 3.89999 11.3 3.89999 11.9C3.89999 12.5 3.49999 12.9 2.89999 12.9H2C2.5 17.6 6.19999 21.4 10.9 21.8V20.9C10.9 20.3 11.3 19.9 11.9 19.9C12.5 19.9 12.9 20.3 12.9 20.9V21.8C17.6 21.3 21.4 17.6 21.8 12.9H20.9Z" fill="currentColor"/>
                                            <path d="M16.9 10.9H13.6C13.4 10.6 13.2 10.4 12.9 10.2V5.90002C12.9 5.30002 12.5 4.90002 11.9 4.90002C11.3 4.90002 10.9 5.30002 10.9 5.90002V10.2C10.6 10.4 10.4 10.6 10.2 10.9H9.89999C9.29999 10.9 8.89999 11.3 8.89999 11.9C8.89999 12.5 9.29999 12.9 9.89999 12.9H10.2C10.4 13.2 10.6 13.4 10.9 13.6V13.9C10.9 14.5 11.3 14.9 11.9 14.9C12.5 14.9 12.9 14.5 12.9 13.9V13.6C13.2 13.4 13.4 13.2 13.6 12.9H16.9C17.5 12.9 17.9 12.5 17.9 11.9C17.9 11.3 17.5 10.9 16.9 10.9Z" fill="currentColor"/>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->

                                    <span class="d-block text-start">
                                        <span class="text-dark d-block fs-3 fw-bolder">출근</span>
                                    </span>
                                    <span class="text-muted fw-bolder fs-6" style="margin-left:3%">오전 9시 이후 출석은 지각입니다.</span>
                                </label>
                                <!--end::Option-->
                                <!--begin::Option-->
                                <input type="radio" class="btn-check" name="on_off" value="2" id="bye"/>
                                <label class="btn btn-outline btn-outline-dashed btn-active-light-primary p-7 d-flex align-items-center" for="bye">
                                    <!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
                                    <span class="svg-icon svg-icon-4x me-4">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3" d="M20 15H4C2.9 15 2 14.1 2 13V7C2 6.4 2.4 6 3 6H21C21.6 6 22 6.4 22 7V13C22 14.1 21.1 15 20 15ZM13 12H11C10.5 12 10 12.4 10 13V16C10 16.5 10.4 17 11 17H13C13.6 17 14 16.6 14 16V13C14 12.4 13.6 12 13 12Z" fill="currentColor"/>
                                            <path d="M14 6V5H10V6H8V5C8 3.9 8.9 3 10 3H14C15.1 3 16 3.9 16 5V6H14ZM20 15H14V16C14 16.6 13.5 17 13 17H11C10.5 17 10 16.6 10 16V15H4C3.6 15 3.3 14.9 3 14.7V18C3 19.1 3.9 20 5 20H19C20.1 20 21 19.1 21 18V14.7C20.7 14.9 20.4 15 20 15Z" fill="currentColor"/>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                    <span class="d-block fw-semibold text-start">
                                        <span class="text-dark fw-bold d-block fs-3">퇴근</span>
                                    </span>
                                    <span class="text-muted fw-bolder fs-6" style="margin-left:3%">잠깐! 오후 6시가 지났나요?</span>
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
                <!--end::Form-->
            </div>
            <!--end::Profile Account-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Content-->
</div>
<!--end::Main-->

<div class="modal fade" tabindex="-1"
     id="attd_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body" style="display: flex; justify-content: space-between">
                <div class="text-start" style="width: 90%;">
                    <p id="attd_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>






<script>
    $(document).ready(function() {

        var video = $("<video></video>")[0];
        var canvasElement = document.getElementById("canvas");
        var canvas = canvasElement.getContext("2d");
        var outputContainer = $("#output");

        function resizeVideo() {
            var parentWidth = canvasElement.offsetWidth;
            var videoWidth = parentWidth * 0.8;

            video.style.width = videoWidth + "px";
            video.style.height = "auto";
        }
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

        function displayTime (result) {
                $('#server_time').html(result.now);
        };

        function gettime () {
            let attdModal = $('#attd_modal');
                $.ajax({
                    url: '/getservertime',
                    success: function (result) {
                        if (result.day == 1 || result.day == 7) {
                            let modal = new bootstrap.Modal(attdModal);
                            $('#attd_msg').html('오늘은 휴일입니다! 월요일에 뵈어요!');
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

        gettime();

        $('#outputData').bind("change", function() {
            let code_value=$('#outputData').val();
            let stdnId = '${loginStdn.id}';
            let on_off =  $('input[name="on_off"]:checked').val();
            let attdModal = $('#attd_modal');
            $.ajax({
                url:'/attdimpl',
                data:{stdnId:stdnId, code_value:code_value, on_off:on_off},
                success: function(result){
                        let modal = new bootstrap.Modal(attdModal);
                        $('#attd_msg').html(result);
                        modal.show();
                }
            })
        });
    });

</script>