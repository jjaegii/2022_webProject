<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <style>
       header {
            background: #6667AB;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        body{
            margin:0;
        }
        .log{
            border: none white;
            border-radius: 4px;
            background: white;
            color: #6667AB;
            text-align: center;
            font-size: 13px;
            cursor: pointer;
            width: fit-content;
            padding: 4px;
            font-weight: bold;
            margin-right: 10px;
        }
        .header2 {
            color: white;
	        font-family: Verdana;
            font-weight: bold;
            font-size:25px;
            margin-left:40%;
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
        table{
            border-collapse:collapse;
            border-spacing: 0;
            margin-left: 10px;
            border: 2px solid #6667AB;
        }
        th{
            border: 2px solid #6667AB;
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
        .write{
            border:none;
            margin-left:1%;
        }
        a{
            color:white;
        }
        a:hover{
            color:black;
            background-color:rgb(216, 216, 216);
        }
        .num{
            border:none;
            margin-left:20%;
            background-color: white;
            color:grey;
        }
        .num:hover{
            color:#6667AB;
        }
        table.table{
            margin-left:0;
        }
        @media  ( min-width :800px){
            table.table{
                margin-left:7%;
            }
            .write{
                margin-left:7%;
            }
        }
    </style>
     <header>    
        <h1 class="header2">할 말 있으면 해봐</h1>
        <input type="submit" class="log" value="로그아웃"
					onclick="location.href='login.jsp'">
    </header>
    <title></title>
  </head>
  <body>
    <input type="button" class="write" value="글쓰기" onclick="location.href='writingboard.jsp'">
    _______ 님 로그인 중
    <table class="table">
        <thead>
            <tr>
                <th>번호</th>
                <th style="width: 400px">제목</th>
                <th>작성자</th>
                <th>날짜</th>
            </tr>
            <tr>
                <td>3</td>
                <td>맘에 안드네</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
            <tr>
                <td>2</td>
                <td>숫자 왜 안바뀜</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
            <tr>
                <td>1</td>
                <td>이거 어떻게 해?</td>
                <td>혜민</td>
                <td>2022.02.14</td>
            </tr>
        </thead>
    </table>
    <br>
    <ui>
        <input type="button" class="num" value="1">
        <input type="button" class="num" value="2">
        <input type="button" class="num" value="3">
    </ui>
  </body>
</html>