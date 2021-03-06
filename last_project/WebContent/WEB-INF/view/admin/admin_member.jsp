<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 일반 회원 관리</title>

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
            <h1>일반 회원 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../admin_index.jsp">Home</a></li>
              <li class="breadcrumb-item active">일반 회원 관리</li>
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
                       data-toggle="modal" data-target="#insert_member"
                       >새 회원 추가</a>
                    <a id="insert_dummy_member" class="btn btn-success">더미 회원 추가</a>
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>생년월일</th>
                    <th>전화번호</th>
                    <th>주소</th>
                    <th>이메일</th>
                    <th>관리</th>
                  </tr>
                  </thead>
                  <tbody>

                  <!--  동적 데이블 생성 만들 부분입니다......... -->
                <c:forEach items="${memberlist}" var="member">


                	<tr id ="tabledata">
                    <td>${member.id}</td>
                    <td>${member.name}</td>
                    <td>${member.birthday}</td>
                    <td>${member.tel}</td>
                    <td>${member.address}</td>
                    <td>${member.email}</td>
                    <td class="text-center"><a href="#" class="btn btn-primary btn-xs modifybutton" data-toggle="modal" data-target="#info_modify" id="modifybutton">수정</a>
                          <a href="#" class="btn btn-danger btn-xs deletebutton" data-toggle="modal" data-target="#info_delete" id="deletebutton">삭제</a></td>
                    </tr>

                  </c:forEach>


                  
                      
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>생년월일</th>
                    <th>전화번호</th>
                    <th>주소</th>
                    <th>이메일</th>
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
    <strong>Copyright &copy; 2021 <a href="festival.do">축제로</a>. </strong>All rights reserved.

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

	<div class="modal fade" id="insert_member" tabindex="-1" role="dialog" aria-labelledby="info_insertLabel" aria-hidden="true">

	<!-- <form action="admin/insert_member.do" name="inser_member" id="insert_member" method="post" enctype="multipart/form-data"> -->
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_insertLabel">일반 회원 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<!-- <form method="post" action="admin/insert_member.do" name="festival_modify" id="festival_modify"> -->
                        <form action="insert_member.do" name="inser_member" id="insert_member" method="post" accept-charset="UTF-8" >
                        <input type="hidden" value="unique_id">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="id" id="id" type="text" placeholder="아이디" class="form-control"
                                    value="아이디">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="name" id="member_name" type="text" placeholder="이름" class="form-control"
                                    value="이름">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="birthday" id="member_birthday" type="text" placeholder="생일" class="form-control"
                                    value="생일">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="tel" id="member_tel" type="text" placeholder="전화번호" class="form-control"
                                    value="전화번호">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="address" id="member_address" type="text" placeholder="주소" class="form-control"
                                    value="주소">
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="email" id="member_email" type="text" placeholder="이메일" class="form-control"
                                    value="이메일">
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="추가하기" class="btn btn-success" id="submit-member-insert">
					</form>
				</div>
			</div>
		</div>
	</form>
	</div>
	<!-- 추가하기 끝 -->


    <!-- 수정하기 -->
<div class="modal fade" id="info_modify" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="info_modifyLabel">일반 회원 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="modify_member.do" name="festival_modify" id="festival_modify">
					<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>


                        <input type="hidden" value="unique_id">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="id" type="text" placeholder="아이디" class="form-control member_id"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="name" type="text" placeholder="이름" class="form-control member_name"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="birthday"  type="text" placeholder="생일" class="form-control member_birthday"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="tel"  type="text" placeholder="전화번호" class="form-control member_tel"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="address"  type="text" placeholder="주소" class="form-control member_address"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input name="email" type="text" placeholder="이메일" class="form-control member_email"
                                    value=>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<input type="submit" value="수정하기" class="btn btn-success" id="submit-member-modify">
					</form>
				</div>
			</div>
		</div>
	</div>

	    <script>
            //var memberid= $('#member_id')
            $( document ).ready( function() {

                $(".modifybutton").on('click', function(){

 					var id = $(this).parent().parent().children("td:nth-child(1)").text();
                	var name = $(this).parent().parent().children("td:nth-child(2)").text();
                	var birthday = $(this).parent().parent().children("td:nth-child(3)").text();
                	var tel = $(this).parent().parent().children("td:nth-child(4)").text();
                	var address = $(this).parent().parent().children("td:nth-child(5)").text();
                	var email = $(this).parent().parent().children("td:nth-child(6)").text();
 					console.log(id)
 					console.log(name)
 					console.log(birthday)
 					console.log(tel)
 					console.log(address)
 					console.log(email)
                	 //var id = $("#tabledata").find_all("td:nth-child(1)").text();
                	$('.member_id').val(id);
                	$('.member_name').val(name);
                	//$('.member_birthday').attr('value',birthday);
                	$('.member_birthday').val(birthday);
                	$('.member_tel').val(tel);
                	$('.member_address').val(address);
                	$('.member_email').val(email);


                });

                $(".deletebutton").on('click', function(){

            		var id = $(this).parent().parent().children("td:nth-child(1)").text();

            			console.log(id)

                  	 //var id = $("#tabledata").find_all("td:nth-child(1)").text();
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
	<!-- 수정하기 끝 -->

    <!-- 삭제하기 -->
	<div class="modal fade" id="info_delete" tabindex="-1" role="dialog" aria-labelledby="info_modifyLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">회원 정보 삭제</h4>
					<button type="button" class="close delclose" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="delete_member.do" name="festival_modify" id="festival_modify">

                        <!-- mariaDB 회원 id -->
                        <input type="hidden" value="unique_id">

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    다음 회원 데이터가 삭제됩니다. <br/>
									<input name="id" id="festival_id" type="text" placeholder="${member.id}" class="form-control delid"
                                    >
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
                        <div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    삭제를 진행하기 위해서 <strong>삭제한다 </strong>를 입력해주세요
									<input name="delete_confirm" id="delete_confirm" type="text" placeholder="여기에 입력" class="form-control delete_confirm" value="">
								</div>
							</div>
						</div>
						<!-- End row -->

						<input type="submit" value="삭제하기" class="btn btn-danger delbutton" id="submit-festival-modify">
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
    });



  });



 // $( document ).ready( function() {


	  //pointdel
	  //$('.delete_confirm').on("keyup", action);
	  //function action() {
	  // $(".pointdel").on('click', function(){

		 // if($('.delete_confirm').val()== "삭제한다") {
	     //   $('.delbutton').prop("disabled", false);
	    // }else {
	    //    $('.delbutton').prop("disabled", true);
	    // }
	//  }

	//  $(".delclose").on('click', function(){
	//	  $('.delete_confirm').val("")

	//  });


 // });


</script>
</body>
</html>
