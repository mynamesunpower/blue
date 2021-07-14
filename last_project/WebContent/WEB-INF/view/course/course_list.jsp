<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>축제로 - 나의 코스 목록</title>

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
	<style>
	@media screen and (min-width: 769px) { 

	.carousel_parallax, div#position, div#map {
		width: 58% !important;
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

	<section class="parallax-window carousel_parallax" data-parallax="scroll" data-image-src="../img/main/main_course.png" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>나의 코스 목록</h1>
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
					<li>나의 코스 목록</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-12">
                    <div class="form_title">
						<h3><strong><i class="icon-pencil"></i></strong>나의 코스 목록</h3>
					</div>
                    <div class="step">
                    	<!-- 여기서부터 이제 데이터 받아서 보여줄 코딩 필요. -->
                    	<c:forEach items="${list}" var="course">
	                        <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
	                            <div class="row">
	                                <div class="col-lg-3 col-md-3">
	                                    <div class="img_list">
	                                        <a href="courseSelect.do?_id=${course._id}">
	                                        	<c:forEach items="${course.coursePath}" var="coursePath" begin="0" end="0">
	                                            	<img src="${coursePath.image}" alt="Image" class="img-fluid">
	                                            </c:forEach>
	                                        </a>
	                                    </div>
	                                </div>
	                                <div class="col-lg-7 col-md-7">
	                                    <div class="tour_list_desc">
	                                        <div class="rating">
	                                        	<div style="text-align: right;">
		                                        	<span style="font-size: larger;">
														<a href="deleteCourse.do?_id=${course._id}" class="icon-trash-7"></a><!-- 쓰레기통 클릭 시 해당 코스 삭제 -->
													</span>
	                                        	</div>
	                                        	<i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><medium>(${course.reviews.size()})</medium>
	                                        </div>
	                                        <h3><strong>${course.courseName}</strong></h3>
	                                        <c:forEach items="${course.keyword}" var="keyword">
												<span>${keyword}</span>
											</c:forEach>
											<br><br>
	                                        <p>${course.summary}</p>
	                                        <ul class="add_info">
	                                            <li>
	                                                <div class="tooltip_styled tooltip-effect-4">
	                                                    <span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
	                                                    <div class="tooltip-content">
	                                                        <h4><strong>일정</strong></h4>
	                                                        ${course.schedule} 코스
	                                                    </div>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <div class="tooltip_styled tooltip-effect-4">
	                                                    <span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
	                                                    <div class="tooltip-content">
	                                                    	<c:forEach items="${course.coursePath}" var="coursePath" begin="0" end="0">
	                                                    		<h4><strong>지역</strong></h4>
	                                                    		${coursePath.address}
	                                            			</c:forEach>
	                                                    </div>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <div class="tooltip_styled tooltip-effect-4">
	                                                    <span class="tooltip-item">
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
	                                                    </span>
	                                                    <div class="tooltip-content">
	                                                        <h4><strong>테마</strong></h4>
	                                                        ${course.theme}
	                                                    </div>
	                                                </div>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <div class="col-lg-2 col-md-2">
	                                    <div class="price_list">
	                                        <div>
	                                            <p><a href="courseSelect.do?_id=${course._id}" class="btn_1">자세히 보기</a>
	                                            </p><br/>
	                                            <p><a href="course_edit.do?memberId=${sessionScope.memberId}&_id=${course._id}" class="btn btn-success btn-sm">편집하기</a>
	                                            </p>
	                                        </div>

	                                    </div>
	                                </div>
	                            </div>
	                        </div>
                        	<!--End strip -->
                        </c:forEach>
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
                    </div> <!-- end step-->
				</div>
				<!-- End col lg-12 -->
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

</body>

</html>
