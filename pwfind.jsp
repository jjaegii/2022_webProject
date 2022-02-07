<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>비밀번호 찾기</title>
<style>
#main {
	border: 10px solid white;
	border-radius: 10px;
	background: white;
	width: 600px;
	height: 400px;
	margin: auto;
	margin-top: 60px;
}

h3 {
	color: #6667AB;
	font-family: Verdana;
	margin: 10px;
}

.button {
	border: solid #6667AB;
	border-radius: 6px;
	background: #6667AB;
	color: white;
	text-align: center;
	font-size: 15px;
	cursor: pointer;
	width: fit-content;
	margin-left: 235px;
	margin-top: 15px;
	padding: 7px;
}

.txt {
	margin-left: 185px;
}

button {
	border: 0;
	background: none;
	color: white;
}

button:hover {
	font-size: 100%;
	text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #5C5E99;
}
</style>
</head>
<body bgcolor="#6667AB">
	<button type="button" onclick="location.href='pw.jsp'">←</button>
	<div id="main">
		<h3>
			Every-World<img src="logo.jpg" width="30">
		</h3>
		<br>
		<br>
		<br>
		<form method="post" action="pwchange.jsp">
			<div class="txt">비밀번호를 입력하세요.</div>
			<input type="password" name="userPassword" class="txt" size="30"> <br> <br>
			<div class="txt">비밀번호를 다시 입력하세요.</div>
			<input type="password" name="REuserPassword" class="txt" size="30">
			<p>
				<input type="submit" class="button" value="비밀번호 변경하기"
					onclick="location.href='pwchange.jsp'">
			</p>
		</form>
	</div>
</body>
</html>

