<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>축제로 | 고객센터 채팅</title>

<script src="/js/jquery-3.5.1.min.js"></script>

<style type="text/css">
    
    body {
        text-align: center;
    }
    
    #messageTextArea {
        
        width: 300px;
        height: 540px;
        resize: none;
        margin-bottom: 10px;
        overflow-y: auto;
    }
    
    form {
    }
    
    #textMessage {
        width: 240px;
        height: 30px;
    }
    
    #send {
        width: 50px;
        height: 30px;
    }
    
</style>


</head>
    
<body>
	<br/>
	<!-- 서버와 메시지를 주고 받는 콘솔 텍스트 영역 -->
	<textarea id="messageTextArea" rows="10" cols="50" disabled="disabled"></textarea>
    	<!-- 채팅 영역 -->
	<form>
		<!-- 텍스트 박스에 채팅의 내용을 작성한다. -->
		<input id="textMessage" type="text" onkeydown="return enter()">
		<!-- 서버로 메시지를 전송하는 버튼 -->
		<input id="send" onclick="sendMessage()" value="보내기" type="button">
	</form>
	<script type="text/javascript">
	
		// 서버의 broadsocket의 서블릿으로 웹 소켓을 한다.
		var webSocket = new WebSocket("ws://localhost:8080/broadsocket");
		// 콘솔 텍스트 영역
		var messageTextArea = document.getElementById("messageTextArea");
        
        
		// 접속이 완료되면
		webSocket.onopen = function(message) {
			// 콘솔에 메시지를 남긴다.
			messageTextArea.value += "연결 중입니다.\n";
		};
        
		// 접속이 끝기는 경우는 브라우저를 닫는 경우이기 떄문에 이 이벤트는 의미가 없음.
		webSocket.onclose = function(message) {
            // 부모 창에 console.log(찍어보기)
            /* $.ajax({
				type: 'post',
				url: '../admin/chatClose.do',
				contentType:'application/x-www-form-urlencoded;charset=euc-kr', // 한글처리
				data: {
					'id': request.getParameter('memberId')
				},
				success: function(result) {
					console.log('닫을 때 성공')
				},
				error: function(error) {
					console.log(error)
				},
				complete: function(complete) {
					console.log('닫기가 끝나따')
				}
			}) */
		};
        
		// 에러가 발생하면
		webSocket.onerror = function(message) {
			// 콘솔에 메시지를 남긴다.
			messageTextArea.value += "에러\n";
		};
        
        
		// **서버로부터 메시지가 도착하면 콘솔 화면에 메시지를 남긴다.
		webSocket.onmessage = function(message) {
			messageTextArea.value += " 운영자 ▷ " + message.data + "\n\n";
			document.documentElement.scrollTop = document.body.scrollHeight;
		};
        
    
        function hasVertScrollbar(elem) 
        { 
            //see if there is a scrollbar, return true if there is
            return elem.clientHeight < elem.scrollHeight;
        }
        
        
		// 서버로 메시지를 발송하는 함수
		// Send 버튼을 누르거나 텍스트 박스에서 엔터를 치면 실행
		function sendMessage() {
            
			// 텍스트 박스의 객체를 가져옴
			let message = document.getElementById("textMessage");
            
            var val = messageTextArea.value.replace(/^\n+/, "");
            
			// 콘솔에 메세지를 남긴다.
            val += "  ----------- " + (new Date()).toLocaleTimeString()+ " -----------\n\n" +
                " 아이디 ▶ " + message.value + "\n\n";
            
            messageTextArea.value = val;
			//messageTextArea.value += "(me) => " + message.value + "\n";
			// 소켓으로 보낸다.
            
            var padding = [];
            while (!hasVertScrollbar(messageTextArea)) {
                padding.push("\n");
                messageTextArea.value = "\n" + messageTextArea.value;
            }
            padding.pop();
            
            messageTextArea.value = padding.join("") + val;
            
            messageTextArea.scrollTop = messageTextArea.scrollHeight;
            
			webSocket.send(message.value);
			// 텍스트 박스 초기화
			message.value = "";
		}
        
        
		// 텍스트 박스에서 엔터를 누르면
		function enter() {
			// keyCode 13은 엔터이다.
			if (event.keyCode === 13) {
				// 서버로 메시지 전송
				sendMessage();
				// form에 의해 자동 submit을 막는다.
				return false;
			}
			return true;
		}
		
		
	</script>
	<script type="text/javascript">  
    var Request = function() {  
        this.getParameter = function(name) {  
            var rtnval = '';  
            var nowAddress = unescape(location.href);  
            var parameters = (nowAddress.slice(nowAddress.indexOf('?') + 1,  
                    nowAddress.length)).split('&');  
            for (var i = 0; i < parameters.length; i++) {  
                var varName = parameters[i].split('=')[0];  
                if (varName.toUpperCase() == name.toUpperCase()) {  
                    rtnval = parameters[i].split('=')[1];  
                    break;  
                }  
            }  
            return rtnval;  
        }  
    }  
    var request = new Request();  
</script>  
</body>
</html>