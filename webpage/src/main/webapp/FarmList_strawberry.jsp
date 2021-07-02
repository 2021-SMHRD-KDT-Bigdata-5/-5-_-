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
<style>
  h1#logo{
   font-size:30px;}
</style>
<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1 id="logo">
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

		<!-- Posts -->

		<section class="wrapper style1">
			<div class="container">
				<div id="content">
					<article>
						<header>
							<h2>농가리스트<select>
									<option value="">지역선택 ▼</option>
									<option value="서울경기">서울/경기</option>
									<option value="강원">강원</option>
									<option value="경남">경남</option>
									<option value="경북">경북</option>
									<option value="전남">전남</option>
									<option value="전북">전북</option>
									<option value="충남">충남</option>
									<option value="충북">충북</option>
								</select>
							</h2>
						</header>
						<section class="wrapper style1">
							<div class="container">
								<div class="row">
									<section class="col-6 col-12-narrower">
										<div class="box post">
											<a href="FarmList1-3.jsp" class="image left"><img
												src="images/pic01.jpg" alt="" /></a>
											<div class="inner">
												<h3>농가이름1</h3>
												<p>농가정보</p>
											</div>
										</div>
									</section>

									<section class="col-6 col-12-narrower">
										<div class="box post">
											<a href="#" class="image left"><img
												src="images/pic02.jpg" alt="" /></a>
											<div class="inner">
												<h3>농가이름2</h3>
												<p>농가정보</p>
											</div>
										</div>
									</section>
								</div>
								<div class="row">
									<section class="col-6 col-12-narrower">
										<div class="box post">
											<a href="#" class="image left"><img
												src="images/pic03.jpg" alt="" /></a>
											<div class="inner">
												<h3>농가이름3</h3>
												<p>농가정보</p>
											</div>
										</div>
									</section>

								</div>
							</div>
						</section>



						<!-- Scripts -->
						<script src="assets/js/jquery.min.js"></script>
						<script src="assets/js/jquery.dropotron.min.js"></script>
						<script src="assets/js/browser.min.js"></script>
						<script src="assets/js/breakpoints.min.js"></script>
						<script src="assets/js/util.js"></script>
						<script src="assets/js/main.js"></script>
</body>
</html>