<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>게시판 글쓰기</title>
</head>
<body>
    <style>
        header {
            padding: 1rem;
            background: #6667AB;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 35px;
        }
        h3{
            color: white;
	        font-family: Verdana;
	        text-align: center;
            font-weight: bold;
        }
        .title{
            border:1.5px solid #6667AB;
            border-radius: 2px;
            padding: 7px;
            font-size: medium;
            width: 90%;
            display:block;
            margin: auto;
            margin-bottom: 20px;
            margin-top: 15px;
            
        }
        .button{
            border: solid #6667AB;
            border-radius: 4px;
            background: #6667AB;
            color: white;
            text-align: center;
            font-size: 14px;
            cursor: pointer;
            width: fit-content;
            float: right;
            margin-right: 3%;
            font-weight: bold;
            padding-top: 4px;
            padding-right: 7px;
            padding-bottom: 4px;
            padding-left: 7px;
            margin-bottom: 5%;
        }
        button {
            border: 0;
            background: none;
            color: white;
        }

        button:hover {
            font-size: 100%;
            text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #5C5E99;
        }
        .log{
            border: solid white;
            border-radius: 4px;
            background: white;
            color: #6667AB;
            text-align: center;
            font-size: 13px;
            cursor: pointer;
            width: fit-content;
            padding: 4px;
            font-weight: bold;
        }
        .txt{
            border:1.5px solid #6667AB;
            border-radius: 2px;
            padding: 7px;
            width: 90%;
            height: 320px;
            display:block;
            margin: auto;
            margin-bottom: 15px;
        }
    </style>
    <header>    
        <button type="button" onclick="location.href='board.jsp'">←</button>
        <h3>게시판 글쓰기</h3>
        <input type="submit" class="log" value="로그아웃"
					onclick="location.href='login.jsp'">
    </header>
    
    <br>
    <input type="text" class="title" placeholder="제목을 입력하세요."> 
    <textarea class="txt" placeholder="내용을 입력하세요."></textarea>
    <input type="submit" class="button" value="업로드"
					onclick="location.href='board.jsp'">
</body>
</html>