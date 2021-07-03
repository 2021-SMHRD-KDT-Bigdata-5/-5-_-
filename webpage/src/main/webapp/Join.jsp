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
			<form action="JoinCon" method="post">
				<table class="jt">
					<tr>
<<<<<<< HEAD
						<td><label for="joinId" class="labelid"></label></td>
						<td><input type="text" id="joinId" name="email" placeholder = "이메일"><input
=======
						<td><label for="joinId" class="labelid">아이디</label></td>
						<td><input type="text" id="joinId" name="email"><input
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/Bossam-Kimchi.git
							type="button" value="중복확인"></td>
					</tr>
					<tr>
						<td><label for="joinPw" class="labelpw"></label></td>
						<td><input type="text" id="joinPw" name="name" placeholder = "이름"></td>
					</tr>
					<tr>
						<td><label for="joinName" class="labelName"></td>
						<td><input type="password" id="joinName" name="name" placeholder = "패스워드"></td>
					</tr>
					<tr>
						<td><label for="joinNum" class="labelNum"></td>
						<td><input type="text" id="joinNum" name="tel" placeholder = "전화번호"></td>
					</tr>
						<td colspan=2 align="center"><input type="submit" id="jbtnb"
							value="가입하기"></td>
					</tr>


				</table>

			</form>
		</div>
</body>
</html>