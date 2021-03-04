<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


Kakao.API.request({
  url: '/v1/user/unlink',
  success: function(response) {
    console.log(response);
  },
  fail: function(error) {
    console.log(error);
  },
});
</body>
</html>