<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="ddffddff.">
    <meta name="author" content="Ansonika">
    <title>축축빵빵 - 축제 Main</title>

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
        <link href="css/hmcss.css" rel="stylesheet">
        
        <style type="text/css">  /* CSS 첫 이미지 고정 */ 

	#container{height:1200px; background-size:cover; background-image:url("/background/img_1.jpg");}

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

    <!-- ====================헤더========================= -->
    <header>
        <div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                    <div class="col-6">
                        <ul id="top_links">
                            <li><a href="#sign-in-dialog" id="access_link">로그인</a></li>
                            <!-- 로그인 세션이 있으면, 모든 페이지의 헤더 부분이 56~59행 처럼 나와야 함. -->
                            <!-- <li><span style="color: blue;">홍길동</span>님 환영합니다</li>
                            <li><a href="mypage.jsp" id="mypage" class="icon-key-4">myPage</a></li>
                            <li><a href="course_list.jsp" id="wishlist_link">나의 코스 목록</a></li>
                            <li><a href="#" class="icon-logout">로그아웃</a></li> -->
                        </ul>
                    </div>
                </div><!-- End row -->
            </div><!-- End container-->
        </div><!-- End top line-->
        
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div id="logo_home">
                    	<h1><a href="main.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
                        <!-- 로그인 세션이 있으면, 로고 클릭 시 mainAfterLogin.jsp로 이동되게-->
                        <!-- <h1><a href="mainAfterLogin.jsp" title="메인 페이지 앵커">축축빵빵</a></h1> -->
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
                                <a href="main.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
                                <!-- 로그인 세션이 있으면, 홈 버튼 클릭 시 mainAfterLogin.jsp로 이동되게-->
                                <!-- <a href="mainAfterLogin.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i> -->
                                    
                            </li>
                            <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">축제 <i class="icon-down-open-mini"></i></a>
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
                                <a href="#" class="show-submenu" style="font-size: large;">메이트 <i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <!-- 메이트서비스 아닌 회원은 mate_index_default -->
                                    <!-- 메이트서비스 회원은 mate_index -->
                                    <li><a href="mate/mate_index_default.jsp">메이트 서비스는?</a></li>
                                    <li><a href="#">나의 메이트 </a></li>
                                </ul>
                            </li>
                             <li class="submenu">
                                <a href="#" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a><ul>
                                    <li><a href="course_main.jsp">코스 자랑 마당</a></li>
                                    <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                    <li><a href="course_list.jsp">나의 코스 목록</a></li>
                                    </ul>
                            </li>
                        </ul>
                    </div><!-- End main-menu -->
                    
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
                            </div><!-- End dropdown-cart-->
                        </li>
                    </ul>
                </nav>
            </div>
        </div><!-- container -->
    </header><!-- ====================헤더 끝 ====================== -->
    
    <!-- 메인 이미지 슬라이더 -->
	<section id="hero">
	
		<div class="intro_title">
		 <!-- <img src="img/logo_sticky.png"> -->
			<h3 class="animated fadeInDown">삼척 <strong id="js-rotating">2021,달빛아래,소원하는,일상,</strong> 정월대보름제</h3>
			<p class="animated fadeInDown">달빛아래 소원해요, 함께하는 일상</p>
			
		   <a href="festival_detail.jsp" class="animated fadeInUp button_intro">더 보기</a>
		</div>
		
	</section><!-- End 메인 이미지 슬라이더 -->

	<main>

	<div class="container margin_60">
         
        <!-- 월별 축제 이미지 -->
            <div class="main_title">
        
                <h2><a href="#" onclick="setFestivalNewMonth(-1);">◀</a><span class="month">3 월</span><a href="#" onclick="setFestivalNewMonth(1);">▶</a></h2>
              
               
            </div>
            <p class="main_description">겨울이 끝나기 전에 <span>계절이 지나면 경험하기 힘들죠</span></p>
            <div class="row small-gutters categories_grid">
              
                <div class="col-sm-12 col-md-12 bigimage">
                <div id = 'a1'>
                <div>
                    <a href="festival_detail.jsp".jsp">
                        <img src="img/img_cat_home_1.jpg" alt="" class="img-fluid">
                        <div class="wrapper areas1">
                            <h2>국립민속박물관 정월대보름 한마당</h2>
                            <p>(02.01~03.03)</p>
                        </div>
                    </a>
                    </div>
                </div>
                </div>
                
                
                <div class="col-sm-12 col-md-12">
                    <div class="row small-gutters mt-md-0 mt-sm-2">
                        <div class="col-sm-3">
                        <div id = 'a2'>
                        <div>
                            <a href="all_tours_list.jsp">
                                <img src="img/img_cat_home_2.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas2">
                                    <h2>홍성 남당항 새조개 온라인축제</h2>
                                    <p>(3.3~4.1)</p>
                                </div>
                            </a>
                            </div>
                        </div>
                        </div>
                             
                        <div class="col-sm-3">
                        <div id = 'a3'>
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas3">
                                    <h2>어딘지 모르겠다~</h2>
                                    <p>아무데서나 놀자~</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                        <div id = 'a4'>
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas4">
                                    <h2>축제3</h2>
                                    <p>재미있을지도</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                        <div id = 'a5'>
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas5">
                                    <h2>축제4</h2>
                                    <p>재미있을지도</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <br><br>
        <!-- 월별 축제 이미지 끝 -->
    
        <!-- 추천 축제 -->
        <div class="main_title">
            <h2>추천 축제: <span>꼴뚜기 잡기 대★소★동</span></h2>
            <p>솔직히 이 축제가 재밌을거라곤 말 못하겠어요.</p>
        </div>
        
        <!-- 추천 축제 캐러셀 -->
        <div class="owl-carousel owl-theme list_carousel add_bottom_30">
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>인기</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_1.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">꼴뚜기.jpeg</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>꼴뚜기</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End 코스에 추가하기-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>한달 남음</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">망둥어 사냥꾼</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>매운탕</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3"><span>평가 좋음</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">망둥어 잡기</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>매운탕</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
            </div>
            <!-- 추천 축제 캐러셀 끝 -->
		
        <p class="text-center nopadding">
            <a href="#" class="btn_1 medium"><i class="icon-eye-7"></i> 모든 축제 보기 (144) </a>
        </p> <br><br>
        
        <!-- 내 근처의 축제 -->
        <div class="main_title">
            <h2>근처 축제: <span> 오랑우탄 조련 축제 </span></h2>
            <p>근처에 사는데 주변 축제 정도는 놀러 가봐야죠! 정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애정신나갈거같애</p>
            <a href="#" class="btn_1">자세히 보기</a>
        </div>
        
        <!-- 추천 축제 캐러셀 -->
        <div class="owl-carousel owl-theme list_carousel add_bottom_30">
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>인기</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_1.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">꼴뚜기.jpeg</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>꼴뚜기</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End 코스에 추가하기-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>한달 남음</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">망둥어 사냥꾼</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>매운탕</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3"><span>평가 좋음</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info">
                                    <span class="price">망둥어 잡기</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>매운탕</strong> 투어</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
            </div>
            <!-- 추천 축제 캐러셀 끝 -->
        
    </div><!-- End container -->

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
				<div class="text-center"><input type="submit" value="로그인" class="btn_login"></div>
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
	<script src="js/morphext.min.js"></script>
	<script>
	$("#js-rotating").Morphext({
		animation: "fadeIn", // Overrides default "bounceIn"
		separator: ",", // Overrides default ","
		speed: 2000, // Overrides default 2000
		complete: function () {
			// Overrides default empty function
		}
	});

$(document).ready(function() {
		
		var cur_month = 0;
		var fes_oMonth = new Date();
		fes_oMonth.setDate(1);
		cur_month = (fes_oMonth.getMonth()+1);
		getMonthData()
	})
	
	
	
	//달에 해당하는 데이타 가져오기
 	function getMonthData() {
 		//alert("118로들옴")
		$.ajax({
			url: "mongomonths.do",
			dataType: 'json',
			type: "POST",
			data: {"month" : cur_month},
			success: function(data) {
				//setMonthData(data);
				var count = data;
				//alert("iss = "+count.length);
				 $.each(data, function (i, item) {
					 //console.log(item.image)
					 console.log(item._id)
					 console.log("나는"+item.festival_name)
					 console.log("이미지는"+item.image)
					 console.log(item.image[0])
					festivals = '';
					festivals += '<div>'
					festivals +='<a href="/details.do?tel='+item.postcode+'">'
					//festivals +='<a href="javascript:" onclick="festivaldetail('+item.tel+')">'
					if(item.image!=null){
					festivals +='<img src="data:image/jpg;base64,'+item.image[0].data+'" alt="" class="img-fluid">'	
					}else{
						festivals +='<img src="img/img_cat_home_1.jpg" alt="" class="img-fluid">'	
					}
					//festivals +='<img src="img/img_cat_home_1.jpg" alt="" class="img-fluid">'	
					///festivals +='<img src="D:/Temp/test.png" alt="" class="img-fluid">'
					//festivals +='<img src="'+item.image+'" alt="" class="img-fluid">'
					festivals +='<div class="wrapper">'
					festivals +='<h2>'+item.festival_name+'</h2>'
					festivals +='<p>'+item.startDate+'~'+item.endDate+'</p>'
					festivals +='</div>'
					festivals +='</a>'
					festivals +='</div>'
					
						//alert(count.length)
					if(count.length <2){
						//alert(count.length)
						//alert("지워")
						$("#a2>div ").remove();
						$("#a3 >div").remove();
						$("#a4 >div").remove();
						$("#a5 >div").remove();
					}else if(count.length <3){
						$("#a3 >div").remove();
						$("#a4 >div").remove();
						$("#a5 >div").remove();
					}else if(count.length <4){
						
						$("#a4>div").remove();
						$("#a5>div").remove();
					}else if(count.length <5){
						
						$("#a5 >div").remove();
					}
					
					
					
					
					
						
                    //alert("items : "+item.size);
                    
                    if(i ==0){
                    ///$('.areas1 > h2').html(item.festival_name);
                    $('#a1').html(festivals);
                    //alert(i)
                    }else if(i ==1){
                    	//alert(i)
                        //$('.areas2 > h2').html(item.festival_name);
                    	$('#a2').html(festivals);
                    }else if(i ==2){
                    	//alert(i)
                        //$('.areas3 > h2').html(item.festival_name);
                    	$('#a3').html(festivals);
                    }else if(i ==3){
                    	//alert(i)
                        //$('.areas4 > h2').html(item.festival_name);
                    	$('#a4').html(festivals);
                    }else if(i ==4){
                    	//alert(i)
                        //$('.areas5 > h2').html(item.festival_name);
                    	$('#a5').html(festivals);
                    }
                    //alert("item : "+item.festival_name);
                    //alert("item : "+item.start_date);
                });
				
				console.log(data)
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
 	}


	
	
	//월 좌우 클릭시
	var cur_month = 0;
	
	var fes_oMonth = new Date();
	fes_oMonth.setDate(1);
	cur_month = (fes_oMonth.getMonth()+1);
 	function setFestivalNewMonth(radd) {
 	
 		var chkmonth = ( cur_month + radd );

 		if( chkmonth == 0 || chkmonth == 13 ) {
 			 			
 		} else {
	
 			cur_month += radd;
 			
 	 		$('.month').html(cur_month + ' 월');

 	 		getMonthData();
 	 		//recommandfestival();
 		}
 	}
 	
 	function recommandfestival() {
 		$.ajax({
			url: "mongorecommand.do",
			dataType: 'json',
			type: "POST",
			data: {"month" : cur_month},
			success: function(data) {
				//setMonthData(data);
				alert("성공?")
				
				 $.each(data, function (i, item) {
                    alert("i : "+i);
                    alert("item : "+item.festival_name);
                    alert("item : "+item.start_date);
                });
				
				console.log(data)
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
				console.log(';;')
			}
		});
 	}
 	
 	//축제 상세
 	function festivaldetail(iduso){
 		location.href="festival_detail.jsp?id="+iduso;
 		console.log("왔다"+id)
 	}
 	
 	
 	//월별 축제 불러오기
 	function setMonthData(data) {

		uid = data.header.id;

		var remshow = '';
		var compid = '';
		var sun = -1;

		var subHtml = '';

		//월 콘텐츠 영역 초기화.
		$("#area0 div").remove();
		$("#area1 div").remove();
		$("#area2 div").remove();
		$("#area3 div").remove();
		$("#area4 div").remove();
		$("#area5 div").remove();

		if( data.body.subMainList != undefined ) {

			$.each(data.body.subMainList, function (index, items) {

				subHtml = '';

				subHtml += '<div class="wrap_contView">';

				subHtml += '		<h3 class="tit_atc" tabindex="0"></h3>';
				subHtml += '		<span class="date" id="fesmain'+items.compOrder+'" tabindex="0"></span>';
				subHtml += '		<div class="box_remPhoto" id="fesmainList'+items.compOrder+'">';
				subHtml += '		</div>';
				subHtml += '	</div>';

				if( items.compOrder == 0 ) {
					$("#area0").html(subHtml);
				} else if( items.compOrder == 1 ) {
					$("#area1").html(subHtml);
				} else if( items.compOrder == 2 ) {
					$("#area2").html(subHtml);
				} else if( items.compOrder == 3 ) {
					$("#area3").html(subHtml);
				} else if( items.compOrder == 4 ) {
					$("#area4").html(subHtml);
				} else if( items.compOrder == 5 ) {
					$("#area5").html(subHtml);
				}
			});
		}

		if( data.body.result != undefined ) {
			$.each(data.body.result, function (index, items) {

				if( compid != items.compId ) {

					compid = items.compId;
					var compId = items.compId;
					var compOrder = items.compOrder;

					remshow = '';

					remshow = getFesShowcase(data, compId, compOrder);

					$('#fesmainList'+compOrder).html(remshow);
				}
			});
		}
		swiperBanner();
	}

	
	</script>
	
 <script>
    window.onload = function(){
    //반복제거, url
    //document.getElementById("div").style.backgroundRepeat = "no-repeat";
    //이미지 등록
    
    document.getElementById("hero").style.backgroundImage = "url('/img/login/testfile.png')";
    //이미지 사이즈
    //document.getElementById("div").style.backgroundSize = "200px";
    }
</script>

<!--  <script type="text/javascript"> /* 사용자가 새로고침, F5 눌럿을 때만, 배경화면이 자동 변경 자바스크립트 함수*/

	window.onload = function(){

		var background_img = "/img/main"; 

		var number = Math.floor(Math.random() * 16) + 1;

		var container = document.getElementById("container");
		//var container = document.getElementById("hero");

		

		background_img += number + ".jpg";

		container.style.backgroundImage = "url('" + background_img + "')";

	}-->

</script> 


	

  </body>
</html>