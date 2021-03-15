<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
	<meta name="author" content="Ansonika">
	<title>축축빵빵 - Mypage</title>

	<!-- Favicons-->
	<link rel="shortcut icon" href="img/logo_img.PNG" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	
	<!-- COMMON CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="css/custom.css" rel="stylesheet">
	<link href="css/realtime_inquire.css" rel="stylesheet">
</head>

<body>
	<div id="preloader">
		<div class="sk-spinner sk-spinner-wave">
			<div class="sk-rect1"></div>
			<div class="sk-rect2"></div>
			<div class="sk-rect3"></div>
			<div class="sk-rect4"></div>
			<div class="sk-rect5"></div>
		</div>
	</div>
	<!-- End Preload -->

	<%@ include file="../../../header.jsp" %>

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/restaurant_top.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>마이 페이지에용~</h1>
				<p>이 부분 없으면 페이지가 이상해지네용~</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div class="container margin_60">
			<div class="row">
				<aside class="col-lg-3" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_cat" id="faq_box">
							<ul id="cat_nav">
								<!-- <li><a href="#" id="active"><i class="icon_set_1_icon-94"></i>내 정보</a> -->
								<li><a href="#myinfoArea" class="active"><i class="icon_set_1_icon-94"></i>내 정보</a>
								</li>
								<li><a href="#faqArea"><i class="icon_set_1_icon-74"></i>FAQ</a>
								</li>
								<li><a href="#lostArea"><i class="icon_set_1_icon-42"></i>분실물 제보 게시판</a>
								</li>
								<li><a href="#inquireArea"><i class="icon_set_1_icon-57"></i>문의하기</a>
								</li>
								<li><a href="#inquire2Area"><i class="icon_set_1_icon-85"></i>실시간 1:1 문의 </a>
								</li>
							</ul>
						</div>
					</div>
					<!-- <div class="box_style_2">
						<i class="icon_set_1_icon-57"></i>
						<h4>Need <span>Help?</span></h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a>
						<small>Monday to Friday 9.00am - 7.30pm</small>
					</div> -->
				</aside>
				<!--End aside -->
				<!-- <div class="col-lg-9" id="faq"> -->
				<div class="col-lg-9">
					<div class="col-lg-12 add_bottom_15">
						<div class="form_title">
							<h3><strong class="icon_set_1_icon-94"></strong>내 정보</h3>
						</div>
						<div id="myinfoArea">
							<div class="step">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>이름</label>
											<input type="text" id="name" name="name" class="form-control" value="${vo.name}" disabled>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>전화번호</label>
											<input type="text" id="telephone" name="telephone" class="form-control" value="${vo.tel}">
											<div style="text-align: right;">
												<button type="button" class="btn btn-success btn-sm" id="changePhoneNumber">전화번호 변경</button>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>이메일</label>
											<input type="email" id="email" name="email" class="form-control" value="${vo.email}">
											<div style="text-align: right;">
												<button type="button" class="btn btn-success btn-sm" id="changeEmail">이메일 변경</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">									
										<div class="form-group">
											<label>주소 </label>
											<input type="text" id="addr" class="form-control" value="${vo.address}" style="width:100%;">
											<div style="text-align: right;">
												<button type="button" class="btn btn-success btn-sm" id="findAddr">주소 변경</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--End step -->
						</div>
					</div>
					<hr>
					<!-- FAQ start-->
					<div class="col-lg-12 add_bottom_15">
						<div class="form_title">
							<h3><strong class="icon_set_1_icon-74"></strong>FAQ</h3>
						</div>
						<div id="faqArea">
							<div class="step">
								<!-- <div class="col-lg-12" id="faq"> -->
								<div class="col-lg-12">
									<div id="faq" class="accordion_styled">
										<div class="card">
											<div class="card-header">
											<h4>
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapseOne_faq">축제.. 좋아하세요?<i class="indicator icon-minus float-right"></i></a>
											</h4>
											</div>
											<div id="collapseOne_faq" class="collapse show" data-parent="#faq">
											<div class="card-body">
												정말 좋아합니다. 이번엔 거짓이 아니라구요.
											</div>
											</div>
										</div>
										<div class="card">
											<div class="card-header">
											<h4>
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapseTwo_faq">메이트 서비스는요?<i class="indicator icon-plus float-right"></i></a>
											</h4>
											</div>
											<div id="collapseTwo_faq" class="collapse" data-parent="#faq">
											<div class="card-body">
												죄송합니다. 제 실력이 부족하여 미구현입니다.
											</div>
											</div>
										</div>
										<div class="card">
											<div class="card-header">
												<h4>
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapseThree_faq">게임업계 개발자 연봉이 올랐대여<i class="indicator icon-plus float-right"></i></a>
												</h4>
											</div>
											<div id="collapseThree_faq" class="collapse" data-parent="#faq">
												<div class="card-body">
													대박대박
												</div>
											</div>
										</div>
									</div>
									<!--End FAQ -->
								</div>
							</div>
							<!--End step -->
						</div>
					</div>
					<hr>
					<!-- 분실물 start-->
					<div class="col-lg-12 add_bottom_15">
						<div class="form_title">
							<h3><strong class="icon_set_1_icon-42"></strong>분실물 제보 게시판</h3>
						</div>
						<div id="lostArea">
							<div class="step">
								<div class="table-responsive">
									<table class="table table-striped table-hover">
										<thead class="table-light">
											<tr>
												<th>관리번호</th>
												<th>이미지</th>
												<th>습득물 이름</th>
												<th>습득 장소</th>
												<th>습득일자</th>
												<th>작성자</th>
												<th>작성일자</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>메롱</td>
												<td>아이폰15</td>
												<td>길바닥</td>
												<td>2021.02.26</td>
												<td>유재석</td>
												<td>2021.02.26</td>
											</tr>
											<tr>
												<td>2</td>
												<td>메렁</td>
												<td>갤럭시15</td>
												<td>바닷속</td>
												<td>2021.02.26</td>
												<td>노홍철</td>
												<td>2021.02.26</td>
											</tr>
										</tbody>
									</table>
								</div>
								<hr/>
								<div style="text-align: center;">
									<select name="category">
										<option value="전체">전체</option>
										<option value="축제">축제</option>
										<option vlaue="숙박">숙박</option>
										<option value="식당">식당</option>
									</select>
									<select name="place">
										<option value="전체">전체</option>
										<option value="습득물이름">습득물이름</option>
										<option vlaue="습득사업장">습득사업장</option>
										<option value="습득장소">습득장소</option>
									<input type="text" placeholder="검색어 입력">
									<input type="button" class="btn btn-info btn-sm" value="조회"></button> <!-- 검색 결과 조회 기능 필요-->
									</select>
									<input type="button" class="btn btn-success btn-sm" value="글 쓰기"></input> <!-- 누르면 나올 팝업창 필요-->
								</div>
								<!--pagination-->
								<nav aria-label="Page navigation">
									<ul class="pagination justify-content-center">
										<li class="page-item">
											<a class="page-link" href="#" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
												<span class="sr-only">Previous</span>
											</a>
										</li>
										<li class="page-item active"><span class="page-link">1<span class="sr-only">(current)</span></span>
										</li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item">
											<a class="page-link" href="#" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
												<span class="sr-only">Next</span>
											</a>
										</li>
									</ul>
								</nav>
								<!-- end pagination-->
							</div><!-- end step-->
						</div>
					</div><!-- 분실물 end-->
					<hr>
					<!-- 문의 start-->
					<div class="col-lg-12 add_bottom_15">
						<div class="form_title">
							<h3><strong class="icon_set_1_icon-57"></strong>문의하기</h3>
						</div>
						<div id="inquireArea">
							<div class="step">
								<div class="billing-details">
									<div class="shop-form">
										<form method="post">  <!-- 주문 양식 따온거라 form으로 묶여져있네-->
											<div class="row">
												<div class="form-group col-md-6 col-sm-6 col-xs-12">
													<label>이름 <sup>*</sup>
													</label>
													<input type="text" name="field-name" value="" placeholder="" class="form-control" value="${vo.name}">
												</div>
												<div class="form-group col-md-6 col-sm-6 col-xs-12">
													<label>전화번호 <sup>*</sup>
													</label>
													<input type="text" name="field-name" value="" placeholder="" class="form-control" value="${vo.tel}">
												</div>
												<div class="form-group col-md-6 col-sm-6 col-xs-12">
													<label>이메일 <sup>*</sup>
													</label>
													<input type="email" name="field-name" value="" placeholder="" class="form-control" value="${vo.email}">
												</div>
												<div class="form-group col-md-12 col-sm-6 col-xs-12">
													<label>문의 유형
													</label>
													<select class="custom-select">
														<option selected>선택해주세요.</option>
														<option value="1">코스 서비스</option>
														<option value="2">정보 오류 수정 </option>
														<option value="3">기타</option>
													</select>
												</div>											
												<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<label>문의 내역</label>
													<textarea id="cs_detail" placeholder="문의 사항을 상세히 기재해주세요." class="form-control"></textarea>
												</div>
											</div>
											<div style="text-align: center;">
											<button type="button" class="btn btn-success">문의 남기기 <i class="icon-left"></i>
											</div>
											</button>
										</form>
									</div>
								</div>
							</div>
							<!--End step -->
						</div>
					</div>
					<!--End 문의하기-->
					<hr>
					<!-- 1:1 문의 start-->
					<div class="col-lg-12 add_bottom_15">
						<div class="form_title">
							<h3><strong class="icon_set_1_icon-85"></strong>실시간 1:1 문의</h3>
							<a class="memberChat" href="#">관리자와 채팅</a>
						</div>
						<div id="inquire2Area">
							<div class="step">
								<section class="msger">																  
									<main class="msger-chat">
									  <div class="msg left-msg">
										<div
										 class="msg-img"
										 style="background-image: url(https://image.flaticon.com/icons/svg/327/327779.svg)"
										></div>
								  
										<div class="msg-bubble">
										  <div class="msg-info">
											<div class="msg-info-name">BOT</div>
											<div class="msg-info-time">12:45</div>
										  </div>
								  
										  <div class="msg-text">
											안녕하세요, 무엇을 도와드릴까요? 😄
										  </div>
										</div>
									  </div>
								  
									  <!-- <div class="msg right-msg">
										<div
										 class="msg-img"
										 style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
										></div>
								  
										<div class="msg-bubble">
										  <div class="msg-info">
											<div class="msg-info-name">YOU</div>
											<div class="msg-info-time">12:46</div>
										  </div>
								  
										  <div class="msg-text">
											You can change your name in JS section!
										  </div>
										</div>
									  </div> -->
									</main>
								  
									<form class="msger-inputarea">
									  <input type="text" class="msger-input" placeholder="메시지를 입력해주세요.">
									  <button type="submit" class="msger-send-btn">전송</button>
									</form>
								  </section>
							</div>
						</div>
					</div>
				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
		<form name="frmData" id="frmData" method="post">
			<input type="hidden" name="name" id="mem_name" value="${vo.name}" /> 
			<input type="hidden" name="id" id="mem_id" value="${vo.id}" />
		</form>

	</main>
	<!-- End main -->

	<%@ include file="../../../footer.jsp" %>

	<!-- Common scripts -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<!-- 주소 찾기 기능-->
	<script src="js/findAddress.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- Fixed sidebar -->
	<script src="js/theia-sticky-sidebar.js"></script>
	<script>
	// 시간 format 변환

		function getTimeStamp() {

			var d = new Date();

			var s = leadingZeros(d.getFullYear(), 4) + '-'
					+ leadingZeros(d.getMonth() + 1, 2) + '-'
					+ leadingZeros(d.getDate(), 2) + ' ' +

					leadingZeros(d.getHours(), 2) + ':'
					+ leadingZeros(d.getMinutes(), 2) + ':'
					+ leadingZeros(d.getSeconds(), 2);

			return s;
		}

		function leadingZeros(n, digits) {
			var zero = '';
			n = n.toString();

			if (n.length < digits) {
				for (i = 0; i < digits - n.length; i++)
					zero += '0';
			}
			return zero + n;
		}
		
		function openPop() {

			var url = "../CustomerService/memberChat.do";
			var pop_title = "관리자와 대화하기";
			var option = "width = 500, height = 500, top = 100, left = 200, location = no";

			window.open(url, pop_title, option);
		}

		$('.memberChat').on('click', function() {
			
			
			var date = getTimeStamp();
			console.log(date)
			
			$.ajax({
				type: 'post',
				url: '../admin/admin_customer_chat.do',
				contentType:'application/x-www-form-urlencoded;charset=euc-kr', // 한글처리
				data: {
					'id': $('#mem_id').val(),
					'name': $('#mem_name').val(),
					'first_date': date.split(' ')[0],
					'second_date': date.split(' ')[1]
				},
				success: function(result) {
					console.log('성공')
				},
				error: function(error) {
					console.log(error)
				},
				complete: function(complete) {
					console.log('끝나따')
					
					// 채팅창 열기!
					openPop();
				}
			})
			
		});

		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop : 80
		});
	</script>
	<script>
	$('#faq_box a[href^="#"]').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
			|| location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			   if (target.length) {
				 $('html,body').animate({
					 scrollTop: target.offset().top -115
				}, 800);
				return false;
			}
		}
	});
	</script>
	
	<script src="js/realtime_inquire.js"></script>
	<!-- Cat nav mobile -->  <!--모바일 화면에서 메뉴 접어서 보여주는거-->
	<!-- <script src="js/cat_nav_mobile.js"></script>
	<script>
		$('#cat_nav').mobileMenu();
	</script> -->

	<!-- Map -->
	<!-- <script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map_restaurants.js"></script>
	<script src="js/infobox.js"></script> -->
	
	<!-- Check box and radio style iCheck -->
	<!-- <script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script> -->
	
</body>

</html>