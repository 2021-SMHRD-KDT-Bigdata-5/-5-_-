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
<title>Arcana by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
  h1#logo{
   font-size:30px;}
</style>
<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
			<!-- 로그인 -->
			<form action="Login.jsp" method="post">
				<nav align='right'>
					<input type="submit" value="로그인">
				</nav>
			</form>	
					<form action="LoginSeller.jsp" method="post">
					<div class="row">
					<input type="submit" value="입점신청">
					</div>				
			</form>
			<!-- Logo -->
			<h1 id="logo">
				<a href="BMain.jsp" >BossamKimChi</a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="current"><a href="BMain.jsp">Home</a></li>
					<li><a href="Graph.jsp">통계</a></li>
					<li><a href="FarmList.jsp">농가리스트</a></li>
					<li><a href="Book.jsp">예약조회</a></li>
					<li><a href="two-sidebar.html">Two Sidebar</a></li>
				</ul>
			</nav>


		</div>



		<!-- Banner -->
		<section id="banner"></section>

		<!-- Highlights -->
		<section class="wrapper style1">
			<div class="container">
				<div class="row gtr-200">
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<a href="Graph.jsp"><i
								class="icon solid major fa-paper-plane"></i></a>
							<h3>배추 공급량 현황</h3>
							<p>부가설명</p>
						</div>
					</section>
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<a href="Graph.jsp"><i
								class="icon solid major fa-paper-plane"></i></a>
							<h3>금일배추 가격</h3>
							<p>부가설명</p>
						</div>
					</section>
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<a href="FarmList.jsp"><i
								class="icon solid major fa-paper-plane"></i></a>
							<h3>농가소개</h3>
							<p>부가설명</p>
						</div>
					</section>

				</div>
				<!-- Scripts -->
				<script src="assets/js/jquery.min.js"></script>
				<script src="assets/js/jquery.dropotron.min.js"></script>
				<script src="assets/js/browser.min.js"></script>
				<script src="assets/js/breakpoints.min.js"></script>
				<script src="assets/js/util.js"></script>
				<script src="assets/js/main.js"></script>
</body>
</html>