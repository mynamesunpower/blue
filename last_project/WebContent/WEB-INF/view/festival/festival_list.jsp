<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
	<meta name="author" content="Ansonika">
	<title>축제로 - 축제 리스트</title>

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

	<%@ include file="../../../header.jsp" %>

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/accommodation/main.png" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>축제로 축제 리스트</h1>
				
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
					<li><a href="festival.do">축제</a>
					</li>
					<li>축제로 축제 리스트</li>
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
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>랭킹 순 정렬</option>
										<option value="lower">랭킹 낮은 순</option>
										<option value="higher">랭킹 높은 순</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-6">
								
							</div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-right">
								
							</div>
						</div>
					</div>
					<!--End tools -->

					<div id="search_list">
	 					<c:forEach items="${list}" var="list" varStatus="var">
	 						
	 					
							<div class="strip_all_tour_list wow fadeIn restaurant" data-wow-delay="0.1s">
								<div class="row">
									<div class="col-lg-4 col-md-4">
										<div class="ribbon_3 popular"><span>축제로</span>
										</div>
										<div class="wishlist">
											<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
										</div>
										<div class="img_list">
											<a href="details.do?tel=${list.postcode}">
											
												<c:if test="${list.images.size() gt 0}">
													<img src="data:image/jpg;base64,${list.images.get(0)}" alt="${list.title}">
												</c:if>
												<!-- icon_set_3_restaurant-2 -->
												<div class="short_info"><i class=""></i> ${list.tel }</div>
											</a>
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="tour_list_desc">
											<div class="rating"></div>
											<h3>${list.title}</h3>
											<p>${list.address}</p>
											<p>${list.address_detail}</p>
											<p>${list.fee}</p>
										</div>
									</div>
									<div class="col-lg-2 col-md-2">
										<div class="price_list">
											<div>
												<p>
													 <a href="details.do?tel=${list.postcode}" class="btn_1">상세 정보</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--End strip -->
							
						</c:forEach>
					</div>

					<hr>
<!--
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<c:if test="${resultMap.pageGroup > 1}">
								<li class="page-item">
									<a class="page-link" href="javascript:fnGoPaging(<c:out value="${resultMap.previousPage}"/>)" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">이전</span>
									</a>
								</li>
							</c:if>
							
							<c:forEach var="i" begin="${resultMap.startPage}" end="${resultMap.endPage > resultMap.total? resultMap.total : resultMap.endPage}" varStatus="status">
								<c:choose>
									<c:when test="${resultMap.page eq i}">
										<li class="page-item active"><a class="page-link" href="javascript:fnGoPaging(${i})">${i}</a></li>		
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link" href="javascript:fnGoPaging(${i})">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test="${resultMap.nextPage <= resultMap.total}">
								<li class="page-item">
									<a class="page-link" href="javascript:fnGoPaging(<c:out value="${resultMap.nextPage}"/>)" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">다음</span>
									</a>
								</li>
							</c:if>
						</ul>
					</nav>
					-->
					<!-- end pagination-->

				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<%@ include file="../../../footer.jsp"%>

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
	//	$('input').iCheck({
	//	   checkboxClass: 'icheckbox_square-grey',
	//	   radioClass: 'iradio_square-grey'
	//	 });
		
	//	function fnGoPaging(page) {
   //         location.replace("accommodations_list.do?page="+page)
   //     }
	</script>


</body>

</html> 