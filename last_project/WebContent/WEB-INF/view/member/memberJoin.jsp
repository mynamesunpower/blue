<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<!-- 타이틀 바 -->
    <link rel="shortcut icon" type="image/x-icon" href="img/logo_img.PNG" >
	<title>축제로 - 회원가입</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


	<!-- CSS Files -->
    <link href="../css/bootstrap.min_join.css" rel="stylesheet" />
	<link href="../css/join.css" rel="stylesheet" />


	<!-- Fonts and Icons -->
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
	<link href="../css/join_themify-icons.css" rel="stylesheet">


	<!--   Core JS Files   -->
	<script src="../js/jquery-3.5.1.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min_join.js" type="text/javascript"></script>
	<script src="../js/jquery.bootstrap.wizard_join.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="../js/demo_join.js" type="text/javascript"></script>
	<script src="../js/paper-bootstrap-wizard_join.js" type="text/javascript"></script>

	<!--  More information about jquery.validate here: https://jqueryvalidation.org/	 -->
	<script src="../js/jquery.validate.min.js" type="text/javascript"></script>

 	<!-- 주소 찾기 기능-->
    <script src="../js/findAddress.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	</head>

	<body>

	<div class="image-container set-full-height" style="background-color: lightblue">
	    <!--   작은 로고 넣어서 메인 페이지로 돌아갈 수 있게끔   -->

            <!-- <div class="logo-container">
                <div class="logo" >
                <a href="#">
                <img src="img/logo.PNG">
	            </div>
	            </a>
	            <div class="brand">축제로</div>

	        </div> -->

	    <!--   Big container   -->
	    <div class="container">
	        <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">

		            <!--      Wizard container        -->
		            <div class="wizard-container">

		                <div class="card wizard-card" data-color="blue" id="wizardProfile">
		                    <form action="" method="">
		                <!--        You can switch " data-color="orange" "  with one of the next bright colors: "blue", "green", "orange", "red", "azure"          -->

		                    	<div class="wizard-header text-center">
		                        	<h3 class="wizard-title">회원가입</h3>
									<p class="category">회원가입에 필요한 당신의 정보를 적어주세요.</p>
		                    	</div>

								<div class="wizard-navigation">
									<div class="progress-with-circle">
									     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
									</div>
									<ul>
			                            <li>
											<a href="#about" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div>
												기본정보
											</a>
										</li>
			                            <!-- <li>
											<a href="#account" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-settings"></i>
												</div>
												추가정보
											</a>
										</li> -->
			                            <li>
											<a href="#address" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-map"></i>
												</div>
												가입완료
											</a>
										</li>
			                        </ul>
								</div>
		                        <div class="tab-content">
		                            <div class="tab-pane" id="about">
		                            	<div class="row">
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>이름</label>
													<input name="name" id="name" type="text" class="form-control" placeholder="홍길동">
												</div>
												<div class="form-group">
													<label>아이디 </label>
													<input id ="customer_id" name="customer_id" type="text" class="form-control" placeholder="Smith...">
													<div id='idCheckResult' style="width:200px;color:red"></div>
												</div>
												<div class="form-group">
													<label>비밀번호 </label>
													<input name="password" id="password"type="password" class="form-control" placeholder="문자, 숫자, 특수문자조합으로 8자리 이상">
												</div>
												<div class="form-group">
													<label>비밀번호 확인</label>
													<input id="passwordconfirm" name="passwordconfirm" type="password" class="form-control" placeholder="문자, 숫자, 특수문자조합으로 8자리 이상">
												</div>
												<div class="form-group">
													<label>생년월일 </label>
													<input name='birthday' id='birthday' type="date" class="form-control" >
												</div>
											</div>
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>전화번호</label>
													<input name="tel" type="tel" id='tel' class="form-control" placeholder="휴대폰번호를 입력하고 인증번호를 받아주세요.">
                                                    <button id="getVerifyNumberButton" class="form-control">인증번호 받기</button>
                                                    <input type="text" name="sms" id="sms" class="form-control" placeholder="인증번호를 입력해주세요." disabled>
                                                    <button id="verifyButton" class="form-control">인증</button>
												</div>
												<div class="form-group">
													<label>Email </label>
													<input id='email' name="email" type="email" class="form-control" placeholder="andrew@creative-tim.com">
												</div>
												<div class="form-group">
													<label>주소 </label>
                									<input type="button" value="주소찾기" id="findAddr">
													<input type="text" placeholder="우편번호" id="zonecode" class="form-control">
               										<div>
                  										&emsp;&emsp;&emsp;&emsp;<input type="text" size="35" placeholder="도로명주소 또는 지번주소" id="addr" class="form-control">
                									</div>
               											&emsp;&emsp;&emsp;&emsp;<input type="text" placeholder="상세 주소란" id="detailAddr" class="form-control">
                									<input type="text" placeholder="동" id="extraAddr" class="form-control">
												</div>
											</div>
										</div>
		                            </div>

		                            <div class="tab-pane" id="address">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"></h5>
		                                        <h5 class="info-text">축제로의 가족이 되신 것을 환영합니다!</h5>
		                                        <h4 class="info-text">우측 하단 회원가입을 클릭해 완료해주세요.</h4>
		                                    </div>

		                                </div>
		                            </div>
		                        </div>
		                        <div class="wizard-footer">
		                            <div class="pull-right">
		                                <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='다음' />
		                                <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd' name='finish' value='회원가입' id='joinbtn'/>
		                            </div>

		                            <div class="pull-left">
		                                <input type='button' id='joinFormReset' class='btn btn-previous btn-default btn-wd' name='previous' value='이전' />
		                            </div>
		                            <div class="clearfix"></div>
		                        </div>
		                    </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div><!-- end row -->
		</div> <!--  big container -->



	</div>
<script type="text/javascript">
$(document).ready(function() {

	// 휴대전화 인증 상태
	let verified = false;

	// 이전 누르면 컴백시킨당
	$('#joinFormReset').on('click', function() {
		location.replace('/member/memberJoin.do')
	})


	$('#joinbtn').click(function () {

		if (verified) {
			$.ajax({
				type :'post',
				async :true,
				url : "memberRegister.do",
				contentType:'application/x-www-form-urlencoded;charset=euc-kr', // 한글처리
				data : {
					'id':$('#customer_id').val(),
					'password':$('#password').val(),
					'name':$('#name').val(),
					'tel':$('#tel').val(),
					'email':$('#email').val(),
					'address':$('#zonecode').val() +"/"+$('#addr').val()+"/"+$('#detailAddr').val()+"/"+$('#extraAddr').val(),
					'birthday':$('#birthday').val()
					// 'gender' : $('input[name="gender"]:checked').val(),
					// 'skintype' :$('input[name="skin"]:checked').val()

				},
				success: function(result){

					if (result == 1) {
						location.replace("../main.jsp");
					}
				},
				error : function(err){console.log(err)}
			});
		}
		else {
			alert("전화번호 인증을 먼저 받으십시오.")
		}

	})

	// ID 중복 확인
	$('#customer_id').focusout(function(){

		if($('#customer_id').val().length < 3){

			$('#idCheckResult').text('사용불가합니다.');

		} else {

			$.ajax({
				type: 'post', //전송방식
		    	async : true, //비동기통신
		    	url : 'idCheck.do', // ***요청(request)
		    	contentType : 'application/x-www-form-urlencoded;charset=euc-kr', // 한글처리
		    	data :{'id': $('#customer_id').val()}, //보내는 데이타
		    	success : function(result){
		    		$('#idCheckResult').text(result);
		    	},
		    	error: function(err){console.log(err);}
			});
		}
	})

	// 인증번호 보내기
	$('#getVerifyNumberButton').on('click', function() {
		$('#sms').attr('disabled', false);


		$.ajax({
				url: "sendSms.do",
				data: {
						receiver: $("#tel").val()
						},
				type: "post",
				success: function(result) {
					console.log(result);
					$('#sms').focus();

				},
				error: function (error) {
					console.log(error)
				}
		});

	})
	$('#verifyButton').on('click', function() {
		$.ajax({
				url: "smsCheck.do",
				type: "post",
				data: {
					code: $("#sms").val()
					},
					success: function(result) {
						if (result == "ok") {
							alert("전화번호 인증에 성공했습니다.");
							verified = true;
							$('#verifyButton').text('인증 완료');
							$('#verifyButton').attr('disabled', true);
						}
						else {
							alert("번호 인증 실패");
						}
					}
		});

	})
})
</script>

</body>

</html>
