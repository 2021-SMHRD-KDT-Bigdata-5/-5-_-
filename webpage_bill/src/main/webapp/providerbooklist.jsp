<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.memberDTO"%>
<%@page import="model.bookDTO"%>
<%@page import="model.bookDAO"%>
<%
memberDTO member = (memberDTO) session.getAttribute("member");

HttpSession session1 = request.getSession();
ArrayList<bookDTO> list = null;
bookDAO dao = new bookDAO();

list = (ArrayList<bookDTO>)session1.getAttribute("bookdto");
System.out.println("jsp : "+list);


if(list==null){
	list = dao.select_first(member.getFarm_name());
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/book.css" />
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css" />
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<section>
		<ul id="ul" style="z-index: 999;">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="statics.jsp">��깰 ���</a></li>
			<li><a href="list.jsp">�󰡸���Ʈ</a></li>
			<%
			if (member != null) {
			%>
			<li><a href="providerbooklist.jsp">����Ȯ��</a></li>
			<li><a href="logout.jsp">�α׾ƿ�</a></li>
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

	<section>
		<section id="five" class="main style1"
			style="width: 1000px; margin-left: 25%;">
			<div class="container">
				<h4>���೻��</h4>

				<form method="post" action="p_selectCon">
					<div class="row gtr-uniform gtr-50">

						<div style="width: 1000px; height: 100%;">

							<div id="testDatepicker" onclick="javascript:buttonClick();"
								style="width: 400px; float: left; padding-bottom: 1em; z-index: 1000"></div>
							<input type="hidden" id="date" name="B_date">

							<div class="col-12" style="margin-top: 11%; float: right;">
								<div class="time">
									<input type="radio" id="demo-priority-low" name="B_time"
										checked value="����(6AM~12PM)"> <label
										for="demo-priority-low">���� (6AM~12PM)</label>
								</div>
								<br>
								<div class="time">
									<input type="radio" id="demo-priority-normal" name="B_time"
										value="����(12PM~3PM)"> <label
										for="demo-priority-normal">���� (12PM~3PM)</label>
								</div>
								<br>
								<div class="time">
									<input type="radio" id="demo-priority-high" name="B_time"
										value="����(3PM~7PM)"> <label for="demo-priority-high">����
										(3PM~7PM)</label>
								</div>

							</div>

							<div class="col-12">
								<ul class="actions" style="float: right; height: 50px;">
									<li><input type="submit" value="SEARCH" class="primary"
										style="margin-top: 200%; margin-left: 110%;" /></li>
								</ul>
							</div>
						</div>



						<div class="container">
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>�̸�</th>
											<th>��ȭ��ȣ</th>
											<th>�湮��¥</th>
											<th>�湮�ð�</th>
										</tr>
									</thead>
									<%
									if (member != null) {
									%>
									<tbody>
										<%
										for (int i = 0; i < list.size(); i++) {
										%>
										<tr>
											<td><%=list.get(i).getName()%></td>
											<td><%=list.get(i).getTel()%></td>
											<td><%=list.get(i).getB_date()%></td>
											<td><%=list.get(i).getB_time()%></td>
										</tr>
										<%
										}
										} else {
										%>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</section>

	<script>
		$(function() {
			$("#testDatepicker").datepicker(
					{
						minDate : 0,
						changeMonth : true,
						changeYear : true,
						nextText : '',
						prevText : '',
						dateFormat : "yymmdd",
						changeMonth : true,
						dayNames : [ '������', 'ȭ����', '������', '�����', '�ݿ���', '�����',
								'�Ͽ���' ],
						dayNamesMin : [ '��', 'ȭ', '��', '��', '��', '��', '��' ],
						monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7',
								'8', '9', '10', '11', '12' ],
						monthName : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��',
								'8��', '9��', '10��', '11��', '12��' ]

					});
		});
		function buttonClick() {
			$('#date').val($('#testDatepicker').val());
		}
		$("#testDatepicker").change(function() {
			$('#date').val($('#testDatepicker').val());
		});
	</script>
	<style>
.ui-datepicker {
	font-size: 20px;
	width: 450px;
	height: 400px;
	text-align: center;
}

.ui-state-default, .ui-widget-content .ui-state-default,
	.ui-widget-header .ui-state-default {
	border: 1px solid #63666a;
	width: 50px;
	height: 50px;
	line-height: 30px;
	text-align: center;
	color: #555555;
	margin-bottom: 5px;
}

.ui-datepicker select.ui-datepicker-month {
	width: 50%;
	font-size: 15px;
	line-height: 1em;
	float: left;
}

.ui-datepicker select.ui-datepicker-year {
	width: 50%;
	font-size: 15px;
	line-height: 1em;
	float: right;
}

#demo-message {
	
}
</style>
</body>
</html>