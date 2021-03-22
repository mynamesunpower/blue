<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
	<meta name="author" content="Ansonika">
	<title>축제로 - 식당 Main</title>

	<!-- Favicons-->
	<link rel="shortcut icon" href="img/logo_img.PNG" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	
	<!-- COMMON CSS -->
	<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
	<link href="../../css/vendors.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="../../css/custom.css" rel="stylesheet">
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

	<%@ include file="../../../header.jsp" %>

	<section class="parallax-window carousel_parallax" data-parallax="scroll" data-image-src="img/restaurant/main.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>식당 리스트</h1>
				<p>전국의 식당 리스트입니다.</p>
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
					<!-- 로그인 세션이 있다면, Home 클릭 시 mainAfterLogin.jsp로 이동되게-->
					<!-- <li><a href="mainAfterLogin.jsp">Home</a>
					</li> -->
					<li><a href="../festival.jsp">축제</a>
					</li>
					<li>식당</li>
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
					

					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="restaurants_list.do" id="active"><i class="icon_set_3_restaurant-10"></i>모든 식당 <span>(${countSum})</span></a>
							</li>
							<c:forEach begin="0" end="5" varStatus="var">
							<li>
								<a href="restaurants_list.do?category=${categories.get(var.index)._id}">${categories.get(var.index)._id} 
									<span>(${categories.get(var.index).countA})</span>
								</a>
							</li>
							</c:forEach>

						</ul>
					</div>
					

					
				</aside>
				<!--End aside -->
				<div class="col-lg-9">

					<div id="tools">

						<div class="row">							
							<div class="col-md-3 col-sm-4 col-6">

							</div>
							<div class="col-md-9 col-sm-4 d-none d-sm-block text-right">

							</div>

						</div>
					</div>
					<!--/tools -->
					<div id="restaurants_list">
	 					<c:forEach items="${list}" var="list" varStatus="var">
							<div class="strip_all_tour_list wow fadeIn restaurant" data-wow-delay="0.1s">
								<div class="row">
									<div class="col-lg-4 col-md-4">
										<c:if test="${scores[var.index] ge 3}">
											<div class="ribbon_3 popular"><span>인기</span>
											</div>
										</c:if>
										
										<div class="wishlist">
											<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
										</div>
										<div class="img_list">
											<a href="restaurant_detail.do?_id=${list._id}">
											
												<c:choose>
													<c:when test="${list.images.size() gt 0}">
														<img class="img-fluid" src="data:image/jpg;base64,${list.images.get(0)}" alt="${list.title}">
													</c:when>
													<c:otherwise>
														<img class="img-fluid" src="img/no-image2.jpg">
													</c:otherwise>
												</c:choose>
												
												<div class="short_info" style="padding-left:10px;">${list.category}</div>
											</a>
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="tour_list_desc">
											<div class="rating">
											</div>
											<h4>${list.title}</h4>
											<p>${list.address}</p>
											<br><br><br><br>
											<div class="rating">
												<h3>
													<span>
													<c:forEach begin="1" end="${scores[var.index]}">
														<i class="icon-star voted"></i>
													</c:forEach>
													<c:forEach begin="1" end="${5 - scores[var.index]}">
														<i class="icon-star-empty"></i>
													</c:forEach>
													</span>
												( ${list.reviews.size()} )</h3>
											</div>
											
										</div>
									</div>
									<div class="col-lg-2 col-md-2">
										<div class="price_list">
											<div>
												<p>
													<a href="restaurant_detail.do?_id=${list._id}" class="btn_1">상세 정보</a>
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
					<!-- end pagination-->

				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<%@ include file="../../../footer.jsp" %>

	<!-- Common scripts -->
	<script src="../../js/jquery-3.5.1.min.js"></script>
	<script src="../../js/common_scripts_min.js"></script>
	<script src="../../js/functions.js"></script>
	<script src="../../js/pagination.min.js"></script>
	<!-- Specific scripts -->
	<!-- Cat nav mobile -->
	<script src="../../js/cat_nav_mobile.js"></script>
	<script>
		$(document).ready(function() {
			
		})
	
		$('#cat_nav').mobileMenu();
		
		function fnGoPaging(page) {
			
			var url = new URL(window.location.href);
			var urlParams = url.searchParams;

			console.log(urlParams.has("category") + " / " + urlParams.has("page"))
			
			if (urlParams.has("category") == true) {
				var word = urlParams.get('category')
	            location.replace("restaurants_list.do?page="+page+"&category="+word)
			}
			else {
				location.replace("restaurants_list.do?page="+page)
			}
			
        }
		
	</script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="../../js/map_restaurants.js"></script>
	<script src="../../js/infobox.js"></script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	
</body>

</html>