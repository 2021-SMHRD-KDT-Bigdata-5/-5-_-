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
		<h1>ȯ���մϴ�!</h1>
		<!-- Menu -->
		<nav id="Update">
			<p align="center">		
				<%=request.getAttribute("email")%>�� ȸ������ �����մϴ�.
			</p>
			<div class="search"></div>
			<div class="btnwrap">
				<a href="BMain.jsp">��������</a>


			</div>
		</nav>
	</div>
</body>
</html>