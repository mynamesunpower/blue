<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 숙박 정보 관리</title>

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
            <h1>숙박 정보 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.html">Home</a></li>
              <li class="breadcrumb-item active">숙박 정보 관리</li>
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
                       data-toggle="modal" data-target="#insert_lodgment"
                       >새 숙박 추가</a>
                    <a id="insert_dummy_lodgment" class="btn btn-success">더미 숙박 추가</a>  
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>이름</th>
                    <th>주소</th>
                    <th>전화번호</th>
                    <th>홈페이지</th>
                    <th>입실시간</th>
                    <th>퇴실시간</th>
                    <th>관리</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <!--  동적 데이블 생성 만들 부분입니다......... -->
                  <c:forEach items="${lodgmentlist}" var="lodgment">
               
                      <tr class="row_editable">
                        <td>${lodgment.title}</td>
                        <td>${lodgment.address}</td>
                        <td>${lodgment.tel}</td>
                        <td><a href='#'>${lodgment.booking_url}</a></td>
                        <td>${lodgment.checkin}</td>
                        <td>${lodgment.checkout}</td>
                        <td class="text-center">
                          <a href="#" class="btn btn-primary btn-xs modifybutton" data-toggle="modal" data-target="#modify_lodgment">수정</a>    
                          <a href="#" class="btn btn-danger btn-xs deletebutton" data-toggle="modal" data-target="#delete_lodgment">삭제</a></td>
                      </tr>
                  </c:forEach>
                  
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>이름</th>
                    <th>주소</th>
                    <th>전화번호</th>
                    <th>홈페이지</th>
                    <th>입실시간</th>
                    <th>퇴실시간</th>
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
  
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <script>
  $( document ).ready( function() {
    
    $(".modifybutton").on('click', function(){
    	        
		var title = $(this).parent().parent().children("td:nth-child(1)").text();
		console.log(title)
    	var address = $(this).parent().parent().children("td:nth-child(2)").text();
    	var tel = $(this).parent().parent().children("td:nth-child(3)").text();
    	var booking_url = $(this).parent().parent().find("td:nth-child(4) > a").text();
    	var checkin = $(this).parent().parent().children("td:nth-child(5)").text();
    	var checkout = $(this).parent().parent().children("td:nth-child(6)").text();
    			
    	
    	$('.lodgment_name').attr('value',title); 
    	$('.lodgment_address').attr('value',address); 
    	$('.lodgment_tel').attr('value',tel); 
    	$('.lodgment_website').attr('value',booking_url); 
    	$('.lodgment_intime').val(checkin); 
    	$('.lodgment_outtime').val(checkout); 
    	    	                    
    });
 //});
  
  
  	$(".deletebutton").on('click', function(){
	                	
            		var title = $(this).parent().parent().children("td:nth-child(1)").text();
                  
            			console.log(title)
            			
                  	 //var id = $("#tabledata").find_all("td:nth-child(1)").text();
                  	$('.dellodgment').val(title); 
               		
                  	$('.delbutton').prop("disabled", true);
                  	$('.delete_confirm').on("keyup", action);
                  	function action() {
            			  if($('.delete_confirm').val()== "삭제한다") {
            			        $('.delbutton').prop("disabled", false);
            			     }
            			  else{
            				  $('.delbutton').prop("disabled", true);
            			  }
                  	}
                  	
                  });
                  
                	  
            	  $(".delclose").on('click', function(){
            		  $('.delete_confirm').val("")
            		  
            	  });
          
  });
    </script>

    
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
	<div class="modal fade" id="insert_lodgment" tabindex="-1" role="dialog" aria-labelledby="info_insertLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_insertLabel">숙박 정보 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 추가 form <action값 확인 필수> -->
					<form method="post" action="insert_lodgment.do" name="insert_lodgment_form" id="insert_lodgment_form">
                        
                        <!-- mongoDB 고유 아이디 (필요없나?) -->
                        <input type="hidden" value="unique_id">
                        
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="title" id="lodgment_name" type="text" placeholder="이름" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="address" id="lodgment_address" type="text" placeholder="주소" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="tel" id="lodgment_tel" type="text" placeholder="숙박업소 전화번호" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="booking_url" id="lodgment_website" type="text" placeholder="홈페이지" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="checkin" id="lodgment_intime" type="text" placeholder="입실시간" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="checkout" id="lodgment_outtime" type="text" placeholder="퇴실시간" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-lodgment-insert">
					</form> <!-- 추가 form 끝 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 추가하기 끝 -->
    
    <!-- 수정하기 -->
	<div class="modal fade" id="modify_lodgment" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_modifyLabel">숙박 정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 수정 form -->
					<form method="post" action="/admin/modify_lodgment.do" name="modify_lodgment_form" id="modify_lodgment_form">
                        
                        <!-- mongoDB 고유 아이디 (필요없나?) -->
                        <input type="hidden" value="unique_id">
                        
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="title" id="lodgment_name" type="text" placeholder="이름" class="form-control lodgment_name"
                                    value="" readonly="readonly">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="address" id="lodgment_address" type="text" placeholder="주소" class="form-control lodgment_address"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="tel" id="lodgment_tel" type="text" placeholder="숙박업소 전화번호" class="form-control lodgment_tel"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="booking_url" id="lodgment_website" type="text" placeholder="홈페이지" class="form-control lodgment_website"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="checkin" id="lodgment_intime" type="text" placeholder="입실시간" class="form-control lodgment_intime"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="checkout" id="lodgment_outtime" type="text" placeholder="퇴실시간" class="form-control lodgment_outtime"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="수정하기" class="btn btn-success" id="submit-lodgment-modify">
					</form> <!-- 수정 form 끝 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 수정하기 끝 -->
    
    <!-- 삭제하기 -->
	<div class="modal fade" id="delete_lodgment" tabindex="-1" role="dialog" aria-labelledby="info_deleteLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_deleteLabel">숙박 정보 삭제</h4>
					<button type="button" class="close delclose" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
                    
                    <!-- 삭제 form <action 확인 필수!> -->
					<form method="post" action="delete_lodgment.do" name="delete_lodgment_form" id="delete_lodgment_form">
                        
                        <!-- mongoDB 숙박 고유 id -->
                        <input type="hidden" value="unique_id">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 숙박 데이터가 삭제됩니다. <br/>
									<input name="title" id="lodgment_name" type="text" placeholder="이름" class="form-control dellodgment"
                                    value="">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    삭제를 진행하기 위해서 <strong>삭제한다 </strong>를 입력해주세요
									<input name="delete_confirm" id="delete_confirm" type="text" placeholder="여기에 입력" class="form-control delete_confirm">
								</div>
							</div>
						</div>
						<!-- End row -->
                        
						<input type="submit" value="삭제" class="btn btn-danger delbutton" id="submit-lodgment-delete">
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
