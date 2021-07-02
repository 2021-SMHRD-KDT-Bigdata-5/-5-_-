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
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1>
				<a href="BMain.jsp" id="logo">BossamKimChi</a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="BMain.jsp">Home</a></li>
					<li><a href="Graph.jsp">통계</a></li>
					<li class="current"><a href="FarmList.jsp">농가리스트</a></li>
					<li><a href="Book.jsp">예약조회</a></li>
					<li><a href="two-sidebar.html">Two Sidebar</a></li>
				</ul>
			</nav>

		</div>

		<!-- Main -->
		<section class="wrapper style1">
			<div class="container">
				<div id="content">
					<article>
						<header>
<!-- 품목사진 클릭 시 해당품목 농가리스트(FarmList1-2.jsp) 페이지로 이동 -->			
							<h2>품목리스트</h2>
							<br>
						</header>
						<section class="wrapper style1">
							<div class="container">
								<div class="row gtr-200">
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<a href="FarmList_strawberry.jsp">
											<img src="images/Str.jpg" alt="" /></a>
											<h3 id="List-pic">딸기</h3>
										</div>
									</section>
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<i class="icon solid major fa-pencil-alt"></i>
											<h3>배추</h3>
										</div>
									</section>
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<i class="icon solid major fa-wrench"></i>
											<h3>무</h3>
										</div>
									</section>
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<i class="icon solid major fa-paper-plane"></i>
											<h3>사과</h3>
										</div>
									</section>
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<i class="icon solid major fa-pencil-alt"></i>
											<h3>당근</h3>
										</div>
									</section>
									<section class="col-4 col-12-narrower">
										<div class="box highlight">
											<i class="icon solid major fa-wrench"></i>
											<h3>바나나</h3>
										</div>
									</section>
								</div>
							</div>
						</section>
					</article>


					<!-- Scripts -->
					<script src="assets/js/jquery.min.js"></script>
					<script src="assets/js/jquery.dropotron.min.js"></script>
					<script src="assets/js/browser.min.js"></script>
					<script src="assets/js/breakpoints.min.js"></script>
					<script src="assets/js/util.js"></script>
					<script src="assets/js/main.js"></script>
</body>
</html>