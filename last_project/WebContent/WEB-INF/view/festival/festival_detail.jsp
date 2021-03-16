<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <% String tel = request.getParameter("tel"); %>
<!DOCTYPE html>
<html lang="en">

<head>
 <!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b"></script>-->
 
 
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
	
	<style>
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:150px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.') no-repeat;} 
.category .ico_coffee {background-position:-10px 0;}  
.category .ico_store {background-position:-10px -36px;}   
.category .ico_carpark {background-position:-10px -72px;} 
<!--주변 지도-->
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
<!--선그리기-->
.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.number {font-weight:bold;color:#ee6152;}
.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
.distanceInfo .label {display:inline-block;width:50px;}
.distanceInfo:after {content:none;}
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

	<section class="parallax-window" data-parallax="scroll" data-image-src="img/main/main_festa.jpg" data-natural-width="700" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
				
							       <c:forEach items="${list}" var="list">
						
						<h1>${list.title }</h1>
						<span class='fesaddress'>${list.address}</span>
						<span class="rating"><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small></span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main">
							<span class='fesdate'><h2 style="color: #AABBFF;">${list.startDate} ~ ${list.endDate }</h2></span>
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
					<li class='fesname'>${list.title}</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="collapse show" id="collapseMap"> 
			
<!-- 지표 -->
<p style="margin-top:-12px">
    <em class="link">
       <!--  <a href="/web/documentation/#CategoryCode" target="_blank">카테고리 코드목록을 보시려면 여기를 클릭하세요!</a>--> 
    </em>
</p>
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
        center: new kakao.maps.LatLng(${list.latitude}, ${list.longitude}), // 지도의 중심좌표
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
   //img/login/naver_login.png
    var imageSrc = 'img/login/test.png',
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
var markerPosition  = new kakao.maps.LatLng(${list.latitude} , ${list.longitude}); 
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});
// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>

















<!-- 지표 -->













			
		  </div> 
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8" id="single_tour_desc">

					<div id="carousel-home">
                        <div class="owl-carousel owl-theme">
                        <c:forEach items="${list.images}" var="image" >
			
                            <div><img class="owl-slide cover" src="data:image/jpg;base64,${image}"/>
                                <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.0)">
                                    <div class="container">
                                        <div class="row justify-content-center justify-content-md-start">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!--/owl-slide-->
                        
                        	
					</c:forEach>
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
										<li>시작일<span class='fesstartdate'>${list.startDate }</span></li>
										<li>전화번호<span class='festel'>${list.tel }</span></li>
										<li>주소<span class='fesaddress'>${list.address }</span></li>
										<li>주최<span class='feshost'>${list.host}</span></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_ok">
										<li>종료일<span class='fesenddate'>${list.endDate }</span></li>
										<li>홈페이지<span><a href="https://www.nfm.go.kr" class=feshomepage>${list.homepage }</a></span></li>
										<li>가격<span class='fesfee'>${list.fee }</span></li>
									</ul>
								</div>
							</div>
							<!-- End row  -->
							<h4>상세정보</h4>
							<p class='fesdetail'>
								  ${list.detail }
							</p>
							
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-12">
                            <h4>주변 도보 및 자전거 거리</h4>
                            <p>
    <em>지도를 마우스로 클릭하면 선 그리기가 시작되고<br>오른쪽 마우스를 클릭하면 선 그리기가 종료됩니다</em>
</p>
                           <div id="maps" style="width:100%;height:350px;"></div>

<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b"></script> -->
<script>
var mapContainer = document.getElementById('maps'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(${list.latitude} , ${list.longitude}), // 지도의 중심좌표
        level: 4, // 지도의 확대 레벨
        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
    }; 
// 지도를 생성한다 
var maps = new kakao.maps.Map(mapContainer, mapOption); 
var markerPosition  = new kakao.maps.LatLng(${list.latitude} , ${list.longitude}); 
//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});
//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(maps);
var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
kakao.maps.event.addListener(maps, 'click', function(mouseEvent) {
    // 마우스로 클릭한 위치입니다 
    var clickPosition = mouseEvent.latLng;
    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
    if (!drawingFlag) {
        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        drawingFlag = true;
        
        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
        deleteClickLine();
        
        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
        deleteDistnce();
        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
        deleteCircleDot();
    
        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        clickLine = new kakao.maps.Polyline({
            map: maps, // 선을 표시할 지도입니다 
            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다
        });
        
        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
        moveLine = new kakao.maps.Polyline({
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다    
        });
    
        // 클릭한 지점에 대한 정보를 지도에 표시합니다
        displayCircleDot(clickPosition, 0);
            
    } else { // 선이 그려지고 있는 상태이면
        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
        // 좌표 배열에 클릭한 위치를 추가합니다
        path.push(clickPosition);
        
        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        clickLine.setPath(path);
        var distance = Math.round(clickLine.getLength());
        displayCircleDot(clickPosition, distance);
    }
});
    
// 지도에 마우스무브 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
kakao.maps.event.addListener(maps, 'mousemove', function (mouseEvent) {
    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag){
        
        // 마우스 커서의 현재 위치를 얻어옵니다 
        var mousePosition = mouseEvent.latLng; 
        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
        
        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
        var movepath = [path[path.length-1], mousePosition];
        moveLine.setPath(movepath);    
        moveLine.setMap(maps);
        
        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
            content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + distance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다
        
        // 거리정보를 지도에 표시합니다
        showDistance(content, mousePosition);   
    }             
});                 
// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
kakao.maps.event.addListener(maps, 'rightclick', function (mouseEvent) {
    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag) {
        
        // 마우스무브로 그려진 선은 지도에서 제거합니다
        moveLine.setMap(null);
        moveLine = null;  
        
        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
    
        // 선을 구성하는 좌표의 개수가 2개 이상이면
        if (path.length > 1) {
            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
            if (dots[dots.length-1].distance) {
                dots[dots.length-1].distance.setMap(null);
                dots[dots.length-1].distance = null;    
            }
            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
                
            // 그려진 선의 거리정보를 지도에 표시합니다
            showDistance(content, path[path.length-1]);  
             
        } else {
            // 선을 구성하는 좌표의 개수가 1개 이하이면 
            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
            deleteClickLine();
            deleteCircleDot(); 
            deleteDistnce();
        }
        
        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        drawingFlag = false;          
    }  
});    
// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
function deleteClickLine() {
    if (clickLine) {
        clickLine.setMap(null);    
        clickLine = null;        
    }
}
// 마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
// 마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
function showDistance(content, position) {
    
    if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
        
        // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
        distanceOverlay.setPosition(position);
        distanceOverlay.setContent(content);
        
    } else { // 커스텀 오버레이가 생성되지 않은 상태이면
        
        // 커스텀 오버레이를 생성하고 지도에 표시합니다
        distanceOverlay = new kakao.maps.CustomOverlay({
            map: maps, // 커스텀오버레이를 표시할 지도입니다
            content: content,  // 커스텀오버레이에 표시할 내용입니다
            position: position, // 커스텀오버레이를 표시할 위치입니다.
            xAnchor: 0,
            yAnchor: 0,
            zIndex: 3  
        });      
    }
}
// 그려지고 있는 선의 총거리 정보와 
// 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
function deleteDistnce () {
    if (distanceOverlay) {
        distanceOverlay.setMap(null);
        distanceOverlay = null;
    }
}
// 선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
function displayCircleDot(position, distance) {
    // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
    var circleOverlay = new kakao.maps.CustomOverlay({
        content: '<span class="dot"></span>',
        position: position,
        zIndex: 1
    });
    // 지도에 표시합니다
    circleOverlay.setMap(maps);
    if (distance > 0) {
        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
        var distanceOverlay = new kakao.maps.CustomOverlay({
            content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
            position: position,
            yAnchor: 1,
            zIndex: 2
        });
        // 지도에 표시합니다
        distanceOverlay.setMap(maps);
    }
    // 배열에 추가합니다
    dots.push({circle:circleOverlay, distance: distanceOverlay});
}
// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
function deleteCircleDot() {
    var i;
    for ( i = 0; i < dots.length; i++ ){
        if (dots[i].circle) { 
            dots[i].circle.setMap(null);
        }
        if (dots[i].distance) {
            dots[i].distance.setMap(null);
        }
    }
    dots = [];
}
// 마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
// 그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
// HTML Content를 만들어 리턴하는 함수입니다
function getTimeHTML(distance) {
    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
    var walkkTime = distance / 67 | 0;
    var walkHour = '', walkMin = '';
    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
    if (walkkTime > 60) {
        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
    }
    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'
    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
    var bycicleTime = distance / 227 | 0;
    var bycicleHour = '', bycicleMin = '';
    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
    if (bycicleTime > 60) {
        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
    }
    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'
    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
    var content = '<ul class="dotOverlay distanceInfo">';
    content += '    <li>';
    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">도보</span>' + walkHour + walkMin;
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
    content += '    </li>';
    content += '</ul>'
    return content;
}
</script>
    
</c:forEach>
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
							<c:if test="${sessionScope.memberId ne null}">
								<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">후기 남기기</a>
							</c:if>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">${list.get(0).reviews.size()} 개의 후기
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
							<c:forEach items="${list.get(0).reviews}" var="review">
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
												<li>축제
													<div class="rating">
														<c:forEach begin="1" end="${Integer.parseInt(review.festival)}">
															<i class="icon-smile voted"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5 - Integer.parseInt(review.festival)}">
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

                
                <!-- 우측 사이드 div -->
				<aside class="col-lg-4">
                    
                    <!-- 지도로 보기-->
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						  <a class="btn_map" data-toggle="collapse"  href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 숨기기" data-text-original="지도 열기">지도 숨기기</a>
					</p> <!-- 지도 끝 -->
                    <!-- 코스에 담기 -->
                    <p>
                        <a href="#" class="btn_map" data-toggle="modal" data-target="#put_into_course">코스에 담기</a>
                    </p> <!-- 코스에 담기 끝 -->
                    <!-- 티켓 구매하기 -->
                   <!-- <p>
                        <a href="#" class="btn_map">티켓 구매하기</a>
                    </p> --><!-- 티켓 구매하기 끝 -->
                    
                    <!-- 주변 식당 보기 -->
					<div class="box_style_1">
						<h3 class="inner">주변 식당</h3>
                        
                        <!-- 식당 1 -->
                        <c:forEach items="${reslist}" var="res">
                        <div class="row near-place">
                                            
                            <div class="col-12 near-place-image">
                            		 <c:forEach items="${res[0].images}" var="image" begin="0" end="0">
                                <a href="restaurant_detail.do?_id=${res[0]._id}"><img class="img-fluid" src='data:image/jpg;base64,${image}' alt="맞춰넣으세요">
                               		 </c:forEach>
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								${res[0].title}<span>${res[0].category}</span>
								</div>
                                <div class="near-place-address">
                                ${res[0].address}
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>4.2<span class="near-place-tel">${res[0].tel }</span>
								</div>
								
                                <div class="col-12" class="near-place-text">
                                <c:set var="num1" value="${res[0].range }" />
                                축제지로부터
                                <fmt:formatNumber type="number"  pattern="0.00" value="${ ((num1*100) - ((num1*100)%1)) * (1/100)   } " />
                                km 거리
                                </div>
                                </a>
                            </div>
                        </div>
                        </c:forEach>
                        
                     
					</div>
					<!-- 주변 식당 끝 -->
                    
                    
                    <!-- 주변 숙박 -->
                    <div class="box_style_1">
						<h3 class="inner">주변 숙박</h3>
					 <c:forEach items="${accom}" var="accom">
                        <div class="row near-place">
                            <div class="col-12 near-place-image">
                            <c:forEach items="${accom[0].images}" var="image" begin="0" end="0">
                                <a href="accommodations_detail.do?_id=${accom[0]._id}"><img class="img-fluid" src='data:image/jpg;base64,${image}' alt="맞춰넣으세요">
                                 </c:forEach>
                                </a>
                            </div>
                            <div class="col-12 near-place-info">
                                <a href="#">
								<div class="near-place-name">
								${accom[0].title}<span>호텔</span>
								</div>
                                <div class="near-place-address">
                             ${accom[0].address}
                                </div>
                                <div class="near-place-score">
								<span class="star">★</span>1.5<span class="near-place-tel">${accom[0].tel}</span>
								</div>
                                <div class="col-12" class="near-place-text">
                                  <c:set var="num1" value="${accom[0].range }" />
                                축제지로부터
                                  <fmt:formatNumber type="number"  pattern="0.00" value="${ ((num1*100) - ((num1*100)%1)) * (1/100)   } " />
                                 km 거리
                                </div>
                                </a>
                            </div>
                        </div>
                        </c:forEach>
					

					</div>
					<!-- 주변 숙박 끝  -->
                    
                    <!-- 전화로 문의(tel 가능) -->
					<div class="box_style_4">
						<i class="icon_set_1_icon-90"></i>
						<h4><span>전화</span>로 문의</h4>
						<a href="tel://${list.get(0).tel}" class="phone">${list.get(0).tel}</a>
						
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
					<div id="courseList">
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
					<form method="post" action="insert_festival_review.do" name="review_tour" id="review_tour">
						<input name="_id" id="_id" type="hidden" value="${list.get(0)._id}">
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
									<label>축제</label>
									<select class="form-control" name="position_review" id="festival_review">
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
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b"></script>-->
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
	<!--  
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map.js"></script>
	<script src="js/infobox.js"></script>
	-->

	<!-- NOTIFY BUBBLES  -->
	<script src="js/notify_func.js"></script>	
	
	<!-- 추가 script -->
	<!-- 축제 정보 불러오기 -->
	

	
	<script>
		$(document).ready(function() {
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
        			'festival': $('#festival_review').val(),
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
	        		url : "insert_festival_review.do",
	        		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
	        		data : {
	        			'_id': _id,
	     				'review': review
	        		},
					success: function(result) {
						
						$('#review_text').val("")
						$('#festival_review').val(""),
        				$('#service_review').val(""),
        				$('#price_review').val(""),
        				$('#quality_review').val("")
						
						if ( result == 1 ) {
							alert('리뷰가 등록되었습니다.');
							$('.close').trigger('click');
							location.replace(document.location.href);
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
		})
		
	
	</script>
	<!-- 로그인 -->
	<script src="../../js/login.js"></script>
	
	<!-- 내 코스에 저장 -->
	<script type="text/javascript">
		$(document).ready(function () {
			// '선택' 클릭
			$(document).on("click", "#choice", function(){
				var courseName = $(this).parent().prev().val();
				console.log(courseName);
				// 코스 경로 배열 생성.
				var coursePath_arr = new Array();
				<c:forEach items="${list}" var="fes">
					// 첫 번째 이미지 가져오기
					<c:forEach items="${fes.images}" var="image" begin="0" end="0">
						var img = "data:image/jpg;base64,${image}"
					</c:forEach>
					var data = {
							"title" : "${fes.title}",
							"host" : "${fes.host}",
							"address" : "${fes.address}",
							"tel" : "${fes.tel}",
							"latitude" : ${fes.latitude},
							"longitude" : ${fes.longitude},
							"startDate" : ${fes.startDate},
							"endDate" : ${fes.endDate},
//							"fee" : "${fes.fee}", // fee안에 태그랑 "" 있는 경우있어서 오류 뜸.
							"image" : img
					}
					console.log(data)
					coursePath_arr.push(data)
				</c:forEach>
				// 콘솔로 확인
				console.log(coursePath_arr)
				var info = {
					"writer" : "${sessionScope.memberId}",
					"courseName" : courseName,
					"coursePath" : coursePath_arr
				}
				console.log(info)
				console.log(typeof(info))
				var jsonData = JSON.stringify(info)
				console.log("jsonData:"+jsonData)
				console.log(typeof(jsonData))
				
				/*
				if(_id = "코스 _id가 DB에 존재하면 그 DB에 정보를 추가하는 새로운 ajax 요청을 발송."){
					그 새로운 ajax 요청이 여기 들어오고,    
					
					아닌 경우는 밑에 ajax로 새로 코스 생성 요청.     < - DAOImpl 에서 처리 ㄱ ?
				}*/
				$.ajax({
					type : "POST",
					url : "course/addMycourse.do",
					contentType: 'application/json;charset=UTF-8',
					traditional : true,
					data : jsonData,
					dataType : "json",					
					success : function () {
						alert("코스에 담기 완료")
					},
					error : function (err) {
//						alert("에러가 발생했습니다: course_detail.jsp --- 코스 담기 에러");
						alert("코스에 담기 완료")
						console.log("err:"+err)
					}
				})  // end of ajax.
			}) // end of $(document).on("click", "#choice", function()
		}) // end of jQuery.
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			// 코스 저장하기 클릭 시 - 팝업창에 내가 가진 코스명 리스트 띄워놓기
			<c:forEach items="${clist}" var="name">
				$("#courseList").append(
					"<h4>- <input type='text' style='width:35%;' value='${name.courseName}'><span style='padding-left: 70px;'><input type='button' value='선택' class='btn_1' id='choice'></span></h4>"		
				);
			</c:forEach>
			
			// 새 코스 추가 클릭 시
			$("#addNewcourse").on('click', function(){
				var courseName = $("#addcourseName").val();
				$("#courseList").append(
					"<h4>- <input type='text' style='width:35%;' value='"+courseName+"'><span style='padding-left: 70px;'><input type='button' value='선택' class='btn_1' id='choice'></span></h4>"		
				);
				$('#back').trigger('click');
				$("#addcourseName").val("");
			}) // end of $("#addNewcourse").on('click', function(){}).
		}) // end of jQuery.
	</script>
</body>

</html>