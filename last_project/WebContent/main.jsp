<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String kakaonickname = (String)session.getAttribute("kakaonickname"); %>
<%String navernickname = (String)session.getAttribute("navernickname"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>축축빵빵 - 전 국민 페스티벌 플랫폼</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/logo_img.PNG" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Go  chi+Hand|Lato:300,400|Montserrat:400,700|Roboto+Slab:400,100,300,700" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="css/custom.css" rel="stylesheet">

    <!-- REVOLUTION SLIDER CSS -->
	<link rel="stylesheet" type="text/css" href="rev-slider-files/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="rev-slider-files/css/settings.css">

    <!-- REVOLUTION LAYERS STYLES -->
	<style>
		.tp-caption.News-Title,
		.News-Title {
			color: rgba(255, 255, 255, 1.00);
			font-size: 70px;
			line-height: 60px;
			font-weight: 700;
			font-style: normal;
			text-decoration: none;
			background-color: transparent;
			border-color: transparent;
			border-style: none;
			border-width: 0px;
			border-radius: 0 0 0 0px
		}

		.tp-caption.News-Subtitle,
		.News-Subtitle {
			color: rgba(255, 255, 255, 1.00);
			font-size: 15px;
			line-height: 24px;
			font-weight: 300;
			font-style: normal;
			font-family: Roboto Slab;
			text-decoration: none;
			background-color: rgba(255, 255, 255, 0);
			border-color: transparent;
			border-style: none;
			border-width: 0px;
			border-radius: 0 0 0 0px
		}

		.tp-caption.News-Subtitle:hover,
		.News-Subtitle:hover {
			color: rgba(255, 255, 255, 0.65);
			text-decoration: none;
			background-color: rgba(255, 255, 255, 0);
			border-color: transparent;
			border-style: solid;
			border-width: 0px;
			border-radius: 0 0 0px 0
		}
	</style>
	<style type="text/css">
		.hermes.tp-bullets {}

		.hermes .tp-bullet {
			overflow: hidden;
			border-radius: 50%;
			width: 16px;
			height: 16px;
			background-color: rgba(0, 0, 0, 0);
			box-shadow: inset 0 0 0 2px rgb(255, 255, 255);
			-webkit-transition: background 0.3s ease;
			transition: background 0.3s ease;
			position: absolute
		}

		.hermes .tp-bullet:hover {
			background-color: rgba(0, 0, 0, 0.21)
		}

		.hermes .tp-bullet:after {
			content: ' ';
			position: absolute;
			bottom: 0;
			height: 0;
			left: 0;
			width: 100%;
			background-color: rgb(255, 255, 255);
			box-shadow: 0 0 1px rgb(255, 255, 255);
			-webkit-transition: height 0.3s ease;
			transition: height 0.3s ease
		}

		.hermes .tp-bullet.selected:after {
			height: 100%
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
        <div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                    <div class="col-6">
                        <ul id="top_links">
                            <c:choose>
                            	<c:when test="${sessionScope.memberId eq null}">
                            		<li><a href="#sign-in-dialog" id="access_link">로그인</a></li>
                            	</c:when>
                            	<c:when test="${sessionScope.memberId ne null}">
                            		<%if((kakaonickname ==null)&&(navernickname ==null)){ %>
	                            		<li><span style="color: blue;">${sessionScope.memberId}</span>님 환영합니다</li>
	                            		<li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
	                            		<li><a href="course/course_list.do?memberId=${sessionScope.memberId}" id="wishlist_link">나의 코스 목록</a></li>
	                            		<li><a href="member/logout.do" class="icon-logout">로그아웃</a></li>
                            		<%} %>
                            		<%if(kakaonickname !=null){ %>
                            			<li><span style="color: blue;"><%=kakaonickname %></span>님 환영합니다
                            			<li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
                            			<li><a href="course/course_list.do?memberId=${sessionScope.memberId}" id="wishlist_link">나의 코스 목록</a></li>
                           			<%} %>
                          			<%if(navernickname !=null){ %>
                           				<li><span style="color: blue;"><%=navernickname %></span>님 환영합니다
                           				<li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
                           				<li><a href="course/course_list.do?memberId=${sessionScope.memberId}" id="wishlist_link">나의 코스 목록</a></li>
                           			<%} %>
                            	</c:when>
                            </c:choose>
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
                                <a href="main.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i></a>
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
                                    <li><a href="course/course_main.do">코스 자랑 마당</a></li>
                                    <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                    <c:choose>
                                    	<c:when test="${sessionScope.memberId ne null}">
                                    		<li><a href="course/course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a></li>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<li><a href="#sign-in-dialog" id="access_link2">나의 코스 목록</a></li>
                                    	</c:otherwise>
                                    </c:choose>
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
	
	<main>
        <!-- Slider -->
		<div id="rev_slider_13_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="highlight-carousel1" data-source="gallery" style="margin:0px auto;background:#000000;padding:0px;margin-top:0px;margin-bottom:0px;">
			<!-- START REVOLUTION SLIDER 5.4.1 fullwidth mode -->
			<div id="rev_slider_13_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.1">
				<ul>
					<!-- SLIDE  -->
					<li data-index="rs-30" data-transition="slideoverhorizontal" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1500" data-thumb="rev-slider-files/assets/100x50_newspaper_bg1.jpg" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1000" data-fsslotamount="7" data-saveperformance="off" data-title="Discover" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE -->
						<img src="img/main/main_slide1.png" alt="" data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
						<!-- LAYERS -->

						<!-- LAYER NR. 1 -->
						<div class="tp-caption News-Title   tp-resizeme" id="slide-30-layer-1" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['450','450','274','274']" data-fontsize="['50','65','50','50']" data-lineheight="['60','60','50','50']" data-width="364" data-height="133" data-whitespace="normal" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; min-width: 364px; max-width: 364px; max-width: 133px; max-width: 133px; white-space: normal; font-size: 65px;font-family:Montserrat;">모든 축제<br> 정보 </div>

						<!-- LAYER NR. 2 -->
						<div class="tp-caption   tp-resizeme" id="slide-30-layer-2" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['587','587','382','382']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;"><img src="rev-slider-files/assets/bluebar.png" alt="" data-ww="['350px','350px','350px','350px']" data-hh="['4px','4px','4px','4px']" data-no-retina> </div>

						<!-- LAYER NR. 3 -->
						<div class="tp-caption News-Subtitle   tp-resizeme" id="slide-30-layer-3" data-x="['left','left','left','left']" data-hoffset="['81','81','41','41']" data-y="['top','top','top','top']" data-voffset="['605','605','401','401']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power3.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255, 255, 255, 0.65);br:0 0 0px 0;"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7; white-space: nowrap;cursor:pointer;">전국 모든 축제 정보와 주변 숙소, 식당을<br> 확인해보세요. </div>

						<!-- LAYER NR. 4 -->
                        <div class="tp-caption -   tp-resizeme" id="slide-30-layer-4" data-x="['left','left','left','left']" data-hoffset="['360','423','383','383']" data-y="['top','top','top','top']" data-voffset="['607','607','403','403']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(0,210,255,1);"><div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="festival.jsp" role="button">더 알아보기</a></div></div>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-31" data-transition="slideoverhorizontal" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1500" data-thumb="assets/100x50_newspaper_bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Beach" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE -->
						<img src="img/main/main_slide2.png" alt="" data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
						<!-- LAYERS -->

						<!-- LAYER NR. 5 -->
                            <div class="tp-caption News-Title   tp-resizeme" id="slide-31-layer-1" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['450','450','270','270']" data-fontsize="['50','70','50','50']" data-lineheight="['60','60','50','50']" data-width="['397','397','297','297']" data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; min-width: 397px; max-width: 397px; white-space: normal; font-family:Montserrat;">메이트
                                <br>찾기 </div>

						<!-- LAYER NR. 6 -->
						<div class="tp-caption   tp-resizeme" id="slide-31-layer-2" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['587','587','382','382']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;"><img src="rev-slider-files/assets/bluebar.png" alt="" data-ww="" data-hh="" data-no-retina> </div>

						<!-- LAYER NR. 7 -->
						<div class="tp-caption News-Subtitle   tp-resizeme" id="slide-31-layer-3" data-x="['left','left','left','left']" data-hoffset="['81','81','41','41']" data-y="['top','top','top','top']" data-voffset="['605','605','401','401']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power3.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 0.65);br:0 0 0px 0;"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7; white-space: nowrap; cursor:pointer;">즐거운 축제, 혼자 즐기기엔 아쉽다구요? </div>

						<!-- LAYER NR. 8 -->
                        <div class="tp-caption -   tp-resizeme" id="slide-30-layer-4" data-x="['left','left','left','left']" data-hoffset="['360','423','383','383']" data-y="['top','top','top','top']" data-voffset="['607','607','403','403']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(0,210,255,1);"><div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="mate/mate_index_default.jsp" role="button">더 알아보기</a></div></div>
                        <!-- 메이트서비스 아닌 회원은 mate_index_default -->
                        <!-- 메이트서비스 회원은 mate_index -->
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-32" data-transition="slideoverhorizontal" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1500" data-thumb="assets/100x50_newspaper_bg2.jpg" data-rotate="0" data-saveperformance="off" data-title="Trip" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE -->
						<img src="img/main/main_slide3.png" alt="" data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
						<!-- LAYERS -->

						<!-- LAYER NR. 9 -->
						<div class="tp-caption News-Title   tp-resizeme" id="slide-32-layer-1" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['450','450','269','269']" data-fontsize="['50','70','50','50']" data-lineheight="['60','60','50','50']" data-width="364" data-height="133" data-whitespace="normal" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; min-width: 364px; max-width: 364px; max-width: 133px; max-width: 133px; white-space: normal;font-family:Montserrat;">축제 코스<br>추천 </div>

						<!-- LAYER NR. 10 -->
						<div class="tp-caption   tp-resizeme" id="slide-32-layer-2" data-x="['left','left','left','left']" data-hoffset="['80','80','40','40']" data-y="['top','top','top','top']" data-voffset="['587','587','382','382']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;"><img src="rev-slider-files/assets/bluebar.png" alt="" data-ww="" data-hh="" data-no-retina> </div>

						<!-- LAYER NR. 11 -->
						<div class="tp-caption News-Subtitle   tp-resizeme" id="slide-32-layer-3" data-x="['left','left','left','left']" data-hoffset="['81','81','41','41']" data-y="['top','top','top','top']" data-voffset="['605','605','401','401']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power3.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255, 255, 255, 0.65);br:0 0 0px 0;"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7; white-space: nowrap;cursor:pointer;">어디를 가야할지 모르겠다구요? </div>

						<!-- LAYER NR. 12 -->
                        <div class="tp-caption -   tp-resizeme" id="slide-30-layer-4" data-x="['left','left','left','left']" data-hoffset="['360','423','383','383']" data-y="['top','top','top','top']" data-voffset="['607','607','403','403']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(0,210,255,1);"><div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="course/course_main.do" role="button">더 알아보기</a></div></div>
					</li>
				</ul>
				<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
			</div>
		</div>
		<!-- END REVOLUTION SLIDER -->
        <div class="white_bg">
            <div class="container margin_60">
                <div class="row small-gutters categories_grid">
                    <div class="col-sm-12 col-md-6">
                        <a href="festival.jsp"> <!--클릭하면 축제 메인 페이지로 이동하게-->
                            <img src="img/main/main_festa.jpg" alt="" class="img-fluid">
                            <div class="wrapper">
                                <h2>축제</h2>
                                <p>1150 posted</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="row small-gutters mt-md-0 mt-sm-2">
                            <div class="col-sm-12 mt-sm-2">
                                <a href="all_restaurants_list.jsp"> <!--클릭하면 메이트 메인 페이지로 이동하게-->
                                    <img src="img/main/main_mate.jpg" alt="" class="img-fluid">
                                    <div class="wrapper">
                                        <h2>메이트</h2>
                                        <p>1223 matched</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-12 mt-sm-2">
                                <a href="course/course_main.do"> <!--클릭하면 코스 메인 페이지로 이동하게-->
                                    <img src="img/main/main_course.png" alt="" class="img-fluid" width="800" height="343">
                                    <div class="wrapper">
                                        <h2>코스</h2>
                                        <p>800 posted</p>
                                    </div>
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!--/categories_grid-->
            </div>
            <!-- /container -->
        </div>
        <!-- /white_bg -->

		<div class="container margin_60">

			<div class="main_title">
                <h2><span>ㅣ</span>인스타그램 이미지 캐러셀</h2>
			</div>
            <div class="owl-carousel owl-theme list_carousel add_bottom_30">
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>Popular</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                                <img src="img/tour_box_1.jpg" width="800" height="533" class="img-fluid" alt="image">                                
                            </a>
                        </div>                        
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
            </div>
            <!-- /carousel -->
			
			<p class="text-center add_bottom_30">
				<a href="festival.jsp" class="btn_1">축제 더 보기</a>
			</p>

			<hr class="mt-5 mb-5">

			<div class="main_title">
				<h2><span>ㅣ</span>축제 <span>날씨</span> 정보 캐러셀</h2>
			</div>
            <div class="owl-carousel owl-theme list_carousel add_bottom_30">
                <div class="item">
                    <div class="hotel_container">
                        <div class="img_container">
                            <a href="single_hotel.jsp">
                                <img src="img/hotel_1.jpg" width="800" height="533" class="img-fluid" alt="image">
                                <div class="short_info hotel">
                                    지역
                                    <span class="price">
                                        <sup>최저기온</sup>
                                        ℃/
                                        <sup>최고기온</sup>
                                        ℃
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="hotel_title">
                            <h3><strong>축제이름</strong></h3>
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">하트 대신 날씨 이미지 넣어주고 싶음</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box -->
                </div>
                <!-- /item -->
            </div>
            <!-- /carousel -->
			<p class="text-center nopadding">
				<a href="all_hotels_list.jsp" class="btn_1">날씨 더 보기</a>
			</p>
		</div>
		<!-- End container -->
        <div class="white_bg">
            <div class="container margin_60">
                <div class="main_title">
                    <h2><span>ㅣ</span>테마별 축제이야기 & 기획기사</h2>
                </div>
                <div class="row">
	                <div class="col-lg-6">
	                    <a class="box_news" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=79409b07-a8a3-47d5-927d-a3e11a4277a0&con_type=10700">
	                        <figure><img src="img/main/main_news1.jpg" alt="">
	                        </figure>
	                        <ul>
	                            <li>등록일</li>
	                            <li>2020.12.16</li>
	                        </ul>
	                        <h4>청정 자연에서 즐기는 힐링 축제</h4>
	                        <p>맑고 깨끗한 자연은 언제나 눈과 마음을 편안하게 만든다. 바쁜 일상에서 잠시 벗어나 아름다운 자연 앞에서 느끼는 감동과 위로만큼 확실한 힐링이 또 있을까.</p>
	                    </a>
	                </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=21b4f671-fc92-40a4-abe1-82d523d3a106&con_type=10700">
                            <figure><img src="img/main/main_news2.jpg" alt="">
                            </figure>
                            <ul>
                                <li>등록일</li>
                                <li>2020.12.18</li>
                            </ul>
                            <h4>전통과 만나는 가장 재미있는 방법!</h4>
                            <p>시간이 흐름에 따라 전통이라는 단어에는 왠지 모를 무게감과 거리감이 더해진 것만 같다. 사실 굳이 각을 잡고 어려운 책을 펼치지 않더라도 전통을 느끼고 배우는 방법은 다양하다. 그중에서도 가장 재미있는 방법은 뭐니 뭐니 해도 역시 축제가 아닐까?</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=0fc60f77-6868-49a7-a962-baede7ab3e17&con_type=10700">
                            <figure><img src="img/main/main_news3.jpg" alt="">
                            </figure>
                            <ul>
                                <li>등록일</li>
                               	<li>2020.12.18</li>
                            </ul>
                            <h4>안전하게 즐기는 비대면 온라인 축제</h4>
                            <p>코로나19로 평범한 일상마저 멈춰야 했던 2020년. 함께 어울려 웃으며 즐겼던 수많은 축제들도 줄줄이 취소되며 많은 아쉬움을 남겼다. 그러나 안전하게 즐기는 비대면 온라인 축제로 집콕생활에 지친 이들에게 작으나마 기쁨과 희망을 선물해준 축제들도 있다. 내년에는 직접 찾아가 즐길 수 있기를 바라는 마음을 담아 이들 온라인 축제를 모아 보았다.</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=ada9e2f2-e78e-4c7e-a9c6-227db2e89254&con_type=10700">
                            <figure><img src="img/main/main_news4.png" alt="">
                            </figure>
                            <ul>
                                <li>등록일</li>
                                <li>2020.12.04</li>
                            </ul>
                            <h4>낮보다 아름다운 순간, 그 축제의 밤</h4>
                            <p>밤이 낮보다 아름다운 순간이 있다. 흩뿌려져 있는 별빛, 따뜻하게 빛나는 불빛. 그래서 우린 어떤 여행지를 가든 어둠 속에서 형형색색 빛나는불빛을 찾으며 함께 웃고, 때로는 따뜻한 위로 받는 시간을 사랑한다. 이것이 우리가 늦은 밤 숙소를 나서는 이유가 아닐까. 별이 빛나는 밤, 소중한 사람들과 함께 특별한 추억을 남길 수 있는 심야의 시간으로 당신을 이끌고자 한다.</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                </div>
                <!-- /row -->
                <p class="text-center nopadding">
                    <a href="https://korean.visitkorea.or.kr/other/other_list.do?otdid=4e706603-293b-11eb-b8bd-020027310001&moreTag=%ED%85%8C%EB%A7%88%EB%B3%84%EC%B6%95%EC%A0%9C%EC%9D%B4%EC%95%BC%EA%B8%B0%7C%7C" class="btn_1">이야기 더 보기</a>
                </p>
            </div>
            <!-- End container -->
        </div>
        <!-- End white_bg -->
        <div class="container margin_60">
            <div class="main_title">
                <h2><span>ㅣ</span>테마별 축제</h2>
            </div>
            <div class="row">
           		<div class="col-lg-3 col-md-6 text-center">
           			<h3><span>ㅣ</span>두근두근 감성 축제</h3>
					<p>
						<a href="https://korean.visitkorea.or.kr/detail/fes_detail.do?cotid=da2c0d94-e3e2-433a-8d2c-94932aee8776&big_category=A02&mid_category=A0207&big_area=37"><img src="img/main/test1.png" alt="Pic" class="img-fluid"></a>
					</p>
					<h4><span>무주 반딧불 축제</span></h4>
					<p>
						전라북도 무주군
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<h3><span>ㅣ</span>신나는 놀이 축제</h3>
					<p>
						<a href="https://korean.visitkorea.or.kr/detail/fes_detail.do?cotid=055d530e-b36f-4714-9292-02a75fe47b76&big_category=A02&mid_category=A0207&big_area=32"><img src="img/main/test2.png" alt="Pic" class="img-fluid"></a>
					</p>
					<h4><span>화천 산천어 축제</span></h4>
					<p>
						강원도 화천군
					</p>
				</div>
                <div class="col-lg-3 col-md-6 text-center">
					<h3><span>ㅣ</span>입안가득 맛의 축제</h3>
					<p>
						<a href="https://korean.visitkorea.or.kr/detail/fes_detail.do?cotid=e5d334d3-30a3-4c50-8981-03ee9e9489c0&big_category=A02&mid_category=A0207&big_area=32"><img src="img/main/test3.png" alt="Pic" class="img-fluid"></a>
					</p>
					<h4><span>강릉 커피 축제</span></h4>
					<p>
						강원도 강릉시
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<h3><span>ㅣ</span>과거로 시간여행 축제</h3>
					<p>
						<a href="https://korean.visitkorea.or.kr/detail/fes_detail.do?cotid=17a16f42-c187-4c77-8d5f-c6b212e2536a&big_category=A02&mid_category=A0207&big_area=38"><img src="img/main/test4.png" alt="Pic" class="img-fluid"></a>
					</p>
					<h4><span>영암왕인문화축제</span></h4>
					<p>
						전라남도 영암군
					</p>
				</div>
        	</div>
        </div>
        <!-- End container -->
        <div class="white_bg">
            <div class="container margin_60">
                <div class="main_title">
                <h2>Some <span>good</span> reasons</h2>
                <p>
                    축축빵빵을 이용해야 하는 이유!
                </p>
            </div>
            <div class="row">
                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.2s">
                    <div class="feature_home">
                        <i class="icon_set_1_icon-41"></i>
                        <h3><span>+999</span> 축제 정보</h3>
                        <p>
                            많은 축제가 당신을 기다리고 있어요.
                        </p>
                        <a href="festival.jsp" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.4s">
                    <div class="feature_home">
                        <!-- <i class="icon_set_1_icon-30"></i> -->
                        <i class="icon-users"></i>
                        <h3><span>+9999</span> 사용자</h3>
                        <p>
                            다양한 사람과 함께 축제를 즐겨보세요.
                        </p>
                        <a href="mate/mate_index_default.jsp" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
                    <div class="feature_home">
                        <i class="pe-7s-graph1"></i>
                        <h3><span>+999 </span> 코스 추천</h3>
                        <p>
                            프로계획러들의 코스 추천
                        </p>
                        <a href="course/course_main.do" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

            </div>
            <!--End row -->

            <hr>

            <div class="row">
                <div class="col-md-6">
                    <img src="img/main/logo.png" alt="Laptop" class="img-fluid laptop">
                </div>
                <div class="col-md-6">
                    <h3><span>축축빵빵</span> 슬기롭게 이용하기</h3>
                    <p>
                        축축빵빵은 자유롭게 먹고, 즐기고, 많은 곳을 다니던 우리들의 소소한 일상의 행복을 되찾을 그 날을 기원하며 국내 모든 축제 정보를 담았어요.
                    </p>
                    <ul class="list_order">
                        <li><span>1</span>축제 정보 살펴보기!</li>
                        <li><span>2</span>함께 갈 메이트 구하기!</li>
                        <li><span>3</span>축제가 즐거웠다면? 코스에 담아 추천하기!</li>
                    </ul>
                    <a href="festival.jsp" class="btn_1">시작하기</a>
                </div>
            </div>
            <!-- End row -->
            </div>
            <!-- End container -->
        </div>
        <!-- End white_bg -->                        
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
                    <input type="button" style="width: 270px; height: 48px; background-color: #FFFFFF; background: url(img/login/naver_login.png); border: 0; outline: 0;" >
                    <input type="button" style="width: 270px; height: 48px; background-color: #FFFFFF; background: url(img/login/kakao_login.png); border: 0; outline: 0;" >
                </div>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>ID</label>
					<input type="text" class="form-control" name="loginId" id="loginId">
					<i class="icon_pencil"></i>
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
                    <input type="button" value="로그인" class="btn_login">
                    <!-- <a type="button" class="btn_login">로그인</a> -->
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
    
    <!-- 로그인 -->
	<script type="text/javascript">
		$(document).ready(function(){
			$('.btn_login').on('click', login);
			$('#password').on('keydown', function(evt) {
				//evt.preventDefault();
				//evt.stopPropagation();
				if (evt.KeyCode == 13) {
					login();
				}
			});
		});
		
		function login() {
			alert('로그인 버튼 클릭')
			
			if($.trim($('#loginId').val())==''){
        		alert('아이디를 입력해 주세요');
        		$('#loginId').focus();
        		return;
        	}
			
			if($.trim($('#password').val())==''){
        		alert("비밀번호입력해주세요.");
        		$('#password').focus();
        		return;
        	}
			
			if ($('#loginId').val() !== '' && $('#password').val() !== '') {
				
				alert('진입 확인' + $('#loginId').val() + '/' + $('#password').val());
				
				$.ajax({
	        		type : 'post',
	        		async : true,
	        		url : "member/memberLogin.do",
	        		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
	        		data : {
	        			'id' : $('#loginId').val(),
	        			'password' : $('#password').val()
	        		},
	        		success : function(result){
	        			console.log(result)
	        			if(result == 0){
	        				alert('아이디와 비밀번호가 일치하지 않습니다.');
	        				$("#loginId").val("");
	        				$("#password").val("");
	        				
	        			}
	        			else if(result==1){
	        				location.replace('main.jsp')
	        			}
	        		},
	        		error : function(err){console.log("에러요" + err)}
	        	});	
			}
        		
		}
	</script>

    <!-- SLIDER REVOLUTION SCRIPTS  -->
    <script type="text/javascript" src="rev-slider-files/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript">
		var tpj=jQuery;
			var revapi13;
			tpj(document).ready(function() {
				if(tpj("#rev_slider_13_1").revolution == undefined){
					revslider_showDoubleJqueryError("#rev_slider_13_1");
				}else{
					revapi13 = tpj("#rev_slider_13_1").show().revolution({
						sliderType:"carousel",
						jsFileLocation: "rev-slider-files/js/",
						sliderLayout:"fullwidth",
						dottedOverlay:"none",
						delay:1000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
                             mouseScrollReverse:"default",
							onHoverStop:"off",
							touch:{
								touchenabled:"on",
								touchOnDesktop:"off",
								swipe_threshold: 75,
								swipe_min_touches: 1,
								swipe_direction: "horizontal",
								drag_block_vertical: false
							}
							,
							bullets: {
								enable:true,
								hide_onmobile:false,
								style:"hermes",
								hide_onleave:false,
								direction:"horizontal",
								h_align:"center",
								v_align:"bottom",
								h_offset:0,
								v_offset:20,
                                space:5,
								tmp:''
							}
						},
						carousel: {
							horizontal_align: "center",
							vertical_align: "center",
							fadeout: "on",
							vary_fade: "on",
							maxVisibleItems: 3,
							infinity: "on",
							space: 0,
                            stretch: "off",
                             showLayersAllTime: "off",
                             easing: "Power3.easeInOut",
                             speed: "4800"
						},
						responsiveLevels:[1240,1024,778,778],
						visibilityLevels:[1240,1024,778,778],
						gridwidth:[800,640,480,480],
						gridheight:[720,720,480,360],
						lazyType:"none",
						parallax: {
							type:"scroll",
							origo:"enterpoint",
							speed:2400,
							levels:[5,10,15,20,25,30,35,40,45,50,47,48,49,50,51,55],
						},
						shadow:0,
						spinner:"off",
						stopLoop:"on",
						stopAfterLoops:0,
						stopAtSlide:1,
						shuffle:"off",
						autoHeight:"off",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
					});
				}
			});	/*ready*/
	</script>
</body>

</html>