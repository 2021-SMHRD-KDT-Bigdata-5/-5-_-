
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
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
			<input type="text" name="email"><br /> 
			<label for="pw" class="labelpw" align="right">패스워드</label>
			<input type="password" name="pw">
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