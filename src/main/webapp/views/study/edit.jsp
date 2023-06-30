<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>



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

        $('#study_edit_btn').click(function (e) {
            const contents = document.getElementById('kt_docs_ckeditor_document').innerHTML;
            const targetContent = '<p><br data-cke-filler="true"></p>';
            let studyEditModal = $('#study_edit_modal');

            if (contents === targetContent) {
                let modal = new bootstrap.Modal(studyEditModal);
                $('#study_end_msg').html('내용을 입력해주세요!');
                modal.show();
                return;
            }


            // <div>의 내용을 가져오기 ckeditor
            var studyContent = $('#kt_docs_ckeditor_document').html();
            // console.log('Detail Content:', studyContent);

            // 폼 데이터 생성
            var formData = new FormData($('#study_update')[0]);
            formData.append('contents', studyContent);
            if(dropImg)
                formData.append('filenameFile', dropImg);

            // 입력된 값 출력
            formData.forEach(function (value, key) {
                console.log('Input:', key, value);
            });

            // 서버로 데이터 전송
            $.ajax({
                url        : '/study/editimpl',
                method     : 'POST',
                data       : formData,
                processData: false,
                contentType: false,
                success    : function (response) {
                    // console.log(response);
                    window.location.href = '/study/detail?id=${stdy.id}&&stdnId=${loginStdn.id}';
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
                        <input type="hidden" name="id" value="${stdy.id}"/>
                        <input type="hidden" name="writer" value="${stdy.writer}"/>
                        <input type="hidden" name="startTime" value="${stdy.startTime}"/>
                        <input type="hidden" name="endTime" value="${stdy.endTime}"/>
                        <input type="hidden" name="rdate" value="${stdy.rdate}"/>
                        <div class="rounded">
                            <div id="kt_docs_ckeditor_document_toolbar"></div>
                            <div class="border-gray-500 my-3" id="kt_docs_ckeditor_document" contenteditable="true">
                                ${stdy.contents}
                            </div>
                            <div class="dropzone" id="kt_dropzonejs_example_1">
                                <div class="dz-message needsclick">
                                    <i class="bi bi-file-earmark-arrow-up text-primary fs-3x"></i>
                                    <div class="ms-4">
                                        <h3 class="fs-5 fw-bold text-gray-900 mb-1">${stdy.filenameOrg}</h3>
                                        <span class="fs-7 fw-semibold text-gray-400">상자를 클릭하거나 파일을 드랍하세요.</span><br>
                                        <span class="fs-7 fw-semibold text-gray-400">파일크기 1MB제한</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex float-end mt-10 pb-10">
                                <a href="javascript:void(0)" id="study_edit_btn" class="btn btn-primary">등록</a>
                            </div>
                        </div>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" tabindex="-1" id="study_edit_modal">
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




<script src="/assets/plugins/custom/datatables/datatables.bundle.js"></script>
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
        })
</script>
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script>
    const myDropzone = new Dropzone("#kt_dropzonejs_example_1", {
        url           : "study/editimpl",
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