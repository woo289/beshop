<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>소켓 서버</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />

<style type="text/css">
#chat_box {
	width: 500px;
	height: 600px;
	border: 2px solid #00A8B3;
	text-align: right;
    font-size: 16px; 
    
}
.soso {
	margin-right: 10px;
    margin-top: 2px;
}

#msg {
	width: 470px;
	height:50px;
	text-align: right;
	border: 1px solid #00A8B3;
}
#name {
    position: absolute;
    left: 42px;
	text-align: right;
	border: 1px solid #00A8B3;
}

#msg_process {
    position: relative;
	width: 90px;
    left: 415px;
}

</style>
</head>
<body>

	<div id="chat_box" style="overflow: scroll;"></div>
	ID:  &nbsp;&nbsp;<input id="name" class="name" type="text"><br>
	Text:<input type="text" id="msg"><br>
	<button id="msg_process">전송</button><br>

	<script src="http://203.236.209.104:82/socket.io/socket.io.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
	<script>
		$(document).ready(function() {
			var socket = io("http://203.236.209.104:82");
			var chat_box = document.getElementById("#chat_box");
			
			//msg에서 키를 누를떄
			$("#msg").keydown(function(key) {
				//해당하는 키가 엔터키(13) 일떄
				if (key.keyCode == 13) {
					//msg_process를 클릭해준다.
					msg_process.click();
				}
			});
			
			//msg_process를 클릭할 때
			$("#msg_process").click(function(e) {
				//소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
				socket.emit("send_msg", $("#name").val());
				socket.emit("send_msg", $("#msg").val());
				//#msg에 벨류값을 비워준다.
				$("#msg").val("");
				$("#msg").focus();
				e.preventDefault();
				chat_box.scrollTop = chat_box.scrollHeight;
			});

			//소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
			socket.on('send_msg', function(msg) {
				//div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
				$('<div class="soso"></div>').text(msg).appendTo("#chat_box");
				
				
			});
			 socket.on('change name', function(name){
		            $('#name').val(name);
			        $('#msg').val(msg);
			      });
			 
			 chat_box.scrollTop = chat_box.scrollHeight; 
			
		});
	</script>
</body>
</html>