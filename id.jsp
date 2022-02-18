<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>아이디 찾기</title>
</head>
<body bgcolor="#6667AB">
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
	margin-left: 250px;
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
	<button type="button" onclick="location.href='idpw.jsp'">←</button>
	<div id="main">
		<h3>
			Every-World<img src="logo.jpg" width="30">
		</h3>
		<br> <br> <br>
		<form method="post" action="idfind.jsp">
			<div class="txt">이름을 입력하세요.</div>
			<input type="text" name="userName" class="txt" size="30" placeholder="ex)가나다"
				onKeyup="this.value= this.value.replace(/[^ㄱ-힣a-zA]/g, '')">
			<br> <br>
			<div class="txt">전화번호를 입력하세요.</div>
			<input type="text" name="userPhonenum" class="txt" size="30" placeholder="ex)01012345678"
				maxlength="11"
				onKeyup="this.value=this.value.replace(/[^0-9]/g, '')">
			<p>
				<input type="submit" class="button" value="아이디 찾기"
					onclick="location.href='idfindAction.jsp'">
			</p>
		</form>
	</div>
</body>
</html>

