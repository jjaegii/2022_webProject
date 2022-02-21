<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        header{
            background: #6667AB;
            text-align: center;
            color: white;
            display: flex;
            justify-content: space-between;
        }
        .board_main{
            display :grid;
            grid-template-columns: 3fr 1fr;
        }
        .article{
            padding: 20px;
            padding-top: 15px;
            min-width: 300px;
            color: #5c5c68;
        }
        h1{
            padding: 20px;
            margin-top: 30px;
            color: #6667AB;
            text-align: center;
        }
        .board_contianer{
            padding-left: 25px;
            display: block;
            float: left;
            font-size: 15px;
            color: #5c5c68;
        }
        .board_option{
            position: relative;
            border-bottom: 1px solid #7b7b8b;
        }
        .edit{
            margin: 5px;
            float: right;
        }
        .delete{
            margin: 5px;
            float: right;
        }
        .list h3{
            margin: 0;
            text-align: center;
        }
        ul{
            border-left: 1px solid #7b7b8b;
            padding: 30px;
            font-size: 13px;
            list-style: none;
            margin: 0;
            min-width: 150px;
            color: #5c5c68;
        }
        input[type="submit"]{
            width: 80px;
            height: 30px;
            border: 2px solid #6667AB;
            border-radius: 10px;
            background: none;
            color: #6667AB;
            cursor: pointer;
            font: 10pt bold;
        }
        #logout{
            margin-top: 20px;
            margin-right: 10px;
            background: white;
            color: #6667AB;
            border-radius: 10px;
            text-align: center;
            font: 10pt bold;
            cursor: pointer;
        }
        .back{
            border: none;
            background: none;
            color: white;
            font: 20pt bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            /* background: linear-gradient(135deg, #6e8efb, #a777e3); */
            background: #6667AB;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <header>
        <button type="button" class="back" onclick="location.href='board.jsp'">←</button>
        <h2>Hello World</h2>
        <input type="submit" id="logout" value="로그아웃" onclick="location.href='login.jsp'">
    </header>
    <br>
    <h1>글 제목이 들어올 공간이야</h1>
    <div class="board_contianer">
        <span class="writer"><h4>2022.02.18&nbsp;&nbsp;컴공여신이 될 사람</h4></span>
    </div>
    <div class="board_option">
        <input type="submit"  class="edit" value="수정하기" onclick="colorChange(this);"></input>
        <input type="submit" class="delete" value="삭제하기"></input>
        <p style=clear:both;></p>
    </div>
    <div class="board_main">
        <div class="article">
            <p>
                안녕하세요 ㅎㅎ
                이번 컴퓨터공학과에 새로 들어오게 된 안수진이라 합니다
                선배님들 잘 부탁 드립니다^^
                저는 오늘 백신3차를 맞았는데 꽤나 멀쩡합니다
                강인하게 잘 버티고 있다 이말이죠 ㅋㅋ
                이 글은 제가 수정하고 푸시할때마다 바뀔 얘정인데
                재미있게 봐주세요^^
                구독과 좋아요는 저에게 힘이 된답니다 히히
                안녕하세요 ㅎㅎ
                이번 컴퓨터공학과에 새로 들어오게 된 안수진이라 합니다
                선배님들 잘 부탁 드립니다^^
                저는 오늘 백신3차를 맞았는데 꽤나 멀쩡합니다
                강인하게 잘 버티고 있다 이말이죠 ㅋㅋ
                이 글은 제가 수정하고 푸시할때마다 바뀔 얘정인데
                재미있게 봐주세요^^
                구독과 좋아요는 저에게 힘이 된답니다 히히
            </p>
        </div>
        <div class="list">
            <ul>
                <h3>게시물 목록</h3>
                <li>이전 게시물이다 궁금하징??</li>
                <li>다음 게시물이다</li>
                <li>다다음 게시물인데 보고싶다</li>
            </ul>
        </div>
    </div>
    <br>
    <div class="comunication">
        <input type="submit" value="공감♥"></input>
        <input type="submit" value="댓글"></input>
    </div>
</body>
</html>