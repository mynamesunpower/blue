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
	<title>축제로 - 코스 편집하기</title>

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

	<!-- REVOLUTION SLIDER CSS -->
	<link href="../layerslider/css/layerslider.css" rel="stylesheet">
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

	<main>
		<!-- Slider -->
		<div id="full-slider-wrapper">
			<div id="layerslider" style="width:100%;height:600px;">
				<c:forEach items="${detail.coursePath}" var="coursePath">
					<div class="ls-slide" data-ls="slidedelay: 5000; transition2d:5;">
						<img src="${coursePath.image}" class="ls-bg" alt="Slide background">
						<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">코스 편집</h3>
						<p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">코스에 대해 소개해주세요.</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- End layerslider -->

		<div id="position">
			<div class="container">
				<ul>
					<li><a href="../main.jsp">Home</a>
					</li>
					<li><a href="course_main.do">코스</a>
					</li>
					<li><a href="course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a>
					</li>
					<li>코스 편집하기</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-md-8">
					<div class="form_title">
						<h3><strong><i class="icon-pencil"></i></strong>코스 편집하기</h3>
					</div>
					<div class="step">
						<!-- <div id="message-contact"></div> -->
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<p><strong>코스명</strong></p>
									<input type="text" class="form-control" id="courseName" name="courseName" style="font-size: large;" value="${detail.courseName}"><hr/>
								</div>
							</div>
						</div>
						<div id="single_tour_feat" style="text-align: center;">
							<ul>
								<li><i class="pe-7s-map-marker"></i>총<span style="font-size: large; color: cadetblue" id="count"> ${detail.coursePath.size()}</span> 건</li>
								<li><i class="pe-7s-graph1"></i>코스 총 거리 :<span style="font-size: large; color: cadetblue;"> ${detail.distance}</span> km</li>
							</ul>
						</div>
						<c:forEach items="${detail.coursePath}" var="coursePath" varStatus="vs">
							<div class="row">
								<div class="col-sm-12">
									<div style="text-align: right; font-size: larger;">
										<i class="icon-trash-7" style="cursor: pointer;" id="pullCourse"></i>  <!-- 쓰레기통 클릭 시 해당 칸 삭제-->
										<input type="hidden" value="${coursePath.p_id}">
									</div>
									<a class="box_news" href="../details.do?tel=${coursePath.postcode}"> <!-- 축제는 postcode 값으로 상세페이지 진입하게 해놨네..??? 식당 숙박은 다를텐데..... -->
										<figure><img src="${coursePath.image}" alt="">
											<figcaption><strong>${vs.count}</strong></figcaption>  <!-- figcaption 넘 큰뎅.. 작게하고 싶다-->
										</figure>
										<h4>${coursePath.title}</h4><br>
										<p><i class="icon-location-7"></i>${coursePath.address}</p>
										<p><i class="icon-phone-3"></i>${coursePath.tel}</p>
									</a>
									<hr/>
								</div>
							</div>
						</c:forEach>
						<!-- /box_news -->
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<p><strong>코스 설명</strong></p>
									<textarea rows="5" id="summary" name="summary" class="form-control" style="height:100px; margin-bottom: 5%;">${detail.summary}</textarea>
								</div>
							</div>
						</div>
						<hr/>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<p><strong>태그</strong></p>
									<textarea rows="5" id="keyword" name="message_contact" class="form-control" style="height:100px; margin-bottom: 5%;" placeholder="해시태그로 표현해주세요. ex) #힐링 #신남 #행복"><c:forEach items="${detail.keyword}" var="keyword">${keyword} </c:forEach></textarea>
								</div>
							</div>
						</div>
						<hr/>
						<div class="row">
							<div class="col-sm-12">
						  		<div class="map" id="map">
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
								</div>
							</div>
						</div>
						<hr/>
						<!-- End map -->
					</div> <!-- End step-->
				</div>
				<!-- End col-md-8 -->
				<aside class="col-lg-4" id="sidebar" style="z-index:999">
					<div class="theiaStickySidebar">
						<div class="box_style_1 expose">
							<span class="tape"></span>
							<div class="row">
								<div class="col-sm-12">
									<h4>코스 테마 <i class="icon_camera_alt"></i></h4>
									<select id="theme" class="form-control">
										<option value="${detail.theme}" selected>${detail.theme}</option>
										<option value="가족과 함께">가족과 함께</option>
										<option value="연인과 함께">연인과 함께</option>
										<option value="메이트와 함께">메이트와 함께</option>
										<option value="반려동물과 함께">반려동물과 함께</option>
										<option value="오감만족 코스">오감만족 코스</option>
										<option value="눈 정화 코스">눈 정화 코스</option>
										<option value="귀 정화 코스">귀 정화 코스</option>
										<option value="나홀로 YOLO">나홀로 YOLO</option>
									</select>
									<hr/>
								</div>

								<div class="col-sm-12">
									<h4>코스 일정 <i class="icon-clock-1"></i></h4>
									<select id="schedule" class="form-control" name="">
										<option value="${detail.schedule}" selected>${detail.schedule}</option>
										<option value="당일">당일</option>
										<option value="1박 2일">1박 2일</option>
										<option value="2박 3일 이상">2박 3일 이상</option>
									</select>
									<hr/>
								</div>

								<div class="col-sm-12">
									<p style="font-size: large;">코스 자랑 마당에 공유하기</p>
									<div style="text-align: center;">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="YES">Yes</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="NO">No</div>
									</div>
									<hr/>
								</div>

								<div class="col-sm-12">
									<div style="text-align: center;">
										<input type="button" value="저장" class="btn_1" id="editCourse">
									</div>
								</div>
							</div>
						</div>
					</div>
				</aside> <!-- End aside-->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<%@ include file="/../footer.jsp"%>

	<!-- Common scripts -->
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script src="../js/common_scripts_min.js"></script>
	<script src="../js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="../assets/validate.js"></script>
	<!-- Map
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script type="text/javascript" src="../js/map_home.js"></script>
	<script type="text/javascript" src="../js/infobox.js"></script> -->
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
			var markerPosition = new kakao.maps.LatLng("${coursePath.latitude}", "${coursePath.longitude}");
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

	<!-- 상단 캐러셀-->
	<script src="../js/jquery-migrate.min.js"></script>
	<script src="../layerslider/js/greensock.js"></script>
	<script src="../layerslider/js/layerslider.transitions.js"></script>
	<script src="../layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			'use strict';
			$('#layerslider').layerSlider({
				autoStart: true,
				responsive: true,
				responsiveUnder: 1280,
				layersContainer: 1170,
				skinsPath: '../layerslider/skins/'
					// Please make sure that you didn't forget to add a comma to the line endings
					// except the last line!
			});
		});
	</script>
	<!-- Fixed sidebar -->
	<script src="../js/theia-sticky-sidebar.js"></script>
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			var cId = "${detail._id}"  // 코스의 _id
			console.log(cId)
			// 쓰레기통 아이콘 클릭
			$(document).on("click", "#pullCourse", function(){
				var p_id = $(this).next().val() // 각각 경로의 _id
				console.log(p_id)
				$.ajax({
					type : "POST",
					url : "pullCoursePath.do",
					contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
					data : {
						"cId" : cId,
						"p_id" : p_id,
					},
					success : function(){
						alert("삭제 성공");
					},
					error : function(err){
						console.log(err)
					}
				}) // end of ajax.
				// 삭제한 row 화면에서 지우기.
				$(this).parent().parent().parent().remove();

				// 경로 삭제에 따른 총 n건, 총 거리 새로고침...해야해..?ㅠㅠ

			}) // end of on("click", "#pullCourse", function()

			// 코스의 기존 테마
			var theme = "${detail.theme}"
			// 테마 셀렉트 박스에서 선택한 테마 옵션 가져오기
			$("#theme").on("change", function(){
				theme = $("#theme option:selected").val()
			})
			// 코스의 기존 일정
			var schedule = "${detail.schedule}"
			// 일정 셀렉트 박스에서 선택한 일정 옵션 가져오기
			$("#schedule").on("change", function(){
				schedule = $("#schedule option:selected").val()
			})
			// 코스의 기존 공유 여부
			var share = "${detail.share}"
			// 공유 ON, OFF 값 가져오기.
			$("input[name=inlineRadioOptions]").on("change", function(){
				share = $("input[name=inlineRadioOptions]:checked").val()
			})
			if(share=="YES"){
				$("#inlineRadio1").attr("checked",true);
			}else{
				$("#inlineRadio2").attr("checked",true);
			}

			// '저장' 클릭 시
			$("#editCourse").on('click', function(){
				var keyword = $("#keyword").val().split(" ");
				var info = {
						"_id" : cId,
						"courseName" : $("#courseName").val(),
						"summary" : $("#summary").val(),
						"keyword" : keyword,
						"theme" : theme,
						"schedule" : schedule,
						"share" : share,
				};
				var jsonData = JSON.stringify(info);
				$.ajax({
					type : "POST",
					url : "editCourse.do",
					contentType : 'application/json;charset=UTF-8',
					data : jsonData,
					dataType : "json",
					success : function(result){
						alert("저장 완료")
						location.href = "course_list.do"
					},
					error : function(err){
						alert("에러 발생: 코스 편집 저장 쪽")
						console.log(err)
					}
				}) // end of ajax
			}) // end of $('#editCourse') click function
		}) // end of jQuery.
	</script>
</body>


</html>
