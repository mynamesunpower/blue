<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 메이트 관리</title>

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
            <h1>메이트 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.jsp">Home</a></li>
              <li class="breadcrumb-item active">메이트 관리</li>
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
                       data-toggle="modal" data-target="#insert_mate"
                       >새 메이트 추가</a>
                    <a id="insert_dummy_mate" class="btn btn-success">더미 메이트 추가</a>  
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>사진</th>
                    <th>아이디</th>
                    <th>닉네임</th>
                    <th>성별</th>
                    <th>프로필 점수</th>
                    <th>관심사</th>
                    <th>캐시</th>
                    <th>관리</th>  
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${mateList}" var="mate">
                  		<tr>
		                    <td><img src="../img/sample250_250.png"
		                             class="img-fluid"></td>
		                    <td>${mate.id}</td>
		                    <td>${mate.nickname}</td>
		                    <td>${mate.gender}</td>
		                    <td>${mate.profile_score}</td>
		                    <td>${mate.interest}</td>
		                    <td>${mate.cash}</td>
		                    <td class="text-center"><a href="#" class="btn btn-primary btn-xs modifybutton" data-toggle="modal" data-target="#info_modify">수정</a>
		                          <a href="#" class="btn btn-danger btn-xs deletebutton" data-toggle="modal" data-target="#info_delete">삭제</a></td>  
                  		</tr>
                  </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>사진</th>
                    <th>아이디</th>
                    <th>닉네임</th>
                    <th>성별</th>
                    <th>프로필 점수</th>
                    <th>관심사</th>
                    <th>캐시</th>
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
	<div class="modal fade" id="insert_mate" tabindex="-1" role="dialog" aria-labelledby="info_insertLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_insertLabel">메이트 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="mateRegister.do" name="mate_modify">
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
                                    아이디 검증해야 함. 디비에 있는지.
                                    !있어야 추가가능!
									<input name="id" type="text" placeholder="아이디" class="form-control "
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="nickname" type="text" placeholder="닉네임" class="form-control "
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="gender" id="mate_gender" type="text" placeholder="성별" class="form-control "
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="profile_score" id="mate_profile_score" type="text" placeholder="메이트 점수" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="interest" type="text" placeholder="관심사" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="cash" type="text" placeholder="캐시" class="form-control"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-mate-insert">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 추가하기 끝 -->
    
    
    <!-- 수정하기 -->
<div class="modal fade" id="info_modify" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_modifyLabel">메이트 정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="mateUpdate.do" name="mate_modify" id="mate_modify">
                        <input type="hidden" value="unique_id">
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    <div class="text-center">
                                        <h5>이미지 부분</h5>
                                        <input type="file">
                                    </div>
                                    
								</div>
							</div>
						</div>
                        
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_id" id="mate_id" type="text" placeholder="아이디" class="form-control mate_id"
                                    value="아이디" disabled>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_nickname" id="mate_nickname" type="text" placeholder="닉네임" class="form-control mate_nickname"
                                    value="닉네임">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_sex" id="mate_sex" type="text" placeholder="성별" class="form-control mate_gender"
                                    value="성별">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_score" id="mate_score" type="text" placeholder="메이트 점수" class="form-control mate_profile_score"
                                    value="메이트 점수">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_interest" id="mate_interest" type="text" placeholder="관심사" class="form-control mate_interest"
                                    value="관심사">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="mate_cash" id="mate_cash" type="text" placeholder="캐시" class="form-control mate_cash"
                                    value="캐시">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="수정하기" class="btn btn-success" id="submit-mate-modify">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 수정하기 끝 -->
    
    <!-- 삭제하기 -->
	<div class="modal fade" id="info_delete" tabindex="-1" role="dialog" aria-labelledby="info_deleteLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_deleteLabel">메이트 정보 삭제</h4>
					<button type="button" class="close delclose" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="mateDelete.do" name="festival_modify" id="festival_modify">
                        
                        <!-- mariaDB 메이트 id -->
                        <input type="hidden" value="unique_id">
                        
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 메이트 데이터가 삭제됩니다. <br/>
									<input name="festival_id" id="festival_id" type="text" placeholder="아이디" class="form-control delid"
                                    value="회원 아이디" disabled>
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
                        
						<input type="submit" value="삭제하기" class="btn btn-danger delbutton" id="submit-mate-delete">
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
    
	$('#mate_id').focusout(function(){
		
		$.ajax({
			type: 'post', //전송방식
	    	async : true, //비동기통신
	    	url : 'mateIdCheck.do', // ***요청(request)
	    	contentType : 'application/x-www-form-urlencoded;charset=euc-kr', // 한글처리
	    	data :{'id': $('#mate_id').val()}, //보내는 데이타
	    	success : function(result){
	    		alert(result)
	    	},
	    	error: function(err){console.log(err);}
		});

	})
	
	$(".modifybutton").on('click', function(){
		
		var id = $(this).parent().parent().children("td:nth-child(2)").text();
    	var nickname = $(this).parent().parent().children("td:nth-child(3)").text();
    	var gender = $(this).parent().parent().children("td:nth-child(4)").text();
    	var profile_score = $(this).parent().parent().children("td:nth-child(5)").text();
    	var interest = $(this).parent().parent().children("td:nth-child(6)").text();
    	var cash = $(this).parent().parent().children("td:nth-child(7)").text();
    	
		console.log(id +'/'+ nickname +'/'+ gender +'/'+ profile_score +'/'+ interest + '/' + cash)
		
    	$('.mate_id').val(id); 
    	$('.mate_nickname').val(nickname);
    	$('.mate_gender').val(gender); 
    	$('.mate_profile_score').val(profile_score); 
    	$('.mate_interest').val(interest); 
    	$('.mate_cash').val(cash);
    	        
    });
    
    $(".deletebutton").on('click', function(){
        	
		var id = $(this).parent().parent().children("td:nth-child(2)").text();
      
		console.log(id)
      	$('.delid').val(id); 
   		
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
		  
	  });$(".modifybutton").on('click', function(){

		var id = $(this).parent().parent().children("td:nth-child(2)").text();
    	var nickname = $(this).parent().parent().children("td:nth-child(3)").text();
    	var gender = $(this).parent().parent().children("td:nth-child(4)").text();
    	var profile_score = $(this).parent().parent().children("td:nth-child(5)").text();
    	var interest = $(this).parent().parent().children("td:nth-child(6)").text();
    	var cash = $(this).parent().parent().children("td:nth-child(7)").text();
    	
		console.log(id +'/'+ nickname +'/'+ gender +'/'+ profile_score +'/'+ interest + '/' + cash)
		
    	$('.mate_id').val(id); 
    	$('.mate_nickname').val(nickname);
    	$('.mate_gender').val(gender); 
    	$('.mate_profile_score').val(profile_score); 
    	$('.mate_interest').val(interest); 
    	$('.mate_cash').val(cash);
    	        
    });
    
    $(".deletebutton").on('click', function(){
        	
		var id = $(this).parent().parent().children("td:nth-child(2)").text();
      
		console.log(id)
      	$('.delid').val(id); 
   		
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


</body>
</html>
