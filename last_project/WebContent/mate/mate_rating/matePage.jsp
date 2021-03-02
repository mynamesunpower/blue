<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).on('click', '#mateRating', function(){
            var winObj = window.open("mateRating.jsp", '리뷰 작성', 'width=600px, height=700px');
            winObj.moveTo(screen.availWidth / 2, screen.availHeight / 5);
        })
    </script>
</head>
<body>
    <input type="button" value="메이트 평가하기" id="mateRating">
</body>
</html>