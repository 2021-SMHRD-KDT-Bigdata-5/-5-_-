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
				ȸ�������� �����մϴ�.<br>
				<!-- request������ ����� ȸ������ �� �̸����� ����Ͻÿ�. -->
<<<<<<< HEAD
				�޼����ý����� ���ο� ���̵��
				<%=request.getAttribute("id")%>�Դϴ�.
			</p>
			<div class="search"></div>
			<div class="btnwrap">
				<a href="BMain.jsp">��������</a>
				
				
			</div>
=======
				<li>�޼����ý����� ���ο� ���̵�� <%=request.getAttribute("id") %>�Դϴ�.
				</li>
				<li><button onclick='location.href=BMain.jsp'>�����ϱ�</button></li>
			</ul>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/Bossam-Kimchi.git
		</nav>
	</div>
</body>
</html>