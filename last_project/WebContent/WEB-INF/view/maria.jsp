<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
머리아~~~~~~아베머리아~
	<c:forEach items="${list}" var="test">
		id = ${test.deptno}<br>
		name = ${test.dname}<br>
		age = ${test.location}<br>
	</c:forEach>
</body>
</html>