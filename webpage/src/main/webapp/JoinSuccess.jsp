<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bossam Kimchi</title>
<link rel="stylesheet" href="assets/css/joinsuccess.css" />
</head>
<body>
	<div id="wrapper">
		<h1>환영합니다!</h1>
		<!-- Menu -->
		<nav id="Update">
			<p align="center">		
				<%=request.getAttribute("email")%>님 회원가입 축하합니다.
			</p>
			<div class="search"></div>
			<div class="btnwrap">
				<a href="BMain.jsp">메인으로</a>


			</div>
		</nav>
	</div>
</body>
</html>