<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">회원가입</h1>
	<form action="Login.jsp">
		<table align="center">
			<tr>
				<td><label for="joinid" class="labelid">아이디</label></td>
				<td><input type="text" id="joinId"><input type="button" value="중복확인"></td>
			</tr>
			<tr>
				<td><label for="joinpw" class="labelpw">패스워드</label></td>
				<td><input type="password" id="joinPw"></td>
			</tr>
			<tr>
				<td><label for="joinName" class="labelName">이름</td>
				<td><input type="text" id="name"></td>
			</tr>
			<tr>
				<td><label for="joinNum" class="labelNum">연락처</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><label for="joinBrith" class="labelBrith">생년월일</td>
				<td><input type="date"></td>
			</tr>
			<td colspan=2 align = "center"><input type="submit" id="jbtnb" value="가입하기"></td>
		</table>
		
	</form>

</body>
</html>