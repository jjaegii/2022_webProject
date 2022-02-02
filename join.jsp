<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" , initial_scale="1"> <!반응형웹>
    <title>회원가입</title>
    <style>
    h1{
      text-align: center;
      color:white;
      margin-bottom: 5px;
    }
    body{
         background: #5C5E99;
    }
    div{
      padding:30px;
      margin:10px;
      width:650px;
      -webkit-border-radius:10px;
    }
    .box{
      width: 400px;
      padding: 40px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background: white;
      text-align:cetner;
      border-radius:10px;
    }
    .box h1{
      color:#5C5E99;
      font-weight:500;
      margin-right: 37%;
      margin-top: 0;
    }
    .box input[type = "text"],.box input[type = "password"]{
      border: 1px solid #5C5E99;
      border-radius:5px;
      transition: 0.25s;
      outline: none;
    }
    .box input[type = "submit"]{
    border: 0;
    background: none;
    display: block;
    text-align: center;
    border: 2px solid #5C5E99;
    padding: 10px 20px;
    outline: none;
    color: #5C5E99;
    border-radius: 20px;
    transition: 0.25s;
    cursor: pointer;
    margin-left: 50px;
    }
    .box input[type = "text"]:focus,.box input[type = "password"]:focus{
      padding: 30px;
      border-color: #bdd4e7;
    }
    .box input[type = "submit"]:hover{
        background: linear-gradient(120deg,#bdd4e7,#5C5E99);
        color: white;
        border: none;
    }
    form{
      margin-left:25%;
    }
    select {
     width:170px;
     padding:2px;
     border:1px solid #5C5E99;
     border-radius:5px;
    }
    </style>
  </head>
  <body>
    <input id="night_day" type="button" value="☆" onclick="
      if(this.value ==='☆'){
        document.querySelector('body').style.backgroundColor='#bdd4e7';
        document.querySelector('body').style.color='black';
        this.value = '★';
      }
      else{
        document.querySelector('body').style.backgroundColor='#5C5E99';
        document.querySelector('body').style.color='black';
        this.value = '☆';
      }
    ">
    <div  class="box">
      <form method="post" action="joinAction.jsp">
          <h1>회원등록</h1><br>
            아이디<br>
            <input type="text" name="userID"><br>
            비밀번호<br>
            <input type="password" name="userPassword"><br>
            비밀번호 재확인<br>
            <input type="password" name="REuserPassword"><br>
            이름<br>
            <input type="text" name="userName"><br>
            생년월일<br>
            <input type="text" placeholder="년(4자)" name="userBirthYear" style= "width:70px;">
            <input type="text" placeholder="월" name="userBirthMonth" style= "width:35px;">
            <input type="text" placeholder="일" name="userBirthDate" style= "width:35px;"><br>
            성별<br>
            <label><input type="radio" name="userGender">남</label>
            <label> <input type="radio" name="userGender">여</label><br>
            휴대전화<br>
            <input type="text" placeholder="ex) 01012345678" name="userPhonenum" style ="color:grey"s><br>
            비밀번호 찾기 힌트<br>
            <select name="userPasswordhintQ">
              <option>담당 교수님의 성함은?</option>
              <option>나의 보물 1호는?</option>
              <option>내가 가장 좋아하는 음식은?</option>
            </select><br>
            <input type="text" name="userPasswordhintA"><br><br>
            <input type="submit" value="가입">
    </form>
    </div>
  </body>
</html>

