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
						<th class="lbel"><label for="joinId" >아이디</label></th>
						<td><input type="text" id="joinId" name="id">
						<input type="button" value="중복확인" id="dubbleChe"></td>
					</tr>
					<tr>
						<th class="lbel"><label for="joinPw" >패스워드</label></th>
						<td><input type="password" id="joinPw" name="pw"></td>
					</tr>
					<tr>
						<th class="lbel"><label for="joinName">이름</th>
						<td><input type="text" id="joinName" name="name"></td>
					</tr>
					<tr>
						<th class="lbel"><label for="joinTel" >연락처</th>
						<td><input type="text" id="joinTel" name="tel"></td>
					</tr>
					
				</table>
				<tr>
						<td colspan=2 align="center"><input type="submit" id="jbtnb"
							value="가입하기"></td>
					</tr>
			</form>
		</div>
</body>
</html>