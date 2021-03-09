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
	몽고몽고 코스코스 DB에 있는거 가져와보자↓
	<c:forEach items="${list}" var="course">
		<div>
			id : ${course._id} <br><br>
			코스 작성자 id : ${course.writer} <br><br>
			코스명 : ${course.courseName} <br><br>
			코스 대표 지역 : ${course.district} <br><br>
			<%-- 코스 대표 이미지 : <div><img src="${course.mainImage}"></div><br><br>--%>
			코스 설명 : ${course.summary} <br><br>
			<c:forEach items="${course.keyword}" var="keyword">
				#태그(키워드) : ${keyword} <br>
			</c:forEach>
			<br>
			<%-- #태그(키워드) : ${course.keyword} <br><br> --%>				
			코스 총 거리 : ${course.distance} km <br><br>
			일정 : ${course.schedule} <br><br>
			테마 : ${course.theme} <br><br>
			↓_코스 경로_↓ <br>
			<c:forEach items="${course.coursePath }" var="coursePath">
				<br>
				장소 : ${coursePath.title } <br>
				주소 : ${coursePath.address } <br>
				위도 : ${coursePath.latitude }<br>
				경도 : ${coursePath.longitude }<br>
				전화번호 : ${coursePath.tel } <br>
				<c:forEach items="${coursePath.image }" var="image">
					이미지 : <img src="${image }"> <br>
				</c:forEach>
			</c:forEach>
			<br>
			<c:forEach items="${course.review}" var="review">
			<br>
			리뷰 작성자 아이디 : ${review.reviewWriter } <br>
			별점 : ${review.reviewScore } <br>
			리뷰 내용 : ${review.reviewContent } <br>
			</c:forEach>
		</div>
	</c:forEach>
</body>
</html>