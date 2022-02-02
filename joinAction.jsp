<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userBirthYear" />
<jsp:setProperty name="user" property="userBirthMonth" />
<jsp:setProperty name="user" property="userBirthDate" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userPhonenum" />
<jsp:setProperty name="user" property="userPasswordhintQ" />
<jsp:setProperty name="user" property="userPasswordhintA" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user.getUserID(),user.getUserPassword(),user.getUserName(),user.getUserBirthYear(),user.getUserBirthMonth(),user.getUserBirthDate(),user.getUserGender(),user.getUserPhonenum(),user.getUserPasswordhintQ(),user.getUserPasswordhintA());
		if(result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		else if(result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('중복되는 아이디입니다.')");
			script.println("history.back()"); // 이전 페이지로 사용자 돌려보내기
			script.println("</script>");
		}
		else if(result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 오류 발생!')");
			script.println("history.back()"); // 이전 페이지로 사용자 돌려보내기
			script.println("</script>");
		}
	%>
</body>
</html>
