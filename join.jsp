<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title></title>
<style>
h1 {
	text-align: center;
	color: white;
	margin-bottom: 5px;
}

body {
	background: rgb(102, 103, 171);
}

div {
	padding: 30px;
	margin: 10px;
	width: 650px;
	border-radius: 10px;
}

.box {
	width: 400px;
	padding: 40px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: white;
	text-align: cetner;
	border-radius: 10px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .2);
}

.box h1 {
	color: #5C5E99;
	font-weight: 500;
	margin-right: 37%;
	margin-top: 0;
	text-shadow: 0 3px 5px rgba(0, 0, 0, .2);
}

.box input[type="text"], .box input[type="password"] {
	border: 1px solid #5C5E99;
	border-radius: 5px;
	transition: 0.25s;
	outline: none;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .2);
}

button {
	border: 0;
	background: none;
}

button:hover {
	font-size: 300%;
	text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #5C5E99;
}

.box input[type="submit"] {
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
	box-shadow: 0 2px 5px rgba(0, 0, 0, .2);
}

.box input[type="text"]:focus, .box input[type="password"]:focus {
	padding: 15px;
	border-color: #bdd4e7;
}

.box input[type="submit"]:hover {
	background: linear-gradient(135deg, #6e8efb, #a777e3);
	box-shadow: 0 2px 5px rgba(0, 0, 0, .2);
	color: white;
	border: none;
}

form {
	margin-left: 25%;
}

select {
	width: 170px;
	padding: 2px;
	border: 1px solid #5C5E99;
	border-radius: 5px;
}

.btn_submit {
	background-color: rgb(102, 103, 171);
	color: white;
	background-position: 0px 0px;
	background-repeat: no-repeat;
	border: 0px;
	cursor: pointer;
	outline: 0;
}

.btn_submit2 {
	background-color: white;
	color: white;
	background-position: 0px 0px;
	background-repeat: no-repeat;
	border: 0px;
	cursor: pointer;
	outline: 0;
}

@media ( max-width :650px) {
	.box {
		weight: 10px;
		padding: 10px;
		background-color: rgb(102, 103, 171);
	}
	.box h1 {
		color: white;
		font-size: 150%;
	}
	form {
		color: white;
		font-size: 80%;
	}
	.box input[type="submit"] {
		border-color: white;
		color: white;
		padding: 5px 12px;
	}
	.btn_submit2 {
		background-color: rgb(102, 103, 171);
		color: rgb(102, 103, 171);
	}
	div {
		border: 4px solid white;
	}
	body {
		background: rgb(102, 103, 171);
	}
	.box input[type="submit"]:hover {
		background: white;
		box-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px violet;
	}
	button {
		color: white;
	}
}
</style>
</head>
<body>
	<div class="box">
		<button type="button" onclick="location.href='login.jsp'">←</button>
		<input id="night_day" class="btn_submit2" type="button" value="☆"
			onclick="
          if(this.value ==='☆'){
            document.querySelector('body').style.backgroundColor='#bdd4e7';
            document.querySelector('body').style.color='black';
            this.value = '★';
          }
          else{
            document.querySelector('body').style.backgroundColor=' rgb(102,103,171)';
            document.querySelector('body').style.color='black';
            this.value = '☆';
          }
        ">
		<form method="post" action="joinAction.jsp">
			<h1>회원등록</h1>
			<br> 아이디<br> <input type="text" minlength="5"
				onKeyup="this.value=this.value.replace(/[^a-zA0-9]/g, '')"
				onkeypress="if(event.keyCode==13){return false;}" name="userID" /><br>
			비밀번호<br> <input type="password" minlength="4"
				onkeypress="if(event.keyCode==13){return false;}"
				name="userPassword" /><br> 비밀번호 재확인<br> <input
				type="password" minlength="4"
				onkeypress="if(event.keyCode==13){return false;}"
				name="REuserPassword" /><br> 이름<br> <input type="text"
				onKeyup="this.value= this.value.replace(/[^ㄱ-힣a-zA]/g, '')"
				onkeypress="if(event.keyCode==13){return false;}" name="userName" /><br>
			생년월일<br> <input type="number" min="1920" max="2020"
				onKeyup="this.value=this.value.replace(/[^0-9]/g, '')"
				onkeypress="if(event.keyCode==13){return false;}"
				placeholder="년(4자)" name="userBirthYear" style="width: 70px;" /> <input
				type="number" min="1" max="12"
				onKeyup="this.value=this.value.replace(/[^0-9]/g, '')"
				onkeypress="if(event.keyCode==13){return false;}" placeholder="월"
				name="userBirthMonth" style="width: 35px;" /> <input type="number"
				min="1" max="31"
				onKeyup="this.value=this.value.replace(/[^0-9]/g, '')"
				onkeypress="if(event.keyCode==13){return false;}" placeholder="일"
				name="userBirthDate" style="width: 35px;" /><br> 성별<br> <label><input
				type="radio" name="userGender" value='남'/>남</label> <label> <input
				type="radio" name="userGender" value='여'/>여
			</label><br> 휴대전화<br> <input type="text"
				placeholder="ex) 01012345678" minlength="10" maxlength="11"
				onkeypress="if(event.keyCode==13){return false;}"
				onKeyup="this.value=this.value.replace(/[^0-9]/g, '')"
				name="userPhonenum" /><br> 비밀번호 찾기 힌트<br> <select
				name="userPasswordhintQ">
				<option>담당 교수님의 성함은?</option>
				<option>나의 보물 1호는?</option>
				<option>내가 가장 좋아하는 음식은?</option>
			</select><br> <input type="text" name="userPasswordhintA" /><br> <br>
			<input type="submit" value="가입" />
		</form>
	</div>
</body>
</html>

