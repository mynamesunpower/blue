<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 분실물 관리</title>

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

   
  <%@ include file="../../../admin_header.jsp" %>
 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>분실물 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.html">Home</a></li>
              <li class="breadcrumb-item active">분실물 관리</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                    <a class="btn btn-success"
                       data-toggle="modal" data-target="#insert_lost"
                       >새 분실물 추가</a>
                    <a id="insert_dummy_mate" class="btn btn-success">더미 메이트 추가</a>  
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>해결상태</th>  
                    <th>사진</th>
                    <th>발견 축제</th>
                    <th>작성일자</th>
                    <th>내용</th>
                    <th>관리</th>  
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td></td>  
                    <td><img src="../img/sample250_250.png"
                             class="img-fluid"></td>
                    <td>망둥어 축제</td>
                    <td>2021. 2. 25 18:43</td>
                    <td>이거 주웠는데 혹시 주인 있으신가요 없으면 제가 쓸라고 ㅋㅋ</td>
                    <td class="text-center">
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#lost_delete">삭제</a></td>  
                  </tr>
                  <tr>
                    <td>해결완료</td>  
                    <td><img src="../img/sample250_250.png"
                             class="img-fluid"></td>
                    <td>망둥어 축제</td>
                    <td>2021. 2. 25 18:43</td>
                    <td>망둥어 축제 정문쪽에서 발견했어요..</td>
                    <td class="text-center">
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#lost_delete">삭제</a></td>  
                  </tr>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>해결상태</th>  
                    <th>사진</th>
                    <th>발견 축제</th>
                    <th>작성일자</th>
                    <th>내용</th>
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
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="festival.html">축제로</a>. </strong>All rights reserved.
    
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

    
    <!-- 추가하기 -->
	<div class="modal fade" id="insert_lost" tabindex="-1" role="dialog" aria-labelledby="info_insertLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_insertLabel">분실물 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="#" name="insert_lost_form" id="insert_lost_form">
                        <input type="hidden" value="unique_id">
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    <div class="text-center">
                                        <h5>이미지 부분</h5>
                                        안넣으면 기본 이미지
                                        <input type="file">
                                    </div>
                                    
								</div>
							</div>
						</div>
                        
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="lost_data" id="lost_date" type="text" placeholder="작성일시" class="form-control"
                                    value="작성일시">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="lost_festival" id="lost_festival" type="text" placeholder="축제" class="form-control"
                                    value="축제">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="lost_status" id="lost_status" type="text" placeholder="해결상태" class="form-control"
                                    value="해결상태">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="lost_detail" id="lost_detail" type="text" placeholder="내용" class="form-control"
                                    value="내용">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-lost-insert">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 추가하기 끝 -->
    

    
    <!-- 삭제하기 -->
	<div class="modal fade" id="lost_delete" tabindex="-1" role="dialog" aria-labelledby="info_deleteLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_deleteLabel">분실물 정보 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="#" name="lost_delete_form" id="lost_delete_form">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 분실물 데이터가 삭제됩니다. <br/>
									<img src="../img/sample250_250.png">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    삭제를 진행하기 위해서 <strong>삭제한다 </strong>를 입력해주세요
									<input name="delete_confirm" id="delete_confirm" type="text" placeholder="여기에 입력" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
                        
						<input type="submit" value="삭제하기" class="btn btn-danger" id="submit-lost-delete">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 삭제하기 끝 -->     
    
    
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
      "buttons": ["copy", "csv", "pdf", "print", "colvis"],
      "language": {
          buttons: {
              copy: '복사',
              print: '인쇄',
              colvis: '컬럼 보이기',
              copyTitle: '복사 성공',
              copyKeys: '이건 뭐죠',
              copySuccess: {
                  _: '%d개 데이터를 클립보드에 복사했습니다.',
                  1: '1개 데이터를 클립보드에 복사했습니다.'
              }
          }
          
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
      "rowReorder": true,
      "columnDefs": [
          {orderable: true, className: 'reorder', targets: 0},
          {orderable: false, targets: '_all'}
      ]
    });
  });
</script>
</body>
</html>
