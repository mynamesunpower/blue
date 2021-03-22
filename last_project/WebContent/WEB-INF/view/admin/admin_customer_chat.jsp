<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>축제로 | 고객 1:1 채팅</title>

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
                    관리자와 채팅 문의를 원하는 고객이 ${chatList.size()} 명 있습니다.
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
                  <tbody class="chatList">
                  	  <c:forEach items="${chatList}" var="list">
                  	  	<tr class="row_editable wait_time">
                        <td>${list.first_date} ${list.second_date}</td>
                        <td class="timer">7분 32초</td>  
                        <td>${list.id}</td>
                        <td class="text-center">
                          <a href="#" class="btn btn-light btn-xs adminChat" data-toggle="modal" data-target="#chat_customer">채팅하기</a>    
                          <a href="#" class="btn btn-dark btn-xs" data-toggle="modal" data-target="#send_customer">메시지 보내기</a></td>
                     	</tr>	
                  	  </c:forEach>  
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
    
  $('.adminChat').on('click', function() {
	  var option = "width = 500, height = 500, top = 100, left = 200, location = no"
			window.open('adminChat.do', 'Chat', option);
	})  
    
  $(function () {
	  
	timer_init();
	  
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      
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
  
  function clock() {
	    var date = new Date();
	    console.log(date)
	    let item = document.getElementsByClassName("timer");
	    
	    let wait_time = document.getElementsByClassName("wait_time");
	    $.each(wait_time, function(index, item) {
	    	var time = item.innerHTML;
	    	var first_date = time.split(' ')[0];
	    	var second_date = time.split('  ')[1];
	    	
	    	var year = first_date.split('-')[0];
	    	var month = first_date.split('-')[1];
	    	var day = first_date.split('-')[2];
	    	
	    	var hour = second_date.split(':')[0];
	    	var minute = second_date.split(':')[1];
	    	var second = second_date.split(':')[2];
	    	
	    	var waitTime = new Date();
	    	waitTime.setFullYear(year);
	    	waitTime.setMonth(month-1);
	    	waitTime.setDate(day);
	    	waitTime.setHours(hour);
	    	waitTime.setMinutes(minute);
	    	waitTime.setSeconds(second);
	    	
			console.log(time)
			console.log(waitTime)
	    	
		})
	    
	    $.each(item, function (index, item) {
	    	item.innerText = date;
	    })
	   
	}
  
  function timer_init(item) {
	  
	  clock();
	  setInterval(clock, 1000);
  }
</script>
</body>
</html>
