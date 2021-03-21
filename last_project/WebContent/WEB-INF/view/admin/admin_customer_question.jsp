<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
  <link rel="stylesheet" href="../css/custom.css">   
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
            <h1>고객 문의 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.html">Home</a></li>
              <li class="breadcrumb-item active">고객 문의 관리</li>
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
                    문의를 신속하게 확인하십시오!
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>카테고리</th>
                    <th>작성일자</th>
                    <th>아이디</th>
                    <th>내용</th>
                    <th>답변 관리자</th>
                    <th>관리</th>
                  </tr>
                  </thead>
                  <tbody>
                      <tr class="row_editable">
                        <td>신고</td>
                        <td>2021. 2. 25 16:53</td>
                        <td>makefriends2</td>
                        <td>메이트가 너무 치근덕거려요 어떻게 좀 해주세요 진짜!!</td>  
                        <td></td>  
                        <td class="text-center"> 
                          <a href="#" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#answer_customer_question">답변하기</a>
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete_customer_question">삭제</a></td>
                      </tr>
                      <tr class="row_editable">
                        <td>신고</td>
                        <td>2021. 2. 24 18:50</td>
                        <td>iamhungry</td>
                        <td>메이트가 개인적으로 연락하는데 어떻게 하면 좋을까요?</td>  
                        <td>choochoo</td>  
                        <td class="text-center"> 
                          <a style="display: none" href="#" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#answer_customer_question">답변하기</a>
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete_customer_question">삭제</a></td>
                      </tr>
                      <tr class="row_editable">
                        <td>신고</td>
                        <td>2021. 2. 24 18:50</td>
                        <td>where_is_my_angel</td>
                        <td>제가 진짜 좋아하던 메이트가 있는데 제발 연결시켜주시면 안될까요ㅠ 진짜 평생 한번 만날까말까한 마이 엔젤입니다요</td>  
                        <td>nothanks</td>  
                        <td class="text-center"> 
                          <a style="display: none" href="#" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#answer_customer_question">답변하기</a>
                          <a href="#" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete_customer_question">삭제</a></td>
                      </tr>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>카테고리</th>
                    <th>작성일자</th>
                    <th>아이디</th>
                    <th>내용</th>
                    <th>답변 관리자</th>
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
    
    
    <!-- 답변하기 -->
	<div class="modal fade" id="answer_customer_question" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">답변하기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 답변 form -->
					<form method="post" action="#" name="answer_customer_form" id="answer_customer_form">
                        
                        <div class="row">
							<div class="col-md-12">
								<div class="customer_info">ID<span>daisy</span></div>
                                <div class="customer_info">
                                문의일자<span>2021. 2. 24 18:24</span>
                                </div>
                                <div class="customer_info">
                                문의내용<div class="customer_question">제가 진짜 좋아하던 메이트가 있는데 제발 연결시켜주시면 안될까요ㅠ 진짜 평생 한 번 만날까 말까한 마이 엔젤입니다요.....</div>
                                </div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<textarea style="resize: none; height: 10vh;" name="writer_id" id="answer_textarea" type="text" placeholder="친절하게 응대해 주세요." class="form-control"></textarea>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="답변하기" class="btn btn-success" id="submit-answer">
					</form> <!-- 답변 form 끝 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 답변하기 끝 -->
    
    <!-- 삭제하기 -->
	<div class="modal fade" id="delete_customer_question" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
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
					<form method="post" action="#" name="delete_customer_question_form" id="delete_customer_question_form">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 고객 문의가 삭제됩니다. <br/>
									<div class="customer_info">ID<span>daisy</span></div>
                                <div class="customer_info">
                                문의일자<span>2021. 2. 24 18:24</span>
                                </div>
                                <div class="customer_info">
                                문의내용<div class="customer_question">제가 진짜 좋아하던 메이트가 있는데 제발 연결시켜주시면 안될까요ㅠ 진짜 평생 한 번 만날까 말까한 마이 엔젤입니다요.....</div>
                                </div>
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
                        
						<input type="submit" value="삭제" class="btn btn-danger" id="submit-customer-question-delete">
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
