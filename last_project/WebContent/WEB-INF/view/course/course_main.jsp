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
	<title>축제로 - 코스 Main</title>

	<!-- Favicons-->
	<link rel="shortcut icon" href="../img/logo_img.PNG" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="../img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="../img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="../img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="../img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<!-- COMMON CSS -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
	<link href="../css/vendors.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="../css/custom.css" rel="stylesheet">
	<!-- <link href="css/courseGrid.css" rel="stylesheet"> -->
	<style>
	@media screen and (min-width: 769px) { 

	.carousel_parallax, div#position, div#map {
		width: 58%;
		margin: 0 auto;
	} 


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

	<%@ include file="/../header.jsp" %>

	<section class="parallax-window carousel_parallax" data-parallax="scroll" data-image-src="../img/main/main_slide3.png" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>코스 자랑 마당</h1>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="../main.jsp">Home</a>
					</li>
					<li><a href="course_main.do">코스</a>
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
							<li><a href="javascript:void(0);" id="active"><i class="icon-users"></i>가족과 함께<span>(141)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-heart-8"></i>연인과 함께<span>(16)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-school"></i>메이트와 함께 <span>(12)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-guidedog"></i>반려동물과 함께 <span>(08)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-thumbs-up-5"></i>오감만족 코스 <span>(11)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-picture-1"></i>눈 정화 코스 <span>(20)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-headphones-3"></i>귀 정화 코스 <span>(11)</span></a>
							</li>
							<li><a href="javascript:void(0);"><i class="icon-adult"></i>나홀로 YOLO<span>(20)</span></a>
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
								<a href="javascript:void(0);" class="bt_filters"><i class="icon-th"></i></a> <a href="#" class="bt_filters"><i class=" icon-list"></i></a>
							</div>
						</div>
					</div>
					<!--End tools -->
					<div class="row">
						<c:forEach items="${list}" var="course">
							<div class="col-md-6 wow zoomIn" data-wow-delay="0.1s">
								<div class="tour_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a href="courseSelect.do?_id=${course._id}">
											<c:forEach items="${course.coursePath}" var="coursePath" begin="0" end="0">
												<img src="${coursePath.image}" width="800" height="533" class="img-fluid" alt="Image">
											</c:forEach>
											<div class="short_info">
												<c:choose>
													<c:when test="${course.theme eq '가족과 함께'}">
														<i class="icon-users"></i>
													</c:when>
													<c:when test="${course.theme eq '연인과 함께'}">
														<i class="icon-heart-8"></i>
													</c:when>
													<c:when test="${course.theme eq '메이트와 함께'}">
														<i class="icon-school"></i>
													</c:when>
													<c:when test="${course.theme eq '반려동물과 함께'}">
														<i class="icon-guidedog"></i>
													</c:when>
													<c:when test="${course.theme eq '오감만족 코스'}">
														<i class="icon-thumbs-up-5"></i>
													</c:when>
													<c:when test="${course.theme eq '눈 정화 코스'}">
														<i class="icon-picture-1"></i>
													</c:when>
													<c:when test="${course.theme eq '귀 정화 코스'}">
														<i class="icon-headphones-3"></i>
													</c:when>
													<c:when test="${course.theme eq '나홀로 YOLO'}">
														<i class="icon-adult"></i>
													</c:when>
												</c:choose>
												${course.theme}
												<span class="price" style="font-size: medium;">${course.schedule }</span>
											</div>
										</a>
									</div>
									<div class="tour_title">
										<h3><strong>${course.courseName}</strong></h3>
										<ul style="list-style: none;">
											<c:forEach items="${course.coursePath}" var="coursePath" begin="0" end="0">
												<li>시작 지역 : <span>${coursePath.address}</span></li>
											</c:forEach>
											<!-- <li>코스 총거리 : <span>${course.distance}</span>km</li> -->
										</ul>
										<h3><strong>코스 경로</strong></h3>

										<ul class="course_route">
											<c:forEach items="${course.coursePath}" var="coursePath">
												<li><span>${coursePath.title}</span></li>
											</c:forEach>
										</ul>
										<div class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											<br><medium> ${course.reviews.size()}개의 리뷰가 있어요!<medium>
										</div>
										<!-- end rating -->
										<!--
										<div class="wishlist">
											<a class="tooltip_flip tooltip-effect-1" href="#" data-toggle="modal" data-target="#put_into_course">+<span class="tooltip-content-flip"><span class="tooltip-back">내 코스에 담기</span></span></a>
										</div> -->
										<!-- End wish list-->
									</div>
								</div>
								<!-- End box tour -->
							</div>
							<!-- End col-md-6 -->
						</c:forEach>
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
							<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
							<li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
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

	<%@ include file="/../footer.jsp"%>

	<!-- Common scripts -->
	<script src="/../js/jquery-3.5.1.min.js"></script>
	<script src="/../js/common_scripts_min.js"></script>
	<script src="/../js/functions.js"></script>

	<!-- Specific scripts -->
	<!-- Cat nav mobile -->
	<script src="/../js/cat_nav_mobile.js"></script>
	<script>
		$('#cat_nav').mobileMenu();
	</script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="/../js/map.js"></script>
	<script src="/../js/infobox.js"></script>

	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>

	<!-- 로그인 -->
	<script src="/../js/login.js"></script>


</body>

</html>
