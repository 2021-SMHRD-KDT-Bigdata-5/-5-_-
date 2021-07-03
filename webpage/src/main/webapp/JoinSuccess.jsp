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
				회원가입을 축하합니다.<br>
				<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
<<<<<<< HEAD
				메세지시스템의 새로운 아이디는
				<%=request.getAttribute("id")%>입니다.
			</p>
			<div class="search"></div>
			<div class="btnwrap">
				<a href="BMain.jsp">메인으로</a>
				
				
			</div>
=======
				<li>메세지시스템의 새로운 아이디는 <%=request.getAttribute("id") %>입니다.
				</li>
				<li><button onclick='location.href=BMain.jsp'>시작하기</button></li>
			</ul>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/Bossam-Kimchi.git
		</nav>
	</div>
</body>
</html>