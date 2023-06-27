<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    [data-bs-theme="light"] #kt_header_search_modal {
        background-color: white;
    }

    [data-bs-theme="dark"] #kt_header_search_modal {
        background-color: #1e1e2d;
    }

    #matchingKeywords {
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        padding: 2em;
        border-bottom: 1px solid #ddd;
        margin-bottom: 2em;
        font-size: 14px;
        color: gray;
        display: none;

        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    #matchingKeywords a {
        font-weight: bold;
        margin-right: 8px;
        color: gray;
    }

    #matchingKeywords a:hover {
        color: #20D489;
        text-decoration: underline !important;
    }

    #notfound {
        color: gray;
        margin-bottom: 2em;
    }

    #notfound span {
        font-size: 14px;
        margin: 1em;
    }
</style>

<!--begin::Header Search-->
<div class="modal fade" id="kt_header_search_modal" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content shadow-none">
            <div class="container w-lg-800px">
                <div class="modal-header d-flex justify-content-end border-0">
                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-light-primary ms-2" data-bs-dismiss="modal">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                        <span class="svg-icon svg-icon-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1"
                                              transform="rotate(-45 6 17.3137)" fill="currentColor"/>
										<rect x="7.41422" y="6" width="16" height="2" rx="1"
                                              transform="rotate(45 7.41422 6)" fill="currentColor"/>
									</svg>
								</span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Close-->
                </div>
                <div class="modal-body">
                    <!--begin::Search-->
                    <form class="pb-10" onsubmit="searchPage(event)">
                        <input autofocus="" type="text"
                               class="form-control bg-transparent border-0 fs-2x text-center fw-normal" name="query"
                               placeholder="Search..." oninput="showMatchingKeywords()"/>
                    </form>

                    <div id="matchingKeywords"></div>
                    <div id="notfound"></div>
                    <!--end::Search-->
                    <!--begin::Framework Users-->
                    <div>
                        <h3 class="text-dark fw-bold fs-1 mb-6">���� ã�� ������</h3>
                        <!--begin::List Widget 4-->
                        <div class="card bg-transparent mb-5 shadow-none">
                            <!--begin::Body-->
                            <div class="card-body pt-2 px-0">
                                <div class="table-responsive">
                                    <table class="table table-borderless align-middle">
                                        <!--begin::Item-->
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="/assets/media/svg/avatars/009-boy-4.svg"
                                                                     class="h-75 align-self-end" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 w-250px ">
                                                <!--begin::Title-->
                                                <a href="/mypage?id=${loginStdn.id}"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                    ����������</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/241/241528.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0  ">
                                                <!--begin::Title-->
                                                <a href="/attd"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">�⼮üũ
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/2797/2797387.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/digicam/anc/all"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                    ��������</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/6062/6062646.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/lecture/mylecture?id=${loginStdn.id}" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">�� �н�</a>
                                                <!--end::Title-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/4666/4666864.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/blah"
                                                   class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1 mx-10">
                                                �����</a>
                                            </td>
                                            <th class="ps-0 ">
                                                <!--begin::Symbol-->
                                                <div class="symbol symbol-55px flex-shrink-0 me-4">
															<span class="symbol-label bg-light-primary">
																<img src="https://cdn-icons-png.flaticon.com/512/2904/2904806.png"
                                                                     class="h-75 align-self-center" alt=""/>
															</span>
                                                </div>
                                                <!--end::Symbol-->
                                            </th>
                                            <td class="ps-0 ">
                                                <!--begin::Title-->
                                                <a href="/study/add" class="text-gray-800 fw-bold text-hover-primary fs-6 mb-1">���͵�</a>
                                                <!--end::Title-->
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--end::List Widget 4-->
                    </div>
                    <!--end::Framework Users-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--end::Header Search-->

<script>
    // �̸� ����� Ű����� �����ϴ� ������ ����
    var keywordMap = {
        "����������"    : "/mypage?id=${loginStdn.id}",
        "��й�ȣ����"    : "/mypage/pwd?id=${loginStdn.id}",
        "�����ʺ���"    : "/mypage/settings?id=${loginStdn.id}",
        "��������"    : "/mypage/settings?id=${loginStdn.id}",
        "�⼮üũ"     : "/attd",
        "��������"     : "/digicam/anc/all",
        "Ķ����"      : "/digicam/calendar",
        "�޷�"       : "/digicam/calendar",
        "�����"     : "/blah",
        "����ķ�۽�"    : "/digicam/detail",
        "���������"    : "/digicam/member",
        "����ê"      : "/blah/group",
        "�������̺�"    : "/blah/group",
        "���ǰ˻�"     : "/lecture/all",
        "��Ʃ��˻�"    : "/lecture/search",
        "�н��ڷ�ã��"   : "/lecture/search",
        "�н��ڷ�ã��"   : "/lecture/search",
        "�� ���ǽ�"    : "/lecture/mylecture?id=${loginStdn.id}",
        "�� �н�"     : "/lecture/mylecture?id=${loginStdn.id}",
        "���� ������ ����": "/lecture/ordhistory?stdnId=${loginStdn.id}",
        "������û ������ȸ": "/lecture/ordhistory?stdnId=${loginStdn.id}",
        "��ٱ���"     : "/lecture/cart?id=${loginStdn.id}",
    };

    function showMatchingKeywords() {
        var query = document.querySelector('input[name="query"]').value;  // �˻�� �ҹ��ڷ� ��ȯ
        var matches = [];
        var matchingKeywords = document.getElementById('matchingKeywords');
        var pagenotfound = document.getElementById('notfound');

        if (query.trim() === '') {
            matchingKeywords.style.display = 'none';
            pagenotfound.innerHTML = "";
            return;
        }
        for (var keyword in keywordMap) {
            if (keyword.includes(query)) {
                var destination = keywordMap[keyword];
                matches.push('<a href="' + destination + '"><i class="bi bi-search"></i> ' + keyword + '</a>');
            }
        }

        if (matches.length > 0) {
            matchingKeywords.innerHTML = matches.join(" ");  // ��ġ�ϴ� Ű������� ȭ�鿡 ǥ��
            matchingKeywords.style.display = 'block';  // �Է��� ���� ���� ǥ��
        } else {
            matchingKeywords.style.display = 'none';
            // �Է��� ���ų� ��ġ�ϴ� Ű���尡 ���� ���� ���� ó��
        }
    }

    function searchPage(event) {
        event.preventDefault();  // �� �⺻ ���� ����

        var query = document.querySelector('input[name="query"]').value;  // �˻�� �״�� ����
        var pagenotfound = document.getElementById('notfound');

        if (query.trim() === '') {
            pagenotfound.innerHTML = ""; // �˻�� ���� ��� �޽����� ����, ������ ���͸� �ؾ����� ��. �ڵ����� keyup�� ��? Ȯ���ؾ���
            return;  // �Է��� ���� ��� �ƹ� ���۵� ���� ����
        }

        // �˻���� Ű���� ���� Ű���� ��ȸ�ϸ� �κ� ��ġ �˻��� ����
        for (var keyword in keywordMap) {
            if (keyword.includes(query)) {
                var destination = keywordMap[keyword];
                window.location.href = destination;  // ������ �̵�
                return;  // ��ġ�ϴ� �������� ã�����Ƿ� �Լ� ����
            }
        }

        pagenotfound.innerHTML = "<div class='d-flex w-100 flex-column text-center align-items-center justify-content-center'><h1>�˼��մϴ�.</h2><span>�ش� �������� �������� �ʽ��ϴ�. �ٽ� �˻����ּ���.</span><img style='width: 100px' src='https://cdn-icons-png.flaticon.com/512/5696/5696039.png'> </div>"; // �������� �������� �ʴ� ��� �˸� ǥ��
    }
</script>