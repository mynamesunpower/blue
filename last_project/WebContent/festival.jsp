<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27dd1029a97d2def3071ef14738a120b"></script>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="ddffddff.">
    <meta name="author" content="Ansonika">
    <title>축축빵빵 - 축제 Main</title>

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
        <link href="css/hmcss.css" rel="stylesheet">

        <style type="text/css">  /* CSS 첫 이미지 고정 */

	#container{height:1200px; background-size:cover; background-image:url("/background/img_1.jpg");}

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

    <%@ include file="header.jsp" %>

    <!-- 메인 이미지 슬라이더 -->
	<section id="hero">

		<div class="intro_title">
		 <!-- <img src="img/logo_sticky.png"> --> 
			<h3 class="animated fadeInDown ctitles">축제로 축제 <strong id="js-rotating ctitle" class="ctitle"></strong></h3>
			<p class="animated fadeInDown">함께해요</p>
			
		<!--   <a href="festival_detail.jsp" class="animated fadeInUp button_intro">더 보기</a> -->
		</div>

	</section><!-- End 메인 이미지 슬라이더 -->

	<main>

	<div class="container margin_60">

        <!-- 월별 축제 이미지 -->
            <div class="main_title">

                <h2><a href="#" onclick="setFestivalNewMonth(-1);">◀</a><span class="month">3 월</span><a href="#" onclick="setFestivalNewMonth(1);">▶</a></h2>


            </div>
            <p class="main_description mine">축제로의 축제 <p class="submine">함께 즐기실래요?</p></p>
            <div class="row small-gutters categories_grid">

                <div class="col-sm-12 col-md-12 bigimage">
                <div id = 'a1'>
                <div>
                    <a href="festival_detail.jsp".jsp">
                        <img src="img/img_cat_home_1.jpg" alt="" class="img-fluid">
                        <div class="wrapper areas1">
                            <h2>국립민속박물관 정월대보름 한마당</h2>
                            <p>(02.01~03.03)</p>
                        </div>
                    </a>
                    </div>
                </div>
                </div>


                <div class="col-sm-12 col-md-12">
                    <div class="row small-gutters mt-md-0 mt-sm-2">
                        <div class="col-sm-3">
                        <div id = 'a2'>
                        <div>
                            <a href="all_tours_list.jsp">
                                <img src="img/img_cat_home_2.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas2">
                                    <h2>홍성 남당항 새조개 온라인축제</h2>
                                    <p>(3.3~4.1)</p>
                                </div>
                            </a>
                            </div>
                        </div>
                        </div>

                        <div class="col-sm-3">
                        <div id = 'a3'>
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas3">
                                    <h2>어딘지 모르겠다~</h2>
                                    <p>아무데서나 놀자~</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>

                        <div class="col-sm-3">
                        <div id = 'a4'>
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas4">
                                    <h2>축제3</h2>
                                    <p>재미있을지도</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>

                        <div class="col-sm-3">
                        <div id = 'a5'  width="300px" height="196px">
                        <div>
                            <a href="all_hotels_list.jsp">
                                <img src="img/img_cat_home_3.jpg" alt="" class="img-fluid">
                                <div class="wrapper areas5">
                                    <h2>축제4</h2>
                                    <p>재미있을지도</p>
                                </div>
                            </a>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <br><br>
        <!-- 월별 축제 이미지 끝 -->

        <!-- 추천 축제 -->
        
        <div class="main_title">
            <!-- 추천 축제 캐러셀 끝 -->
		
       <br><br> 
        
        <!-- 내 근처의 축제 -->

        <div id="map" style="width:100%;height:350px;"></div>
        <br>
<p><em>지도를 클릭해주세요!</em></p> 
<div id="clickLatlng"></div>



        <div class="main_title">
            <h2>근처 축제: <span> 내가 찍은 위치 </span></h2>
            <p>이근처??</p>
           <!--  <a href="#" class="btn_1">자세히 보기</a> -->
        </div>

        <!-- 추천 축제 캐러셀 -->
        <div class="owl-carousel owl-theme list_carousel add_bottom_30">
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>축제로</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                            <div class="aa1">
                            <div>
                                <img src="img/tour_box_1.jpg" width="800" height="533" class="img-fluid nearimage" alt="image">
                                </div>
                                </div>
                                <div class="short_info">
                                    <span class="price"></span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong class="nearname1">꼴뚜기 투어</strong></h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End 코스에 추가하기-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>축제로</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                            <div class="aa2">
                            <div>
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid nearimage" alt="image">
                                </div>
                                </div>
                                <div class="short_info">
                                    <span class="price"></span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong class="nearname2">매운탕 투어</strong></h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
                <div class="item">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>축제로:</span></div>
                        <div class="img_container">
                            <a href="single_tour.jsp">
                            <div class="aa3">
                            <div>
                                <img src="img/tour_box_2.jpg" width="800" height="533" class="img-fluid nearimage" alt="image">
                                </div>
                                </div>
                                <div class="short_info">
                                    <span class="price"></span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong class="nearname3">매운탕 투어</strong></h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">코스에 추가하기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- /item -->
            </div>
            <!-- 추천 축제 캐러셀 끝 -->

    </div><!-- End container -->

    </main>
	<!-- End main -->

	<%@ include file="footer.jsp" %>

 	<!-- Common scripts -->


	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>

 	<!-- Specific scripts -->
	<script src="js/morphext.min.js"></script>
	<script>
	$("#js-rotating").Morphext({
		animation: "fadeIn", // Overrides default "bounceIn"
		separator: ",", // Overrides default ","
		speed: 2000, // Overrides default 2000
		complete: function () {
			// Overrides default empty function
		}
	});

$(document).ready(function() {

		var cur_month = 0;
		var fes_oMonth = new Date();
		fes_oMonth.setDate(1);
		cur_month = (fes_oMonth.getMonth()+1);
		getMonthData()
		
		
	})



	//달에 해당하는 데이타 가져오기
 	function getMonthData() {
 		//alert("118로들옴")
		$.ajax({
			url: "mongomonth.do",
			dataType: 'json',
			type: "POST",
			data: {"month" : cur_month},
			success: function(data) {
		//근처축제 기본값
		
 				festivalss1=''
 				festivalss1 += '<div><img src="data:image/jpg;base64,'+data[0].image[0].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
 				festivalss2=''
 	 			festivalss2 += '<div><img src="data:image/jpg;base64,'+data[1].image[1].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
 	 			festivalss3=''
 	 	 		festivalss3 += '<div><img src="data:image/jpg;base64,'+data[2].image[1].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
 	 	 				
 				
 				//$('.aa1 div').remove()
 				//$('.aa2 div').remove()
 				//$('.aa3 div').remove()
 				
 				$(".aa1").html(festivalss1);
 				$(".aa2").html(festivalss2);
 				$(".aa3").html(festivalss3);
 				
 				
 				$(".nearname1").text(data[0].title);
 				$(".nearname2").text(data[1].title);
	 			$(".nearname3").text(data[2].title);
		
		
		///기본값 끝 (근처축제)
				var count = data;
				//alert("iss = "+count.length);
				 $.each(data, function (i, item) {
					 //console.log(item.image)
					 console.log("나는ss"+item.image)
					festivals = '';
					festivals += '<div>'
					festivals +='<a href="/details.do?tel='+item.postcode+'">'
					//festivals +='<a href="javascript:" onclick="festivaldetail('+item.tel+')">'
					if(item.image==''){
						festivals += '<div><img class="owl-slide cover img-fluid" src="img/img_cat_home_1.jpg"/></div>'
						//festivals +='<img src="img/img_cat_home_1.jpg" class="img-fluid">'
						//festivals +='<img src="data:image/jpg;base64,'+item.image[0].data+'" alt="" class="img-fluid">'
						}else{
							festivals += '<div><img class="owl-slide cover img-fluid" src="data:image/jpg;base64,'+item.image[0].data+'"/></div>'
							//festivals +='<img  src="data:image/jpg;base64,'+item.image[0].data+'" class="img-fluid">'
						}


					//festivals +='<img src="img/img_cat_home_1.jpg" alt="" class="img-fluid">'
					///festivals +='<img src="D:/Temp/test.png" alt="" class="img-fluid">'
					//festivals +='<img src="'+item.image+'" alt="" class="img-fluid">'
					festivals +='<div class="wrapper">'
					festivals +='<h2>'+item.title+'</h2>'
					festivals +='<p>'+item.startDate+'~'+item.endDate+'</p>'
					festivals +='</div>'
					festivals +='</a>'
					festivals +='</div>'

						//alert(count.length)
					if(count.length <2){
						//alert(count.length)
						//alert("지워")
						$("#a2>div ").remove();
						$("#a3 >div").remove();
						$("#a4 >div").remove();
						$("#a5 >div").remove();
					}else if(count.length <3){
						$("#a3 >div").remove();
						$("#a4 >div").remove();
						$("#a5 >div").remove();
					}else if(count.length <4){

						$("#a4>div").remove();
						$("#a5>div").remove();
					}else if(count.length <5){

						$("#a5 >div").remove();
					}






                    //alert("items : "+item.size);

                    if(i ==0){
                    ///$('.areas1 > h2').html(item.title);
                    $('#a1').html(festivals);
                    //alert(i)
                    }else if(i ==1){
                    	//alert(i)
                        //$('.areas2 > h2').html(item.title);
                    	$('#a2').html(festivals);
                    }else if(i ==2){
                    	//alert(i)
                        //$('.areas3 > h2').html(item.title);
                    	$('#a3').html(festivals);
                    }else if(i ==3){
                    	//alert(i)
                        //$('.areas4 > h2').html(item.title);
                    	$('#a4').html(festivals);
                    }else if(i ==4){
                    	//alert(i)
                        //$('.areas5 > h2').html(item.title);
                    	$('#a5').html(festivals);
                    }
                    //alert("item : "+item.title);
                    //alert("item : "+item.start_date);
                });

				console.log(data)
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
 	}




	//월 좌우 클릭시
	var cur_month = 0;

	var fes_oMonth = new Date();
	fes_oMonth.setDate(1);
	cur_month = (fes_oMonth.getMonth()+1);
 	function setFestivalNewMonth(radd) {

 		var chkmonth = ( cur_month + radd );

 		if( chkmonth == 0 || chkmonth == 13 ) {

 		} else {

 			cur_month += radd;

 	 		$('.month').html(cur_month + ' 월');
 	 		
 	 		if( cur_month == 1 ) {
				$(".mine").html("집에서 즐기는 문화생활!");
				$(".submine").html("지금 아니면 안돼! 쇼핑부터 공연까지!");
			} else if( cur_month == 2  ) {
				$(".mine").html("겨울이 끝나기 전에");
				$(".submine").html("계절이 지나면 경험하기 힘든 먹거리, 놀거리, 볼거리");
			} else if( cur_month == 3  ) {
				$(".mine").html("한 해 진짜 시작!");
				$(".submine").html("굳었던 몸을 펴고, 힘차게 시작!");
			} else if( cur_month == 4  ) {
				$(".mine").html("씨앗이 움트고, 꽃이 피고");
				$(".submine").html("따뜻한 날씨에 봄꽃이 만개하는");
			} else if( cur_month == 5 ) {
				$(".mine").html("가족과 함께, 축제와 함께");
				$(".submine").html("매 해 돌아오는 가정의 달, 올해는 특별하게!");
			} else if( cur_month == 6  ) {
				$(".mine").html("여름의 시작, 축제의 시작");
				$(".submine").html("점점 더워지는 날씨, 지치지 말자구요!");
			}else if( cur_month == 7  ) {
				$(".mine").html("태양이 내리쬐는 계절");
				$(".submine").html("낮에도 즐기고, 밤에도 즐기고!");
			}else if( cur_month == 8  ) {
				$(".mine").html("찌는듯한 더위, 지친 몸을 식혀줄");
				$(".submine").html("축제에서 찾아보는 시원함!");
			}else if( cur_month == 9  ) {
				$(".mine").html("선선해지는 날씨");
				$(".submine").html("더운날씨에 제대로 즐기지 못했다면 바로 지금");
			}else if( cur_month == 10  ) {
				$(".mine").html("빨강, 노랑 알록달록");
				$(".submine").html("여름의 푸릇함과는 또 다른 매력");
			}else if( cur_month == 11  ) {
				$(".mine").html("찬바람이, 불어오면");
				$(".submine").html("지치지않고, 한층 더 즐길 수 있는");
			}else if( cur_month == 12  ) {
				$(".mine").html("하얀 입김과 잘 어우러지는");
				$(".submine").html("12월의 분위기, 크리스마스와 반짝반짝 조명들");
			}

 	 		getMonthData();
 	 		//recommandfestival();
 		}
 	}

 	function recommandfestival() {
 		$.ajax({
			url: "mongorecommand.do",
			dataType: 'json',
			type: "POST",
			data: {"month" : cur_month},
			success: function(data) {
				//setMonthData(data);
				alert("성공?")

				 $.each(data, function (i, item) {
                    alert("i : "+i);
                    alert("item : "+item.title);
                    alert("item : "+item.starDate);
                });

				console.log(data)
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
				console.log(';;')
			}
		});
 	}

 	//축제 상세
 	function festivaldetail(iduso){
 		location.href="festival_detail.jsp?id="+iduso;
 		console.log("왔다"+id)
 	}


 	//월별 축제 불러오기
 	function setMonthData(data) {

		uid = data.header.id;

		var remshow = '';
		var compid = '';
		var sun = -1;

		var subHtml = '';

		//월 콘텐츠 영역 초기화.
		$("#area0 div").remove();
		$("#area1 div").remove();
		$("#area2 div").remove();
		$("#area3 div").remove();
		$("#area4 div").remove();
		$("#area5 div").remove();

		if( data.body.subMainList != undefined ) {

			$.each(data.body.subMainList, function (index, items) {

				subHtml = '';

				subHtml += '<div class="wrap_contView">';

				subHtml += '		<h3 class="tit_atc" tabindex="0"></h3>';
				subHtml += '		<span class="date" id="fesmain'+items.compOrder+'" tabindex="0"></span>';
				subHtml += '		<div class="box_remPhoto" id="fesmainList'+items.compOrder+'">';
				subHtml += '		</div>';
				subHtml += '	</div>';

				if( items.compOrder == 0 ) {
					$("#area0").html(subHtml);
				} else if( items.compOrder == 1 ) {
					$("#area1").html(subHtml);
				} else if( items.compOrder == 2 ) {
					$("#area2").html(subHtml);
				} else if( items.compOrder == 3 ) {
					$("#area3").html(subHtml);
				} else if( items.compOrder == 4 ) {
					$("#area4").html(subHtml);
				} else if( items.compOrder == 5 ) {
					$("#area5").html(subHtml);
				}
			});
		}

		if( data.body.result != undefined ) {
			$.each(data.body.result, function (index, items) {

				if( compid != items.compId ) {

					compid = items.compId;
					var compId = items.compId;
					var compOrder = items.compOrder;

					remshow = '';

					remshow = getFesShowcase(data, compId, compOrder);

					$('#fesmainList'+compOrder).html(remshow);
				}
			});
		}
		swiperBanner();

	}





 	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
 	    mapOption = {
 	        center: new kakao.maps.LatLng(37.56582395976361, 126.9779054965128), // 지도의 중심좌표
 	        level: 10 // 지도의 확대 레벨
 	    };

 	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

 	// 지도를 클릭한 위치에 표출할 마커입니다
 	var marker = new kakao.maps.Marker({
 	    // 지도 중심좌표에 마커를 생성합니다
 	    position: map.getCenter()
 	});
 	// 지도에 마커를 표시합니다
 	marker.setMap(map);

 	// 지도에 클릭 이벤트를 등록합니다
 	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
 	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

 	    // 클릭한 위도, 경도 정보를 가져옵니다
 	    var latlng = mouseEvent.latLng;

 	    // 마커 위치를 클릭한 위치로 옮깁니다
 	    marker.setPosition(latlng);
 	    
 	     var message = ''//'클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
 	    //message += '경도는 ' + latlng.getLng() + ' 입니다';
 	    
 	    var resultDiv = document.getElementById('clickLatlng'); 
 	    resultDiv.innerHTML = message;


 	    //클릭한 위도 경도 넘겨주기
 	    $.ajax({
 			url: "/nearnear.do",
 			dataType: 'json',
 			type: "POST",
 			data: {"latitude" : latlng.getLat(), "longitude" : latlng.getLng() },
 			success: function(data) {
 		
 				festivals1=''
 				festivals1 += '<div><img src="data:image/jpg;base64,'+data[0][0].image[0].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
 				festivals2=''
 	 			festivals2 += '<div><img src="data:image/jpg;base64,'+data[1][0].image[0].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
 	 			festivals3=''
 	 	 		festivals3 += '<div><img src="data:image/jpg;base64,'+data[2][0].image[0].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'


 				//$('.aa1 div').remove()
 				//$('.aa2 div').remove()
 				//$('.aa3 div').remove()

 				$(".aa1").html(festivals1);
 				$(".aa2").html(festivals2);
 				$(".aa3").html(festivals3);
 				
 				
 				$(".nearname1").text(data[0][0].title);
 				$(".nearname2").text(data[1][0].title);
	 			$(".nearname3").text(data[2][0].title);
 				
	
 			},
 			complete: function(d) {
 			},
 			error: function(xhr, textStatus, errorThrown) {
 				console.log(';;')
 			}
 		});


 	});



	</script>

 <script>
 document.getElementById("hero").style.backgroundImage = "url('img/main/main_festa.jpg')";
 var k =1;
 playAlert = setInterval(function() {
	   //alert('이게 되니안되니');
	 $.ajax({
			url: "mongotime.do",
			dataType: 'json',
			type: "POST",
			data:{"interval": 3000},
			success: function(data) {
				k=k+1;
				if(k==12){
					k=1;
				}
 
 
    	
    	for(var j=0; j<40; j++){
    		if(data.image==''){
       		 document.getElementById("hero").style.backgroundImage = "url('/img/login/testfile.png')";
       		//${"#ctitle"}.text(data[k].title);
       		$(".ctitles").text(data[k].title);
       		//이미지 사이즈
       		document.getElementById("hero").style.backgroundSize = "1150px";
       		var na = data[k].title;
       		
       	 }else{
       		 
      
       		var img = "url('data:image/jpg;base64, "+data[k].image[1].data+"')";
       	
       		//이미지 등록
       	document.getElementById("hero").style.backgroundImage = img;
        //이미지 사이즈
        document.getElementById("hero").style.backgroundSize = "1150px";
   
       		$(".ctitles").text(data[k].title);
       	
       	 }
    	}
    	//console.log(item.image[0].data)
    	//document.getElementById("hero").style.backgroundImage; src="/img/login/testfile.png";
    	
    	//document.getElementById("hero").style.backgroundImage = "url('data:image/jpg;base64,"+data.image[0].data+')";
    	//'<div><img src="data:image/jpg;base64,'+data[2][0].image[0].data+'" width="800" height="533" class="img-fluid nearimage" alt="image"></div>'
    	//"'data:image/jpg;base64,"+data[2][0].image[0].data+"'"
   // });
    
    //이미지 사이즈
    //document.getElementById("div").style.backgroundSize = "200px";
    
    //반복제거, url
    //document.getElementById("div").style.backgroundRepeat = "no-repeat";
    //이미지 등록
    
    //document.getElementById("hero").style.backgroundImage = "url('/img/login/testfile.png')";
    //이미지 사이즈
   // document.getElementById("div").style.backgroundSize = "200px";
				
				
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
				console.log(';;')
			}
		});
	
	}, 3000);
 
    //window.onload = function(){
    //반복제거, url
    //document.getElementById("div").style.backgroundRepeat = "no-repeat";
    //이미지 등록

    //document.getElementById("hero").style.backgroundImage = "url('/img/login/testfile.png')";
    //이미지 사이즈
    //document.getElementById("div").style.backgroundSize = "200px";
   // }
</script>

<!--  <script type="text/javascript"> /* 사용자가 새로고침, F5 눌럿을 때만, 배경화면이 자동 변경 자바스크립트 함수*/

	window.onload = function(){

		var background_img = "/img/main";

		var number = Math.floor(Math.random() * 16) + 1;

		var container = document.getElementById("container");
		//var container = document.getElementById("hero");



		background_img += number + ".jpg";

		container.style.backgroundImage = "url('" + background_img + "')";

	}-->

</script>




  </body>
</html>
