<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>아아디/비밀번호 찾기</title>
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
      h1 {
        color: #6667AB;
        font-family: Verdana;
        text-align: center;
        text-decoration: underline #a3a4cf;
        text-underline-position:under;

    }
    .button{
      border: solid #6667AB;
      border-radius: 7px;
      background: #6667AB;
      color: white;
      font-family: Verdana;
      text-align: center;
      font-size: 25px;
      cursor: pointer;
      margin-left: 85px;
      padding: 9px;
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
    <button type="button" onclick="location.href='login.jsp'">←</button>
    <div id="main">
      <h1><br>Every-World<img src="logo.jpg" width="50"></h1>
      <br><br>
      <p><input  type="submit" class="button" value="아이디 찾기" onclick="location.href='id.jsp'">
      <input  type="submit" class="button" value="비밀번호 찾기" onclick="location.href='pw.jsp'"></p>
    </div>
  </body>
</html>

