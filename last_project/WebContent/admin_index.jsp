<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>방방곡곡 축제로 | 대시보드</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

<%@ include file="admin_header.jsp" %>

  <!-- Content Wrapper. 콘텐츠는 이 안에 -->
  <div class="content-wrapper">
    <!-- Content Header 콘텐츠 헤더 -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">대시보드</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">대시보드</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header 콘텐츠 헤더 끝 -->

    <!-- 메인 콘텐트 -->
    <section class="content">
      <div class="container-fluid">
          
        <!-- 상단 박스 (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>150</h3>

                <p>신규 회원</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">자세히 보기 <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
            
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>14</h3>

                <p>신규 메이트</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">자세히 보기 <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->    
            
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>1</h3>

                <p>새 고객 문의</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">자세히 보기 <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
            
         <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>3</h3>

                <p>신규 분실물</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">자세히 보기 <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->    
        </div>
        <!-- /.row 상단 박스 끝 -->
          
        <!-- Main row 메인 콘텐츠 -->
        <div class="row">
          <!-- Left col (col-lg-6 좌측 그리드) -->
          <section class="col-lg-7 connectedSortable">

                <!-- 최근 메이트 -->
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">최근 가입한 메이트</h3>

                    <div class="card-tools">
                      <span class="badge badge-danger">8 새 메이트</span>
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0">
                      <ul class="users-list clearfix">
                      <li>
                        <img src="dist/img/user1-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">김형민</a>
                        <span class="users-list-date">오늘</span>
                      </li>
                      <li>
                        <img src="dist/img/user8-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">김태양</a>
                        <span class="users-list-date">어제</span>
                      </li>
                      <li>
                        <img src="dist/img/user7-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">권예진</a>
                        <span class="users-list-date">2월 23일</span>
                      </li>
                      <li>
                        <img src="dist/img/user6-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">김수광</a>
                        <span class="users-list-date">2월 21일</span>
                      </li>
                      <li>
                        <img src="dist/img/user2-160x160.jpg" alt="User Image">
                        <a class="users-list-name" href="#">지우빈</a>
                        <span class="users-list-date">2월 15일</span>
                      </li>
                      <li>
                        <img src="dist/img/user5-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">김용관</a>
                        <span class="users-list-date">2월 13일</span>
                      </li>
                      <li>
                        <img src="dist/img/user4-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">이진현</a>
                        <span class="users-list-date">2월 11일</span>
                      </li>
                      <li>
                        <img src="dist/img/user3-128x128.jpg" alt="User Image">
                        <a class="users-list-name" href="#">송채은</a>
                        <span class="users-list-date">2월 9일</span>
                      </li>
                    </ul>
                    <!-- /.users-list -->
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer text-center">
                    <a href="javascript:">모든 메이트 보기</a>
                  </div>
                  <!-- /.card-footer -->
              </div> <!-- /.card -->
              
              <!-- 최근 축제 테이블 -->
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">최근 축제</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>id</th>
                      <th>축제명</th>
                      <th>상태</th>
                      <th>일정</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a href="pages/examples/invoice.jsp">1</a></td>
                      <td>꼴뚜기 대축제</td>
                      <td><span class="badge badge-success">개최 중</span></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20">2021. 2. 1 ~ 2021. 3. 3</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.jsp">2</a></td>
                      <td>광화문 한마음 대소동</td>
                      <td><span class="badge badge-warning">개최 예정</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f39c12" data-height="20">2021.  3. 8 ~ 2021. 3. 11</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.jsp">3</a></td>
                      <td>진짜 재미없는 축제</td>
                      <td><span class="badge badge-danger">종료</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f56954" data-height="20">2021. 2. 2 ~ 2021. 2. 3</div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <a href="#" class="btn btn-sm btn-info float-left">축제 정보 추가하기</a>
                <a href="#" class="btn btn-sm btn-secondary float-right">모든 축제 정보 보기</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
              
          </section>
          <!-- /.Left col 좌측 메인 콘텐츠 -->
            
          <!-- right col (We are only adding the ID to make the widgets sortable) 우측 메인 콘텐츠 -->
          <section class="col-lg-5 connectedSortable">

            <!-- 고객센터 -->  
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">접수된 문의</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <div class="chart-responsive">
                      <canvas id="pieChart" height="150"></canvas>
                    </div>
                    <!-- ./chart-responsive -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4">
                    <ul class="chart-legend clearfix">
                      <li><i class="far fa-circle text-danger"></i> 분실물</li>
                      <li><i class="far fa-circle text-success"></i> 메이트 신고</li>
                      <li><i class="far fa-circle text-warning"></i> 기타 문의</li>
                    </ul>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer bg-light p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      분실물 접수 비율
                      <span class="float-right text-danger">
                        <i class="fas fa-arrow-down text-sm"></i>
                        12%</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      메이트 신고 비율
                      <span class="float-right text-success">
                        <i class="fas fa-arrow-up text-sm"></i> 4%
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      기타 문의 비율
                      <span class="float-right text-warning">
                        <i class="fas fa-arrow-left text-sm"></i> 0%
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
              <!-- /.footer -->
            </div>
            <!-- /.card -->
              
              
            <!-- 최근 추가된 식당 -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">최근 등록된 식당</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">맛있는식당
                        <span class="badge badge-success float-right">★4.2</span></a>
                      <span class="product-description">
                        서울시 종로구 맛있는길 4-4
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">짱맛있는식당
                        <span class="badge badge-success float-right">★4.6</span></a>
                      <span class="product-description">
                        서울시 종로구 맛있는길 4423
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                   <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">그저그런식당
                        <span class="badge badge-warning float-right">★3.5</span></a>
                      <span class="product-description">
                        서울시 종로구 맛있는길 1121
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">맛없는식당
                        <span class="badge badge-danger float-right">★2.8</span></a>
                      <span class="product-description">
                        서울시 종로구 맛있는길 4334
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">모든 식당 정보 보기</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->  
              
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="festival.jsp">축제로</a>. </strong>All rights reserved.
    
    <div class="float-right d-none d-sm-inline-block">
      <b>밥은 먹으면서 합시다!</b> 행복해져야죠
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>