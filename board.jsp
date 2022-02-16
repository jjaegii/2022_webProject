<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <style>
        h1{
            text-align:center;
        }
        .header {
        text-align: center;
        color: #ff056d;
        animation: hue 3s infinite linear;
        }
        @keyframes hue {
        from {
            filter: hue-rotate(0deg);
        }
        to {
            filter: hue-rotate(-360deg);
        }
        }
        .box {
            width: 80%;
            height: 75%;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: cetner;
            border-radius: 10px;
        }
        table{
            border-collapse:collapse;
            border-spacing: 0;
            margin-left: 10px;
            border: 2px solid grey;
        }
        th{
            border: 2px solid grey;
        }
        td{
            border: 1px solid white;
            text-align:center;
            padding: 5px;
            width: 200px;
        }
        tr:hover{
            background-color: rgb(206, 206, 206);
        }
        button{
        border: 0;
        background: none;
        }
        button:hover{
        font-size: 300%;
        text-shadow: 0 0 10px #fff,
                    0 0 20px #fff,
                    0 0 30px #5C5E99;
        }
        input[type="button"]{
            border:none;
            margin-left:80%
        }
        a{
            color:white;
        }
        a:hover{
            color:black;
            background-color:rgb(216, 216, 216);
        }
    </style>
    <script>
        function num(){
            var i = 0;
            i = i+1;
            document.write(i);
        }
    </script>
    
    <title></title>
  </head>
  <body class = "box">
    <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;________ 님 접속 중</a> 
    <input type="button" value="로그아웃"><br>
    <button type="button" onclick="location.href='login.jsp'">←</button>
    <h1 class="header">할 말 있으면 해봐</h1>
    <input type="button" value="글쓰기">
    <table class="table">
        <thead>
            <tr>
                <th>번호</th>
                <th style="width: 400px">제목</th>
                <th>작성자</th>
                <th>날짜</th>
            </tr>
            <tr>
                <td><script>num();</script></td>
                <td>맘에 안드네</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
            <tr>
                <td><script>num();</script></td>
                <td>숫자 왜 안바뀜</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
            <tr>
                <td><script>num();</script></td>
                <td>이거 어떻게 해?</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
        </thead>
    </table>
  </body>
</html>
