<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Update">
			<ul class="actions vertical">
				<li><h1>환영합니다!</h1></li>
				<li>회원가입을 축하합니다.</li>
				<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
				<li>메세지시스템의 새로운 아이디는 <%=request.getAttribute("id") %>입니다.
				</li>
				<li><button onclick='location.href=BMain.jsp"'>시작하기</button></li>
			</ul>
		</nav>
	</div>

</body>
</html>