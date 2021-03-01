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
		id = ${test.id}<br>
		name = ${test.name}<br>
		age = ${test.age}<br>
	</c:forEach>

</body>

</html>