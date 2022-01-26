<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width" , initial_scale="1">
<!¹ÝÀÀÇüÀ¥>
<link rel="stylesheet" href="css/bootstrap.css">
<!CSS ÇÁ·¹ÀÓ¿öÅ©>
<title>JSP ¿¿¿ ¿¿</title>
</head>
<body>
	<form method="post" action="loginAction.jsp">
		<h3 style="text-align: center;">¿¿¿ ¿¿</h3>
		<input type="text" class="form-control" placeholder="¾ÆÀÌµð"
			name="userID" maxlength="20">
		<input type="password"
			class="form-control" placeholder="¿¿¿" name="userPassword"
			maxlength="20">
		<input type="submit"
			class="btn btn-primary form-control" value="¿¿¿¿">
	</form>
</body>
</html>
