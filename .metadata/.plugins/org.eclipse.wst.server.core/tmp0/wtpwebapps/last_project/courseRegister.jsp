<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
	<title>축축빵빵 - 코스 편집하기</title>

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

	<!-- REVOLUTION SLIDER CSS -->
	<link href="layerslider/css/layerslider.css" rel="stylesheet">
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
                    </div>
                </div><!-- End row -->
            </div><!-- End container-->
        </div><!-- End top line-->

		<div class="container">
			<div class="row">
				<div class="col-3">
					<div id="logo_home">
                    	<h1><a href="mainAfterLogin.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
					</div>
				</div>
				<nav class="col-9">
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="img/logo_sticky.png" width="160" height="34" alt="City tours">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul>
                            <li class="submenu">
                                <a href="mainAfterLogin.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
                            </li>
                            <li class="submenu">
                                <a href="festival.jsp" class="show-submenu" style="font-size: large;">축제 <i class="icon-down-open-mini"></i></a> <!--클릭하면 축제 메인 페이지로 이동하게-->
                                <ul>
                                    <li><a href="festival.jsp">축제</a></li>
                                    <li><a href="accommodations_list.jsp">숙박</a></li>
                                    <li><a href="restaurants_list.jsp">식당</a></li>
                                    <li class="third-level"><a href="javascript:void(0);">테스트</a>
                                        <ul>
                                            <li><a href="#">테스트2</a></li>
                                            <li><a href="#">테스트3</a></li>
                                            <li><a href="#">테스트4</a></li>
                                            <li><a href="#">테스트5</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu" style="font-size: large;">메이트 <i class="icon-down-open-mini"></i></a> <!--클릭하면 메이트 메인 페이지로 이동하게-->
                                <ul> 
                                    <li><a href="#">메이트 서비스는?</a></li>
                                    <li><a href="#">나의 메이트 </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="course_main.jsp" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a> <!--클릭하면 코스 메인 페이지로 이동하게-->
                                <ul>
									<li><a href="course_main.jsp">코스 자랑 마당</a></li>
                                    <li><a href="course_list.jsp">나의 코스 목록</a></li>
                                </ul>
                            </li>                            
                        </ul>
                    </div>
					<!-- End main-menu -->

                    <ul id="top_tools">
                        <li>
                            <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                        </li>
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
                            </div><!-- End dropdown-cart-->
                        </li>
                    </ul>
                </nav>
			</div>
		</div>
		<!-- container -->
	</header>
	<!-- End Header -->

	<main>
		<!-- Slider -->
		<div id="full-slider-wrapper">
			<div id="layerslider" style="width:100%;height:600px;">
				<!-- first slide -->
				<div class="ls-slide" data-ls="slidedelay: 5000; transition2d:5;">
					<img src="img/slides/slide_1.jpg" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">여기다간</h3>
					<p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">사람들이 올려놓은 인기있는 코스</p>
					<a class="ls-l button_intro_2 outline" style="top:370px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='all_tour_list.jsp'>자세히 보기</a>
				</div>

				<!-- second slide -->
				<div class="ls-slide" data-ls="slidedelay: 5000; transition2d:85;">
					<img src="img/slides/slide_2.jpg" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">캐러셀로</h3>
					<p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">스윽 보여주면</p>
					<a class="ls-l button_intro_2 outline" style="top:370px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='all_tour_list.jsp'>자세히 보기</a>
				</div>

				<!-- third slide -->
				<div class="ls-slide" data-ls="slidedelay:5000; transition2d:103;">
					<img src="img/slides/slide_3.jpg" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">어떨깝쇼</h3>
					<p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">하하</p>
					<a class="ls-l button_intro_2 outline" style="top:370px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='all_tour_list.jsp'>자세히 보기</a>
				</div>

				<!-- fourth slide -->
				<div class="ls-slide" data-ls="slidedelay: 5000; transition2d:14;">
					<img src="img/slides/slide_4.jpg" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">예예</h3>
					<p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">그러십죠</p>
					<a class="ls-l button_intro_2 outline" style="top:370px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='all_tour_list.jsp'>자세히 보기</a>
				</div>

			</div>
		</div>
		<!-- End layerslider -->

		<div id="position">
			<div class="container">
				<ul>
					<li><a href="main.jsp">Home</a>
					</li>
					<li><a href="course_main.jsp">코스</a>
					</li>
					<li><a href="course_list.jsp">나의 코스 목록</a>
					</li>
					<li>코스 편집하기</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-md-8">
					<div class="form_title">
						<h3><strong><i class="icon-pencil"></i></strong>코스 편집하기</h3>						
					</div>
					<div class="step">
						<!-- <div id="message-contact"></div> -->
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<p>코스명</p>
									<input type="text" class="form-control" id="name_contact" name="name_contact" placeholder="코스 만들었을 때 이름 가져와 채우기. (편집 가능)"><hr/>
								</div>
							</div>
						</div>
						<div id="single_tour_feat" style="text-align: center;">
							<ul>
								<li><i class="pe-7s-map-marker"></i>총<span style="font-size: large; color: cadetblue"> n</span>건</li>
								<li><i class="pe-7s-graph1"></i>코스 총 거리 :<span style="font-size: large; color: cadetblue;"> n</span> km</li>
							</ul>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div style="text-align: right; font-size: larger;">
									<i class="icon-trash-7" style="cursor: pointer;"></i>  <!-- 쓰레기통 클릭 시 해당 칸 삭제-->
								</div>
								<a class="box_news" href="blog.jsp">
									<figure><img src="img/news_home_1.jpg" alt="">
										<figcaption><strong>1</strong></figcaption>  <!-- figcaption 넘 큰뎅.. 작게하고 싶다-->
									</figure>
									<ul>
										<li>주소</li>
										<li>전화번호</li>
									</ul>
									<h4>축제 or 숙소 or 식당 이름</h4>
									<p>해시태그 등으로 간략 설명?</p>
									
								</a>
								
							</div>
						</div>
						<hr/>
						<!-- /box_news -->
						<div class="row">
							<div class="col-sm-12">
								<div style="text-align: right; font-size: larger;">
									<i class="icon-trash-7 style="cursor: pointer;"></i>  <!-- 쓰레기통 클릭 시 해당 칸 삭제-->
								</div>
								<a class="box_news" href="blog.jsp">
									<figure><img src="img/news_home_1.jpg" alt="">
										<figcaption><strong>2</strong></figcaption>
									</figure>
									<ul>
										<li>주소</li>
										<li>전화번호</li>
									</ul>
									<h4>축제 or 숙소 or 식당 이름</h4>
									<p>해시태그 등으로 간략 설명?</p>
								</a>
							</div>
						</div>
						<hr/>
						<!-- /box_news -->
						<div class="row">
							<textarea rows="5" id="message_contact" name="message_contact" class="form-control" placeholder="코스에 대해 설명해주세요." style="height:100px; margin-bottom: 5%;"></textarea>
						</div>
						<hr/>
						<div class="row">
							<div id="map" class="map"></div>
						</div>
						<hr/>
						<!-- End map -->
					</div> <!-- End step-->
				</div>
				<!-- End col-md-8 -->
				<aside class="col-lg-4" id="sidebar" style="z-index:999">
					<div class="theiaStickySidebar">
						<div class="box_style_1 expose">
							<span class="tape"></span>
							<div class="row">
								<div class="col-sm-12">
									<h4>코스 테마 <i class="icon_camera_alt"></i></h4>
									<select id="" class="form-control" name="">
										<option value="" selected>테마 선택</option>
										<option value="">가족 코스</option>
										<option value="">도보 코스</option>
										<option value="">힐링 코스</option>
										<option value="">먹보 코스</option>
										<option value="">캠핑 코스</option>
										<option value="">반려동물과 함께</option>
										<option value="">축제 코스</option>
									</select>
									<hr/>
								</div>

								<div class="col-sm-12">
									<h4>코스 일정 <i class="icon-clock-1"></i></h4>
									<select id="" class="form-control" name="">
										<option value="" selected>일정 선택</option>
										<option value="">당일 코스</option>
										<option value="">1박 2일</option>
										<option value="">2박 3일 이상</option>
									</select>
									<hr/>
								</div>

								<div class="col-sm-12">
									<p style="font-size: large;">코스 자랑 마당에 공유하기
										<!-- <label class="switch-light switch-ios float-right">
											<input type="checkbox" name="option_2" id="option_2" value="">
											<span>
											<span>No</span>
											<span>Yes</span>
											</span>
											<a></a> -->
									</p>
									<div style="text-align: center;">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>
											<label class="form-check-label" for="inlineRadio1">Yes</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
											<label class="form-check-label" for="inlineRadio2">No</label>
										</div>
									</div>
									<hr/>
								</div>

								<div class="col-sm-12">
									<div style="text-align: center;">
										<input type="button" value="저장" class="btn_1" id="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</aside> <!-- End aside-->
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
                        <li><a href="#sign-in-dialog">로그인</a></li>
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
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>로그인</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
                <div class="snsLogin" style="text-align: center;">
                    <input type="button" style="width: 270px; height: 48px; background-color: #FFFFFF; background: url(img/login/naver_login.PNG); border: 0; outline: 0;" >
                    <input type="button" style="width: 270px; height: 48px; background-color: #FFFFFF; background: url(img/login/kakao_login.png); border: 0; outline: 0;" >
                </div>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-left">
						<input id="remember-me" type="checkbox" name="check">
						<label for="remember-me">기억하기</label>
					</div>
					<div class="float-right"><a id="forgot" href="javascript:void(0);">비밀번호를 잊어버리셨나요?</a></div>
				</div>
				<div class="text-center">
                    <!-- <input type="submit" value="로그인" class="btn_login"> -->
                    <a href="mainAfterLogin.jsp" type="button" class="btn_login">로그인</a>
                </div>
				<div class="text-center">
					계정이 없으신가요? <a href="member/memberJoin.do">회원가입</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<!-- <label>Please confirm login email below</label> -->
                        <label>하단에 로그인 이메일을 작성해주세요.</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<!-- <p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p> -->
                    <p>새 비밀번호로 재설정 할 수 있는 링크가 포함된 이메일을 받게됩니다.</p>
					<div class="text-center"><input type="submit" value="비밀번호 재설정" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->

	<!-- Common scripts -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="assets/validate.js"></script>
	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script type="text/javascript" src="js/map_home.js"></script>
	<script type="text/javascript" src="js/infobox.js"></script>
	<!-- 상단 캐러셀-->
	<script src="js/jquery-migrate.min.js"></script>
	<script src="layerslider/js/greensock.js"></script>
	<script src="layerslider/js/layerslider.transitions.js"></script>
	<script src="layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			'use strict';
			$('#layerslider').layerSlider({
				autoStart: true,
				responsive: true,
				responsiveUnder: 1280,
				layersContainer: 1170,
				skinsPath: 'layerslider/skins/'
					// Please make sure that you didn't forget to add a comma to the line endings
					// except the last line!
			});
		});
	</script>
	<!-- Fixed sidebar -->
	<script src="js/theia-sticky-sidebar.js"></script>
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>
</body>


</html>