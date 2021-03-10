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
    <title>축축빵빵 | 메이트 서비스 가입</title>

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
	
	<!-- CUSTOM CSS -->
	<link href="../css/custom.css" rel="stylesheet">
        
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
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                    		<div class="text-center"><img src="../img/logo_sticky.png" alt="Image" width="160" height="34" style="margin-bottom: 10px;"></div>
                            <h4 class="text-center">메이트 서비스 가입</h4>
                            <hr>
                           <form>
                                <div class="form-group">
                                	<label>닉네임<span>*</span></label>
                                    <input id="mate_nickname" name="mate_nickname" type="text" class="form-control"  placeholder="닉네임">
                                </div>
                                <div class="form-group">
                                	<label>성별</label>
                                    <select class="form-control">
                                        <option>남성</option>
                                        <option>여성</option>
                                    </select>
                                </div>
                               
                               <div class="form-group">
                                   <label>취미나 관심사는? (중복선택 가능)</label>
                                   <div class="row">
                                        <div class="col-6">
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    여행가기
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    음악 들으며 낮잠
                                                </label>
                                            </div>
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    넷플릭스
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    페스티벌에서 소리질러!
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    가끔은 뮤지컬
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    영화, 연극
                                                </label>
                                            </div>
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    맛집 탐험
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    부어라 마셔라
                                                </label>
                                            </div>
                                        </div>
                                   </div>    
                               </div>
                               
                               <div class="form-group">
                                   <label>나의 모습은? (중복선택 가능)</label>
                                   <div class="row">
                                        <div class="col-6">
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    활발한 말괄량이
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    신중하고 차분해
                                                </label>
                                            </div>
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    알렉스 뺨치는 다정함
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    난 유머유머러스함~
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    자유를 갈망하는 즉흥적인 영혼
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    공감200% 감수성적인 나
                                                </label>
                                            </div>
                                            <div class="checkbox check_items">
                                                <label class="check_item">
                                                    <input type="checkbox" value="">
                                                    축제계획은 계획적인 나에게!
                                                </label>
                                                <label>
                                                    <input type="checkbox" value="">
                                                    모르겠음
                                                </label>
                                            </div>
                                        </div>
                                   </div>    
                               </div>
                                
                               <div class="form-group">
                                   <label>자기소개</label>
                                   <textarea class="form-control" rows="4">
                                   </textarea>
                               </div>
                                
                                <div id="pass-info" class="clearfix"></div>
                                <button class="btn_full">메이트 가입하기</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </section>
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

	<!-- Specific scripts -->
	<script src="../js/pw_strenght.js"></script>
	

  </body>
</html>