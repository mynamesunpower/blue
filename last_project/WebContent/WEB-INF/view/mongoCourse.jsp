<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>몽고몽고 코스코스</title>
</head>
<body>
	몽고몽고 코스코스
	<c:forEach items="${list}" var="course">
		<div>
			id : ${course._id} <br>
			코스 작성자 id : ${course.writer} <br>
			코스명 : ${course.courseName} <br>
			코스 대표 지역 : ${course.district} <br>
			코스 대표 이미지 : ${course.mainImage} <br>
			<%-- #태그(키워드) : ${} <br> --%>
			코스 총 거리 : ${course.distance} <br>
			일정 : ${course.schedule} <br>
			테마 : ${course.theme} <br>
			<%-- 코스 경로 : ${ } <br> --%>
			<c:forEach items="${course.review}" var="review">
			리뷰 작성자 아이디 : ${review.reviewWriter } <br>
			별점 : ${review.reviewScore } <br>
			리뷰 내용 : ${review.reviewContent } <br>
			</c:forEach>
		</div>
	</c:forEach>
</body>
</html>