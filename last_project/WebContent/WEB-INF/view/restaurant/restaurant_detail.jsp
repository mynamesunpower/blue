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
	 <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap {position:relative;width:100%;height:350px;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(img/login/test.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
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

		<div class="collapse show" id="collapseMap">

						
<!-- 지도표시 -->
<p style="margin-top:-12px">
    <em class="link">
        <a href="/web/documentation/#CategoryCode" target="_blank">카테고리 코드목록을 보시려면 여기를 클릭하세요!</a>
    </em>
</p>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            은행
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            마트
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            약국
        </li>  
        <li id="OL7" data-order="3"> 
            <span class="category_bg oil"></span>
            주유소
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
        center: new kakao.maps.LatLng(${restaurantVO.longitude}, ${restaurantVO.latitude}), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
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
    //var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
    var imageSrc = 'img/login/test.png',  
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

var markerPosition  = new kakao.maps.LatLng(${restaurantVO.longitude} , ${restaurantVO.latitude}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>



<!-- 지표 -->
			
			
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
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 숨기기</a>
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
	<!-- 
	<script src="../../js/bootstrap-datepicker.js"></script>
	<script src="../../js/bootstrap-timepicker.js"></script>	
	-->
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
	<!--  
	<script src="http://maps.googleapis.com/maps/api/js"></script>                                   
	<script src="../../js/map_single_restaurant.js"></script>
	<script src="../../js/infobox.js"></script>
	-->
</body>

</html>