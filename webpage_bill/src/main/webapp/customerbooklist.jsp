<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.memberDTO"%>
<%@page import="model.bookDTO"%>
<%@page import="model.bookDAO"%>

<%
memberDTO member = (memberDTO) session.getAttribute("member");
bookDAO dao = new bookDAO();
ArrayList<bookDTO> list = new ArrayList<bookDTO>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<style>
@font-face {
	font-family: '�����Ѱ���üEB';
	src: url(assets/fonts/�����Ѱ���üEB.ttf) format('truetype');
}

body {
	font-family: �����Ѱ���üEB;
}

select#area {
	width: 20%;
	height: 10%;
}

#ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	position: fixed;
	top: 0;
	width: 100%;
}

#ul li {
	float: left;
}

#ul li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}
#ul li a:hover{
background : #438832;
}
</style>
<title>Insert title here</title>
</head>
<body>

	<%
	ArrayList<bookDTO> dto = (ArrayList<bookDTO>) session.getAttribute("dto");
	%>

	<section>
		<ul id="ul" style="z-index: 999;">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="statics.jsp">��깰 ���</a></li>
			<li><a href="list.jsp">�󰡸���Ʈ</a></li>
			<%
			if (member != null) {
			%>
			<li><a href="providerbooklist.jsp">����</a></li>
			<%
			} else {
			%>
			<li><a href="book.jsp">����</a></li>
			<li><a href="customerbooklist.jsp">����Ȯ��</a></li>
			<%
			}
			%>
			<li
				style="float: right; font-size: 25px; color: white; padding: 14px 16px">
				<%
				if (member != null) {
				%> <%=member.getFarm_name()%> �����ִ� ȯ���մϴ�! <%
 }
 %>
			</li>
		</ul>
	</section>


	<section id="five" class="main style1"
		style="width: 1000px; margin-left: 30%; background: none">
		<div class="container">
			<form method="post" action="c_selectCon">
				<div class="row gtr-uniform gtr-50">

					<div class="col-6 col-12-xsmall">
						<input type="text" name="tel" id="demo-phone" value=""
							placeholder="Phone" />
					</div>
					<div class="col-6 col-12-xsmall">
						<input type="submit" value="Ȯ���ϱ�" />
					</div>
			</form>
	</section>

	<div class="row gtr-uniform gtr-50">
		<div class="container" style="width: 1000px;">
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>�̸�</th>
							<th>��ȭ��ȣ</th>
							<th>�湮��¥</th>
							<th>�湮�ð�</th>
							<th>���̸�</th>
						</tr>
					</thead>
					<tbody>
						<%
						if (dto != null) {
						%>
						<%
						for (int i = 0; i < dto.size(); i++) {
						%>
						<tr>
							<td><%=dto.get(i).getName()%></td>
							<td><%=dto.get(i).getTel()%></td>
							<td><%=dto.get(i).getB_date()%></td>
							<td><%=dto.get(i).getB_time()%></td>
							<td><%=dto.get(i).getFarm_name()%></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>