<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>test</title>

</head>

<body>
	몽고 빠큐~
	<c:forEach items="${list}" var="test">
		<div>
			<br>
			uid : ${test._id} <br>
			축제 이름 : ${test.festival_name} <br>
			주소 : ${test.address} <br>
			시작일 : ${test.start_date} <br>
			종료일 : ${test.end_date} <br>
			요금 : ${test.fee} <br>
			전화번호 : ${test.tel} <br>
			홈피 : ${test.homepage} <br>
			<c:forEach items="${test.review}" var="review">
			리뷰 ID : ${ review.review_id } <br>
			리뷰 점수 : ${ review.review_score } <br>
			리뷰 내용 : ${ review.review_content } <br>
			</c:forEach>
			<c:forEach items="${test.images}" var="image">
				<img src="data:image/jpg;base64,${image}"/>  <br>
			</c:forEach>
			<br>
		</div>
	</c:forEach>

</body>

</html>