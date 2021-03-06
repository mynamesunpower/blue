<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<!-- Header================================================== -->
	<header>
		<!-- 로그인 세션이 있으면 모든 페이지의 헤더 부분이 이 부분으로 나와야 함. -->
		<div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                    <div class="col-6">
                        <ul id="top_links">
							<li><span style="color: blue;">홍길동</span>님 환영합니다</li>
                            <li><a href="mypage.jsp" id="mypage" class="icon-key-4">myPage</a></li>
                            <li><a href="course_list.jsp" id="wishlist_link">나의 코스 목록</a></li>
                            <li><a href="#" class="icon-logout">로그아웃</a></li>
                        </ul>
                    </div>
                </div><!-- End row -->
            </div><!-- End container-->
        </div><!-- End top line-->
		<!-- 여기까지 -->

		<div class="container">
            <div class="row">
                <div class="col-3">
                    <div id="logo_home">
                    	<h1><a href="main.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
                    </div>
                </div>
                <nav class="col-9">
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="img/logo_sticky.png" width="160" height="34" alt="City tours">  <!--모바일 화면 우측 서랍 아이콘 눌렀을 때 로고 나오는 거-->
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul>
                            <li class="submenu">
                                <a href="mainAfterLogin.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
                            </li>
                            <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">축제 <i class="icon-down-open-mini"></i></a> <!--클릭하면 축제 메인 페이지로 이동하게-->
                                <ul>
                                    <li><a href="festival.jsp">축제</a></li>
                                    <li><a href="accommodations_list.jsp">숙박</a></li>
                                    <li><a href="restaurants_list.jsp">식당</a></li>
                                    <!-- <li class="third-level"><a href="javascript:void(0);">테스트</a>
                                        <ul>
                                            <li><a href="#">테스트2</a></li>
                                            <li><a href="#">테스트3</a></li>
                                            <li><a href="#">테스트4</a></li>
                                            <li><a href="#">테스트5</a></li>
                                        </ul>
                                    </li> -->
                                </ul>
                            </li>
                            <li class="submenu">
                                <!-- 메이트서비스 아닌 회원은 mate_index_default -->
                                <!-- 메이트서비스 회원은 mate_index -->
                                <a href="#" class="show-submenu" style="font-size: large;">메이트 <i class="icon-down-open-mini"></i></a> <!--클릭하면 메이트 메인 페이지로 이동하게-->
                                <ul> 
                                    <li><a href="mate/mate_index_default.jsp">메이트 서비스는?</a></li>
                                    <li><a href="#">나의 메이트 </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a> <!--클릭하면 코스 메인 페이지로 이동하게-->
                                <ul>
                                    <li><a href="course_main.jsp">코스 자랑 마당</a></li>
                                    <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                    <li><a href="course_list.jsp">나의 코스 목록</a></li>
                                </ul>
                            </li>                            
                        </ul>
                    </div>                    
                    <!-- End main-menu -->

                    <!-- 헤더 메뉴 아이콘 -->
                    <ul id="top_tools">
                        <li>
                            <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                        </li>
                        <!-- 즐겨찾기.. 장바구니처럼 넣는 거 하느냐 마느냐~ 고민쓰-->
                        <li>
                            <div class="dropdown dropdown-cart">
                                <a href="#" data-toggle="dropdown" class="cart_bt"><i class="icon_bag_alt"></i><strong>3</strong></a>
                                <ul class="dropdown-menu" id="cart_items">
                                    <li>
                                        <div class="image"><img src="img/thumb_cart_1.jpg" alt="image"></div>
                                        <strong><a href="#">Louvre museum</a>1x $36.00 </strong>
                                        <a href="#" class="action"><i class="icon-trash"></i></a>
                                    </li>
                                    <li>
                                        <div class="image"><img src="img/thumb_cart_2.jpg" alt="image"></div>
                                        <strong><a href="#">Versailles tour</a>2x $36.00 </strong>
                                        <a href="#" class="action"><i class="icon-trash"></i></a>
                                    </li>
                                    <li>
                                        <div class="image"><img src="img/thumb_cart_3.jpg" alt="image"></div>
                                        <strong><a href="#">Versailles tour</a>1x $36.00 </strong>
                                        <a href="#" class="action"><i class="icon-trash"></i></a>
                                    </li>
                                    <li>
                                        <div>Total: <span>$120.00</span></div>
                                        <a href="cart.jsp" class="button_drop">Go to cart</a>
                                        <a href="payment.jsp" class="button_drop outline">Check out</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End dropdown-cart-->
                        </li>
                        </ul>
                </nav>
            </div>
        </div><!-- container -->
	</header>
	<!-- End Header -->

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
											<input type="text" id="name" name="name" class="form-control">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>전화번호</label>
											<input type="text" id="telephone" name="telephone" class="form-control">
											<div style="text-align: right;">
												<button type="button" class="btn btn-success btn-sm" id="changePhoneNumber">전화번호 변경</button>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>이메일</label>
											<input type="email" id="email" name="email" class="form-control">
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
											<input type="text" placeholder="우편번호" id="zonecode" class="form-control">
											<input type="text" size="35" placeholder="도로명주소 또는 지번주소" id="addr" class="form-control">
											<input type="text" placeholder="상세 주소란" id="detailAddr" class="form-control">
											<input type="text" placeholder="동" id="extraAddr" class="form-control">
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
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapseOne_faq">공부가 하기 싫어효<i class="indicator icon-minus float-right"></i></a>
											</h4>
											</div>
											<div id="collapseOne_faq" class="collapse show" data-parent="#faq">
											<div class="card-body">
												나가죽자
											</div>
											</div>
										</div>
										<div class="card">
											<div class="card-header">
											<h4>
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapseTwo_faq">오늘 저녁은 뭘 먹죠<i class="indicator icon-plus float-right"></i></a>
											</h4>
											</div>
											<div id="collapseTwo_faq" class="collapse" data-parent="#faq">
											<div class="card-body">
												식욕이 없어요.
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
													<input type="text" name="field-name" value="" placeholder="" class="form-control">
												</div>
												<div class="form-group col-md-6 col-sm-6 col-xs-12">
													<label>전화번호 <sup>*</sup>
													</label>
													<input type="text" name="field-name" value="" placeholder="" class="form-control">
												</div>
												<div class="form-group col-md-6 col-sm-6 col-xs-12">
													<label>이메일 <sup>*</sup>
													</label>
													<input type="email" name="field-name" value="" placeholder="" class="form-control">
												</div>
												<div class="form-group col-md-12 col-sm-6 col-xs-12">
													<label>문의 유형
													</label>
													<select class="custom-select">
														<option selected>선택해주세요.</option>
														<option value="1">코스 서비스</option>
														<option value="2">메이트 서비스</option>
														<option value="3">기타</option>
													</select>
												</div>											
												<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<label>문의 내역</label>
													<textarea placeholder="문의 사항을 상세히 기재해주세요." class="form-control"></textarea>
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
						</div>
						<div id="inquire2Area">
							<div class="step">
							울랄라랄라
							
							</div>
						</div>
					</div>
				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<footer class="revealed">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>도움이 필요하세요?</h3>
                    <a href="tel://004542344599" id="phone">+82 10 3333 4444</a>
                    <a href="mailto:help@citytours.com" id="email_footer">help@festi.bbang</a>
                </div>
                <div class="col-md-4">
                    <h3>축축빵빵</h3>
                    <ul>
                        <li><a href="#">축축빵빵은요!</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">로그인</a></li>
                        <li><a href="member/memberJoin.do">회원가입</a></li>
                         <li><a href="#">이용 약관</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h3>언어 선택</h3>
                    <div class="styled-select">
                        <select name="lang" id="lang">
                            <option value="Korean" selected>한국어</option>
                            <option value="English">English</option>
                            <option value="Japanese">日本語</option>
                        </select>
                    </div>
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-google"></i></a></li>
                            <li><a href="#"><i class="icon-instagram"></i></a></li>
                            <li><a href="#"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                        </ul>
                        <p>© Kosmo73 - Blue 2021</p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer><!-- End footer -->

	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_set_1_icon-77"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon_set_1_icon-78"></i>
			</button>
		</form>
	</div><!-- End Search Menu -->

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
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
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