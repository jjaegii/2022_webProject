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
            background: #6667AB;
            color: white;
            border: none;
        }
        .comunication{
            margin: 10px;
        }
        /*댓글 기능 CSS*/
        #commentInfo{
            margin: 10px;
            margin-top: 20px;
            width: 100%;
            font-size: 15px;
            color: #5c5c68;
        }
        .comment-input{
            margin-top: 5px;
            width: 90%;
            height: 26px;
            border: 2px solid #6667AB;
            border-radius: 10px;
        }
    </style>
    <!-- <script>
        const inputBar = document.querySelector('.comment-input');
        const rootDiv = document.querySelector('.comments');
        const btn = document.querySelector('#submit');
        const mainCommentCount = document.querySelector('#count');

        /*댓글 단 시간 표시*/
        function generateTime(){
            const date = new Data();
            const year = date.getFullYear();
            const month = date.getMonth();
            const wDate = date.getDate();
            const hour = date.getHours();
            const min = date.getMinutes();

            const time = year+'-'+month+'-'+wDate+' '+hour+':'+min;
            return time;
        }

        /*댓글 보여주기*/
        function showComment(comment){
            const userName = document.createElement('div');
            const inputValue = document.createElement('span');
            const showTime = document.createElement('div');
            const voteDiv = document.createElement('div');
            const countSpan = document.createElement('span');
            const commentList = document.createElement('div');

            //삭제버튼 만들기
            const delBtn = document.createElement('button');
            delBtn.className ="deleteComment";
            delBtn.innerHTML="삭제";
            commentList.className = "eachComment";
            userName.className="name";
            inputValue.className="inputValue";
            showTime.className="time";
            voteDiv.className="voteDiv";
            //유저네임가져오기
            userName.innerHTML = generateUserName();
            userName.appendChild(delBtn);
            //입력값 넘기기
            inputValue.innerText = comment;
            //타임스템프찍기
            showTime.innerHTML = generateTime();
            countSpan.innerHTML=0;

            //댓글뿌려주기
            //commentList.appendChild(userName);
            commentList.appendChild(inputValue);
            commentList.appendChild(showTime);
            commentList.appendChild(voteDiv);
            rootDiv.prepend(commentList);
            voteUp.addEventListener("click",numberCount);
            voteDown.addEventListener("click",numberCount);
            delBtn.addEventListener("click",deleteComments);
            console.dir(rootDiv);
        }

        //버튼만들기+입력값 전달
        function pressBtn(){
            const currentVal = inputBar.value;
            if(!currentVal.length){
                alert("댓글을 입력해주세요><");
            }
            else{
                showComment(currentVal);
                mainCommentCount.innerHTML++;
                inputBar.value ='';
            }
        } 
        btn.onclick = pressBtn;
    </script> -->
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
        <input type="submit"  class="edit" value="수정하기"></input>
        <input type="submit" class="delete" value="삭제하기"></input>
        <p style=clear:both;></p>
    </div>
    <div class="board_main">
        <div class="article">
            <p>
                히히 여러분 개강이 얼마남지 않았어요
                완전 절망적인데 저는 왜 바쁜거같죠?
                알바 그냥 다 관두고싶네여 히히히히
                알바 두탕은 무슨 욕심내지 않을게여 그냥 하 시밧바사사빗리ㅏ빌
                히히ㅣ히ㅣ히히히힣히 여러분 열심히 삽시다 이번학기
                그렇다고 너무 공부만 하지마요ㅠ 참치마요ㅠ
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
        <input type="submit" class="comment-count" value="댓글"></input>
    </div>

    <div class="commentInfo">
        <div class="comment-count">댓글<span id="count">0</span></div>
        <input class="comment-input" placeholder="댓글을 입력해주세요><!">
        <input type="submit" id="submit" value="등록"></input>
    </div>

    <div class ="comments">
        <span id="userName">user1</span><br>
        <span id="inputValue">하 개강하기 싫어 학교 폭발해줘</span><br>
        <span id="showTime">2022-02-24</span><br>
    </div>
</body>
</html>