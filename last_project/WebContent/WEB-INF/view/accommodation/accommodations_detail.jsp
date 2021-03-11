<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>축축빵빵 - 숙박 Detail</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/logo_img.PNG" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- GOOGLE WEB FONT -->
<link
	href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

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

	<%@ include file="../../../header.jsp" %>


		<section class="parallax-window" data-parallax="scroll"
			data-image-src="img/single_hotel_bg_1.jpg" data-natural-width="1400"
			data-natural-height="470">
			<div class="parallax-content-2">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<span class="rating"><i class="icon-star voted"></i><i
								class="icon-star voted"></i><i class="icon-star voted"></i><i
								class="icon-star voted"></i><i class=" icon-star-empty"></i></span>
	
	
							<h1>${detail.lodgment_name}</h1>
							<span>${detail.address}</span>
							
							
						</div>
						<div class="col-md-4">
							<div id="price_single_main" class="hotel">
								1박 요금 <span style="color: #FFFFFF;"><sup>￦</sup>25,000</span>
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
						<li><a href="main.jsp">Home</a></li>
						<!-- 로그인 세션이 있다면, Home 클릭 시 mainAfterLogin.jsp로 이동되게-->
						<!-- <li><a href="mainAfterLogin.jsp">Home</a>
					</li> -->
						<li><a href="festival.jsp">축제</a></li>
						<li><a href="accommodations_list.jsp">숙박</a></li>
						<li>${detail.lodgment_name}</li>
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
						<div id="single_tour_feat">
							<ul>
								<li><i class="icon_set_2_icon-116"></i>Plasma TV</li>
								<li><i class="icon_set_1_icon-86"></i>Free Wifi</li>
								<li><i class="icon_set_2_icon-110"></i>Poll</li>
								<li><i class="icon_set_1_icon-59"></i>Breakfast</li>
								<li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
								<li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
								<li><i class="icon_set_1_icon-27"></i>Parking</li>
							</ul>
						</div>
						<p class="d-none d-md-block d-block d-lg-none">
							<a class="btn_map" data-toggle="collapse" href="#collapseMap"
								aria-expanded="false" aria-controls="collapseMap"
								data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
						</p>
						<!-- Map button for tablets/mobiles -->
						<div id="Img_carousel" class="slider-pro">
							<div class="sp-slides">		
								<c:forEach items="${detail.images}" var="image">
								<div class="sp-slide">
								
									<img alt="Image" class="sp-image" src="data:image/jpg;base64,${image}"
										>	


								<!-- <img alt="Image" class="sp-image" src="css/images/blank.gif"
										
									data-src="img/slider_single_tour/1_medium.jpg"
										data-small="img/slider_single_tour/1_small.jpg"
										data-medium="img/slider_single_tour/1_medium.jpg"
										data-large="img/slider_single_tour/1_large.jpg"
										data-retina="img/slider_single_tour/1_large.jpg"
										
										> -->
								
								</div>
								</c:forEach>
								
								
							</div>
							<div class="sp-thumbnails">
							<c:forEach items="${detail.images}" var="image">
			
                            	<!-- <img alt="Image" class="sp-thumbnail" src="data:image/jpg;base64,${image}"/> -->
                            	<img alt="Image" class="sp-thumbnail" src="data:image/jpg;base64,${image}"> 
                            </c:forEach>
                            
								<!-- <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/1_medium.jpg"> 
								<img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/2_medium.jpg"> 
								<img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/3_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/4_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/5_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/6_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/7_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/8_medium.jpg"> <img
									alt="Image" class="sp-thumbnail"
									src="img/slider_single_tour/9_medium.jpg"> -->
									
							</div>
						</div>

						<hr>

						<div class="row">
							<div class="col-lg-3">
								<h3>소개</h3>
							</div>
							<div class="col-lg-9">
								<p>부산에서 지낼 곳을 찾으세요? 그렇다면 부산의 최고를 가까이에서 즐길 수 있는 로맨틱 리조트인
									파라다이스호텔 부산(을)를 강추합니다. 파라다이스호텔 부산 객실은 평면 TV, 미니바, 에어컨 구비를 통해서
									최고의 편안함 및 편리함을 제공하고, 투숙객들은 무료 무선 인터넷으로 인터넷을 마음껏 이용하실 수 있습니다.
									리조트에서는 룸서비스, 컨시어지(와)과 같은 편의시설을 제공합니다. 그뿐만 아니라, 수영장, 음식점(은)는
									여러분의 시간을 좀 더 특별하게 만들어 줄 것입니다. 파라다이스호텔 부산에 차로 오시는 분들은 무료 주차가
									가능함을 알려드립니다. 부산 방문 시 인기명소를 가보고 싶다면 파라다이스호텔 부산(은)는 힐링터치(0.3 km),
									고운바다길분수(0.5 km)(으)로부터 지척에 위치해 있습니다. 맛있는 인도 요리(을)를 찾는다면 파라다이스호텔
									부산에서 묵는 동안 펀자브 인도 요리 전문점, 발리우드 또는 나마스테 해운대점(을)를 꼭 가보시기 바랍니다.
									부산(은)는 또한 인기 정원들인 꽃시계(이)가 자리하고 있는 곳이며 파라다이스호텔 부산(으)로부터 멀지 않습니다.
									부산(이)가 선사하는 모든 것을 즐길 수 있는 파라다이스호텔 부산에서 좋은 시간을 보내시리라 장담합니다.</p>
								<h4>편의 시설</h4>
								<p>있을건 다 있어 짱이쥐</p>
								<div class="row">
									<div class="col-md-6">
										<ul class="list_ok">
											<li>이거랑</li>
											<li>저거랑</li>
											<li>요고랑</li>
											<li>조고랑</li>
											<li>요거랑</li>
											<li>이거!</li>
										</ul>
									</div>
									<div class="col-md-6">
										<ul class="list_ok">
											<li>Lorem ipsum dolor sit amet</li>
											<li>No scripta electram necessitatibus sit</li>
											<li>Quidam percipitur instructior an eum</li>
											<li>No scripta electram necessitatibus sit</li>
										</ul>
									</div>
								</div>
								<!-- End row  -->
							</div>
							<!-- End col-md-9  -->
						</div>
						<!-- End row  -->

						<hr>

						<div class="row">
							<div class="col-lg-3">
								<h3>객실</h3>
							</div>
							<div class="col-lg-9">
								<h4>싱글룸</h4>
								<p>Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo
									aeterno legimus insolens ad. Sit cu detraxit constituam, an mel
									iudico constituto efficiendi.</p>

								<div class="row">
									<div class="col-md-6">
										<ul class="list_icons">
											<li><i class="icon_set_1_icon-86"></i> Free wifi</li>
											<li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
											<li><i class="icon_set_2_icon-106"></i> Safety box</li>
										</ul>
									</div>
									<div class="col-md-6">
										<ul class="list_ok">
											<li>Lorem ipsum dolor sit amet</li>
											<li>No scripta electram necessitatibus sit</li>
											<li>Quidam percipitur instructior an eum</li>
										</ul>
									</div>
								</div>
								<!-- End row  -->
								<div
									class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
									<div class="item">
										<a href="img/carousel/1.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/1.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/2.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/2.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/3.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/3.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/4.jpg" alt="Image"> </a>
									</div>
								</div>
								<!-- End photo carousel  -->

								<hr>

								<h4>더블룸</h4>
								<p>Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo
									aeterno legimus insolens ad. Sit cu detraxit constituam, an mel
									iudico constituto efficiendi.</p>

								<div class="row">
									<div class="col-md-6">
										<ul class="list_icons">
											<li><i class="icon_set_1_icon-86"></i> Free wifi</li>
											<li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
											<li><i class="icon_set_2_icon-106"></i> Safety box</li>
										</ul>
									</div>
									<div class="col-md-6">
										<ul class="list_ok">
											<li>Lorem ipsum dolor sit amet</li>
											<li>No scripta electram necessitatibus sit</li>
											<li>Quidam percipitur instructior an eum</li>
										</ul>
									</div>
								</div>
								<!-- End row  -->
								<div
									class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
									<div class="item">
										<a href="img/carousel/1.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/1.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/2.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/2.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/3.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/3.jpg" alt="Image"> </a>
									</div>
									<div class="item">
										<a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img
											src="img/carousel/4.jpg" alt="Image"> </a>
									</div>
								</div>
								<!-- End photo carousel  -->
							</div>
							<!-- End col-md-9  -->
						</div>
						<!-- End row  -->

						<hr>

						<div class="row">
							<div class="col-lg-3">
								<h3>후기</h3>
								<a href="#" class="btn_1 add_bottom_30" data-toggle="modal"
									data-target="#myReview">후기 남기기</a>
							</div>
							<div class="col-lg-9">
								<div id="score_detail">
									<span>4.5</span>아주 좋음 <small>(Based on 99 reviews)</small>
								</div>
								<!-- End general_rating -->
								<div class="row" id="rating_summary">
									<div class="col-md-6">
										<ul>
											<li>위치
												<div class="rating">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile voted"></i><i class="icon-smile"></i><i
														class="icon-smile"></i>
												</div>
											</li>
											<li>청결
												<div class="rating">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile"></i>
												</div>
											</li>
										</ul>
									</div>
									<div class="col-md-6">
										<ul>
											<li>서비스
												<div class="rating">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile voted"></i><i class="icon-smile"></i><i
														class="icon-smile"></i>
												</div>
											</li>
											<li>가격
												<div class="rating">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile voted"></i><i class="icon-smile voted"></i><i
														class="icon-smile voted"></i>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<!-- End row -->
								<hr>
								<div class="review_strip_single">
									<img src="img/avatar1.jpg" alt="Image" class="rounded-circle">
									<small> - 10 March 2015 -</small>
									<h4>Jhon Doe</h4>
									<p>"Lorem ipsum dolor sit amet, consectetur adipiscing
										elit. Sed a lorem quis neque interdum consequat ut sed sem.
										Duis quis tempor nunc. Interdum et malesuada fames ac ante
										ipsum primis in faucibus."</p>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
											class="icon-smile voted"></i><i class="icon-smile"></i><i
											class="icon-smile"></i>
									</div>
								</div>
								<!-- End review strip -->

								<div class="review_strip_single">
									<img src="img/avatar2.jpg" alt="Image" class="rounded-circle">
									<small> - 10 March 2015 -</small>
									<h4>Jhon Doe</h4>
									<p>"Lorem ipsum dolor sit amet, consectetur adipiscing
										elit. Sed a lorem quis neque interdum consequat ut sed sem.
										Duis quis tempor nunc. Interdum et malesuada fames ac ante
										ipsum primis in faucibus."</p>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
											class="icon-smile voted"></i><i class="icon-smile"></i><i
											class="icon-smile"></i>
									</div>
								</div>
								<!-- End review strip -->

								<div class="review_strip_single last">
									<img src="img/avatar3.jpg" alt="Image" class="rounded-circle">
									<small> - 10 March 2015 -</small>
									<h4>Jhon Doe</h4>
									<p>"Lorem ipsum dolor sit amet, consectetur adipiscing
										elit. Sed a lorem quis neque interdum consequat ut sed sem.
										Duis quis tempor nunc. Interdum et malesuada fames ac ante
										ipsum primis in faucibus."</p>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
											class="icon-smile voted"></i><i class="icon-smile"></i><i
											class="icon-smile"></i>
									</div>
								</div>
								<!-- End review strip -->
							</div>
						</div>
					</div>
					<!--End  single_tour_desc-->

					<aside class="col-lg-4">
						<!-- 지도 열기-->
						<p class="d-none d-xl-block d-lg-block d-xl-none">
							<a class="btn_map" data-toggle="collapse" href="#collapseMap"
								aria-expanded="false" aria-controls="collapseMap"
								data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
						</p>
						<!-- 지도 끝-->
						<!-- 코스에 담기 -->
						<p>
							<a href="#" class="btn_map" data-toggle="modal"
								data-target="#put_into_course">코스에 담기</a>
						</p>
						<!-- 코스에 담기 끝 -->
						<div class="box_style_1 expose">
							<h3 class="inner">예약 사이트 이동</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label><i class="icon-calendar-7"></i> 체크인</label> <input
											class="date-pick form-control" data-date-format="M d, D"
											type="text">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label><i class="icon-calendar-7"></i> 체크아웃</label> <input
											class="date-pick form-control" data-date-format="M d, D"
											type="text">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<label>성인</label>
										<div class="numbers-row">
											<input type="text" value="1" id="adults"
												class="qty2 form-control" name="quantity">
										</div>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<label>아동</label>
										<div class="numbers-row">
											<input type="text" value="0" id="children"
												class="qty2 form-control" name="quantity">
										</div>
									</div>
								</div>
							</div>
							<br> <a class="btn_full" href="#">예약 사이트 이동</a> <a
								class="btn_full_outline" href="#"><i class=" icon-heart"></i>
								Add to wishlist</a>
						</div>
						<!--/box_style_1 -->

						<div class="box_style_4">
							<i class="icon_set_1_icon-90"></i>
							<h4>
								<span>Book</span> by phone
							</h4>
							<a href="tel://${detail.tel}" class="phone">${detail.tel}</a> <small>Monday
								to Friday 9.00am - 7.30pm</small>
						</div>

					</aside>
				</div>
				<!--End row -->
			</div>
			<!--End container -->

			<div id="overlay"></div>
			<!-- Mask on input focus -->

		</main>
	
	<!-- End main -->

	<%@ include file="../../../footer.jsp" %>

	<!-- Modal put_into_course-->
	<div class="modal fade" id="put_into_course" tabindex="-1"
		role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">코스에 담기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div>
						<h4>
							- 내 코스 1<span style="padding-left: 250px;"><input
								type="button" value="선택" class="btn_1" id=""></span>
						</h4>
						<!-- 선택을 누르면 해당 코스로 컨텐츠(축제, 숙소, 식당..)가 들어가야 함.-->
					</div>
					<div style="text-align: center;">
						<input type="button" value="새 코스 추가" class="btn btn-success"
							data-toggle="modal" data-target="#add_course">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Modal put_into_course-->

	<!-- Modal add_course-->
	<div class="modal fade" id="add_course" tabindex="-1" role="dialog"
		aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">새 코스 추가</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div id="message-review"></div>
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
	</div>
	<!-- End of Modal add_course-->

	<!-- Modal put_into_course-->
	<div class="modal fade" id="put_into_course" tabindex="-1"
		role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">코스에 담기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div>
						<h4>
							- 내 코스 1<span style="padding-left: 250px;"><input
								type="button" value="선택" class="btn_1" id=""></span>
						</h4>
						<!-- 선택을 누르면 해당 코스로 컨텐츠(축제, 숙소, 식당..)가 들어가야 함.-->
					</div>
					<div style="text-align: center;">
						<input type="button" value="새 코스 추가" class="btn btn-success"
							data-toggle="modal" data-target="#add_course">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Modal put_into_course-->

	<!-- Modal add_course-->
	<div class="modal fade" id="add_course" tabindex="-1" role="dialog"
		aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">새 코스 추가</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div id="message-review"></div>
					<div class="form-group">
						<input type="text" placeholder="코스명을 입력해주세요.">
					</div>
					<div style="text-align: center;">
						<input type="button" value="추가" class="btn btn-success">
						<!-- 추가 누르면 창이 닫히고, 부모 페이지에 입력한 코스명으로 코스가 추가 입력 되어져야함.-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Modal add_course-->

	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog"
		aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">후기 남기기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="message-review"></div>
					<form method="post" action="#" name="review_tour" id="review_tour">
						<input name="tour_name" id="tour_name" type="hidden"
							value="Paris Arch de Triomphe Tour">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="name_review" id="name_review" type="text"
										placeholder="이름" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email"
										placeholder="이메일" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>위치</label> <select class="form-control"
										name="position_review" id="position_review">
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
									<label>청결</label> <select class="form-control"
										name="guide_review" id="guide_review">
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
									<label>서비스</label> <select class="form-control"
										name="price_review" id="price_review">
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
									<label>가격</label> <select class="form-control"
										name="quality_review" id="quality_review">
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
							<textarea name="review_text" id="review_text"
								class="form-control" style="height: 100px"
								placeholder="숙소에 방문할 사람들이 참고할 수 있게 자세한 후기를 남겨주세요."></textarea>
						</div>
						<div class="form-group">
							<input type="text" id="verify_review" class=" form-control"
								placeholder="인간이라면 답을 적어주세요 4 + 1 = ?">
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
	<script src="js/jquery.sliderPro.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function ($) {
			$('#Img_carousel').sliderPro({
				width: 960,
				height: 500,
				fade: true,
				arrows: true,
				buttons: false,
				fullScreen: false,
				smallSize: 500,
				startSlide: 0,
				mediumSize: 1000,
				largeSize: 3000,
				thumbnailArrows: true,
				autoplay: false
			});
		});
	</script>

	<!-- Date and time pickers -->
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
	</script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map.js"></script>
	<script src="js/infobox.js"></script>

	<!-- Carousel -->
	<script>
		$('.carousel-thumbs-2').owlCarousel({
		loop:false,
		margin:5,
		responsiveClass:true,
		nav:false,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:4,
				nav:false
			}
		}
	});
	</script>

	<!--Review modal validation -->
	<script src="assets/validate.js"></script>


</body>

</html>