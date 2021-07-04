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
				<a href="index.html" id="logo">BossamKimChi</a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="BMain.html">Home</a></li>
					<li><a href="Graph.html">통계</a></li>
					<li class="current"><a href="FarmList.html">농가리스트</a></li>
					<li><a href="Book.html">예약조회</a></li>
				</ul>
			</nav>

		</div>

		<!--Main-->
		<section class="wrapper style1">
			<div class="container">
				<div id="content">
					<article>
						<header>
							<h2>농가정보</h2>
							<br>
						</header>
						<div class="row">
							<section class="col-6 col-12-narrower">
								<div class="box post">
									<a href="#" class="image left"><img src="images/pic01.jpg"
										alt="" /></a>
									<div class="inner">
										<h3>농가이름1</h3>
										<p>농가정보</p>
									</div>
								</div>
							</section>
							<div class="col-12">
		<!-- 달력표시 -->					
								<textarea name="message" id="message" placeholder="Message"
									rows="5"></textarea>
		<!-- 달력에서 예약날짜선택후 예약버튼클릭시 예약 정보 달력에 반영 -->
								<input type="submit" value="예약하기">
							</div>

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