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
    <title>축축빵빵 - 나의 코스 목록</title>

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
                            <!-- 로그인, 찜이 창 크기 줄이면 사라지는 문제 있음. -->
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
                    	<h1><a href="mainAfterLogin.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
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

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/home_bg_1.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>나의 코스 목록</h1>
				<p>내가 만든 코스, 남의 코스를 저장한거 등등을 확인하는 페이지</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="mainAfterLogin.jsp">Home</a>
					</li>
					<li><a href="course_main.jsp">코스</a>
					</li>
					<li>나의 코스 목록</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-12">
                    <div class="form_title">
						<h3><strong><i class="icon-pencil"></i></strong>나의 코스 목록</h3>						
					</div>
                    <div class="step">
                        <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-3 col-md-3">
                                    <div class="img_list">
                                        <a href="course_detail.jsp">
                                            <img src="img/tour_box_1.jpg" alt="Image">
                                            <div class="short_info"><i class="icon_set_1_icon-4"></i>Museums </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7">
                                    <div class="tour_list_desc">
                                        <div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
                                        </div>
                                        <h3><strong>오랑우탄과 함께</strong> 우가가</h3>
                                        <p>코스 설명 따오기~</p>
                                        <ul class="add_info">
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Schedule</h4>
                                                        <strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
                                                        <br>
                                                        <strong>Saturday</strong> 09.00 AM - 5.30 PM
                                                        <br>
                                                        <strong>Sunday</strong> <span class="label label-danger">Closed</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Address</h4> Musée du Louvre, 75058 Paris - France
                                                        <br>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Languages</h4> English - French - Chinese - Russian - Italian
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Parking</h4> 1-3 Rue Elisée Reclus
                                                        <br> 76 Rue du Général Leclerc
                                                        <br> 8 Rue Caillaux 94923
                                                        <br>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Transport</h4>
                                                        <strong>Metro: </strong>Musée du Louvre station (line 1)
                                                        <br>
                                                        <strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
                                                        <br>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2">
                                    <div class="price_list">
                                        <div>
                                            <p><a href="course_detail.jsp" class="btn_1">자세히 보기</a>
                                            </p><br/>
                                            <p><a href="courseRegister.jsp" class="btn btn-success btn-sm">편집하기</a>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End strip -->

                        <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-3 col-md-3">
                                    <div class="img_list">
                                        <a href="course_detail.jsp">
                                            <img src="img/hotel_2.jpg" alt="Image">
                                            <div class="short_info"><i class="icon_set_1_icon-6"></i>Hotel </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7">
                                    <div class="tour_list_desc">
                                        <!-- <div class="score">Superb<span>9.0</span>
                                        </div> -->
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star-empty"></i>
                                        </div>
                                        <h3><strong>보령 머드 축제</strong> 가보고 싶다</h3>
                                        <p>코스 설명 따오기</p>
                                        <ul class="add_info">
                                            <li>
                                                <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Free Wifi"><i class="icon_set_1_icon-86"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Plasma TV with cable channels"><i class="icon_set_2_icon-116"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Swimming pool"><i class="icon_set_2_icon-110"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Fitness Center"><i class="icon_set_2_icon-117"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Restaurant"><i class="icon_set_1_icon-58"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2">
                                    <div class="price_list">
                                        <div>
                                            <p><a href="course_detail.jsp" class="btn_1">자세히 보기</a>
                                            </p><br/>
                                            <p><a href="courseRegister.jsp" class="btn btn-success btn-sm">편집하기</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End strip -->

                        <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-3 col-md-3">
                                    <div class="img_list">
                                        <a href="single_transfer.jsp">
                                            <img src="img/transfer_3.jpg" alt="Image">
                                        </a>
                                        <div class="short_info"><i class="icon_set_1_icon-26"></i>Transfer</div>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7">
                                    <div class="tour_list_desc">
                                        <div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
                                        </div>
                                        <h3><strong>망둥어 잡으러</strong> 떠나용</h3>
                                        <p>코스 설명 따오기</p>
                                        <ul class="add_info">
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-70"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Passengers</h4> Up to 40 passengers.
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-6"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Pick up</h4> Hotel pick up or different place with an extra cost.
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-13"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Accessibility</h4> On request accessibility available.
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-22"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Pet allowed</h4> On request pet allowed.
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tooltip_styled tooltip-effect-4">
                                                    <span class="tooltip-item"><i class="icon_set_1_icon-33"></i></span>
                                                    <div class="tooltip-content">
                                                        <h4>Baggage</h4> Large baggage drop available.
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2">
                                    <div class="price_list">
                                        <div>
                                            <p><a href="course_detail.jsp" class="btn_1">자세히 보기</a>
                                            </p><br/>
                                            <p><a href="courseRegister.jsp" class="btn btn-success btn-sm">편집하기</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End strip -->
                        <hr>
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
                    </div> <!-- end step-->
				</div>
				<!-- End col lg-12 -->
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
	<!-- Cat nav mobile -->
	<script src="js/cat_nav_mobile.js"></script>
	<script>
		$('#cat_nav').mobileMenu();
	</script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map.js"></script>
	<script src="js/infobox.js"></script>
	<script>
		$('.wishlist_close').on('click', function (c) {
			$(this).parent().parent().fadeOut('slow', function (c) {});
		});
	</script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	
	
</body>

</html>