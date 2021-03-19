<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String kakaonickname = (String)session.getAttribute("kakaonickname"); %>
<%String navernickname = (String)session.getAttribute("navernickname"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="layer"></div>
    <!-- Mobile menu overlay mask -->

    <!-- Header================================================== -->
    <header id="plain">
        <div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6"><i class="icon-phone"></i><strong>02-1234-5678</strong></div>
                    <div class="col-6">
                        <ul id="top_links">
                            <!-- 로그인, 찜이 창 크기 줄이면 사라지는 문제 있음. -->
                            <c:choose>
                            	<c:when test="${sessionScope.memberId eq null}">
                            		<li><a href="#sign-in-dialog" id="access_link">로그인</a></li>
                            	</c:when>
                            	<c:when test="${sessionScope.memberId ne null}">
                            		<%if((kakaonickname ==null)&& (navernickname ==null)){ %>
              										 <li><span style="color: blue;">${sessionScope.memberId}</span>님 환영합니다</li>
              										 <li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
              			               <li><a id="wishlist_link" href="course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a></li>
              			               <li><a href="member/logout.do" class="icon-logout">로그아웃</a></li>
              									<%} %>

              									<%if(kakaonickname !=null){ %>
              										<li><span style="color: blue;"><%=kakaonickname %></span>님 환영합니다
              										<li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
              			              <li><a id="wishlist_link" href="course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a></li>
              			              <li><a href="kakaologout.do" class="icon-logout">로그아웃</a></li>
              									<%} %>

              									<%if(navernickname !=null){ %>
              										<li><span style="color: blue;"><%=navernickname %></span>님 환영합니다
              										<li><a href="mypage.do?user_id=${sessionScope.memberId}" id="mypage" class="icon-key-4">myPage</a></li>
              			              <li><a id="wishlist_link" href="course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a></li>
              			              <li><a href="naverlogout.do" class="icon-logout">로그아웃</a></li>
              									<%} %>
                            	</c:when>
                            </c:choose>

                        </ul>
                    </div>
                </div><!-- End row -->
            </div><!-- End container-->
        </div><!-- End top line-->

        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div id="logo_home">
                    	<h1><a href="main.jsp" title="메인 페이지 앵커">축축빵빵</a></h1>
                    </div>
                </div>
                <nav class="col-9">
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="img/logo_sticky.png" width="160" height="34" alt="축제로">  <!--모바일 화면 우측 서랍 아이콘 눌렀을 때 로고 나오는 거-->
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul>
                            <li class="submenu">
                                <a href="main.jsp" class="show-submenu" style="font-size: large;">홈<i class="icon-home"></i></a>
                            </li>
                            <li class="submenu">
                                <a href="festival.do" class="show-submenu" style="font-size: large;">축제<i class=""></i></a>
                            </li>
                            <li class="submenu">
                                <a href="restaurants_list.do" class="show-submenu" style="font-size: large;">식당<i class=""></i></a>
                            </li>
                            <li class="submenu">
                                <a href="accommodations_list.do" class="show-submenu" style="font-size: large;">숙박<i class=""></i></a>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu" style="font-size: large;">코스 <i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <li><a href="course_main.do">코스 자랑 마당</a></li>
                                    <!-- 나의 코스 목록은 로그인 세션 있을 때만 접근 가능. 없으면 로그인하게-->
                                    <c:choose>
                                    	<c:when test="${sessionScope.memberId ne null}">
                                    		<li><a href="course_list.do?memberId=${sessionScope.memberId}">나의 코스 목록</a></li>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<li><a href="#sign-in-dialog" id="access_link2">나의 코스 목록</a></li>
                                    	</c:otherwise>
                                    </c:choose>
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

                        </ul>
                </nav>
            </div>
        </div><!-- container -->
    </header>
    <!-- End Header -->
</body>
</html>