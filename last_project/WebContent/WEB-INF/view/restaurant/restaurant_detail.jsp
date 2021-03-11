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
    <title>축축빵빵 - 식당 Detail</title>

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

	<section class="parallax-window" data-parallax="scroll" data-image-src="data:image/jpg;base64,${restaurantVO.images.get(0)}" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1>${restaurantVO.title}</h1>
						<span>${restaurantVO.address}</span>						
						<div class="rating">
						<c:forEach begin="1" end="${scores[4]}">
							<i class="icon-star voted"></i>
						</c:forEach>
						<c:forEach begin="1" end="${5-scores[4]}">
							<i class="icon-star-empty"></i>
						</c:forEach>
						<small>(${restaurantVO.reviews.size()})</small>
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
					<li><a href="../main.jsp">Home</a>
					</li>
					<!-- 로그인 세션이 있다면, Home 클릭 시 mainAfterLogin.jsp로 이동되게-->
					<!-- <li><a href="mainAfterLogin.jsp">Home</a>
					</li> -->
					<li><a href="festival.jsp">축제</a>
					</li>
					<li><a href="restaurants_list.do">식당</a>
					<li>${restaurantVO.title}</li>
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

					

					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
					</p>					
					<!-- Map button for tablets/mobiles -->

					<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">
							<c:forEach items="${restaurantVO.images}" var="image">
								<div class="sp-slide">
									<img alt="Image" class="sp-image" src="data:image/jpg;base64,${image}" data-src="data:image/jpg;base64,${image}">
								</div>
							</c:forEach>
						</div>
						<div class="sp-thumbnails">
							<c:forEach items="${restaurantVO.images}" var="image">
							<img alt="Image" class="sp-thumbnail" src="data:image/jpg;base64,${image}">
							</c:forEach>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-6">
							<h3>영업시간</h3>
							<h4>${restaurantVO.open_time} ~ ${restaurantVO.close_time}</h4>
						</div>
						<div class="col-lg-6">
							<h3>휴일</h3>
							<h4>${restaurantVO.rest_day}</h4>
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>후기 </h3> 
							<c:if test="${sessionScope.memberId ne null}">
								<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">후기 남기기</a>
							</c:if>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">${restaurantVO.reviews.size()} 개의 후기
								<div class="rating">
									<c:forEach begin="1" end="${scores[4]}">
										<i class="icon-smile voted"></i>
									</c:forEach>
									<c:forEach begin="1" end="${5-scores[4]}">
										<i class="icon-smile"></i>
									</c:forEach>
								</div>
							</div>
							<!-- End general_rating -->
							<div class="row" id="rating_summary">
								<div class="col-md-6">
									<ul>
										<li>음식
											<div class="rating">
												<c:forEach begin="1" end="${scores[0]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[0]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
										<li>서비스
											<div class="rating">
												<c:forEach begin="1" end="${scores[1]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[1]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>가격
											<div class="rating">
												<c:forEach begin="1" end="${scores[2]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[2]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
										<li>분위기
											<div class="rating">
												<c:forEach begin="1" end="${scores[3]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[3]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							
							<!-- 리뷰들 들어갑니다 -->
							<c:forEach items="${restaurantVO.reviews}" var="review">
								<div class="review_strip_single rating_summary">

									<h5>${review.id}</h5>
									<div>${review.date}</div>
									<hr>
									<p style="font-size:14px;">
										${review.content}
									</p>
									<div class="row">
										<div class="col-md-6">
											<ul>
												<li>음식
													<div class="rating">
														<c:forEach begin="1" end="${Integer.parseInt(review.food)}">
															<i class="icon-smile voted"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5 - Integer.parseInt(review.food)}">
															<i class="icon-smile"></i>
														</c:forEach>
													</div>
												</li>
												<li>서비스
													<div class="rating">
														<c:forEach begin="1" end="${Integer.parseInt(review.service)}">
															<i class="icon-smile voted"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5 - Integer.parseInt(review.service)}">
															<i class="icon-smile"></i>
														</c:forEach>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-md-6">
											<ul>
												<li>가격
													<div class="rating">
														<c:forEach begin="1" end="${Integer.parseInt(review.price)}">
															<i class="icon-smile voted"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5 - Integer.parseInt(review.price)}">
															<i class="icon-smile"></i>
														</c:forEach>
													</div>
												</li>
												<li>분위기
													<div class="rating">
														<c:forEach begin="1" end="${Integer.parseInt(review.quality)}">
															<i class="icon-smile voted"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5 - Integer.parseInt(review.quality)}">
															<i class="icon-smile"></i>
														</c:forEach>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								
							</c:forEach> <!-- 리뷰 반복문 종료 -->
							
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

				<aside class="col-lg-4">
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 열기</a>
					</p>
					<!-- 코스에 담기 -->
                    <p>
                        <a href="#" class="btn_map" data-toggle="modal" data-target="#put_into_course">코스에 담기</a>
                    </p> <!-- 코스에 담기 끝 -->
					<div class="box_style_1 expose">
						<h3 class="inner">- 예약 문의 -</h3>
						<div class="box_style_4">
							<i class="icon_set_1_icon-90"></i>
							<a href="tel://${restaurantVO.tel}" class="phone" style="color:black;"><br/>${restaurantVO.tel}</a>
							<!-- <small>Monday to Friday 9.00am - 7.30pm</small> -->
						</div> <!--/box_style_4 -->
						<hr>
					</div>
					<!--/box_style_1 -->
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

	<!-- Modal Review 리뷰 폼 -->
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
					<form method="post" action="insert_restaurant_review.do" name="review_tour" id="review_tour">
						<input name="_id" id="_id" type="hidden" value="${restaurantVO._id}">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="review_userId" id="review_userId" type="text" placeholder="이름" class="form-control" value="${sessionScope.memberId}" disabled>
								</div>
							</div>
						</div>
						<!-- End row -->
						<!-- 
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email" placeholder="이메일" class="form-control">
								</div>
							</div>
						</div>  -->
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>음식</label>
									<select class="form-control" name="position_review" id="food_review">
										<option value="">만족도를 선택하세요</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>서비스</label>
									<select class="form-control" name="guide_review" id="service_review">
										<option value="">만족도를 선택하세요</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
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
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>분위기</label>
									<select class="form-control" name="quality_review" id="quality_review">
										<option value="">만족도를 선택하세요</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="form-group">
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="식당에 방문할 사람들이 참고할 수 있게 자세한 후기를 남겨주세요."></textarea>
						</div>
						<input type="button" value="작성" class="btn_1" id="submit-review">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal review -->

	<!-- Common scripts -->
	<script src="../../js/jquery-3.5.1.min.js"></script>
	<script src="../../js/common_scripts_min.js"></script>
	<script src="../../js/functions.js"></script>

	<!-- Date and time pickers -->
	<script src="../../js/bootstrap-datepicker.js"></script>
	<script src="../../js/bootstrap-timepicker.js"></script>	
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
		$('input.time-pick').timepicker({
			minuteStep: 15,
			showInpunts: false
		})
	</script>
	<!-- Carousel -->
	<script src="../../js/jquery.sliderPro.min.js"></script>
	
	<!-- 리뷰 남기기 -->
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
			
			// 시간 format 변환
			function getTimeStamp() {
			  var d = new Date();
			
			  var s =
			    leadingZeros(d.getFullYear(), 4) + '-' +
			    leadingZeros(d.getMonth() + 1, 2) + '-' +
			    leadingZeros(d.getDate(), 2) + ' ' +
			
			    leadingZeros(d.getHours(), 2) + ':' +
			    leadingZeros(d.getMinutes(), 2) + ':' +
			    leadingZeros(d.getSeconds(), 2);
			
			  return s;
			}
			
			function leadingZeros(n, digits) {
			  var zero = '';
			  n = n.toString();
			
			  if (n.length < digits) {
			    for (i = 0; i < digits - n.length; i++)
			      zero += '0';
			  }
			  return zero + n;
			}
			
			$('#submit-review').on('click', function() {
				
				var date = getTimeStamp();
				const id = $('#review_userId').val();
				
				const review = {
					'id' : id,
					'date': date,
        			'content' : $('#review_text').val(),
        			'food': $('#food_review').val(),
        			'service': $('#service_review').val(),
        			'price': $('#price_review').val(),
        			'quality': $('#quality_review').val()
				}
				
				const _id =	$('#_id').val()
				
				console.log(_id)
				console.log(review['id'] + '/' + review['content'] + '/' + review['food'] + '/' + review['service'] + '/' + review['price'] + '/' + review['quality'])
				
				$.ajax({
					type : 'post',
	        		async : true,
	        		url : "insert_restaurant_review.do",
	        		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
	        		data : {
	        			'_id': _id,
	     				'review': review
	        		},
					success: function(result) {
						
						$('#review_text').val("")
						$('#food_review').val(""),
        				$('#service_review').val(""),
        				$('#price_review').val(""),
        				$('#quality_review').val("")
						
						if ( result == 1 ) {
							alert('리뷰가 등록되었습니다.');
							$('.close').trigger('click');
							location.replace('restaurant_detail.do?_id='+_id);
						}
						else {
							alert('리뷰가 등록되질 않았습니다. 왜일까')
						}
					},
					error: function(error) {
						console.log('에러' + error)
					}
				})
				
			})
		});
	</script>
	
	 <!-- 로그인 -->
	<script src="../../js/login.js"></script>

	<!--Review modal validation -->
	<script src="../../assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>                                   
	<script src="../../js/map_single_restaurant.js"></script>
	<script src="../../js/infobox.js"></script>
	
</body>

</html>