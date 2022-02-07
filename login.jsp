<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="login_style.css">
</head>
<body>
   <div id="login-box">
      <h2>Hello World</h2>
      <form method="post" action="loginAction.jsp">
         <div class="idForm">
            <input type="text" placeholder="ID" name="userID">
         </div>
         <div class="passForm">
            <input type="password" placeholder="password" name="userPassword">
         </div>
         <input type="submit" class="btn" value="Login">
         <ul>
            <li><a href='join.jsp' style="text-decoration-line: none; color: #6667AB;"><b>회원등록</b></a></li>
                 <li><a href='idpw.jsp' style="text-decoration-line: none; color: #6667AB;"><b>아이디/비밀번호 찾기</b></a></li>
         </ul>
      </form>
   </div>
</body>
</html>

