<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>축제로 - 전 국민 페스티벌 플랫폼</title>


    <!-- Favicons-->
    <link rel="shortcut icon" href="img/logo_img.PNG" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Go  chi+Hand|Lato:300,400|Montserrat:400,700|Roboto+Slab:400,100,300,700" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="css/custom.css" rel="stylesheet">

    <!-- REVOLUTION SLIDER CSS
	<link rel="stylesheet" type="text/css" href="rev-slider-files/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="rev-slider-files/css/settings.css">
     -->

    <!-- REVOLUTION SLIDER CSS -->
	<link href="../layerslider/css/layerslider.css" rel="stylesheet">

    <!-- REVOLUTION LAYERS STYLES
	<style>
		.tp-caption.News-Title,
		.News-Title {
			color: rgba(255, 255, 255, 1.00);
			font-size: 70px;
			line-height: 60px;
			font-weight: 700;
			font-style: normal;
			text-decoration: none;
			background-color: transparent;
			border-color: transparent;
			border-style: none;
			border-width: 0px;
			border-radius: 0 0 0 0px
		}
		.tp-caption.News-Subtitle,
		.News-Subtitle {
			color: rgba(255, 255, 255, 1.00);
			font-size: 15px;
			line-height: 24px;
			font-weight: 300;
			font-style: normal;
			font-family: Roboto Slab;
			text-decoration: none;
			background-color: rgba(255, 255, 255, 0);
			border-color: transparent;
			border-style: none;
			border-width: 0px;
			border-radius: 0 0 0 0px
		}
		.tp-caption.News-Subtitle:hover,
		.News-Subtitle:hover {
			color: rgba(255, 255, 255, 0.65);
			text-decoration: none;
			background-color: rgba(255, 255, 255, 0);
			border-color: transparent;
			border-style: solid;
			border-width: 0px;
			border-radius: 0 0 0px 0
		}

	</style>
	<style type="text/css">
		.hermes.tp-bullets {}
		.hermes .tp-bullet {
			overflow: hidden;
			border-radius: 50%;
			width: 16px;
			height: 16px;
			background-color: rgba(0, 0, 0, 0);
			box-shadow: inset 0 0 0 2px rgb(255, 255, 255);
			-webkit-transition: background 0.3s ease;
			transition: background 0.3s ease;
			position: absolute
		}
		.hermes .tp-bullet:hover {
			background-color: rgba(0, 0, 0, 0.21)
		}
		.hermes .tp-bullet:after {
			content: ' ';
			position: absolute;
			bottom: 0;
			height: 0;
			left: 0;
			width: 100%;
			background-color: rgb(255, 255, 255);
			box-shadow: 0 0 1px rgb(255, 255, 255);
			-webkit-transition: height 0.3s ease;
			transition: height 0.3s ease
		}
		.hermes .tp-bullet.selected:after {
			height: 100%
		}
	</style>

	-->

	<!-- 마커별 정보표시 css -->
	 <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}

.map_wrap {position:relative;overflow:hidden;}
.radius_border{border:1px solid #919191;border-radius:5px;}
.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
.custom_typecontrol .btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}
.custom_typecontrol .btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
.custom_typecontrol .btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}
.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
.custom_typecontrol .selected_btn:hover {color:#fff;}
.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;}
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}
.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
   <!---->

@media screen and (min-width: 769px) {
	#rev_slider_13_1_wrapper {
		width: 58%;
		margin: 0 auto;
	}
}


</style>

	<!-- 마커별 정보표시 css 끝 -->

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

	<%@ include file="/../header.jsp" %>

	<main>
		<!-- Slider -->
		<div id="full-slider-wrapper">
			<div id="layerslider" style="width:100%;height:600px;">
				<div class="ls-slide" data-ls="slidedelay: 2500; transition2d:4;">
					<img src="img/main/main_slide1.png" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 52%; left:50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;" >모든 축제 정보</h3>
					<p class="ls-l slide_typo_2" style="top:67%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">전국 모든 축제 정보와 주변 숙소, 식당을 확인해보세요.</p>
					<a class="ls-l button_intro_2 outline" style="top:450px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='festival.do'>자세히 보기</a>
				</div>
				<div class="ls-slide" data-ls="slidedelay: 2500; transition2d:4;">
					<img src="img/main/main_slide3.png" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 52%; left:50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">축제 코스 추천</h3>
					<p class="ls-l slide_typo_2" style="top:67%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">어디를 가야할지 모르겠다구요?</p>
					<a class="ls-l button_intro_2 outline" style="top:450px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='course_main.do'>자세히 보기</a>
				</div>
				<div class="ls-slide" data-ls="slidedelay: 2500; transition2d:4;">
					<img src="img/restaurant/main.jpg" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 52%; left:50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">식당 정보</h3>
					<p class="ls-l slide_typo_2" style="top:67%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">숨은 맛집 찾아라</p>
					<a class="ls-l button_intro_2 outline" style="top:450px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='/restaurants_list.do'>자세히 보기</a>
				</div>
				<div class="ls-slide" data-ls="slidedelay: 2500; transition2d:4;">
					<img src="img/accommodation/main.png" class="ls-bg" alt="Slide background">
					<h3 class="ls-l slide_typo" style="top: 52%; left:50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">숙박 정보</h3>
					<p class="ls-l slide_typo_2" style="top:67%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">꿀잠자야지~</p>
					<a class="ls-l button_intro_2 outline" style="top:450px; left:50%;white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='/accommodations_list.do'>자세히 보기</a>
				</div>
			</div>
		</div>
		<!-- End layerslider -->
        <div class="white_bg">
            <div class="container margin_60">
                <div class="row small-gutters categories_grid">
                    <div class="col-sm-12 col-md-6">
                        <a href="festival.do"> <!--클릭하면 축제 메인 페이지로 이동하게-->
                            <img src="img/main/main_festa.jpg" alt="" class="img-fluid">
                            <div class="wrapper">
                                <h2>축제</h2>
                                <p>1150 posted</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="row small-gutters mt-md-0 mt-sm-2">
                            <div class="col-sm-12 mt-sm-2">
                                <a href="festival_list.do"> <!--클릭하면 축제 리스트 페이지로 이동하게-->
                                    <img src="img/main/main_mate.jpg" alt="" class="img-fluid">
                                    <div class="wrapper">
                                        <h2>축제 리스트</h2>
                                        <p>1223 macthed</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-12 mt-sm-2">
                                <a href="course/course_main.do"> <!--클릭하면 코스 메인 페이지로 이동하게-->
                                    <img src="img/main/main_course.png" alt="" class="img-fluid" width="800" height="343">
                                    <div class="wrapper">
                                        <h2>코스</h2>
                                        <p>800 posted</p>
                                    </div>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
                <!--/categories_grid-->
            </div>
            <!-- /container -->
        </div>
        <!-- /white_bg -->


		<div class="container margin_30" id="instarss">

			<div class="main_title">
                <h2><span>ㅣ</span>인스타그램 이미지</h2>
			</div>

			<div class="owl-carousel owl-theme list_carousel add_bottom_30 ">
			<c:forEach items="${list}" var="list">
			<c:forEach items="${list.images}" var="image" >
                <div class="item">
                    <div class="tour_container">
                        <div class="img_container">
                            <a href="/details.do?tel=${list.postcode}">
                                <img src="data:image/jpg;base64,${image}" width="100" height="100" class="img-fluid" alt="image">
                            </a>
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                </c:forEach>
                </c:forEach>
                <!-- /item -->
            </div>
            <!-- /carousel -->


       </div>


            <!-- /carousel -->
			<p class="text-center add_bottom_30">
				<a href="/main.do" id="instarview">인스타 사진보기</a>
			</p>

			<hr class="mt-3 mb-3">
			
			<div class="main_title">
				<h2><span>ㅣ</span>축제 <span>지역별</span> 정보</h2>
			</div>


            <!-- 지역별??축제 지도 -->

              <p style="margin-top:-12px">

</p>
<div id="map" style="width:100%;height:350px;"></div>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b&libraries=clusterer"></script>
<script>
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
        level : 14 // 지도의 확대 레벨
    });
    // 마커 클러스터러를 생성합니다
    // 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
    // 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
    // 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
    // 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 10, // 클러스터 할 최소 지도 레벨
        //disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
    });
    // 데이터를 가져오기 위해 jQuery를 사용합니다
    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
    //var markers;
      $.get("mongoDB/festival.json", function(data) {
        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
       var markers = $(data).map(function(i, data) {
    	   //console.log("data는"+data)
          //  return new kakao.maps.Marker({


            	//content: data.title,

               // position : new kakao.maps.LatLng(data.latitude, data.longitude	)
            //});

    	   var maks = new kakao.maps.Marker({

    		   map: map,
    		   position : new kakao.maps.LatLng(data.latitude, data.longitude)


    	   });

    	   var infowindow = new kakao.maps.InfoWindow({

    		      content: '<div style="text-align:center; width:max-content; margin:5px; background-color:beige;"><br/>'+data.title +
    		      '                <div><a href="details.do?tel='+data.postcode+' ">자세히보기</a></div></div>',
    		      removable : true

    	 });
    	   kakao.maps.event.addListener(maks, 'click', makeOverListener(map, maks, infowindow));

    	  //kakao.maps.event.addListener(maks, 'mouseout', makeOutListener(infowindow));



           return maks;

        });


        // 클러스터러에 마커들을 추가합니다

        clusterer.addMarkers(markers);

        //console.log(markers)



    });

      // 인포윈도우를 표시하는 클로저를 만드는 함수입니다

          function makeOverListener(map, marker, infowindow) {

              infowindow.close();
              return function() {

                  infowindow.open(map, marker);

              };

          }



          // 인포윈도우를 닫는 클로저를 만드는 함수입니다
       function makeOutListener(infowindow) {

              return function() {

                  infowindow.close();

              };

          }


    // 마커 클러스터러에 클릭이벤트를 등록합니다
    // 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
    // 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
    kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

	console.log("클러스터"+clusterer)
        // 현재 지도 레벨에서 1레벨 확대한 레벨
        var level = map.getLevel()-1;
        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
        map.setLevel(level, {anchor: cluster.getCenter()});
    });


</script>
                <!-- /지역별?? 축제 지도 end -->

            <!-- /carousel -->
			<p class="text-center nopadding">
			<br/>
			<br/>
				<a href="festival_list.do" class="btn_1">축제 더 보기</a>
			</p>
		</div>
		<!-- End container -->

        <div class="container margin_60">
            <div class="main_title">
                <h2>축제로를 이용하는 <span>이유</span> </h2>
                <p>

                </p>
            </div>
            <div class="row">
                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.2s">
                    <div class="feature_home">
                        <i class="icon_set_1_icon-41"></i>
                        <h3><span class="festivalcount"></span> 축제 정보</h3>
                        <p>
                            많은 축제가 당신을 기다리고 있어요.
                        </p>
                        <a href="festival.do" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.4s">
                    <div class="feature_home">
                        <!-- <i class="icon_set_1_icon-30"></i> -->
                        <i class="icon-users"></i>
                        <h3><span id="restaurantcount">+00</span> 식당</h3>
                        <p>
                            다양한 식당 정보를 확인하세요.
                        </p>
                        <a href="restaurants_list.do" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

                <div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
                    <div class="feature_home">
                        <i class="pe-7s-graph1"></i>
                        <h3><span>+10 </span> 코스 추천</h3>
                        <p>
                            프로계획러들의 코스 추천
                        </p>
                        <a href="course/course_main.do" class="btn_1 outline">더 알아보기</a>
                    </div>
                </div>

            </div>
            <!--End row -->

            <hr>

            <div class="row">
                <div class="col-md-6">
                    <img src="img/main/logo.png" alt="Laptop" class="img-fluid laptop">
                </div>
                <div class="col-md-6">
                    <h3><span>축제로</span> 슬기롭게 이용하기</h3>
                    <p>
                        축제로는 자유롭게 먹고, 즐기고, 많은 곳을 다니던 우리들의 소소한 일상의 행복을 되찾을 그 날을 기원하며 국내 모든 축제 정보를 담았어요.
                    </p>
                    <ul class="list_order">
                        <li><span>1</span>축제 정보 살펴보기!</li>
                        <li><span>2</span>주변 식당, 숙박 정보 살펴보기!</li>
                        <li><span>3</span>축제가 즐거웠다면? 코스에 담아 추천하기!</li>
                    </ul>
                    <a href="festival.do" class="btn_1">시작하기</a>
                </div>
            </div>
            <!-- End row -->

        </div>
        <!-- End container -->

        <!-- 8칸짜리 공간
        <div class="white_bg">
            <div class="container margin_60">
                <h2>화면 줄이면 안 예쁨. 추후 수정 -> index3.jsp 아래 있는 부분 써보자</h2>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="main_title">
                            <h3><span>ㅣ</span>두근두근 감성 축제</h3>
                                <figure>
                                    <img src="img/main/test1.png" alt="" width="255" height="125">
                                </figure>
                                <h6>무주 반딧불 축제</h6>
                                <span>전라북도 무주군</span><br/><br/>
                                <figure>
                                    <img src="img/main/test.jpg" alt="" width="255" height="125">
                                </figure>
                                <h6>사진 세로 늘리고 캐러셀로 바꿀까</h6>
                                <span>지역명</span>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="main_title">
                            <h3><span>ㅣ</span>신나는 놀이 축제</h3>
                            <figure>
                                <img src="img/main/test2.png" alt="" width="255" height="125">
                            </figure>
                            <h6>화천 산천어 축제</h6>
                            <span>강원도 화천군</span><br/><br/>
                            <figure>
                                <img src="img/main/test.jpg" alt="" width="255" height="125">
                            </figure>
                            <h6>축제 제목</h6>
                            <span>지역명</span>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="main_title">
                            <h3><span>ㅣ</span>입안가득 맛의 축제</h3>
                            <figure>
                                <img src="img/main/test3.png" alt="" width="255" height="125">
                            </figure>
                            <h6>강릉커피축제</h6>
                            <span>강원도 강릉시</span><br/><br/>
                            <figure>
                                <img src="img/main/test.jpg" alt="" width="255" height="125">
                            </figure>
                            <h6>축제 제목</h6>
                            <span>지역명</span>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="main_title">
                            <h3><span>ㅣ</span>과거로 시간여행 축제</h3>
                            <figure>
                                <img src="img/main/test4.png" alt="" width="255" height="125">
                            </figure>
                            <h6>영암왕인문화축제</h6>
                            <span>전라남도 영암군</span><br/><br/>
                            <figure>
                                <img src="img/main/test.jpg" alt="" width="255" height="125">
                            </figure>
                            <h6>축제 제목</h6>
                            <span>지역명</span>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- End container -->
        </div>
        <!-- End white_bg -->
	</main>
	<!-- End main -->

	<%@ include file="footer.jsp" %>



    <!-- Common scripts -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/common_scripts_min.js"></script>
    <script src="js/functions.js"></script>

    <!-- 로그인 -->
	<script src="js/login.js"></script>

    <!-- 상단 캐러셀-->
	<script src="js/jquery-migrate.min.js"></script>
	<script src="layerslider/js/greensock.js"></script>
	<script src="layerslider/js/layerslider.transitions.js"></script>
	<script src="layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			'use strict';
			$('#layerslider').layerSlider({
				autoStart: true,
				responsive: true,
				responsiveUnder: 1280,
				layersContainer: 1170,
				skinsPath: 'layerslider/skins/'
					// Please make sure that you didn't forget to add a comma to the line endings
					// except the last line!
			});
		});
	</script>



    <!-- SLIDER REVOLUTION SCRIPTS
    <script type="text/javascript" src="rev-slider-files/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="rev-slider-files/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript">
		var tpj=jQuery;
			var revapi13;
			tpj(document).ready(function() {
				if(tpj("#rev_slider_13_1").revolution == undefined){
					revslider_showDoubleJqueryError("#rev_slider_13_1");
				}else{
					revapi13 = tpj("#rev_slider_13_1").show().revolution({
						sliderType:"carousel",
						jsFileLocation: "rev-slider-files/js/",
						sliderLayout:"fullwidth",
						dottedOverlay:"none",
						delay:1000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
                             mouseScrollReverse:"default",
							onHoverStop:"off",
							touch:{
								touchenabled:"on",
								touchOnDesktop:"off",
								swipe_threshold: 75,
								swipe_min_touches: 1,
								swipe_direction: "horizontal",
								drag_block_vertical: false
							}
							,
							bullets: {
								enable:true,
								hide_onmobile:false,
								style:"hermes",
								hide_onleave:false,
								direction:"horizontal",
								h_align:"center",
								v_align:"bottom",
								h_offset:0,
								v_offset:20,
                                space:5,
								tmp:''
							}
						},
						carousel: {
							horizontal_align: "center",
							vertical_align: "center",
							fadeout: "on",
							vary_fade: "on",
							maxVisibleItems: 3,
							infinity: "on",
							space: 0,
                            stretch: "off",
                             showLayersAllTime: "off",
                             easing: "Power3.easeInOut",
                             speed: "4800"
						},
						responsiveLevels:[1240,1024,778,778],
						visibilityLevels:[1240,1024,778,778],
						gridwidth:[1480,640,480,480],
						gridheight:[720,720,480,360],
						lazyType:"none",
						parallax: {
							type:"scroll",
							origo:"enterpoint",
							speed:2400,
							levels:[5,10,15,20,25,30,35,40,45,50,47,48,49,50,51,55],
						},
						shadow:0,
						spinner:"off",
						stopLoop:"off",
						stopAfterLoops:0,
						stopAtSlide:1,
						shuffle:"off",
						autoHeight:"off",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
					});
				}
			});	/*ready*/
	</script>
	-->





	<script>
$(document).ready(function(){
$('#instarview').get(0).click();
	//축제 개수 표시
	$.ajax({
					type : 'post',
	        		//async : true,
	        		url : "/festivalCount.do",

					success: function(result) {

						$('.festivalcount').html("+"+result)
					},
					error: function(error) {
						console.log('에러' + error)
					}
				});

	//식당 개수 표시
	$.ajax({
		type:'post',
		url:'/restaurantcount.do',
		success: function(count){
		$('#restaurantcount').html("+"+count)
		},
		error: function(error){
			alert("restaurant_count 에러");
			console.log('에러' + error)
		}


	});




});
	</script>
</body>

</html>
