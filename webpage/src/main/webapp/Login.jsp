<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>     
                <form id="login" action="LoginCon" class="input-group" method="ppst">
                    <input type="text" class="input-field" name = "Login_email" placeholder="Enter Email" required>
                    <input type="password" class="input-field" name = "Login_pw" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">Login</button>
                </form>
                <form id="register" action="JoinCon" class="input-group" method="post">
                    <input type="text" name="email" class="input-field" placeholder="your Email" required>
                    <input type="text" name="name" class="input-field" placeholder="Your name" required>
                    <input type="password" name="pw" class="input-field" placeholder="Enter Password" required>
                    <input type="text" name="tel" class="input-field" placeholder="Enter Phone-number" required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        </div>
        
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
    </body>
</html> 
=======
<head>
<meta charset="utf-8">
<title>Document</title>
<link rel="stylesheet" href="assets/css/login.css" />
</head>
<body>
<!-- ㅇㅇㄹㅇㄹㄴㅇㄹ -->
	<div class="loginbox">
		<h1>로그인</h1>
		<form action="LoginCon">
			<label for="id" class="labelid" align="left">아이디</label>
			<input type="text"id="loginid" name="email"><br /> 
			<label for="pw" class="labelpw" align="right">패스워드</label>
			<input type="password" id="loginpw" name="pw">
			<div class="chk">
				<input type="checkbox" id="idchk"> <label for="idchk">아이디 저장</label>
			    <input type="checkbox" id="pwchk"> <label for="pwchk">비밀번호 저장</label>
			</div>
			<div class="search">
				<span class="text">아이디 또는 비밀번호를 잊으셨나요?</span> <a href="#">ID/PW찾기</a>
			</div>
			<div class="btnwrap">
				<a href="Join.jsp">회원가입</a> <input type="submit" id="loginbtn" value="로그인">
				
				<label for="loginbtn">로그인버튼</label> 
			</div>
		</form>
	</div>
</body>
</html>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/Bossam-Kimchi.git
