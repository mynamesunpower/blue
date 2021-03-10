<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>축축빵빵 | 메이트 찾기</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="../img/logo_img.PNG" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
	<link href="../css/vendors.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/linearicons.css" />
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" href="../css/magnific-popup.css" />
    <link rel="stylesheet" href="../css/nice-select.css" />
    <link rel="stylesheet" href="../css/owl.carousel.css" />
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="../css/themify-icons.css" />
    <link rel="stylesheet" href="../css/mate_search.css" />

	<!-- CUSTOM CSS -->
	<link href="../css/custom.css" rel="stylesheet"/>

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
    <!-- Header================================================== -->
    <header id="plain">
      <!-- 로그인 세션이 있으면 모든 페이지의 헤더 부분이 이 부분으로 나와야 함. -->
      <div id="top_line">
          <div class="container">
              <div class="row">
                  <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                  <div class="col-6">
                      <ul id="top_links">
                          <!-- 로그인, 찜이 창 크기 줄이면 사라지는 문제 있음. -->
                          <li><span style="color: blue;">홍길동</span>님 환영합니다</li>
                          <li><a href="../mypage.jsp" id="mypage" class="icon-key-4">myPage</a></li>
                          <li><a href="../course_list.jsp" id="wishlist_link">나의 코스 목록</a></li>
                          <li><a href="#" class="icon-logout">로그아웃</a></li>
                      </ul>
                  </div>
              </div><!-- End row -->
          </div><!-- End container-->
      </div><!-- End top line-->
      <!-- 여기까지 -->
      
      <div class="container">
          <div class="row">
              <div class="col-3">
                  <div id="logo_home">
                    <h1><a href="../mainAfterLogin.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
                  </div>
              </div>
              <nav class="col-9">
                  <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                  <div class="main-menu">
                      <div id="header_menu">
                          <img src="img/logo_sticky.png" width="160" height="34" alt="City tours">  <!--모바일 화면 우측 서랍 아이콘 눌렀을 때 로고 나오는 거-->
                      </div>
                      <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                      <ul>
                          <li class="submenu">
                              <a href="../mainAfterLogin.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i>
                          </li>
                          <li class="submenu">
                              <a href="#" class="show-submenu" style="font-size: large;">축제 <i class="icon-down-open-mini"></i></a> <!--클릭하면 축제 메인 페이지로 이동하게-->
                              <ul>
                                  <li><a href="../festival.jsp">축제</a></li>
                                  <li><a href="../accommodations_list.jsp">숙박</a></li>
                                  <li><a href="../restaurants_list.jsp">식당</a></li>
                                  <!-- <li class="third-level"><a href="javascript:void(0);">테스트</a>
                                      <ul>
                                          <li><a href="#">테스트2</a></li>
                                          <li><a href="#">테스트3</a></li>
                                          <li><a href="#">테스트4</a></li>
                                          <li><a href="#">테스트5</a></li>
                                      </ul>
                                  </li> -->
                              </ul>
                          </li>
                          <li class="submenu">
                              <!-- 메이트서비스 아닌 회원은 mate_index_default -->
                              <!-- 메이트서비스 회원은 mate_index -->
                              <a href="#" class="show-submenu" style="font-size: large;">메이트 <i class="icon-down-open-mini"></i></a> <!--클릭하면 메이트 메인 페이지로 이동하게-->
                              <ul> 
                                  <li><a href="mate_index_default.jsp">메이트 서비스는?</a></li>
                                  <li><a href="#">나의 메이트 </a></li>
                              </ul>
                          </li>
                          <li class="submenu">
                              <a href="#" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a> <!--클릭하면 코스 메인 페이지로 이동하게-->
                              <ul>
                                  <li><a href="../course_main.jsp">코스 자랑 마당</a></li>
                                  <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                  <li><a href="../course_list.jsp">나의 코스 목록</a></li>
                              </ul>
                          </li>                            
                      </ul>
                  </div>                    
                  <!-- End main-menu -->

                  <!-- 헤더 메뉴 아이콘 -->
                  <ul id="top_tools">
                      <li>
                          <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                      </li>
                      <!-- 즐겨찾기.. 장바구니처럼 넣는 거 하느냐 마느냐~ 고민쓰-->
                      <li>
                          <div class="dropdown dropdown-cart">
                              <a href="#" data-toggle="dropdown" class="cart_bt"><i class="icon_bag_alt"></i><strong>3</strong></a>
                              <ul class="dropdown-menu" id="cart_items">
                                  <li>
                                      <div class="image"><img src="../img/thumb_cart_1.jpg" alt="image"></div>
                                      <strong><a href="#">Louvre museum</a>1x $36.00 </strong>
                                      <a href="#" class="action"><i class="icon-trash"></i></a>
                                  </li>
                                  <li>
                                      <div class="image"><img src="../img/thumb_cart_2.jpg" alt="image"></div>
                                      <strong><a href="#">Versailles tour</a>2x $36.00 </strong>
                                      <a href="#" class="action"><i class="icon-trash"></i></a>
                                  </li>
                                  <li>
                                      <div class="image"><img src="../img/thumb_cart_3.jpg" alt="image"></div>
                                      <strong><a href="#">Versailles tour</a>1x $36.00 </strong>
                                      <a href="#" class="action"><i class="icon-trash"></i></a>
                                  </li>
                                  <li>
                                      <div>Total: <span>$120.00</span></div>
                                      <a href="cart.jsp" class="button_drop">Go to cart</a>
                                      <a href="payment.jsp" class="button_drop outline">Check out</a>
                                  </li>
                              </ul>
                          </div>
                          <!-- End dropdown-cart-->
                      </li>
                  </ul>
              </nav>
          </div>
      </div><!-- container -->
    </header>
  <!-- End Header -->
    <main>
        
        <!-- 페이지 캐러셀 -->
		<div id="carousel-home">
            <div class="owl-carousel owl-theme">
                 <div class="owl-slide cover" style="background-image: url(img/slides/slide_home_3.jpg);">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                        <div class="container">
                            <div class="row justify-content-center justify-content-md-start">
                                <div class="col-lg-12 static">
                                    <div class="slide-text text-center white">
                                        <h2 class="owl-slide-animated owl-slide-title">메이트와 함께라면<br>어느 곳이든 즐겁습니다!</h2>
                                        <p class="owl-slide-animated owl-slide-subtitle">
                                            혼자서 떠나지 말고, 우리 같이 떠나요.
                                        </p>
                                        <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="all_tours_list.jsp" role="button">자세히 보기</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/owl-slide-->
                <div class="owl-slide cover" style="background-image: url(img/slides/slide_home_2.jpg);">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.6)">
                        <div class="container">
                            <div class="row justify-content-center justify-content-md-end">
                                <div class="col-lg-6 static">
                                    <div class="slide-text text-right white">
                                        <h2 class="owl-slide-animated owl-slide-title">메이트에서<br>소중한 추억을 만들어보세요!</h2>
                                        <p class="owl-slide-animated owl-slide-subtitle">
                                            수많은 메이트들이 기다리고 있습니다.
                                        </p>
                                        <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="all_tours_list.jsp" role="button">자세히 보기</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/owl-slide-->
            </div>
            <div id="icon_drag_mobile"></div>
        </div>
        <!--/carousel-->

		<div class="container margin_30">

			<div class="main_title">
				<h2>메이트 찾아보기</h2>
			</div>

            <div class="row">

                <div class="row">
          <div class="col-lg-8">
            <div class="row">
              <div class="col-lg-6 col-md-6">
                  
                <!-- 정보 박스 -->  
                <div class="single-amenities">
                  <div class="amenities-thumb">
                    <img
                      class="img-fluid w-100"
                      src="../img/blog-post/blog-post1.jpg"
                      alt=""
                    />
                  </div>
                  <div class="amenities-details">
                    <h5>
                      <a href="#">30/김형민/부천시</a>
                    </h5>
                    <div class="amenities-meta mb-10">
                      <div class="text-left">
                          <span class="mate_info">가는 축제</span>
                          <span class="mate_detail">망둥어 축제</span>
                      </div>
                      <div class="text-left">
                          <span class="mate_info">가는 날</span>
                          <span class="mate_detail">3월 16일</span>
                      </div>
                      <div class="text-right"><span class="ti-comment"></span>5</div>
                    </div>
                    <p class="mate_contents">
                      신나게 노실분들 구합니다.
                      부담없이 채팅해주세요!
                    </p>

                    <div class="d-flex justify-content-between mt-20">
                        <a href="#" class="blog-post-btn">
                          프로필 보기 <span class="ti-arrow-right"></span>
                        </a>   
                    </div>
                    <div>
                        <a href="#" class="blog-post-btn">
                          채팅하기 <span class="ti-arrow-right"></span>
                        </a>
                    </div> 
                  </div>
                </div>
                <!-- 정보 박스 끝 -->
                  
                <!-- 정보 박스 -->  
                <div class="single-amenities">
                  <div class="amenities-thumb">
                    <img
                      class="img-fluid w-100"
                      src="../img/blog-post/blog-post1.jpg"
                      alt=""
                    />
                  </div>
                  <div class="amenities-details">
                    <h5>
                      <a href="#">30/김형민/부천시</a>
                    </h5>
                    <div class="amenities-meta mb-10">
                      <div class="text-left">
                          <span class="mate_info">가는 축제</span>
                          <span class="mate_detail">망둥어 축제</span>
                      </div>
                      <div class="text-left">
                          <span class="mate_info">가는 날</span>
                          <span class="mate_detail">3월 16일</span>
                      </div>
                      <div class="text-right"><span class="ti-comment"></span>5</div>
                    </div>
                    <p class="mate_contents">
                      신나게 노실분들 구합니다.
                      부담없이 채팅해주세요!
                    </p>

                    <div class="d-flex justify-content-between mt-20">
                        <a href="#" class="blog-post-btn">
                          프로필 보기 <span class="ti-arrow-right"></span>
                        </a>   
                    </div>
                    <div>
                        <a href="#" class="blog-post-btn">
                          채팅하기 <span class="ti-arrow-right"></span>
                        </a>
                    </div> 
                  </div>
                </div>
                <!-- 정보 박스 끝 -->    

              </div>

              <div class="col-lg-6 col-md-6">
                  
                <!-- 정보 박스 -->  
                <div class="single-amenities">
                  <div class="amenities-thumb">
                    <img
                      class="img-fluid w-100"
                      src="../img/blog-post/blog-post1.jpg"
                      alt=""
                    />
                  </div>
                  <div class="amenities-details">
                    <h5>
                      <a href="#">30/김형민/부천시</a>
                    </h5>
                    <div class="amenities-meta mb-10">
                      <div class="text-left">
                          <span class="mate_info">가는 축제</span>
                          <span class="mate_detail">망둥어 축제</span>
                      </div>
                      <div class="text-left">
                          <span class="mate_info">가는 날</span>
                          <span class="mate_detail">3월 16일</span>
                      </div>
                      <div class="text-right"><span class="ti-comment"></span>5</div>
                    </div>
                    <p class="mate_contents">
                      신나게 노실분들 구합니다.
                      부담없이 채팅해주세요!
                    </p>

                    <div class="d-flex justify-content-between mt-20">
                        <a href="#" class="blog-post-btn">
                          프로필 보기 <span class="ti-arrow-right"></span>
                        </a>   
                    </div>
                    <div>
                        <a href="#" class="blog-post-btn">
                          채팅하기 <span class="ti-arrow-right"></span>
                        </a>
                    </div> 
                  </div>
                </div>
                <!-- 정보 박스 끝 -->  
                  
                  
                <!-- 정보 박스 -->  
                <div class="single-amenities">
                  <div class="amenities-thumb">
                    <img
                      class="img-fluid w-100"
                      src="../img/blog-post/blog-post1.jpg"
                      alt=""
                    />
                  </div>
                  <div class="amenities-details">
                    <h5>
                      <a href="#">30/김형민/부천시</a>
                    </h5>
                    <div class="amenities-meta mb-10">
                      <div class="text-left">
                          <span class="mate_info">가는 축제</span>
                          <span class="mate_detail">망둥어 축제</span>
                      </div>
                      <div class="text-left">
                          <span class="mate_info">가는 날</span>
                          <span class="mate_detail">3월 16일</span>
                      </div>
                      <div class="text-right"><span class="ti-comment"></span>5</div>
                    </div>
                    <p class="mate_contents">
                      신나게 노실분들 구합니다.
                      부담없이 채팅해주세요!
                    </p>

                    <div class="d-flex justify-content-between mt-20">
                        <a href="#" class="blog-post-btn">
                          프로필 보기 <span class="ti-arrow-right"></span>
                        </a>   
                    </div>
                    <div>
                        <a href="#" class="blog-post-btn">
                          채팅하기 <span class="ti-arrow-right"></span>
                        </a>
                    </div> 
                  </div>
                </div>
                <!-- 정보 박스 끝 -->  
                  
              </div>
            </div>

            <div class="row">
              <div class="col-lg-12">
                  <nav class="blog-pagination justify-content-center d-flex">
                      <ul class="pagination">
                          <li class="page-item">
                              <a href="#" class="page-link" aria-label="Previous">
                                  <span aria-hidden="true">
                                      <span class="ti-arrow-left"></span>
                                  </span>
                              </a>
                          </li>
                          <li class="page-item"><a href="#" class="page-link">01</a></li>
                          <li class="page-item active"><a href="#" class="page-link">02</a></li>
                          <li class="page-item"><a href="#" class="page-link">03</a></li>
                          <li class="page-item"><a href="#" class="page-link">04</a></li>
                          <li class="page-item"><a href="#" class="page-link">09</a></li>
                          <li class="page-item">
                              <a href="#" class="page-link" aria-label="Next">
                                  <span aria-hidden="true">
                                      <span class="ti-arrow-right"></span>
                                  </span>
                              </a>
                          </li>
                      </ul>
                  </nav>
              </div>
            </div>
          </div>

          <!-- 우측 사이드바 (col-lg-4) -->
          <div class="col-lg-4 sidebar-widgets">
              <div class="widget-wrap">
                  
                 <!-- 메이트 찾기 결과? -->
                <div class="single-sidebar-widget search-widget">
                  <form class="search-form" action="#">
                    <input placeholder="원하는 메이트 검색" name="search" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Posts'">
                    <button type="submit"><i class="fa fa-search"></i></button>
                  </form>
                  <div class="single-sidebar-widget instafeed-widget">
                    <h4 class="instafeed-title">메이트 찾기 결과</h4>
                    <ul class="instafeed d-flex flex-wrap">
                      <li><img src="../img/instagram/i1.jpg" alt=""></li>
                      <li><img src="../img/instagram/i2.jpg" alt=""></li>
                      <li><img src="../img/instagram/i3.jpg" alt=""></li>
                      <li><img src="../img/instagram/i4.jpg" alt=""></li>
                      <li><img src="../img/instagram/i5.jpg" alt=""></li>
                      <li><img src="../img/instagram/i6.jpg" alt=""></li>
                    </ul>
                  </div>
                </div>
                
                <!-- 인기 축제 -->
                <div class="single-sidebar-widget post-category-widget">
                  <h4 class="category-title">인기많은 축제</h4>
                  <ul class="cat-list mt-20 festival_rank">
                    <li>
                      <a href="#" class="d-flex justify-content-between">
                        망둥어 축제
                        <p>-</p>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="d-flex justify-content-between">
                        <p>재밌는 축제</p>
                        <p>▲ 1</p>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="d-flex justify-content-between">
                        <p>즐거운 축제</p>
                        <p>-</p>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="d-flex justify-content-between">
                        <p>재미없는 축제</p>
                        <p>-</p>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="d-flex justify-content-between">
                        <p>재밌는 축제</p>
                        <p>-</p>
                      </a>
                    </li>
                  </ul>
                </div> <!-- 인기 축제 끝 -->

                  
                <!-- 인기 많은 메이트 (?) -->  
                <div class="single-sidebar-widget popular-post-widget">
                  <h4 class="popular-title">인기 많은 메이트</h4>
                  <div class="popular-post-list">
                      
                    <div class="single-post-list">
                      <div class="thumb">
                        <img class="img-fluid" src="../img/pp1.jpg" alt="">
                      </div>
                      <div class="details mt-20">
                        <a href="blog-single.jsp">
                          <h6>김수광 / 29살 / 서울시</h6>
                        </a>
                        <p><a class="btn btn-warning">메이트 채팅보내기</a></p>
                      </div>
                    </div>
                    <div class="single-post-list">
                      <div class="thumb">
                        <img class="img-fluid" src="../img/pp1.jpg" alt="">
                      </div>
                      <div class="details mt-20">
                        <a href="blog-single.jsp">
                          <h6>김수광 / 29살 / 서울시</h6>
                        </a>
                        <p><a class="btn btn-warning">메이트 채팅보내기</a></p>
                      </div>
                    </div>
                    <div class="single-post-list">
                      <div class="thumb">
                        <img class="img-fluid" src="../img/pp1.jpg" alt="">
                      </div>
                      <div class="details mt-20">
                        <a href="blog-single.jsp">
                          <h6>김수광 / 29살 / 서울시</h6>
                        </a>
                        <p><a class="btn btn-warning">메이트 채팅보내기</a></p>
                      </div>
                    </div>  
                    
                  </div>
                </div> <!-- 인기 많은 메이트 끝 -->

            
                </div>
              </div>
            </div> <!-- 우측 사이드바 끝 -->
          
            </div>

            </div>
            <!-- End row -->
            
		<!-- End container -->
        
	</main>
	<!-- End main -->
    
  <footer class="revealed">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h3>도움이 필요하세요?</h3>
                <a href="tel://004542344599" id="phone">+82 10 3333 4444</a>
                <a href="mailto:help@citytours.com" id="email_footer">help@festi.bbang</a>
            </div>
            <div class="col-md-4">
                <h3>축축빵빵</h3>
                <ul>
                    <li><a href="#">축축빵빵은요!</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#sign-in-dialog">로그인</a></li>
                    <li><a href="member/memberJoin.do">회원가입</a></li>
                     <li><a href="#">이용 약관</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h3>언어 선택</h3>
                <div class="styled-select">
                    <select name="lang" id="lang">
                        <option value="Korean" selected>한국어</option>
                        <option value="English">English</option>
                        <option value="Japanese">日本語</option>
                    </select>
                </div>
            </div>
        </div><!-- End row -->
        <div class="row">
            <div class="col-md-12">
                <div id="social_footer">
                    <ul>
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-google"></i></a></li>
                        <li><a href="#"><i class="icon-instagram"></i></a></li>
                        <li><a href="#"><i class="icon-pinterest"></i></a></li>
                        <li><a href="#"><i class="icon-vimeo"></i></a></li>
                        <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                    </ul>
                    <p>© Kosmo73 - Blue 2021</p>
                </div>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
</footer><!-- End footer -->

	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_set_1_icon-77"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon_set_1_icon-78"></i>
			</button>
		</form>
	</div><!-- End Search Menu -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Sign In</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-left">
						<input id="remember-me" type="checkbox" name="check">
						<label for="remember-me">Remember Me</label>
					</div>
					<div class="float-right"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_login"></div>
				<div class="text-center">
					Don’t have an account? <a href="javascript:void(0);">Sign up</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>Please confirm login email below</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
					<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->

    <!-- Common scripts -->
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/common_scripts_min.js"></script>
    <script src="../js/functions.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/jquery.sticky.js"></script>
    <script src="../js/jquery.tabs.min.js"></script>
    <script src="../js/parallax.min.js"></script>
    <script src="../js/jquery.nice-select.min.js"></script>
    <script src="../js/jquery.ajaxchimp.min.js"></script>
    <script src="../js/jquery.magnific-popup.min.js"></script>
    <script
      type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"
    ></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/mate_search.js"></script>
	
	<!-- NOTIFY BUBBLES  -->
	<script src="../js/notify_func.js"></script>

</body>

</html>