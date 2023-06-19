<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    input[type="text"]:focus,
    input[type="password"]:focus,
    input[type="number"]:focus,
    input[type="email"]:focus {
        background-color: rgba(213, 249, 232, 0.9);
    }

    .form-floating {
        width: 33%;
        display: inline-block;
    }
</style>
<script>
    let register_form = {
        init            : function () {
            $('#register_btn').attr('disabled', true);
            $('#reg_code_btn').attr('disabled', true);
            $('#register_btn').click(function () {
                register_form.send();
            });
            $('#contact_auth').keyup(function () {
                let contact_auth = $('#contact_auth').val();
                if (contact_auth.length >= 10) {
                    $('#reg_code_btn').attr('disabled', false);
                }
            })

            $('#reg_code_btn').click(function () {
                register_form.code();
            })

            $('#reg_code_send_btn').click(function () {
                let authModal = $('#auth_modal');
                if ($('#code_real').val() == $('#code_confirm').val()) {
                    let modal = new bootstrap.Modal(authModal);
                    clearInterval(timer);
                    $('#contact_auth').attr('disabled', 'true');
                    $('#contact').val($('#contact_auth').val());
                    $('#auth_msg').html('인증되었습니다.');
                    modal.show();
                }
                ;
            })

            $('#sbj3').change(function () {
                let id = $('#id').val();
                let pwd = $('#pwd').val();
                let name = $('#name').val();
                let year = $('#year').val();
                let month = $('#month').val();
                let day = $('#day').val();
                let email = $('#email').val();
                let contact_auth = $('#contact_auth').val();
                let sbj1 = $('#sbj1').val();
                let sbj2 = $('#sbj2').val();
                let sbj3 = $(this).val();

                if (id.length >= 5 && pwd != '' && name != '' && year != '' && month != '' && day != ''
                    && email != '' && contact_auth != '' && sbj1 != '' && sbj2 != '' && sbj3 != '') {
                    $('#register_btn').attr('disabled', false);
                }
            });

            $('#id').keyup(function () {
                let txt_id = $('#id').val();
                if (txt_id.length <= 4) {
                    $("#id").css("border-bottom", "3px solid #20D489");
                    $('#check_id').text('다섯글자 이상 입력해주세요.');
                    return;
                } else {
                    $.ajax({
                        url    : '/checkid',
                        data   : {id: txt_id},
                        success: function (result) {
                            if (result == 0) {
                                $("#id").css("border-bottom", "none");
                                $('#check_id').text('Available');
                            } else {
                                $('#check_id').text('Already in Use');
                            }
                        }
                    });
                }
            });
            $('#pwd2').blur(function () {
                let pwd = $('#pwd').val();
                let pwd2 = $('#pwd2').val();

                if (pwd == '' && pwd2 == '') {
                    $("#pwd").css("border-bottom", "3px solid #20D489");
                    $("#pwd2").css("border-bottom", "3px solid #20D489");
                    $('#check_pwd').text('비밀번호를 입력해주세요.');
                } else if (pwd !== pwd2) {
                    $("#pwd2").css("border-bottom", "3px solid #20D489");
                    $('#check_pwd').text('비밀번호가 일치하지 않습니다.');
                } else {
                    $("#pwd2").css("border-bottom", "none");
                    $('#check_pwd').text('비밀번호가 일치합니다.');
                }
            });
        },
        count_down_timer: function () {
            let limits = 300;
            timer = setInterval(function () {
                if (limits < 0) {
                    return;
                } else {
                    let min = parseInt((limits) / 60);
                    let sec = limits % 60;
                    let authModal = $('#auth_modal');
                    if (limits % 60 < 10) {
                        sec = "0" + sec;
                    } else {
                        sec = sec;
                    }
                    $("#id_span_timer").html(min + ":" + sec);
                    limits--;

                    if (limits == 0) {
                        $('#reg_code_send_btn').attr('disabled', 'true');
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('인증번호가 만료되었습니다.');
                        modal.show();
                        return;
                    }
                }
            }, 1000);
        },
        code            : function () {
            let contact_auth = $('#contact_auth').val();
            let authModal = $('#auth_modal');
            $.ajax({
                url    : '/registercodeimpl',
                data   : {contact_auth: contact_auth},
                success: function (result) {
                    if (result != 0) {
                        $('#code_real').val(result);
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('인증번호가 발송되었습니다.');
                        register_form.count_down_timer();
                        modal.show();
                    } else {
                        let modal = new bootstrap.Modal(authModal);
                        $('#auth_msg').html('발송실패! 잠시 후 다시 시도 부탁드립니다.');
                        modal.show();
                    }
                }
            })
        },
        send            : function () {
            let id = $('#id').val();
            let pwd = $('#pwd').val();
            let name = $('#name').val();
            let year = $('#year').val();
            let month = $('#month').val();
            let day = $('#day').val();
            let email = $('#email').val();
            let contact_auth = $('#contact_auth').val();
            let sbj1 = $('#sbj1').val();
            let sbj2 = $('#sbj2').val();
            let sbj3 = $('#sbj3').val();

            if (id.length <= 4) {
                $("#id").css("border-bottom", "1px solid #f5a425");
                $('#check_id').text('ID는 최소 다섯글자 이상이어야 합니다.');
                $('#id').focus();
                return;
            }
            ;
            if (id.length > 5) {
                $('#check_id').text('');
            }
            ;
            if (pwd == '') {
                $('#pwd').focus();
                return;
            }
            ;
            if (name == '') {
                $('#name').focus();
                return;
            }
            ;
            if (email == '') {
                $('#email').focus();
                return;
            }
            ;
            if (contact_auth == '') {
                $('#contact_auth').focus();
                return;
            }
            ;
            if (year == '') {
                $('#year').focus();
                return;
            }
            ;
            if (month == '') {
                $('#month').focus();
                return;
            }
            ;
            if (day == '') {
                $('#day').focus();
                return;
            }
            ;
            if (sbj1 == '') {
                $('#sbj1').focus();
                return;
            }
            ;
            if (sbj2 == '') {
                $('#sbj2').focus();
                return;
            }
            ;
            if (sbj3 == '') {
                $('#sbj3').focus();
                return;
            }
            ;

            let subject = new Array();
            $('select[name="sbj"]:selected').each(function () {
                subject.push(this.value);
            });
            $('#sbj').val(subject);


            let date = new Array();
            $('select[name=date_of_birth]:selected').each(function () {
                date.push(this.value);
            });
            $('#date_of_birth').val(date);

            $('#register_form').attr({
                'action': '/registerimpl',
                'method': 'post'
            });
            $('#register_form').submit();
        }
    };
    $(function () {
        let timer;
        register_form.init();
    });
</script>

<div class="d-flex flex-column flex-column-fluid">
    <div class="toolbar" id="kt_toolbar">
        <div class="container-xxl d-flex flex-stack flex-wrap flex-sm-nowrap">
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-1">
                <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_1">
                            <span class="fs-2x text-gray-800" style="font-weight: 900">회원가입</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content fs-6 d-flex flex-column-fluid" id="kt_content">
        <div class="container-xxl">
            <div class="card">
                <div class="d-flex justify-content-end mt-4 mx-4">
                    <!--begin::Step 1-->
                    <div class="mx-8 my-4">
                        <div class="d-flex align-items-center">
                            <div style="margin: 0 10px 15px 0">
                                <i class="bi bi-1-square-fill text-success fs-2hx"></i>
                            </div>
                            <div>
                                <h3>Step 1</h3>
                                <p>필수정보</p>
                            </div>
                        </div>
                    </div>
                    <div class="mx-8 my-4">
                        <div class="d-flex align-items-center">
                            <div style="margin: 0 10px 15px 0">
                                <i class="bi bi-1-square-fill text-gray-300 fs-2hx"></i>
                            </div>
                            <div>
                                <h3 class="text-muted">Step 2</h3>
                                <p class="text-muted">선택정보</p>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="code_real" value=""/>
                <form class="form d-flex flex-center" id="register_form">
                    <input type="hidden" id="contact" name="contact" value=""/>
                    <div class="card-body mw-800px py-20">
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>아이디</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           id="id" name="id"/>
                                    <span id="check_id"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>비밀번호</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd" name="pwd"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>비밀번호 확인</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="password"
                                           id="pwd2"/>
                                    <span id="check_pwd"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>이름</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                           id="name" name="name"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>생년월일</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <div class="form-floating">
                                        <select class="form-control form-control-solid" id="year"
                                                name="date_of_birth" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
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
                                        <label for="year" style="font-size: smaller;">Year</label>
                                    </div>
                                    <div class="form-floating" style="width: 32%">
                                        <select class="form-control form-control-solid" id="month"
                                                name="date_of_birth" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
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
                                        <label for="month" style="font-size: smaller;">Month</label>
                                    </div>
                                    <div class="form-floating">
                                        <select class="form-control form-control-solid" id="day"
                                                name="date_of_birth" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
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
                                        <label for="day" style="font-size: smaller;">Day</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>E-mail</label>
                            <div class="col-lg-9">
                                <div class="input-group input-group-lg input-group-solid">
                                    <input type="email" class="form-control form-control-lg form-control-solid"
                                           id="email" name="email"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>연락처</label>
                            <div class="col-lg-9 d-flex justify mb-3">
                                <div class="spinner spinner-sm spinner-primary spinner-right"
                                     style="width:77%; margin-right:1%">
                                    <input class="form-control form-control-lg form-control-solid" type="number"
                                           id="contact_auth" name="contact_auth"/>
                                </div>
                                <div class="spinner spinner-sm spinner-primary spinner-right" style="width:23%">
                                    <button type="button" class="form-control btn btn-primary fw-bold px-6 py-3 me-3"
                                            id="reg_code_btn">
                                        인증번호 발송
                                    </button>
                                </div>
                            </div>
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9 d-flex align-items-center">
                                <button class="spinner spinner-primary text-center spinner-sm spinner-right form-control btn bg-light-danger fw-bold px-6 py-3 me-1"
                                        style="width:20%;">
                                    <span id="id_span_timer"
                                          class="svg-icon svg-icon-muted text-center text-danger fs-6 fw-bolder">유효시간</span>
                                </button>
                                <div class="spinner spinner-sm spinner-primary spinner-right"
                                     style="width:55%; margin-right:1%;">
                                    <input class="form-control form-control-lg form-control-solid" type="number"
                                           id="code_confirm"/>
                                </div>
                                <div class="spinner spinner-sm spinner-primary spinner-right" style="width:23%">
                                    <button type="button" class="form-control btn btn-primary fw-bold px-6 py-3 me-3"
                                            id="reg_code_send_btn">
                                        인증번호 확인
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-center mb-8">
                            <label class="col-lg-3 col-form-label fw-bolder"><span
                                    class="bullet bullet-vertical bg-primary me-5"></span>관심분야</label>
                            <div class="col-lg-9">
                                <div class="spinner spinner-sm spinner-primary spinner-right">
                                    <div class="form-floating" style="width: 32%">
                                        <select class="form-select form-select-solid" data-control="select2"
                                                data-placeholder="선택하세요" id="sbj1"
                                                name="sbj" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
                                            <option value="Spring">Spring</option>
                                            <option value="Spring boot">Spring boot</option>
                                            <option value="JavaScript">JavaScript</option>
                                            <option value="Java">Java</option>
                                            <option value="JPA">JPA</option>
                                            <option value="React">React</option>
                                            <option value="MVC">MVC</option>
                                            <option value="TypeScript">TypeScript</option>
                                            <option value="Node.js">Node.js</option>
                                            <option value="HTML/CSS">HTML/CSS</option>
                                            <option value="Next.js">Next.js</option>
                                            <option value="jQuery">jQuery</option>
                                            <option value="Redux">Redux</option>
                                            <option value="Docker">Docker</option>
                                            <option value="C#">C#</option>
                                            <option value="C++">C++</option>
                                            <option value="Python">Python</option>
                                            <option value="Unreal Engine">Unreal Engine</option>
                                            <option value="Flutter">Flutter</option>
                                            <option value="Kotlin">Kotlin</option>
                                            <option value="Django">Django</option>
                                            <option value="Unity">Unity</option>
                                            <option value="Firebase">Firebase</option>
                                            <option value="Swift">Swift</option>
                                            <option value="AWS">AWS</option>
                                            <option value="Kubernetes">Kubernetes</option>
                                            <option value="프로토콜">프로토콜</option>
                                            <option value="임베디드">임베디드</option>
                                            <option value="모의해킹">모의해킹</option>
                                            <option value="Forensic">Forensic</option>
                                            <option value="Solidity">Solidity</option>
                                            <option value="Oauth">Oauth</option>
                                            <option value="머신러닝">머신러닝</option>
                                            <option value="딥러닝">딥러닝</option>
                                            <option value="Pandas">Pandas</option>
                                            <option value="Numpy">Numpy</option>
                                            <option value="Kafka">Kafka</option>
                                            <option value="웹크롤링">웹크롤링</option>
                                            <option value="통계">통계</option>
                                            <option value="인공신경망">인공신경망</option>
                                            <option value="Hadoop">Hadoop</option>
                                            <option value="Tensorflow">Tensorflow</option>
                                            <option value="Seaborn">Seaborn</option>
                                            <option value="Tableau">Tableau</option>
                                            <option value="UE Blueprint">UE Blueprint</option>
                                            <option value="언리얼C++">언리얼C++</option>
                                            <option value="캐릭터디자인">캐릭터디자인</option>
                                            <option value="VR/AR">VR/AR</option>
                                            <option value="Arduino">Arduino</option>
                                            <option value="IoT">IoT</option>
                                            <option value="컴퓨터 구조">컴퓨터 구조</option>
                                            <option value="운영체제">운영체제</option>
                                            <option value="네트워크">네트워크</option>
                                            <option value="Qt">Qt
                                            <option>
                                            <option value="Linux">Linux</option>
                                            <option value="MongoDB">MongoDB</option>
                                            <option value="드론 개발">드론 개발</option>
                                            <option value="GUI">GUI</option>
                                            <option value="DBMS/RDBMS">DBMS/RDBMS</option>
                                        </select>
                                        <label for="sbj1" style="font-size: smaller">관심분야1</label>
                                    </div>
                                    <div class="form-floating">
                                        <select class="form-select form-select-solid" data-control="select2"
                                                data-placeholder="선택하세요" id="sbj2"
                                                name="sbj" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
                                            <option value="Spring">Spring</option>
                                            <option value="Spring boot">Spring boot</option>
                                            <option value="JavaScript">JavaScript</option>
                                            <option value="Java">Java</option>
                                            <option value="JPA">JPA</option>
                                            <option value="React">React</option>
                                            <option value="MVC">MVC</option>
                                            <option value="TypeScript">TypeScript</option>
                                            <option value="Node.js">Node.js</option>
                                            <option value="HTML/CSS">HTML/CSS</option>
                                            <option value="Next.js">Next.js</option>
                                            <option value="jQuery">jQuery</option>
                                            <option value="Redux">Redux</option>
                                            <option value="Docker">Docker</option>
                                            <option value="C#">C#</option>
                                            <option value="C++">C++</option>
                                            <option value="Python">Python</option>
                                            <option value="Unreal Engine">Unreal Engine</option>
                                            <option value="Flutter">Flutter</option>
                                            <option value="Kotlin">Kotlin</option>
                                            <option value="Django">Django</option>
                                            <option value="Unity">Unity</option>
                                            <option value="Firebase">Firebase</option>
                                            <option value="Swift">Swift</option>
                                            <option value="AWS">AWS</option>
                                            <option value="Kubernetes">Kubernetes</option>
                                            <option value="프로토콜">프로토콜</option>
                                            <option value="임베디드">임베디드</option>
                                            <option value="모의해킹">모의해킹</option>
                                            <option value="Forensic">Forensic</option>
                                            <option value="Solidity">Solidity</option>
                                            <option value="Oauth">Oauth</option>
                                            <option value="머신러닝">머신러닝</option>
                                            <option value="딥러닝">딥러닝</option>
                                            <option value="Pandas">Pandas</option>
                                            <option value="Numpy">Numpy</option>
                                            <option value="Kafka">Kafka</option>
                                            <option value="웹크롤링">웹크롤링</option>
                                            <option value="통계">통계</option>
                                            <option value="인공신경망">인공신경망</option>
                                            <option value="Hadoop">Hadoop</option>
                                            <option value="Tensorflow">Tensorflow</option>
                                            <option value="Seaborn">Seaborn</option>
                                            <option value="Tableau">Tableau</option>
                                            <option value="UE Blueprint">UE Blueprint</option>
                                            <option value="언리얼C++">언리얼C++</option>
                                            <option value="캐릭터디자인">캐릭터디자인</option>
                                            <option value="VR/AR">VR/AR</option>
                                            <option value="Arduino">Arduino</option>
                                            <option value="IoT">IoT</option>
                                            <option value="컴퓨터 구조">컴퓨터 구조</option>
                                            <option value="운영체제">운영체제</option>
                                            <option value="네트워크">네트워크</option>
                                            <option value="Qt">Qt
                                            <option>
                                            <option value="Linux">Linux</option>
                                            <option value="MongoDB">MongoDB</option>
                                            <option value="드론 개발">드론 개발</option>
                                            <option value="GUI">GUI</option>
                                            <option value="DBMS/RDBMS">DBMS/RDBMS</option>
                                        </select>
                                        <label for="sbj2" style="font-size: smaller">관심분야2</label>
                                    </div>
                                    <div class="form-floating">
                                        <select class="form-select form-select-solid" data-control="select2"
                                                data-placeholder="선택하세요" id="sbj3"
                                                name="sbj" aria-label="Floating label select example">
                                            <option selected value="">선택하세요</option>
                                            <option value="Spring">Spring</option>
                                            <option value="Spring boot">Spring boot</option>
                                            <option value="JavaScript">JavaScript</option>
                                            <option value="Java">Java</option>
                                            <option value="JPA">JPA</option>
                                            <option value="React">React</option>
                                            <option value="MVC">MVC</option>
                                            <option value="TypeScript">TypeScript</option>
                                            <option value="Node.js">Node.js</option>
                                            <option value="HTML/CSS">HTML/CSS</option>
                                            <option value="Next.js">Next.js</option>
                                            <option value="jQuery">jQuery</option>
                                            <option value="Redux">Redux</option>
                                            <option value="Docker">Docker</option>
                                            <option value="C#">C#</option>
                                            <option value="C++">C++</option>
                                            <option value="Python">Python</option>
                                            <option value="Unreal Engine">Unreal Engine</option>
                                            <option value="Flutter">Flutter</option>
                                            <option value="Kotlin">Kotlin</option>
                                            <option value="Django">Django</option>
                                            <option value="Unity">Unity</option>
                                            <option value="Firebase">Firebase</option>
                                            <option value="Swift">Swift</option>
                                            <option value="AWS">AWS</option>
                                            <option value="Kubernetes">Kubernetes</option>
                                            <option value="프로토콜">프로토콜</option>
                                            <option value="임베디드">임베디드</option>
                                            <option value="모의해킹">모의해킹</option>
                                            <option value="Forensic">Forensic</option>
                                            <option value="Solidity">Solidity</option>
                                            <option value="Oauth">Oauth</option>
                                            <option value="머신러닝">머신러닝</option>
                                            <option value="딥러닝">딥러닝</option>
                                            <option value="Pandas">Pandas</option>
                                            <option value="Numpy">Numpy</option>
                                            <option value="Kafka">Kafka</option>
                                            <option value="웹크롤링">웹크롤링</option>
                                            <option value="통계">통계</option>
                                            <option value="인공신경망">인공신경망</option>
                                            <option value="Hadoop">Hadoop</option>
                                            <option value="Tensorflow">Tensorflow</option>
                                            <option value="Seaborn">Seaborn</option>
                                            <option value="Tableau">Tableau</option>
                                            <option value="UE Blueprint">UE Blueprint</option>
                                            <option value="언리얼C++">언리얼C++</option>
                                            <option value="캐릭터디자인">캐릭터디자인</option>
                                            <option value="VR/AR">VR/AR</option>
                                            <option value="Arduino">Arduino</option>
                                            <option value="IoT">IoT</option>
                                            <option value="컴퓨터 구조">컴퓨터 구조</option>
                                            <option value="운영체제">운영체제</option>
                                            <option value="네트워크">네트워크</option>
                                            <option value="Qt">Qt
                                            <option>
                                            <option value="Linux">Linux</option>
                                            <option value="MongoDB">MongoDB</option>
                                            <option value="드론 개발">드론 개발</option>
                                            <option value="GUI">GUI</option>
                                            <option value="DBMS/RDBMS">DBMS/RDBMS</option>
                                        </select>
                                        <label for="sbj3" style="font-size: smaller">관심분야3</label>
                                    </div>
                                </div>
                            </div>
                            <label class="col-lg-3 col-form-label"></label>
                            <div class="col-lg-9">
                                <div class="form-text" style="margin-bottom: 5px">관심있는 분야를 세 가지 선택해주세요. 당신에게 알맞은 강의를
                                    추천해드립니다!
                                </div>
                            </div>
                        </div>
                        <div class="separator separator-dashed my-10"></div>
                        <div class="row">
                            <label class="col-lg-5 col-form-label"></label>
                            <div class="col-lg-7">
                                <button type="button" class="btn btn-primary fw-bold px-6 py-3 me-3" id="register_btn">
                                   다음
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Method Modal Start-->
<div class="modal fade" tabindex="-1" id="auth_modal">
    <div class="modal-dialog">
        <div class="modal-content" style="padding: 2% 0% 0% 0%; text-align:center;">
            <div class="modal-body text-primary" style="display: flex; justify-content: space-between;font-size: 1rem;">
                <div class="text-start" style="width: 90%;">
                    <p id="auth_msg" style="font-weight:700"></p>
                </div>
                <div class="text-end" style="width: 10%;">
                    <img src="/img/close.png" style="width: 40%" data-bs-dismiss="modal" aria-label="Close">
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Method Modal-->


<!--begin::Javascript-->
<script>var hostUrl = "/assets/";</script>
<script src="/assets/plugins/global/plugins.bundle.js"></script>
<script src="/assets/js/scripts.bundle.js"></script>
