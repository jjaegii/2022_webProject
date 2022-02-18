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
    <meta charset="utf-8">
    <title>아이디 찾기</title>
        <style>
      #main{
        border:10px solid white;
        border-radius: 10px;
        background: white;
        width: 600px;
        height:400px;
        margin: auto;
        margin-top: 60px;
      }
      h3 {
        color: #6667AB;
        font-family: Verdana;
        margin: 10px;

    }
    .button{
      border: solid #6667AB;
      border-radius: 6px;
      background: #6667AB;
      color: white;
      text-align: center;
      font-size: 20px;
      cursor: pointer;
      width:fit-content;
      margin-left: 215px;
      margin-top:20px;
      padding: 7px;
      font-family: Verdana;

    }
    .txt{
    text-align: center;
    font-size: 20px;
    font-family: Verdana;

    }
    button{
      border: 0;
      background: none;
      color: white;
    }
    button:hover{
      font-size: 100%;
      text-shadow: 0 0 10px #fff,
                  0 0 20px #fff,
                  0 0 30px #5C5E99;
    }
    </style>
  </head>
  <body bgcolor="#6667AB">
  	<% 
  	String found_id = (String)request.getAttribute("found_id"); 
  	//System.out.println(found_id);
  	%>
    <button type="button" onclick="location.href='id.jsp'">←</button>
    <div id="ma*in">
      <h3>Every-World<img src="logo.jpg" width="30"></h3>
      <br><br><br><br>
      <h4> 당신의 ID는 </h4>
      <%=found_id %>
      <h4> 입니다. </h4>
      <p><input  type="submit" class="button" value="로그인 하러가기" onclick="location.href='login.jsp'"></p>
    </div>
  </body>
</html>

