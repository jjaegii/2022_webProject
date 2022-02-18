<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userPhonenum" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
   if (user.getUserName() == null || user.getUserPhonenum() == null) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('입력이 안된 사항이 있습니다.')");
         script.println("history.back()"); // 이전 페이지로 사용자 돌려보내기
         script.println("</script>");
      } else {
         UserDAO userDAO = new UserDAO();
         String result = userDAO.idfind(user.getUserName(), user.getUserPhonenum());
         System.out.println(result);
         if(result==null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()"); // 이전 페이지로 사용자 돌려보내기
            script.println("</script>");
         }
         else{
            //화면에 아이디 출력하기
           
            response.sendRedirect("idfind.jsp?found_id=" + "result");
   			PrintWriter script = response.getWriter();
			script.println("<script>");
   			script.println("location.href = 'idfind.jsp'");
   			script.println("</script>");
   		}
   	}
	
   %>
</body>
</html>