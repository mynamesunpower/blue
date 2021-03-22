<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메이트 평가</title>
    
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <link href="css/mateRating.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var idx=0;
            $(".star").on('click', function () {
                idx = $(this).index();
                $(".star").removeClass("on");
            
                for (var i = 0; i <= idx; i++) {
                    $(".star").eq(i).addClass("on");
                }
                
            });
    
            // 좋았던 점, 아쉬웠던 점 파라미터 던지기
            /*
            var dayof = "";
            $('#send').click(function(){
                $('input[name="dayof"]:checked').each(function(idx2){
                    if(idx2 != 0){
                        dayof = dayof + ","
                    }
                dayof = dayof + $(this).val();
                });
            $('#dayofs').val(dayof);
            });
            /*
    
            /* 리뷰 작성 버튼 클릭 시, 리뷰 작성 창 닫으면서 원래 창에 새로고침 시키기.
            $('#btnreview').click(function () {
                var rate = (idx+1) /2;
                    $.ajax({
                        url : "reviewWrite.do",
                        data : { 'prod_no' : $('#prod_no').val(),
                            'order_no' : $('#order_no').val(),
                            'rate' : rate,
                            'contents' : $('#contents').val()
                        },
                        success: function(data) {
                            alert(data);
                            opener.location.href = "orderHistory.do";
                            window.self.close();
                        },
                        err : function(err) {
                            console.log(err)
                        }
                    })
            })
            */
            
        });
    </script>
</head>
<body>
    <div style="font-weight: bold; text-align: center;"><h3>별점을 선택해주세요.</h3></div>

		<div class="star-box" style="text-align: center;">
			<span class="star star_left"></span>
			<span class="star star_right"></span>

			<span class="star star_left"></span>
			<span class="star star_right"></span>

			<span class="star star_left"></span>
			<span class="star star_right"></span>

			<span class="star star_left"></span>
			<span class="star star_right"></span>

			<span class="star star_left"></span>
			<span class="star star_right"></span>
		</div><hr>

<!-- <input type="hidden" name="prod_no" id="prod_no" value="<%=request.getParameter("prod_no")%>"> -->
<!-- <input type="hidden" name="order_no" id="order_no" value="<%=request.getParameter("order_no")%>"> -->
        <div style="font-weight: bold; text-align: center;">
            <h3>좋았던 점은?</h3><br>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="1" autocomplete="off">매너있어
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="2" autocomplete="off">말 잘해
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="3" autocomplete="off">웃겨
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="4" autocomplete="off">귀여워
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="5" autocomplete="off">내꺼야
            </label><hr>
            <h3>아쉬웠던 점은?</h3><br>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="6" autocomplete="off">비매너
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="7" autocomplete="off">지각
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="8" autocomplete="off">잠수
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="9" autocomplete="off">기생충
            </label>
            <label class="btn btn-default">
                <input type="checkbox" name="dayof" value="10" autocomplete="off">징징이
            </label><hr>
            <form action="b.jsp" method="post">
                <input type="hidden" id="dayofs" name="dayofs">
                <!-- <input type="submit" id="send" value="클릭"> -->
            </form>
        </div>
	<div class="ta">	
	    <textarea  class='contents' id='contents' placeholder="메이트와의 만남, 어떠셨나요? 솔직한 평가를 부탁드려요." style="width:400px; height:100px; float: center;"></textarea>
	</div>
    

	<br/>
    <div style="text-align: center;">
        <div class="btn">
            <input type="button" class="btnreview" value="작성완료" id='btnreview'>
        </div>
    </div>   
</body>
</html>