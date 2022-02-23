<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> <!import>
<%@ page import="java.io.PrintWriter" %> <!import>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/> <!클래스 사용 여기선 클래스를 bean이라 부름>
<jsp:setProperty name="user" property="userID"/> <!데이터값을 설정할때 사용>
<jsp:setProperty name="user" property="userPassword"/> <!데이터값을 설정할때 사용>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if(result == 1) {
			%>
			<script>
				location.href = 'board.jsp?<%= user.getUserID() %>'
			</script>
			<%
		}
		else if(result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()"); // 이전 페이지로 사용자 돌려보내기
			script.println("</script>");
		}
		else if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
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
