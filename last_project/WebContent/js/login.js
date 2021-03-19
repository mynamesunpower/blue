$(document).ready(function(){
			$('.btn_login').on('click', login);
			
			var input = document.getElementById("password");
			input.addEventListener("keyup", function(event) {
			  if (event.keyCode === 13) {
			    event.preventDefault();
			    document.getElementById("btn_login").click();
			  }
			});
			
			$('#findPassBtn').off().on('click', function(evt) {
				
				evt.stopPropagation();
				
				if ($('#email_forgot').val().length <= 0) {
					alert('이메일 주소를 입력해 주세요.')
					return;
				}
				else {
					$.ajax({
						type: 'post',
						url: '../member/memberPassFind.do',
						contentType: 'application/x-www-form-urlencoded;charset=utf-8',
						data: {'email': $('#email_forgot').val()},
						success: function(result) {
							const msg = result.split('/')
							alert(msg[0])
							const url = msg[1].split('@')[1]
							console.log(url)
							location.replace('https://'+url)
						},
						error: function(err) {
							console.log(err)
						}
					})	
				}
			});
		});

		function login() {
			alert('로그인 버튼 클릭')

			if($.trim($('#loginId').val())==''){
        		alert('아이디를 입력해 주세요');
        		$('#loginId').focus();
        		return;
        	}
			if($.trim($('#password').val())==''){
        		alert("비밀번호입력해주세요.");
        		$('#password').focus();
        		return;
        	}

			if ($('#loginId').val() !== '' && $('#password').val() !== '') {

				

				$.ajax({
	        		type : 'post',
	        		async : true,
	        		url : "../member/memberLogin.do",
	        		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
	        		data : {
	        			'id' : $('#loginId').val(),
	        			'password' : $('#password').val()
	        		},
	        		success : function(result){
	        			console.log(result)
	        			if(result == 0){
	        				alert('아이디와 비밀번호가 일치하지 않습니다.');
	        				$("#loginId").val("");
	        				$("#password").val("");

	        			}
	        			else if(result==1){
	        				location.replace(document.location.href);
	        			}
	        			else if(result=="admin") {
	        				location.replace('../admin_index.jsp')
	        			}
	        			else {
	        				$("#loginId").val("");
	        				$("#password").val("");
	        				alert('해당하는 회원 정보가 없습니다.')
	        			}
	        		},
	        		error : function(err){console.log("에러요" + err)}
	        	});
			}
			
			
			
		}