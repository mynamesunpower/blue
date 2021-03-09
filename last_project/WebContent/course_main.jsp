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
	<title>축축빵빵 - 코스 Main</title>

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
	<!-- <link href="css/courseGrid.css" rel="stylesheet"> -->

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
                            <c:choose>
                            	<c:when test="${sessionScope.memberId eq null}">
                            		<li><a href="#sign-in-dialog" id="access_link">로그인</a></li>
                            	</c:when>
                            	<c:when test="${sessionScope.memberId ne null}">
                            		<li><span style="color: blue;">${sessionScope.memberId}</span>님 환영합니다</li>
                            		<li><a href="mypage.jsp" id="mypage" class="icon-key-4">myPage</a></li>
	                            	<li><a href="course_list.jsp" id="wishlist_link">나의 코스 목록</a></li>
                            		<li><a href="#" class="icon-logout">로그아웃</a></li>
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
                            <img src="img/logo_sticky.png" width="160" height="34" alt="City tours">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                         <ul>
                            <li class="submenu">
                                <a href="main.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
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

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/home_bg_1.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>프로계획러 메이트가 직접 추천하는 축제 코스</h1>
				<p>사용자 코스 참여 방법</p>
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
					<li><a href="course_main.jsp">코스</a>
					</li>
					<li>코스 자랑 마당</li>
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

					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="#" id="active"><i class="icon_set_1_icon-51"></i>가족 코스 <span>(141)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-3"></i>나홀로 코스<span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-4"></i>도보 코스 <span>(16)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-44"></i>힐링 코스 <span>(12)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-37"></i>먹보 코스 <span>(11)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-14"></i>캠핑 코스 <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-43"></i>반려동물과 함께 <span>(08)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-28"></i>축제 코스 <span>(11)</span></a>
							</li>
						</ul>
					</div>

					<div id="filters_col">
						<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>필터</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>기간</h6>
								<ul>
									<li>
										<label>											
											<input type="checkbox"> 당일 코스
										</label>										
									</li>
									<li>
										<label>											
											<input type="checkbox"> 1박 2일
										</label>										
									</li>
									<li>
										<label>											
											<input type="checkbox"> 2박 3일 이상
										</label>										
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>별점</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>Facility</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox">Pet allowed
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Groups allowed
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Tour guides
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Access for disabled
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
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>랭킹 순 정렬</option>
										<option value="lower">랭킹 낮은 순</option>
										<option value="higher">랭킹 높은 순</option>
									</select>
								</div>
							</div>
							<div class="col-md-9 col-sm-4 d-none d-sm-block text-right">
								<a href="#" class="bt_filters"><i class="icon-th"></i></a> <a href="#" class="bt_filters"><i class=" icon-list"></i></a>
							</div>
						</div>
					</div>
					<!--End tools -->					
					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.1s">
							<div class="tour_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="course_detail.jsp">
										<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=97d0de07-b3ae-4b03-a04d-69b50ea29d5d" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-44"></i>코스 테마
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>코스명</strong></h3>
									<ul style="list-style: none;">			
										<li>지역 : <span>대표 지역</span></li>			
										<li>코스 총거리 : <span>거리</span>km</li>		
									</ul>
									<h3><strong>코스 경로</strong></h3>
									<ul class="course_route">
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">내 코스에 담기</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.2s">
							<div class="tour_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="course_detail.jsp">
										<img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-43"></i>Churches<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>광명의 종합문화공간과 식물원에서 꽃구경하기</strong> 코스</h3>
									<ul style="list-style: none;">			
										<li>지역 : 경기 광명시</li>			
										<li>코스 총거리 : 9.82km</li>		
									</ul>
									<ul class="course_route">   
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.3s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_tour.jsp">
										<img src="img/tour_box_3.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>작은</sup>문구</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>광명의 종합문화공간과 식물원에서 꽃구경하기</strong> 코스</h3>
									<ul style="list-style: none;">			
										<li>지역 : 경기 광명시</li>			
										<li>코스 총거리 : 9.82km</li>		
									</ul>
									<ul class="course_route">   
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.4s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_tour.jsp">
										<img src="img/tour_box_4.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-30"></i>Walking tour<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>광명의 종합문화공간과 식물원에서 꽃구경하기</strong> 코스</h3>
									<ul style="list-style: none;">			
										<li>지역 : 경기 광명시</li>			
										<li>코스 총거리 : 9.82km</li>		
									</ul>
									<ul class="course_route">   
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.5s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_tour.jsp">
										<img src="img/tour_box_14.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-28"></i>Skyline tours<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>광명의 종합문화공간과 식물원에서 꽃구경하기</strong> 코스</h3>
									<ul style="list-style: none;">			
										<li>지역 : 경기 광명시</li>			
										<li>코스 총거리 : 9.82km</li>		
									</ul>
									<ul class="course_route">   
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.6s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_tour.jsp">
										<img src="img/tour_box_5.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>광명의 종합문화공간과 식물원에서 꽃구경하기</strong> 코스</h3>
									<ul style="list-style: none;">			
										<li>지역 : 경기 광명시</li>			
										<li>코스 총거리 : 9.82km</li>		
									</ul>
									<ul class="course_route">   
										<li><span>광명스피돔</span></li>   
										<li><span>온수공원</span></li>   
										<li><span>부천식물원</span></li>
									</ul>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->
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
				<!-- End col lg 9 -->
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
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	

</body>

</html>