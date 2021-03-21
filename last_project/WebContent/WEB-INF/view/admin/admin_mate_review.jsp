<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 메이트 리뷰 관리</title>

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
  

  <!-- 페이지 콘텐츠 -->
  <div class="content-wrapper">
      
    <!-- 페이지 헤더 -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>메이트 리뷰 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.html">Home</a></li>
              <li class="breadcrumb-item active">메이트 리뷰 관리</li>
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
                    <a class="btn btn-success"
                       data-toggle="modal" data-target="#insert_mate_review"
                       >새 리뷰 추가</a>
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>메이트 아이디</th>
                    <th>작성자 아이디</th>
                    <th>평점</th>
                    <th>내용</th>
                    <th>작성시각</th>  
                    <th>기타</th>  
                    <th>관리</th>
                  </tr>
                  </thead>
                  <tbody>
                      <tr class="row_editable">
                        <td>mateman1</td>
                        <td>reviewtest1</td>
                        <td>3</td>  
                        <td>마치 10년지기 친구같았습니다.</td>
                        <td>2021. 2. 25 16:53</td>  
                        <td>매너좋아요</td>
                        <td class="text-center">
                          <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#modify_mate_review">수정</a>    
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete_mate_review">삭제</a></td>
                      </tr>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>메이트 아이디</th>
                    <th>작성자 아이디</th>
                    <th>평점</th>
                    <th>내용</th>
                    <th>작성시각</th>  
                    <th>기타</th>  
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
    <strong>Copyright &copy; 2021 <a href="festival.html">축제로</a>. </strong>All rights reserved.
    
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
    
    <!-- 추가하기 -->
	<div class="modal fade" id="insert_mate_review" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">숙박 리뷰 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 추가 form <action값 확인 필수> -->
					<form method="post" action="#" name="insert_mate_review_form" id="insert_mate_review_form">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_id" id="mate_id" type="text" placeholder="정확한 메이트 ID 입력" class="form-control"
                                    value="정확한 메이트 ID 입력">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="writer_id" id="writer_id" type="text" placeholder="작성자 아이디" class="form-control"
                                    value="작성자 ID">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_score" id="mate_review_score" type="text" placeholder="평점" class="form-control"
                                    value="평점">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_detail" id="mate_review_detail" type="text" placeholder="내용" class="form-control"
                                    value="친절했어요">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_etc" id="mate_review_etc" type="text" placeholder="기타 사항" class="form-control"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-mate-review-insert">
					</form> <!-- 추가 form 끝 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 추가하기 끝 -->
    
    <!-- 수정하기 -->
	<div class="modal fade" id="modify_mate_review" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">리뷰 정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 수정 form -->
					<form method="post" action="#" name="modify_mate_review_form" id="modify_mate_review_form">
                        
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_id" id="mate_id" type="text" class="form-control"
                                    value="메이트 ID" disabled>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="writer_id" id="writer_id" type="text" placeholder="작성자 아이디" class="form-control"
                                    value="작성자 ID" disabled>
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_score" id="mate_review_score" type="text" placeholder="평점" class="form-control"
                                    value="평점">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_detail" id="mate_review_detail" type="text" placeholder="내용" class="form-control"
                                    value="친절했어요">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_review_etc" id="mate_review_etc" type="text" placeholder="기타 사항" class="form-control"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-mate-review-modify">
					</form> <!-- 수정 form 끝 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 수정하기 끝 -->
    
    <!-- 삭제하기 -->
	<div class="modal fade" id="delete_mate_review" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">메이트 리뷰 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 삭제 form <action 확인 필수!> -->
					<form method="post" action="#" name="delete_mate_review_form" id="delete_mate_review_form">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 메이트 리뷰가 삭제됩니다. <br/>
									<input name="mate_id" id="mate_id" type="text" class="form-control"
                                    value="메이트 ID" disabled>
                                    <input name="writer_id" id="writer_id" type="text" placeholder="작성자 아이디" class="form-control"
                                    value="작성자 ID" disabled>
                                    <input name="mate_review_detail" id="mate_review_detail" type="text" placeholder="내용" class="form-control"
                                    value="친절했어요" disabled>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    삭제를 진행하기 위해서 <strong>삭제한다 </strong>를 입력해주세요.
									<input name="delete_confirm" id="delete_confirm" type="text" placeholder="여기에 입력" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
                        
						<input type="submit" value="삭제" class="btn btn-danger" id="submit-mate-review-delete">
					</form> <!-- 삭제 form 끝 -->
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
    });
    
  });
</script>
</body>
</html>
