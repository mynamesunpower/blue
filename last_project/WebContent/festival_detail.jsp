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
    <title>축축빵빵 - 축제 Detail</title>

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

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/700_470_test_image_1.jpg" data-natural-width="700" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1>국립민속박물관 정월대보름 한마당 2021</h1>
						<span>서울특별시 종로구 삼청로 37</span>
						<span class="rating"><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small></span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main">
							<span style="color: #FFFFFF;">2/1 ~ 3/3</span>
						</div>
					</div>
				</div>
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
					<li>국립민속박물관 정월대보름 한마당 2021</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8" id="single_tour_desc">

					<div id="carousel-home">
                        <div class="owl-carousel owl-theme">
                            <div class="owl-slide cover" style="background-image: url(img/700_470_test_image_1.jpg);">
                                <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.0)">
                                    <div class="container">
                                        <div class="row justify-content-center justify-content-md-start">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!--/owl-slide-->
                        <div class="owl-slide cover" style="background-image: url(img/700_470_test_image_2.jpg);">
                            <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.0)">
                                <div class="container">
                                    <div class="row justify-content-center justify-content-md-end">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/owl-slide-->
                    </div>
                    <div id="icon_drag_mobile"></div>
                </div> <br>
                <!--/carousel-->

					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a></p>
					<!-- Map button for tablets/mobiles -->

					<div class="row">
						<div class="col-lg-12">
                            <h4>개요</h4>
                            <div class="row">
								<div class="col-md-6">
									<ul class="list_ok">
										<li>시작일<span>2021.02.01</span></li>
										<li>전화번호<span>02-3704-3142</span></li>
										<li>주소<span>서울특별시 종로구 삼청로 37</span></li>
										<li>주최<span>국립민속박물관</span></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_ok">
										<li>종료일<span>2021.03.03</span></li>
										<li>홈페이지<span><a href="https://www.nfm.go.kr">https://www.nfm.go.kr</a></span></li>
										<li>행사장소<span>온라인개최</span></li>
									</ul>
								</div>
							</div>
							<!-- End row  -->
							<h4>상세정보</h4>
							<p>
								국립민속박물관은 2021 신축년 정월 대보름을 맞아 “2021 신축년 정월 대보름맞이 한마당” 세시 행사를 운영한다. 이번 행사는 국립민속박물관 홈페이지, 유튜브 및 SNS를 통한 비대면 행사와 정월 대보름(2/26) 대면 행사로 진행된다. 정월 대보름을 맞아 집에서 가족과 함께 즐길 수 있는 ‘정월 대보름맞이 선물 꾸러미’ 이벤트는 2월 5일까지 신청 접수하며, ‘정월 대보름 소개 영상(신축년 정월대보름)’과 ‘온라인 특별공연(정월 대보름맞이 북청사자놀음, 전통타악 아작의 장구프리)’은 국립민속박물관 유튜브에서 2월 24일~26일 공개된다. 2월 26일 정월 대보름날에는 ‘풍년 기원 볏가릿대 세우기’와 ‘풍물 공연’, '짚풀 소 세우기'를 박물관에서 진행한다. 국립민속박물관에서 준비한 ‘정월 대보름맞이 한마당’을 통해 풍성한 정월 대보름을 보내시길 기원한다.
							</p>
							
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-12">
                            <h4>길찾기</h4>
						</div>
					</div>

					<hr>
                    
                    <div class="row">
						<div class="col-lg-12">
                            <h4>인스타그램 사진</h4>
                            <table>
                            
                            </table>
						</div>
					</div>
                    <div class="row">
						<div class="col-lg-12">
                            <h4>연관된 키워드</h4>
						</div>
					</div>
                    <hr>
                    <div class="row">
						<div class="col-lg-12">
                            <h4>함께 축제에 갈 사람이 필요한가요?</h4>
                            <div class="basic_button">
								<!-- 메이트서비스 아닌 회원은 mate_index_default -->
                                <!-- 메이트서비스 회원은 mate_index -->
                                <button class="btn btn-warning basic_button">메이트 찾기</button>
                            </div>
						</div>
					</div>
                    <hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>후기 </h3>
							<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">후기 남기기</a>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">11 건의 리뷰
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End general_rating -->
							<div class="row" id="rating_summary">
								<div class="col-md-6">
									<ul>
										<li>위치
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>즐거움
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>가격
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>질
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							<div class="review_strip_single">
								<img src="img/avatar1.jpg" alt="Image" class="rounded-circle">
								<small> 2021 - 02 - 23 - 19:24 </small>
								<h4>김형민</h4>
								<p>
									솔직히 노잼입니다. 이딴 것도 축제라고 개최한 겁니까? 내 돈 돌려내세요 당장. 가족들과 함께 왔다면 미안해서 큰일 날 뻔 했습니다. 망신이라고요 망신 알겠어요?
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile "></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single">
								<img src="img/avatar3.jpg" alt="Image" class="rounded-circle">
								<small> 2021 - 02 - 22 - 23:17 </small>
								<h4>김용관</h4>
								<p>
									사실 가보진 않았는데 리뷰를 달 수 있길래 달아봤음 ㅋㅋ 기모링~
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single last">
								<img src="img/avatar2.jpg" alt="Image" class="rounded-circle">
								<small> 2021 - 02 - 22 - 00:59 </small>
								<h4>무명의 후기</h4>
								<p>
									다른 건 모르겠지만 연인끼리 즐겁게 구경하기에는 최고였어요! 더욱 더 연인관계에 도움이 되었던 축제이지 않았나 싶습니다. 조금 고급스럽게 놀기 좋은 거 같아요. 사실 무슨 내용인진 하나도 모르겠지만 말이죠. 이제 여친도 절 다시 보았겠죠? 캬캬캬캬
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

                
                <!-- 우측 사이드 div -->
				<aside class="col-lg-4">
                    
                    <!-- 지도로 보기-->
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
					</p> <!-- 지도 끝 -->
                    <!-- 코스에 담기 -->
                    <p>
                        <a href="#" class="btn_map" data-toggle="modal" data-target="#put_into_course">코스에 담기</a>
                    </p> <!-- 코스에 담기 끝 -->
                    <!-- 티켓 구매하기 -->
                    <p>
                        <a href="#" class="btn_map">티켓 구매하기</a>
                    </p> <!-- 티켓 구매하기 끝 -->
                    
                    <!-- 주변 식당 보기 -->
					<div class="box_style_1">
						<h3 class="inner">주변 식당</h3>
                        
                        <!-- 식당 1 -->
                        <div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								맛있는식당<span>디저트</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 맛있는길 223 1F
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.2<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 3.04km 거리
                                </div>
                                </a>
                            </div>
                        </div>
                        
                        <!-- 식당 2 -->
						<hr class="near-place-hr">
                        <div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								맛있는식당<span>디저트</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 맛있는길 223 1F
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.2<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 3.04km 거리
                                </div>
                                </a>
                            </div>
                        </div>
                        
                        <!-- 식당 3 -->
						<hr class="near-place-hr">
						<div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								맛있는식당<span>디저트</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 맛있는길 223 1F
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.2<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 3.04km 거리
                                </div>
                                </a>
                            </div>
                        </div>
						<hr class="near-place-hr">
					</div>
					<!-- 주변 식당 끝 -->
                    
                    
                    <!-- 주변 숙박 -->
                    <div class="box_style_1">
						<h3 class="inner">주변 숙박</h3>
                        <div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								슈퍼호텔<span>호텔</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 편안한길 2541
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>1.5<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 1.04km 거리
                                </div>
                                </a>
                            </div>
                        </div>
						<hr class="near-place-hr">
                        <div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								파워모텔<span>모텔</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 편안한길 2447
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.8<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 1.05km 거리
                                </div>
                                </a>
                            </div>
                        </div>
						<hr class="near-place-hr">
						<div class="row near-place">
                            <div class="col-12 near-place-image">
                                <a href="#"><img class="img-fluid" src='img/297_95.png' alt="맞춰넣으세요">
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								낄낄펜션<span>펜션</span>
								</div>
                                <div class="near-place-address">
                                서울시 무슨구 편안한길 33-13
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.1<span class="near-place-tel">02-3392-2213</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                축제지로부터 1.24km 거리
                                </div>
                                </a>
                            </div>
                        </div>
						<hr class="near-place-hr">
					</div>
					<!-- 주변 숙박 끝  -->
                    
                    <!-- 전화로 문의(tel 가능) -->
					<div class="box_style_4">
						<i class="icon_set_1_icon-90"></i>
						<h4><span>전화</span>로 문의</h4>
						<a href="tel://0237043142" class="phone">+82) 02-3704-3142</a>
						<small>살리게 되면 살리고 아니면 싹둑!</small>
					</div> <!-- 전화로 문의 끝 -->

				</aside>
			</div>
			<!--End row -->
		</div>
		<!--End container -->
		
	<div id="overlay"></div>
	<!-- Mask on input focus -->
		
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

	<!-- Modal put_into_course-->
	<div class="modal fade" id="put_into_course" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">코스에 담기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div>
						<h4>- 내 코스 1<span style="padding-left: 250px;"><input type="button" value="선택" class="btn_1" id=""></span></h4>
						<!-- 선택을 누르면 해당 코스로 컨텐츠(축제, 숙소, 식당..)가 들어가야 함.-->
					</div>
					<div style="text-align: center;">
						<input type="button" value="새 코스 추가" class="btn btn-success" data-toggle="modal" data-target="#add_course">
					</div>
				</div>
			</div>
		</div>
	</div> <!-- End of Modal put_into_course-->

	<!-- Modal add_course-->
	<div class="modal fade" id="add_course" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">새 코스 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div id="message-review">
					</div>
					<div class="form-group">
						<input type="text" placeholder="코스명을 입력해주세요.">
					</div>
					<div style="text-align: center;">
						<input type="button" value="추가" class="btn btn-success">
						<!-- 추가 누르면 창이 닫히고, 입력한 코스명으로 부모 페이지에 코스가 추가 입력 되어져야함.-->
					</div>
				</div>
			</div>
		</div>
	</div> <!-- End of Modal add_course-->

	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">후기 남기기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="#" name="review_tour" id="review_tour">
						<input name="tour_name" id="tour_name" type="hidden" value="Paris Arch de Triomphe Tour">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="name_review" id="name_review" type="text" placeholder="이름" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email" placeholder="이메일" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>위치</label>
									<select class="form-control" name="position_review" id="position_review">
										<option value="">만족도를 선택하세요</option>
										<option value="Low">구리구리</option>
										<option value="Sufficient">적절</option>
										<option value="Good">낫배도</option>
										<option value="Excellent">개굳</option>
										<option value="Superb">킹왕짱</option>
										<option value="Not rated">나도모룹니다</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>즐거움</label>
									<select class="form-control" name="guide_review" id="guide_review">
										<option value="">만족도를 선택하세요</option>
										<option value="Low">구리구리</option>
										<option value="Sufficient">적절</option>
										<option value="Good">낫배도</option>
										<option value="Excellent">개굳</option>
										<option value="Superb">킹왕짱</option>
										<option value="Not rated">나도모룹니다</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>가격</label>
									<select class="form-control" name="price_review" id="price_review">
										<option value="">만족도를 선택하세요</option>
										<option value="Low">구리구리</option>
										<option value="Sufficient">적절</option>
										<option value="Good">낫배도</option>
										<option value="Excellent">개굳</option>
										<option value="Superb">킹왕짱</option>
										<option value="Not rated">나도모룹니다</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>질</label>
									<select class="form-control" name="quality_review" id="quality_review">
										<option value="">만족도를 선택하세요</option>
										<option value="Low">구리구리</option>
										<option value="Sufficient">적절</option>
										<option value="Good">낫배도</option>
										<option value="Excellent">개굳</option>
										<option value="Superb">킹왕짱</option>
										<option value="Not rated">나도모룹니다</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="form-group">
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="축제에 방문할 사람들이 참고할 수 있게 자세한 후기를 남겨주세요."></textarea>
						</div>
						<div class="form-group">
							<input type="text" id="verify_review" class=" form-control" placeholder="인간이라면 답을 적어주세요 4 + 1 = ?">
						</div>
						<input type="submit" value="작성" class="btn_1" id="submit-review">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal review -->

	<!-- Common scripts -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Date and time pickers -->
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
		$('input.time-pick').timepicker({
			minuteStep: 15,
			showInpunts: false
		})
	</script>

	<!--Review modal validation -->
	<script src="assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map.js"></script>
	<script src="js/infobox.js"></script>

	<!-- NOTIFY BUBBLES  -->
	<script src="js/notify_func.js"></script>	

</body>

</html>