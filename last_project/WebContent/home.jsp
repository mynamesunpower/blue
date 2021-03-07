<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		
		var cur_month = 0;
		var fes_oMonth = new Date();
		fes_oMonth.setDate(1);
		cur_month = (fes_oMonth.getMonth()+1);
		getMonthData()
	})
	</script>
</head>
<body>
	<h1>Kakao Login!</h1>
	<a href="/mongomonth.do">
		<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
	</a>
	
	<button id="tree">나무</button>
	<br>
	<a href="/logout">로그아웃</a>
	
	<div id='test'>
	
	</div>
	
	
	<script type="text/javascript">

	
	var fes_oMonth = new Date();
	fes_oMonth.setDate(1);
	cur_month = (fes_oMonth.getMonth()+1);
	
	
	
	$('#tree').click(function(){
		
		getMonthData()
	});
	
	//달에 해당하는 데이타 가져오기
 	function getMonthData() {

		$.ajax({
			url: "mongomonth.do",
			dataType: 'json',
			type: "POST",
			data: {"month" : cur_month},
			success: function(data) {
				//setMonthData(data);
				//alert("성공?")
				
				 $.each(data, function (i, item) {
                   // alert("i : "+i);
                   // alert("item : "+item.festival_name);
                   // alert("item : "+item.start_date);
                });
				
				console.log(data)
			},
			complete: function(d) {
			},
			error: function(xhr, textStatus, errorThrown) {
				console.log(';;')
			}
		});
 	}
	
	
	
	</script>
	여기다해
	 <c:forEach items="${list}" var="felist">
	 <tr id ="tabledata">
	 <td>${list.address}</td>
	 </tr>
	 
	 
	 </c:forEach>
</body>
</html>