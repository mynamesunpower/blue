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
    <title>축축빵빵 | 메이트 프로필</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="../img/logo_img.PNG" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
	<link href="../css/vendors.css" rel="stylesheet">
    <link href="../css/slick/slick.css" rel="stylesheet">
    <link href="../css/slick/slick-theme.css" rel="stylesheet">
    <link href="../css/lightbox/css/lightbox.min.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="../css/custom.css" rel="stylesheet">
    <link href="../css/profile_style.css" rel="stylesheet">
        
     <style>
	 ul.tooltips_demo {
		 list-style:none;
		 margin:0;
		 padding:0;
		}
		ul.tooltips_demo li{
			margin-right:20px;
			display:inline-block;
		}
	 </style>
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
    <header id="plain">
        <!-- 로그인 세션이 있으면 모든 페이지의 헤더 부분이 이 부분으로 나와야 함. -->
        <div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                    <div class="col-6">
                        <ul id="top_links">
                            <!-- 로그인, 찜이 창 크기 줄이면 사라지는 문제 있음. -->
                            <li><span style="color: blue;">홍길동</span>님 환영합니다</li>
                            <li><a href="../mypage.jsp" id="mypage" class="icon-key-4">myPage</a></li>
                            <li><a href="../course_list.jsp" id="wishlist_link">나의 코스 목록</a></li>
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
                    	<h1><a href="../mainAfterLogin.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
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
                                <a href="../mainAfterLogin.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
                            </li>
                            <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">축제 <i class="icon-down-open-mini"></i></a> <!--클릭하면 축제 메인 페이지로 이동하게-->
                                <ul>
                                    <li><a href="../festival.jsp">축제</a></li>
                                    <li><a href="../accommodations_list.jsp">숙박</a></li>
                                    <li><a href="../restaurants_list.jsp">식당</a></li>
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
                                    <li><a href="mate_index_default.jsp">메이트 서비스는?</a></li>
                                    <li><a href="#">나의 메이트 </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a> <!--클릭하면 코스 메인 페이지로 이동하게-->
                                <ul>
                                    <li><a href="../course_main.jsp">코스 자랑 마당</a></li>
                                    <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                    <li><a href="../course_list.jsp">나의 코스 목록</a></li>
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
                                        <div class="image"><img src="../img/thumb_cart_1.jpg" alt="image"></div>
                                        <strong><a href="#">Louvre museum</a>1x $36.00 </strong>
                                        <a href="#" class="action"><i class="icon-trash"></i></a>
                                    </li>
                                    <li>
                                        <div class="image"><img src="../img/thumb_cart_2.jpg" alt="image"></div>
                                        <strong><a href="#">Versailles tour</a>2x $36.00 </strong>
                                        <a href="#" class="action"><i class="icon-trash"></i></a>
                                    </li>
                                    <li>
                                        <div class="image"><img src="../img/thumb_cart_3.jpg" alt="image"></div>
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
    
	<section class="parallax-window" data-parallax="scroll" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<!-- Header Start -->
                <div class="header content-inner" id="header">
                    <p class="header-p">저를 소개합니다. 제 이름은</p>
                    <h1 class="header-h1">김수광</h1>
                    <h2 class="header-h2"></h2>
                    <div class="typed-text">제 나이는 29살이고, 아직은 무직이지만, 열심히 노력해서 취업성공을 목표삼고 있고, 남들처럼 부족함없이 살고 싶습니다., 참고로 저는 귀여운 여성을 좋아합니다.</div>
                </div>
                <!-- Header End -->
		</div>
	</section><!-- End Section -->
 
 <main>  
	<div id="position">
		<div class="container">
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="#">메이트</a></li>
				<li>메이트 찾기</li>
			</ul>
		</div>
	</div>
	<!-- End Position -->

<div class="container margin_60">
	<div class="row justify-content-center">
        
        <div class="col-lg-12">
        
             <div class="row">
                <div class="col-md-12 mate_btns">
                    <a href="" class="btn btn-warning mate_btn make_score">
                        <i class=""></i>프로필 점수 주기</a>
                    <a href="" class="btn btn-warning mate_btn mate_chat">
                        <i></i>메이트 채팅하기</a>
                 </div>
              </div><!-- Edn row -->

              <hr>
             <div class="row">
                <div class="col-md-12">
                 <!-- About Start -->
                <div class="about" id="about">
                    <div class="">
                        <div class="content-header">
                            <h2>자기소개</h2>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-md-6 col-lg-5">
                                <img src="../img/mate/about.jpg" alt="Image">
                            </div>
                            <div class="col-md-6 col-lg-7">
                                <p>
                                    저의 성격을 정말 다양한 성격을 지닌거 같습니다. 예를들어 진중한 분위기엔 어느 누구보다 진중하며,
                                    모두가 가볍게 즐길는 분위기라면, 조금 망가져도 호쾌하게 넘기는 그런  매력적인 남자입니다.
                                    그래서 저와 함께 축제를 간다면, 누구보다 재미있게, 누구보다 신나는 축제를 즐길 수 입니다.
                                    안전한 모범택시와 폭주족의 아슬아슬함을 동시에 즐기고 싶다면 저의 메이트 프로필을 보고,
                                    메이트 채팅을 걸어주세요. 좋은하루되세요^^.
                                  
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="skills">
                                    <div class="skill-name">
                                        <p>매너점수</p><p>85%</p>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="skill-name">
                                        <p>인상점수</p><p>95%</p>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="skills">
                                    <div class="skill-name">
                                        <p>신남점수</p><p>90%</p>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="skill-name">
                                        <p>성격점수</p><p>85%</p>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- About End -->
                 <!-- Education Start -->
                <div class="education" id="education">
                    <div class="">
                        <div class="content-header">
                            <h2>나의 관심사</h2>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <div class="edu-col">
                                    <span>1</span>
                                    <h3>관심사 1</h3>
                                    <p>여기다 뭐 쓰지?</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="edu-col">
                                    <span>2</span>
                                    <h3>관심사 2</h3>
                                    <p>여기다 뭐 쓰지?</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="edu-col">
                                    <span>3</span>
                                    <h3>관심사 3</h3>
                                    <p>쓸게없네</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="edu-col">
                                    <span>4</span>
                                    <h3>관심사 4</h3>
                                    <p>뭘 써야하지</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- 관심사 끝 -->
                      
                <!-- 나의 사진 -->
                <div class="portfolio" id="portfolio">
                    <div class="content-review">
                        <div class="content-header">
                            <h2>나의 사진</h2>
                        </div>
                        <div class="row"></div>
                        <div class="row portfolio-container">
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 portfolio-item web-des">
                                <div class="portfolio-wrap">
                                    <figure>
                                        <img src="../img/mate/portfolio-1.jpg" class="img-fluid" alt="">
                                        <a class="portfolio-title" href="#">김수광<span>sugwang.png</span></a>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진 끝 -->
                    
                 <!-- 메이트 리뷰 (이거 사용방법 알아야된다) -->
                <div class="review" id="review">
                    <div class="">
                        <div class="content-header">
                            <h2>메이트 리뷰</h2>
                        </div>
                        <div class="row align-items-center review-slider">
                            <div class="col-md-12">
                                <div class="review-slider-item">
                                    <div class="review-text">
                                        <p>
                                            그는 좋은 친구였습니다. (★★★★☆)
                                        </p>
                                    </div>
                                    <div class="review-img">
                                        <img src="../img/mate/review-1.jpg" alt="Image">
                                        <div class="review-name">
                                            <h3>김형민</h3>
                                            <p>2021. 2. 25 19:47</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="review-slider-item">
                                    <div class="review-text">
                                        <p>
                                            그는 좋은 친구였습니다. (★★★★☆)
                                        </p>
                                    </div>
                                    <div class="review-img">
                                        <img src="../img/mate/review-2.jpg" alt="Image">
                                        <div class="review-name">
                                            <h3>사쿠라</h3>
                                            <p>2021. 2. 24 19:40</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="review-slider-item">
                                    <div class="review-text">
                                        <p>
                                            그는 좋은 친구였습니다. (★★★★☆)
                                        </p>
                                    </div>
                                    <div class="review-img">
                                        <img src="../img/mate/review-3.jpg" alt="Image">
                                        <div class="review-name">
                                            <h3>떡볶이</h3>
                                            <p>2021. 1. 19 16:21</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 리뷰 끝 -->   
                    
                    
                </div>    
             </div>
                  
        </div><!-- End col-lg-12-->
    </div>
</div><!-- End container -->
</main><!-- End main -->

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
			<h3>Sign In</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
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
						<label for="remember-me">Remember Me</label>
					</div>
					<div class="float-right"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_login"></div>
				<div class="text-center">
					Don’t have an account? <a href="javascript:void(0);">Sign up</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>Please confirm login email below</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
					<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->

	<!-- Common scripts -->
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script src="../js/common_scripts_min.js"></script>
	<script src="../js/functions.js"></script>
    <script src="../plugins/easing/easing.min.js"></script>
    <script src="../plugins/slick/slick.min.js"></script>
    <script src="../plugins/typed/typed.min.js"></script>
    <script src="../plugins/waypoints/waypoints.min.js"></script>
    <script src="../plugins/isotope/isotope.pkgd.min.js"></script>
    <script src="../plugins/lightbox/js/lightbox.min.js"></script>

	<!-- Cat nav mobile -->
    <script src="../js/mate_profile.js"></script>
	

  </body>
</html>