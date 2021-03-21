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
    <title>축제로 - 코스 상세 보기</title>

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
	<link href="../css/tourDetail.css" rel="stylesheet">
	<link href="../css/Maptest.css" rel="stylesheet">
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


	<c:forEach items="${detail.coursePath}" var="coursePath" begin="0" end="0"> <!-- 첫 번째 장소의 이미지가 대문 이미지가 되게 -->
		<section class="parallax-window carousel_parallax" data-parallax="scroll" data-image-src="${coursePath.image}" data-natural-width="1400" data-natural-height="470">
			<div class="parallax-content-2">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<h1>${detail.courseName }</h1>
							<i class="pe-7s-map-marker"></i><span> ${coursePath.address}</span><br>
							<i class="pe-7s-graph1"></i> 코스 총 거리 :<span style="font-size: large;"> ${detail.distance}</span> km<br>
							<span class="rating"><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><medium>(${detail.reviews.size()}개의 리뷰)</medium></span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End section -->
	</c:forEach>

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="../main.jsp">Home</a>
					</li>
					<li><a href="course_main.do">코스</a>
					</li>
					<li>코스 상세보기</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="collapse show" id="collapseMap">
			<!-- <div id="map" class="map"></div> -->
			<!-- 지표
			<p style="margin-top:-12px">
			    <em class="link">
			         <a href="/web/documentation/#CategoryCode" target="_blank">카테고리 코드목록을 보시려면 여기를 클릭하세요!</a>
			    </em>
			</p> -->
			<div class="map_wrap">
			    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			    <ul id="category">
			        <li id="AT4" data-order="0">
			            <span class="category_bg bank"></span>
			            관광명소
			        </li>
			        <li id="MT1" data-order="1">
			            <span class="category_bg mart"></span>
			            마트
			        </li>
			        <li id="FD6" data-order="2">
			            <span class="category_bg pharmacy"></span>
			            음식점
			        </li>
			        <li id="AD5" data-order="3">
			            <span class="category_bg oil"></span>
			            숙박
			        </li>
			        <li id="CE7" data-order="4">
			            <span class="category_bg cafe"></span>
			            카페
			        </li>
			        <li id="CS2" data-order="5">
			            <span class="category_bg store"></span>
			            편의점
			        </li>
			    </ul>
			</div>

			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b&libraries=services,clusterer,drawing"></script>
			<script>
			// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
			var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}),
			    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다
			    markers = [], // 마커를 담을 배열입니다
			    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			    mapOption = {
					<c:forEach items="${detail.coursePath}" var="coursePath" begin="0" end="0">
			        	center: new kakao.maps.LatLng(${coursePath.latitude}, ${coursePath.longitude}), // 지도의 중심좌표. -> 코스의 시작점 (첫번째 장소)
			        </c:forEach>
			        level: 7, // 지도의 확대 레벨
			        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
			    };
			// 지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption);
			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places(map);
			// 지도에 idle 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'idle', searchPlaces);
			// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다
			contentNode.className = 'placeinfo_wrap';
			// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
			// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다
			addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
			addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
			// 커스텀 오버레이 컨텐츠를 설정합니다
			placeOverlay.setContent(contentNode);
			// 각 카테고리에 클릭 이벤트를 등록합니다
			addCategoryClickEvent();
			// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
			function addEventHandle(target, type, callback) {
			    if (target.addEventListener) {
			        target.addEventListener(type, callback);
			    } else {
			        target.attachEvent('on' + type, callback);
			    }
			}
			// 카테고리 검색을 요청하는 함수입니다
			function searchPlaces() {
			    if (!currCategory) {
			        return;
			    }

			    // 커스텀 오버레이를 숨깁니다
			    placeOverlay.setMap(null);
			    // 지도에 표시되고 있는 마커를 제거합니다
			    removeMarker();

			    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true});
			}
			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
			    if (status === kakao.maps.services.Status.OK) {
			        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
			        displayPlaces(data);
			    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
			        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
			    } else if (status === kakao.maps.services.Status.ERROR) {
			        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

			    }
			}
			// 지도에 마커를 표출하는 함수입니다
			function displayPlaces(places) {
			    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			    var order = document.getElementById(currCategory).getAttribute('data-order');

			    for ( var i=0; i<places.length; i++ ) {
			            // 마커를 생성하고 지도에 표시합니다
			            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
			            // 마커와 검색결과 항목을 클릭 했을 때
			            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
			            (function(marker, place) {
			                kakao.maps.event.addListener(marker, 'click', function() {
			                    displayPlaceInfo(place);
			                });
			            })(marker, places[i]);
			    }
			}
			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, order) {
			    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			    //var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
			    //var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';
			        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
			        imgOptions =  {
			            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
			            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
			            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
			        },
			        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
			            marker = new kakao.maps.Marker({
			            position: position, // 마커의 위치
			            image: markerImage
			        });
			    marker.setMap(map); // 지도 위에 마커를 표출합니다
			    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
			    return marker;
			}
			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
			    for ( var i = 0; i < markers.length; i++ ) {
			        markers[i].setMap(null);
			    }
			    markers = [];
			}
			// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
			function displayPlaceInfo (place) {
			    var content = '<div class="placeinfo">' +
			                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';
			    if (place.road_address_name) {
			        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
			                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
			    }  else {
			        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
			    }

			    content += '    <span class="tel">' + place.phone + '</span>' +
			                '</div>' +
			                '<div class="after"></div>';
			    contentNode.innerHTML = content;
			    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
			    placeOverlay.setMap(map);
			}
			// 각 카테고리에 클릭 이벤트를 등록합니다
			function addCategoryClickEvent() {
			    var category = document.getElementById('category'),
			        children = category.children;
			    for (var i=0; i<children.length; i++) {
			        children[i].onclick = onClickCategory;
			    }
			}
			// 카테고리를 클릭했을 때 호출되는 함수입니다
			function onClickCategory() {
			    var id = this.id,
			        className = this.className;
			    placeOverlay.setMap(null);
			    if (className === 'on') {
			        currCategory = '';
			        changeCategoryClass();
			        removeMarker();
			    } else {
			        currCategory = id;
			        changeCategoryClass(this);
			        searchPlaces();
			    }
			}
			// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
			function changeCategoryClass(el) {
			    var category = document.getElementById('category'),
			        children = category.children,
			        i;
			    for ( i=0; i<children.length; i++ ) {
			        children[i].className = '';
			    }
			    if (el) {
			        el.className = 'on';
			    }
			}
			var arr = new Array(); // 장소 별 위도, 경도를 담을 배열 생성
			<c:forEach items="${detail.coursePath}" var="coursePath">
				var markerPosition = new kakao.maps.LatLng(${coursePath.latitude}, ${coursePath.longitude});
				arr.push(markerPosition); // 배열에 위도, 경도 데이터 넣어줌.
			</c:forEach>
//			console.log("last_arr:"+arr); // 최종적으로 배열에 담긴 데이터 값 확인.

			// 마커를 생성합니다
			for(var i=0; i<arr.length; i++){
				var marker = new kakao.maps.Marker({
					position:arr[i]
				});
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
			}
			</script>
		</div>
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8" id="single_tour_desc">
					<div id="single_tour_feat" style="text-align: center;">
						<ul>
							<c:choose>
								<c:when test="${detail.schedule eq '당일'}">
									<li><i class=" icon-calendar-5"></i>당일</li>
								</c:when>
								<c:when test="${detail.schedule eq '1박 2일'}">
									<li><i class=" icon-calendar-5"></i>1박 2일</li>
								</c:when>
								<c:when test="${detail.schedule eq '2박 3일 이상'}">
									<li><i class=" icon-calendar-5"></i>2박 3일 이상</li>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${detail.theme eq '가족과 함께'}">
									<li><i class="icon-users"></i>가족과 함께</li>
								</c:when>
								<c:when test="${detail.theme eq '연인과 함께'}">
									<li><i class="icon-heart-8"></i>연인과 함께</li>
								</c:when>
								<c:when test="${detail.theme eq '메이트와 함께'}">
									<li><i class="icon-school"></i>메이트와 함께</li>
								</c:when>
								<c:when test="${detail.theme eq '반려동물과 함께'}">
									<li><i class="icon-guidedog"></i>반려동물과 함께</li>
								</c:when>
								<c:when test="${detail.theme eq '오감만족 코스'}">
									<li><i class="icon-thumbs-up-5">오감만족 코스</i></li>
								</c:when>
								<c:when test="${detail.theme eq '눈 정화 코스'}">
									<li><i class="icon-picture-1"></i>눈 정화 코스</li>
								</c:when>
								<c:when test="${detail.theme eq '귀 정화 코스'}">
									<li><i class="icon-headphones-3"></i>귀 정화 코스</li>
								</c:when>
								<c:when test="${detail.theme eq '나홀로 YOLO'}">
									<li><i class="icon-adult"></i>나홀로 YOLO</li>
								</c:when>
							</c:choose>
						</ul>
					</div>

					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 열기" data-text-original="지도 숨기기">지도 숨기기</a></p>
					<!-- Map button for tablets/mobiles -->
					<div id="Img_carousel" class="slider-pro">
						<c:forEach items="${detail.coursePath}" var="coursePath">
							<div class="sp-slides">
								<div class="sp-slide">
									<img alt="Image" class="sp-image" src="../css/images/blank.gif" data-src="${coursePath.image}" data-small="${coursePath.image}" data-medium="${coursePath.image}" data-large="${coursePath.image}" data-retina="${coursePath.image}">
								</div>
							</div>
						</c:forEach>
						<div class="sp-thumbnails">
							<c:forEach items="${detail.coursePath}" var="coursePath">
								<img alt="Image" data-rel="1" id="thumbimg1" class="sp-thumbnail" src="${coursePath.image}">
							</c:forEach>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-12">
							<h3>코스 설명</h3>
							<textarea rows="5" id="message_contact" name="message_contact" class="form-control" placeholder="코스에 대한 설명." style="height:100px; margin-bottom: 5%;" disabled>${detail.summary}</textarea>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-3">
							<h3>경로</h3>
						</div>
							<div class="col-lg-9">
								<c:forEach items="${detail.coursePath}" var="coursePath">
									<h4><i class="icon-flag-1"></i>${coursePath.title}</h4>
									<div class="row">
										<div class="col-md-12">
											<ul class="list_icons">
												<li><i class="icon-location-7"></i> ${coursePath.address}</li>
												<li><i class="icon-road-1"></i> 내 위치에서 333.3km</li>
												<li><i class="icon-phone-3"></i> ${coursePath.tel}</li>
											</ul>
										</div>
									</div>
									<!-- End row  -->
									<div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
										<div class="item">
											<a href="${coursePath.image}" data-effect="mfp-zoom-in"><img src="${coursePath.image}" alt="Image">
											</a>
										</div>
										<!--<div class="item">
											<a href="../img/carousel/2.jpg" data-effect="mfp-zoom-in"><img src="../img/carousel/2.jpg" alt="Image">
											</a>
										</div> -->
									</div>
									<!-- End photo carousel  -->
									<hr>
								</c:forEach>
							</div>
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->
					<hr>
					<div class="row">
						<div class="col-lg-3">
							<h3>후기 </h3>
							<c:if test="${sessionScope.memberId ne null}">
								<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">후기 남기기</a>
							</c:if>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">${detail.reviews.size()} 개의 후기
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
										<li>위치
											<div class="rating">
												<c:forEach begin="1" end="${scores[0]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[0]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
										<li>재미
											<div class="rating">
												<c:forEach begin="1" end="${scores[0]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[0]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>비용
											<div class="rating">
												<c:forEach begin="1" end="${scores[0]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[0]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
										<li>추천도
											<div class="rating">
												<c:forEach begin="1" end="${scores[0]}">
													<i class="icon-smile voted"></i>
												</c:forEach>
												<c:forEach begin="1" end="${5-scores[0]}">
													<i class="icon-smile"></i>
												</c:forEach>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							<c:forEach items="${detail.reviews }" var="review">
								<div class="review_strip_single">
									<img src="../img/avatar1.jpg" alt="Image" class="rounded-circle">
									<!-- <small> - 10 March 2015 -</small> -->
									<h4>${review.reviewWriter }</h4>
									<p>
										${review.reviewContent }
									</p>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
									</div>
								</div>
								<!-- End review strip -->
							</c:forEach>
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

				<aside class="col-lg-4" id="sidebar">
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 열기" data-text-original="지도 숨기기">지도 숨기기</a>
					</p>
					<div class="theiaStickySidebar">
						<div class="box_style_1 expose">
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label><i class="icon-map-1"></i> 코스명</label>
										<div>${detail.courseName}</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<label><i class="icon-calendar-7"></i> 일정</label>
										<div>${detail.schedule}</div>
									</div>
								</div>
								<div class="col-sm-7">
									<div class="form-group">
										<label><i class="icon_camera_alt"></i> 테마</label>
										<div>${detail.theme }</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label><i class=" icon_tags_alt"></i> 태그</label><br>
										<c:forEach items="${detail.keyword}" var="keyword">
											<span>${keyword} </span>
										</c:forEach>
									</div>
								</div>
								<br>
								<div class="col-sm-12">
									<div style="text-align: center;">
										<input type="button" value="코스 저장하기" class="btn_1" data-toggle="modal" data-target="#put_into_course" id="saveCourse">
										<!-- 비로그인 상태면 로그인을 하게 할거고, 로그인 상태면 코스 생성, 저장 팝업 띄울거임.-->
									</div>
								</div>
							</div>
						</div> <!-- /box_style_1 -->
					</div>
					<!--/sticky -->
				</aside>
			</div>
			<!--End row -->
		</div>
		<!--End container -->

        <div id="overlay"></div>
		<!-- Mask on input focus -->

	</main>
	<!-- End main -->

	<%@ include file="/../footer.jsp"%>

	<!-- Common scripts -->
	<script src="/../js/jquery-3.5.1.min.js"></script>
	<script src="/../js/common_scripts_min.js"></script>
	<script src="/../js/functions.js"></script>

	<!-- 비로그인 상태에서 코스 저장하기 누르면, 로그인하라고 안내.. 팝업 띄우기..어렵귀찮네?-->
	<c:choose>
		<c:when test="${sessionScope.memberId ne null}">
			<!-- Modal put_into_course-->
			<div class="modal fade" id="put_into_course" tabindex="1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myReviewLabel">코스 저장하기</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body" style="text-align: center;">
							<div id="courseList">
							</div>
							<div style="text-align: center;">
								<input type="button" value="새 코스 추가" class="btn btn-success" data-toggle="modal" data-target="#add_course">
							</div>
						</div>
					</div>
				</div>
			</div>
		 	<!-- End of Modal put_into_course-->
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				$(document).ready(function(){
					$("#saveCourse").on('click', function(){
						alert("로그인 후 이용해주세요.")
					})
				})
			</script>
		</c:otherwise>
	</c:choose>

	<!-- Modal add_course-->
	<div class="modal fade" id="add_course" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">새 코스 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span id="back" aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div id="message-review">
					</div>
					<div class="form-group">
						<input type="text" placeholder="코스명을 입력해주세요." id="addcourseName">
					</div>
					<div style="text-align: center;">
						<input type="button" value="추가" class="btn btn-success" id="addNewcourse">
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
					<form method="post" action="insert_course_review.do" name="review_tour" id="review_tour">
						<input name="_id" id="_id" type="hidden" value="${detail._id}">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="review_userId" id="review_userId" type="text" placeholder="이름" class="form-control" value="${sessionScope.memberId}" disabled>
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
									<label>비용</label>
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
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>재미</label>
									<select class="form-control" name="fun_review" id="fun_review">
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
									<label>추천도</label>
									<select class="form-control" name="recommend_review" id="recommend_review">
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
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="이 코스 어떠셨나요? 자세한 후기를 남겨주세요."></textarea>
						</div>
						<input type="submit" value="작성" class="btn_1" id="submit-review">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal review -->

	<!-- Common scripts -->
	<script src="../js/login.js"></script>

	<!-- 이미지 캐러셀 -->
	<script src="/../js/jquery.sliderPro.min.js"></script>
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

	<!--Review modal validation -->
	<script src="/../assets/validate.js"></script>

	<!-- Map
	<script src="http://maps.googleapis.com/maps/api/js"></script>
    <script src="../js/map.js"></script>
	<script src="../js/infobox.js"></script> -->

	<!-- Fixed sidebar -->
	<script src="/../js/theia-sticky-sidebar.js"></script>
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>

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

	<!-- 로그인 -->
	<script src="/../js/login.js"></script>

	<!-- 내 코스에 저장 -->
	<script type="text/javascript">
		$(document).ready(function () {
			// '선택' 클릭
			$(document).on("click", "#choice", function(){
				var courseName = $(this).parent().prev().val();
				// 코스의 키워드 뽑아서 배열에 넣기.
				var keyword = new Array();
				<c:forEach items="${detail.keyword}" var="keyword">
					var temp = "${keyword}"
					keyword.push(temp)
				</c:forEach>
				// 콘솔로 키워드 확인
				console.log(keyword)
				// 코스 경로 배열 생성.
				var coursePath_arr = new Array();
				<c:forEach items="${detail.coursePath}" var="coursePath">
					var data = {
							"p_id" : "${coursePath.p_id}",
							"title" : "${coursePath.title}",
							"address" : "${coursePath.address}",
							"tel" : "${coursePath.tel}",
							"latitude" : ${coursePath.latitude},
							"longitude" : ${coursePath.longitude},
							"image" : "${coursePath.image}"
					}
					coursePath_arr.push(data)
				</c:forEach>
				// 콘솔로 확인
				console.log(coursePath_arr)
				// 내가 선택한 코스의 _id
				var cId = $(this).parent().parent().next().val()
				// 코스 collection에 넣을 데이터.
				var info = {
					"_id" : cId,
					"writer" : "${sessionScope.memberId}",
					"courseName" : courseName,
					"summary" : "${detail.summary}",
					"keyword" : keyword,
					"distance" : ${detail.distance},
					"schedule" : "${detail.schedule}",
					"theme" : "${detail.theme}",
					"coursePath" : coursePath_arr
				}
				var jsonData = JSON.stringify(info)
				$.ajax({
					type : "POST",
					url : "pushCoursePath.do",
					contentType: 'application/json;charset=UTF-8',
					traditional : true,
					data : jsonData,
					dataType : "json",
					success : function (result) {
						alert("코스에 담기 완료")
					},
					error : function (err) {
						alert("에러가 발생했습니다: course_detail.jsp --- 코스 담기 에러");
						console.log("err:"+err)
					}
				})  // end of ajax.
			}) // end of $(document).on("click", "#choice", function()
		}) // end of jQuery.
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			// 코스 저장하기 클릭 시 - 팝업창에 내가 가진 코스명 리스트 띄워놓기
			<c:forEach items="${list}" var="name">
				$("#courseList").append(
					"<h4>- <input type='text' style='width:35%;' value='${name.courseName}'><span style='padding-left: 70px;'><input type='button' value='선택' class='btn_1' id='choice'></span></h4>"
				);
				// 코스 _id 써먹어야해서 필요
				$("#courseList").append(
					"<input type='hidden' value='${name._id}'>"
				);
			</c:forEach>

			// '추가' 클릭 시
			$("#addNewcourse").on('click', function(){
				var courseName = $("#addcourseName").val();
				// 팝업창에 입력한 코스명으로 행이 추가 되고
				$("#courseList").append(
					"<h4>- <input type='text' style='width:35%;' value='"+courseName+"'><span style='padding-left: 70px;'><input type='button' value='선택' class='btn_1' id='choice'></span></h4>"
				);
				// 창 닫히고
				$('#back').trigger('click');
				// 초기화
				$("#addcourseName").val("");
				// DB 코스 컬렉션에 document 생성
				var data = {
					"writer" : "${sessionScope.memberId}",
					"courseName" : courseName,
					"share" : "NO"
				}
				var jsonData = JSON.stringify(data)
				$.ajax({
					type : "POST",
					url : "addMycourse.do",
					contentType: 'application/json;charset=UTF-8',
					data : jsonData,
					dataType : "json",
					success : function (result) {
						alert("코스 생성 완료")
						// 방금 생긴 코스 document의 _id를 가져와서 히든 인풋을 하나 만들어주기.
						$.ajax({
							type : "POST",
							url : "cId.do",
							contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
							data : data,
							success : function(data){
								$("#courseList").append(
									"<input type='hidden' value="+data+">"
								);
							},
							error : function(err){
								alert("err:"+err)
							}
						}) // end of ajax.
					},
					error : function (err) {
						alert("에러가 발생했습니다: course_detail.jsp --- 코스 생성 에러");
						console.log("err:"+err)
					}
				}) // end of ajax.
			}) // end of $("#addNewcourse").on('click', function(){}).
		}) // end of jQuery.
	</script>

	<!-- 리뷰! -->
	<script type="text/javascript">
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
			'position': $('#position_review').val(),
			'price': $('#price_review').val(),
			'fun': $('#fun_review').val(),
			'recommend': $('#recommend_review').val()
		}

		const _id =	$('#_id').val()

		$.ajax({
			type : 'post',
    		async : true,
    		url : "insert_course_review.do",
    		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
    		data : {
    			'_id': _id,
 				'review': review
    		},
			success: function(result) {

				$('#review_text').val("")
				$('#position_review').val(""),
				$('#price_review').val(""),
				$('#fun_review').val(""),
				$('#recommend_review').val("")

				if ( result == 1 ) {
					alert('리뷰가 등록되었습니다.');
					$('.close').trigger('click');
					location.replace('courseSelect.do?_id='+_id);
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
	</script>
</body>

</html>
