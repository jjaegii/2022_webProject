<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial_scale="1">
<!반응형웹>
<link rel="stylesheet" href="css/bootstrap.css">
<!CSS 프레임워크>
<title>JSP 로그인 연습</title>
</head>
<body>
	<form method="post" action="loginAction.jsp">
		<h3 style="text-align: center;">로그인 화면</h3>
		<input type="text" class="form-control" placeholder="아이디"
			name="userID" maxlength="20">
		<input type="password"
			class="form-control" placeholder="비밀번호" name="userPassword"
			maxlength="20">
		<input type="submit"
			class="btn btn-primary form-control" value="로그인">
	</form>
</body>
</html>
