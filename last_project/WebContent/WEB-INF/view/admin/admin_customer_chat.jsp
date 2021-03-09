<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축축빵빵 | 고객 1:1 채팅</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
    
    
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../index.html" class="nav-link">축축빵빵 Main</a>
      </li>
    </ul>


    <!-- 우측 상단 navbar 기능 -->
    <ul class="navbar-nav ml-auto">
        
      <!-- 드롭다운 메세지 -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
            
           <!-- 새로 온 메세지의 갯수 -->
          <span class="badge badge-danger navbar-badge">2</span>
        </a>
          
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            
            
          <!-- 메세지 -->    
          <a href="#" class="dropdown-item">
            <div class="media">
              <img src="../../dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  김형민
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">분실물이 있습니다 살려주세요</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4시간 전</p>
              </div>
            </div>
          </a>
          <!-- 메세지 끝 -->    
            
          <!-- 메세지 -->    
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <div class="media">
              <img src="../../dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  김태양
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">문의사항이 있습니다</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4시간 전</p>
              </div>
            </div>
          </a> <!-- 메세지 끝 -->  
             
            
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">모든 문의사항 확인</a>
        </div>
      </li> <!-- 드롭다운 메세지 전체 끝 -->
        
      <!-- 알림 드롭다운 메뉴 -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li> <!-- 알림 드롭다운 메뉴 끝 -->
        
        
      <!-- 풀 스크린 모드 -->    
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li> <!-- 풀 스크린 끝 -->
    </ul>
  </nav> <!-- 상단 navbar 끝 -->
  

  <!-- 좌측 메인 사이드바 -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- 사이드바 헤더 -->
    <a href="admin_index.jsp" class="brand-link">
      <img src="../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">축축빵빵</span>
    </a>

    <!-- 사이드바 -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">${sessionScope.adminName}</a>
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
            <a href="admin_index.jsp" class="nav-link active">
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
              <i class="nav-icon far fa-user"></i>
              <p>
                회원 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="admin_member.do" class="nav-link">
                  <i class="far fa-user-circle nav-icon"></i>
                  <p>일반 회원 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_mate.do" class="nav-link">
                  <i class="far fa-handshake nav-icon"></i>
                  <p>메이트 관리</p>
                </a>
              </li>
            </ul>
          </li>
            
          <!-- 축제 -->    
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-moon"></i>
              <p>
                축제 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="admin_festival.do" class="nav-link">
                  <i class="far nav-icon"></i>
                  <p>축제 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_lodgment.do" class="nav-link">
                  <i class="far  nav-icon"></i>
                  <p>숙박 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_restaurant.do" class="nav-link">
                  <i class="far fa-coffee nav-icon"></i>
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
                <a href="admin_course.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>코스 정보 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_course_statistic.do" class="nav-link">
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
                <a href="admin_festival_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>축제 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_restaurant_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>식당 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_lodgment_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>숙박 리뷰 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_mate_review.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>메이트 리뷰 관리</p>
                </a>
              </li>
            </ul>
          </li> <!-- 코스 관리 끝 -->
            
            
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
                <a href="admin_customer_question.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고객 문의 관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_customer_chat.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고객 1:1 채팅</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_lost.do" class="nav-link">
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
                <a href="./admin_what.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>뭐할까</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./admin_what.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고민을</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./admin_what.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>해봐야겠어요</p>
                </a>
              </li>
            </ul>
          </li> <!-- 시각화 끝 -->
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside> <!-- 좌측 메인 사이드바 끝 -->

  <!-- 페이지 콘텐츠 -->
  <div class="content-wrapper">
      
    <!-- 페이지 헤더 -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>고객 채팅</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.html">Home</a></li>
              <li class="breadcrumb-item active">고객 채팅</li>
            </ol>
          </div>
        </div>
      </div>
    </section> <!-- 페이지 헤더 끝 -->

    <!-- 페이지 메인 콘텐츠 -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                    관리자와 채팅 문의를 원하는 고객이 ___ 명 있습니다.
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>채팅 대기 시작</th>
                    <th>현재 대기 시간</th>
                    <th>아이디</th>  
                    <th>관리</th>
                  </tr>
                  </thead>
                  <tbody>
                      <tr class="row_editable">
                        <td>2021. 2. 26 12:11</td>
                        <td>7분 32초</td>  
                        <td>angry_customer</td>
                        <td class="text-center">
                          <a href="#" class="btn btn-light btn-xs" data-toggle="modal" data-target="#chat_customer">채팅하기</a>    
                          <a href="#" class="btn btn-dark btn-xs" data-toggle="modal" data-target="#send_customer">메시지 보내기</a></td>
                      </tr>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>채팅 대기 시작</th>
                    <th>현재 대기 시간</th>
                    <th>아이디</th>  
                    <th>관리</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- 페이지 메인 콘텐츠 끝 -->
    
  <!-- 푸터 -->    
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="festival.html">축축빵빵</a>. </strong>All rights reserved.
    
    <div class="float-right d-none d-sm-inline-block">
      <b>밥은 먹으면서 합시다!</b> 행복해져야죠
    </div>
  </footer>
  <!-- 푸터 끝 -->    

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
    
    <!-- 채팅하기 -->
	<div class="modal fade" id="chat_customer" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">채팅</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                   뭐가 들어갈진 모르겠습니다 
                   
				</div>
			</div>
		</div>
	</div>
	<!-- 채팅하기 끝 -->
    

    

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../../plugins/datatables/jquery.dataTables.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../../plugins/jszip/jszip.min.js"></script>
<script src="../../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
    
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      
      }    
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
    
  });
</script>
</body>
</html>
