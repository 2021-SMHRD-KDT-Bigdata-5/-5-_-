<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="assets/css/Join.css" />
<title>Insert title here</title>
</head>
<body>
		<div class="Joinbox">
			<h1>회원가입</h1>
			<hr>
			<form action="JoinCon" method="post">
				<table class="jt">
					<tr>
						<td><label for="joinId" class="labelid">아이디</label></td>
						<td><input type="text" id="joinId" name="id"><input
							type="button" value="중복확인"></td>
					</tr>
					<tr>
						<td><label for="joinPw" class="labelpw">패스워드</label></td>
						<td><input type="password" id="joinPw" name="pw"></td>
					</tr>
					<tr>
						<td><label for="joinName" class="labelName">이름</td>
						<td><input type="text" id="joinName" name="name"></td>
					</tr>
					<tr>
						<td><label for="joinTel" class="labelNum">연락처</td>
						<td><input type="text" id="joinTel" name="tel"></td>
					</tr>
					<tr>
						<td colspan=2 align="center"><input type="submit" id="jbtnb"
							value="가입하기"></td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>