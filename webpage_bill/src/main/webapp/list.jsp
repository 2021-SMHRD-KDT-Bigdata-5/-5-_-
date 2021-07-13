<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.memberDTO"%>

<%
memberDTO member = (memberDTO) session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/list.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<style>
#current {
	background-color: #438832;
}

* {
	margin: 0;
	padding: 0;
	font-size: 1rem;
	text-decoration: none;
	list-style: none;
	
}

#index_01 {
	width: 100%;
	height: 400px;
	margin: 0 auto;
}

#slide1 {
	height: 400px;
	overflow: hidden;
	border-bottom: 1px solid dimgrey;
}

#slide1>ul {
	width: 5000px;
	font-size: 0;
}

#slide1>ul>li {
	display: inline;
	font-size: 0;
}

@font-face {
	font-family: '서울한강장체EB';
	src: url(assets/fonts/서울한강장체EB.ttf) format('truetype');
}

body {
	font-family: 서울한강장체EB;
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

.a {
	width: 360.89px;
	height: 360.89px;
	overflow: hidden
}

.a img:hover {
	cursor: pointer;
	-webkit-transform: scale(1.1); /*  크롬 */
	transform: scale(1.1);
	transition: transform .35s;
}

#local, #category {
	width: 200px;
	margin-left: 5px;
	margin-right: 20px;
}

.eventc {
	width: 100%;
	heigth: 100%;
}

#ul li a:hover{
background : #438832;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<section>
		<ul id="ul" style="z-index: 999;">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="statics.jsp">농산물 통계</a></li>
			<li><a href="list.jsp">농가리스트</a></li>
			<%if (member != null) {%>
			<li><a href="providerbooklist.jsp">예약확인</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
			<%}else{%>
			<li><a href="book.jsp">예약</a></li>
			<li><a href="customerbooklist.jsp">예약확인</a></li>
			<%} %>
			<li style="float:right; font-size:25px; color:white; padding:14px 16px"><%if (member != null) {%> 
			<%=member.getFarm_name()%> 농장주님 환영합니다!
			<% }%>
			</li>
		</ul>
	</section>

	<section id="five" class="main style1">
		<div class="container">
			<section>
				<h4>직거래 품목</h4>
				<div class="box alt">
					<div class="row gtr-uniform gtr-50">
						<div class="col-12" style="width: 1250px;">
							<div id="index_01">
								<div id="slide1">
									<ul>
										<li><a href="#"><img src="images/01.jpg" alt="슬라이드1"></a></li>
										<li><a href="#"><img src="images/02.jpg" alt="슬라이드2"></a></li>
										<li><a href="#"><img src="images/03.jpg" alt="슬라이드3"></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="사과">
								<img src="images/fruit/1apple.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="아스파라거스">
								<img src="images/fruit/2aspara.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="딸기">
								<img src="images/fruit/3Strawberry.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="배추">
								<img src="images/fruit/4cabage.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="당근">
								<img src="images/fruit/5carrot.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
						<div class="col-4">
							<div class="a" id="a" value="무">
								<img src="images/fruit/6raddish.jpg"
									style="width: 100%; height: 100%;" />
							</div>
						</div>
					</div>
				</div>
				<h4>농가 선택</h4>
				<form action="">
					<div style="display: flex;">
						품목 : <input type="text" name="category" id="category"> 지역
						: <select name="local" id="local">
							<option selected>지역선택 ▼</option>
							<option value="서울경기">서울/경기</option>
							<option value="강원">강원</option>
							<option value="경남">경남</option>
							<option value="경북">경북</option>
							<option value="전남">전남</option>
							<option value="전북">전북</option>
							<option value="충남">충남</option>
							<option value="충북">충북</option>
						</select> <input type="button" value="Search" class="primary"
							onclick="searchList();">
					</div>
		</div>
		</form>
	</section>


	</div>
	</section>

	<section id="list"></section>

	<!-- script -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		setInterval(function() {
			$('#slide1>ul').delay(2500);
			$('#slide1>ul').animate({
				marginLeft : "-1250px"
			})
			$('#slide1>ul').delay(2500);
			$('#slide1>ul').animate({
				marginLeft : "-2500px"
			})
			$('#slide1>ul').delay(2500);
			$('#slide1>ul').animate({
				marginLeft : "0px"
			})
		});

		// 이미지 클릭했을때 품목 input태그에 값 자동 입력해주는 메서드
		$(".a").click(function() {
			console.log($(this).attr('value'))
			$("#category").val($(this).attr('value'));
		})
		function cate() {
			$("#category").val() == $(".a").val();
		}

		// 농가 검색시 아래에 상세 농가정보 보여주는 메서드
		   var p_page;
		      function searchList() {
		         if ($("#category").val()=="배추" && $("#local").val()=="서울경기") {
		            p_page = "providerList/seoul_cabbage.jsp";
		         } else if ($("#category").val("배추") && $("#local").val("충북")) {
		            p_page = "providerList/chungbuk_cabbage.jsp";
		         }


			$('.col-12').hide();
			
			$.ajax({
				url : p_page,
				type : "get",
				success : function(res) {
					// 데이터를 잘 받아왔을때 처리해주는 로직
					// 성공했을때 function(매개변수) >> 넘어온 데이터를 담아주는 공간.
					$("#list").html(res)
					//res 안에 page2.html모든 정보가 들어감
				},
				error : function() {
					// 데이터를 받아오지 못했을때 처리해주는 로직
					alert("에러뜨는중")
				}
			});

		}
	</script>
</body>
</html>