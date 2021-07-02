<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>No Sidebar - Arcana by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

	<%
		String[] Date = request.getParameter("");
		String[] Name = request.getParameter(""); 
		String[] Phone = request.getParameter(""); 
		String[] Time = request.getParameter(""); 
	%>
	
	
	
	
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1>
				<a href="index.html" id="logo">보쌈김치 <em>by HTML5 UP</em></a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="통계.html">통계</a></li>
					<li><a href="농가리스트.html">농가리스트</a></li>
					<li class="current"><a href="right-sidebar.html">예약조회</a></li>
					<li><a href="two-sidebar.html">Two Sidebar</a></li>
				</ul>
			</nav>

		</div>

		<!-- Main -->
		<table>
			<tr>
				<td>Date</td>
				<td>Name</td>
				<td>Phone</td>
				<td>Time</td>
			</tr>
			<% for (int i = 0; i < reservation.length; i++){ %>
				<tr>
					<td><%list.get(i).getDate() %></td>
					<td><%list.get(i).getName() %></td>
					<td><%list.get(i).getPhone() %></td>
					<td><%list.get(i).getTime() %></td>
				</tr>
				<%} %>

		</table>

</body>
</html>