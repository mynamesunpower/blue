<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/admin_index.jsp" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="검색" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin_index.jsp" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">축제로</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">관리자1</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- 좌측 사이드바 -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- 대시보드 -->
          <li class="nav-item">
            <a href="/admin_index.jsp" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                대시보드
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
          </li> <!-- 대시보드 끝 -->
          
          <!-- 회원관리 -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                회원 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              <a href="/admin/admin_member.do" class="nav-link">
                <!--<a href="admin/admin_member.jsp" class="nav-link">  -->
                  <i class="far fa-circle nav-icon"></i>
                  <p>일반 회원 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_mate.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>메이트 관리</p>
                </a>
              </li>
            </ul>
          </li>
            
          <!-- 축제 -->    
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                축제 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/admin_festival.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>축제 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_lodgment.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>숙박 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_restaurant.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>식당 정보 관리</p>
                </a>
              </li>
            </ul>
          </li>
            
          <!-- 코스 관리 -->    
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                코스 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/admin_course.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>코스 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_course_statistic.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>코스 통계</p>
                </a>
              </li>
            </ul>
          </li> <!-- 코스 관리 끝 -->
            
          <!-- 리뷰 관리 -->    
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                리뷰 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/admin_festival_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>축제 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_restaurant_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>식당 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_lodgment_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>숙박 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_mate_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>메이트 리뷰 관리</p>
                </a>
              </li>
            </ul>
          </li> <!-- 리뷰 관리 끝 -->
            
            
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                고객센터
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                <a href="/admin/admin_customer_question.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고객 문의 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_customer_chat.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고객 1:1 채팅</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_lost.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>분실물 관리</p>
                </a>
              </li>
            </ul>
          </li> <!-- 고객센터 끝 -->
            
          <!-- 시각화 -->    
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                시각화
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                <a href="/admin/admin_what.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>지역별 축제 분포</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/admin_what2.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>축제 입장료 유/무</p>
                </a>
              </li>
            </ul>
          </li> <!-- 시각화 끝 -->
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
</body>
</html>