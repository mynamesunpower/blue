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
	<title>축축빵빵 - 숙박 Main</title>

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

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/accommodation/main.png" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>숙소 둘러보삼</h1>
				<p>사진 괘안나</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="main.jsp">Home</a>
					</li>
					<!-- 로그인 세션이 있다면, Home 클릭 시 mainAfterLogin.jsp로 이동되게-->
					<!-- <li><a href="mainAfterLogin.jsp">Home</a>
					</li> -->
					<li><a href="festival.jsp">축제</a>
					</li>
					<li>숙박</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">

			<div class="row">
				<aside class="col-lg-3">
					<p>
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
					</p>

					<div id="filters_col">
						<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>필터</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>가격</h6>
								<input type="text" id="range" name="range" value="">
							</div>
							<div class="filter_type">
								<h6>별점</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i>
											</span>(15)
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i>
											</span>(45)
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
											</span>(35)
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
											</span>(25)
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
											</span>(15)
										</label>
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>지역</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox">서울
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">경기/인천
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">부산
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">제주
										</label>
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>시설</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox">반려동물 동반 가능
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">와이파이
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">스파
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">조식 제공
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">수영장
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">주차 가능
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">운동 시설
										</label>
									</li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<!--End filters col-->
				</aside>
				<!--End aside -->

				<div class="col-lg-9">

					<div id="tools">
						<div class="row">
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters">
									<select name="sort_price" id="sort_price">
										<option value="" selected>가격 순 정렬</option>
										<option value="lower">가격 낮은 순</option>
										<option value="higher">가격 높은 순</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters">
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>랭킹 순 정렬</option>
										<option value="lower">랭킹 낮은 순</option>
										<option value="higher">랭킹 높은 순</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-right">
								<a href="#" class="bt_filters"><i class="icon-th"></i></a> <a href="#" class="bt_filters"><i class=" icon-list"></i></a>
							</div>
						</div>
					</div>
					<!--End tools -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3 popular"><span>인기</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="accommodations_detail.jsp"><img src="img/hotel_1.jpg" alt="Image">
										<div class="short_info"></div>
									</a>
								</div>
							</div>
							<div class="col-lg-5 col-md-5">
								<div class="tour_list_desc">
									<div class="score">Superb<span>9.0</span>
									</div>
									<div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star-empty"></i>
									</div>
									<h3><strong>우빈이네</strong> 집</h3>
									<p>아늑하당 좁지만 따뜻해</p>
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
							<div class="col-lg-3 col-md-3">
								<div class="price_list">
									<div><sup>￦</sup>25,000<span class="normal_price_list">￦40,000</span><small>*1박 요금</small>
										<p><a href="accommodations_detail.jsp" class="btn_1">상세 정보</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End strip -->
					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>추천</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="accommodations_detail.jsp"><img src="img/hotel_3.jpg" alt="Image">
										<div class="short_info"></div>
									</a>
								</div>
							</div>
							<div class="col-lg-5 col-md-5">
								<div class="tour_list_desc">
									<div class="score">Superb<span>9.0</span>
									</div>
									<div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star-empty"></i>
									</div>
									<h3><strong>형민이네</strong> 방</h3>
									<p>있을건 없고, 없을건 있어요</p>
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
							<div class="col-lg-3 col-md-3">
								<div class="price_list">
									<div><sup>￦</sup>30,000<span class="normal_price_list">￦55,000</span><small>*1박 요금</small>
										<p><a href="accommodations_detail.jsp" class="btn_1">상세 정보</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_hotel.jsp"><img src="img/hotel_4.jpg" alt="Image">
										<div class="short_info"></div>
									</a>
								</div>
							</div>
							<div class="clearfix visible-xs-block"></div>
							<div class="col-lg-5 col-md-5">
								<div class="tour_list_desc">
									<div class="score">Good<span>7.5</span>
									</div>
									<div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star-empty"></i><i class="icon-star-empty"></i>
									</div>
									<h3><strong>Concorde</strong> Hotel</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum...</p>
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
							<div class="col-lg-3 col-md-3">
								<div class="price_list">
									<div><sup>$</sup>119*<span class="normal_price_list">$99</span><small>*From/Per night</small>
										<p><a href="single_hotel.jsp" class="btn_1">Details</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_hotel.jsp"><img src="img/hotel_5.jpg" alt="Image">
										<div class="short_info"></div>
									</a>
								</div>
							</div>
							<div class="clearfix visible-xs-block"></div>
							<div class="col-lg-5 col-md-5">
								<div class="tour_list_desc">
									<div class="score">Very Good<span>8.0</span>
									</div>
									<div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i>
									</div>
									<h3><strong>Concorde</strong> Hotel</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum...</p>
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
							<div class="col-lg-3 col-md-3">
								<div class="price_list">
									<div><sup>$</sup>129*<span class="normal_price_list">$99</span><small>*From/Per night</small>
										<p><a href="single_hotel.jsp" class="btn_1">Details</a>
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

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map_hotels.js"></script>
	<script src="js/infobox.js"></script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	

</body>

</html>