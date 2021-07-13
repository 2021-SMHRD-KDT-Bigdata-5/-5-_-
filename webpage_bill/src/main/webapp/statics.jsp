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
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<style>
@font-face {
	font-family: '서울한강장체EB';
	src: url(assets/fonts/서울한강장체EB.ttf) format('truetype');
}

body {
	font-family: 서울한강장체EB;
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
	<section>
		<ul id="ul" style="z-index: 999;">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="statics.jsp">농산물 통계</a></li>
			<li><a href="list.jsp">농가리스트</a></li>
			<%
			if (member != null) {
			%>
			<li><a href="providerbooklist.jsp">예약확인</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
			<%
			} else {
			%>
			<li><a href="book.jsp">예약</a></li>
			<li><a href="customerbooklist.jsp">예약확인</a></li>
			<%
			}
			%>
			<li style="float:right; font-size:25px; color:white; padding:14px 16px">
				<%
				if (member != null) {
				%> <%=member.getFarm_name()%> 농장주님 환영합니다! <%
 }
 %>
			</li>
		</ul>
	</section>

	<section id="five" class="main style1">
		<div class="container">
			<header class="major special">
				<h2>농산물 통계</h2>
			</header>

			<section>
				<h4 style="text-align: center;">7월 봄배추 공급량</h4>
				<div style="width: 70%; margin-left: 15%">
					<canvas id="canvas1"></canvas>
				</div>
				<hr />
				<header>
					<h4>전국 5대 도매시장 평균가</h4>
					<p>
						봄배추가 거래된 도매시장(인천구월도매시장, 광주서부도매시장, 충주도매시장)의 봄배추 10.0 kg 상자단위 품질 상의
						배추 평균가격<br> (평균가가 0일 경우 당일 평균가 존재하지않음)
					</p>
					<div style="width: 70%; margin-left: 15%">
						<canvas id="canvas2"></canvas>
					</div>
				</header>

				<hr />
				<header>
					<h4>식품 신선지수</h4>
					<p>
						<b>※ 신선식품지수</b><br>신선 어류,채소,과실 등 기상조건이나 계절에 따라 가격변동이 큰 50개
						품목으로 작성한 지수
					</p>
					<select id="area" onchange="areaChange();" style="margin-left: 40%">
						<option selected>지역선택 ▼</option>
						<option value="서울/경기">서울/경기</option>
						<option value="부산광역시">부산광역시</option>
						<option value="대구광역시">대구광역시</option>
						<option value="광주광역시">광주광역시</option>
						<option value="대전광역시">대전광역시</option>
						<option value="울산광역시">울산광역시</option>
						<option value="강원">강원</option>
						<option value="경남">경남</option>
						<option value="경북">경북</option>
						<option value="전남">전남</option>
						<option value="전북">전북</option>
						<option value="충남">충남</option>
						<option value="충북">충북</option>
						<option value="제주">제주</option>
					</select> <br>
					<div style="width: 70%; margin-left: 15%">
						<canvas id="canvas3"></canvas>
					</div>
				</header>
			</section>
		</div>
	</section>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>

	<script>
		//예측공급량 막대그래프 그려주는 함수
		new Chart(document.getElementById("canvas1"),
				{
					type : 'bar',
					data : {
						labels : [ '서울/경기', '강원', '경남', '경북', '전남', '전북', '충남',
								'충북' ],
						datasets : [ {
							label : 'location',
							data : [ 2251721.556, 19938142.79, 620393.9539,
								518902.4174, 4067732.797, 1147406.568,
								413381.1992, 1896353.058 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(255, 201, 14, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)',
									'rgba(36, 87, 255, 0.2)' ],

							borderColor : [ 'rgba(255,99,132,1)',
									'rgba(255, 201, 14, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)',
									'rgba(36, 87, 255, 0.1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						maintainAspectRatio : true, 
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
		// 전국 5대 도매시장 평균가 선그래프 그려주는 함수
		new Chart(document.getElementById("canvas2"), {
			type : 'line',
			data : {
				labels : [ "2021-05-10", "2021-05-11",2021-05-12,
						"2021-05-13", "2021-05-14", "2021-05-15",
						"2021-05-16", "2021-05-17", "2021-05-18",
						"2021-05-19", "2021-05-20", "2021-05-21",
						"2021-05-22", "2021-05-23", "2021-05-24",
						"2021-05-25", "2021-05-26", "2021-05-27",
						"2021-05-28", "2021-05-29", "2021-05-30",
						"2021-05-31", "2021-06-01", "2021-06-02",
						"2021-06-03", "2021-06-04", "2021-06-05",
						"2021-06-06", "2021-06-07", "2021-06-08",
						"2021-06-09", "2021-06-10", "2021-06-11",
						"2021-06-12", "2021-06-13", "2021-06-14",
						"2021-06-15", "2021-06-16", "2021-06-17",
						"2021-06-18", "2021-06-19", "2021-06-20",
						"2021-06-21", "2021-06-22", "2021-06-23",
						"2021-06-24", "2021-06-25", "2021-06-26",
						"2021-06-27", "2021-06-28", "2021-06-29",
						"2021-06-30", "2021-07-01", "2021-07-02",
						"2021-07-03", "2021-07-04", "2021-07-05",
						"2021-07-06", ],
				datasets : [ {
					data : [ 6955, 7688, 5885, 5200, 5350, 3675, 0, 4500, 4140,
							4260, 3340, 0, 2475, 0, 2900, 5061, 5935, 5873,
							6895, 4325, 0, 6895, 4559, 3518, 1500, 9095, 6000,
							0, 6678, 4742, 5895, 3375, 6955, 8560, 0, 2933,
							4595, 3685, 4743, 4460, 8025, 0, 3606, 4205, 6420,
							0, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0 ],
					label : "전국 5대 도매시장 평균가",
					borderColor : "rgba(255, 145, 0, 1)",
					backgroundColor : "rgba(255, 201, 14, 0.2)",
					fill : true
				} ]
			},
			options : {
				title : {}
			}
		});

		// 배추 신선식품 지수 그리는 그래프에 필요한 변수들 정의
		var selectArea;
		var selectAreaData;
		var g = {
			type : 'line',
			data : {
				labels : [ '2019. 01', '2019. 02', '2019. 03', '2019. 04',
						'2019. 05', '2019. 06', '2019. 07', '2019. 08',
						'2019. 09', '2019. 10', '2019. 11', '2019. 12',
						'2020. 01', '2020. 02', '2020. 03', '2020. 04',
						'2020. 05', '2020. 06', '2020. 07', '2020. 08',
						'2020. 09', '2020. 10', '2020. 11', '2020. 12',
						'2021. 01', '2021. 02', '2021. 03', '2021. 04',
						'2021. 05', '2021. 06' ],
				datasets : []
			},
			options : {
				responsive : true,
				tooltips : {
					mode : 'index',
					intersect : false,
				},
				hover : {
					mode : 'nearest',
					intersect : true
				},
				scales : {
					xAxes : [ {
						display : true,
						gridLines : {
							display : false
						},
						scaleLabel : {
							display : true,
							labelString : '기간(년/월)'
						}
					} ],
					yAxes : [ {
						display : true,
						ticks : {
							suggestedMin : 0,
						},
						scaleLabel : {
							display : true,
							labelString : '신선지수'
						}
					} ]
				}
			}
		};
		var dataset = [
				{
					label : '서울/경기',
					data : [ 83.265, 77.885, 74.31, 72.245, 75.59, 92.83,
							116.555, 131.31, 192.865, 237.39, 161.89, 150.21,
							157.23000000000002, 153.185, 158.525, 148.445,
							165.31, 156.06, 169.13, 228.345, 312.795,
							264.96500000000003, 118.62, 98.42500000000001,
							97.425, 129.24, 160.94, 165.095, 140.47, 126.465 ],
					borderColor : "rgba(255, 145, 0, 1)",
					backgroundColor : "rgba(255, 201, 14, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '부산광역시',
					data : [ 92.0, 88.3, 90.08, 80.28, 83.21, 98.23, 124.49,
							127.23, 167.12, 220.44, 160.11, 139.86, 151.8,
							147.28, 141.0, 137.46, 144.54, 138.05, 143.64,
							182.49, 295.06, 267.86, 112.19, 92.52, 92.64,
							120.31, 142.3, 145.79, 132.64, 111.59 ],
					borderColor : "rgba(234, 125, 0, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '대구광역시',
					data : [ 98.36, 93.75, 89.12, 92.08, 95.08, 108.27, 126.81,
							138.75, 201.53, 238.69, 175.19, 173.11, 158.63,
							146.82, 152.05, 149.17, 158.38, 154.73, 161.71,
							250.43, 346.96, 296.28, 124.5, 115.37, 112.86,
							127.83, 154.78, 174.33, 150.35, 131.84 ],
					borderColor : "rgba(214, 114, 0, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '광주광역시',
					data : [ 79.49, 78.84, 83.68, 76.23, 82.12, 100.85, 123.2,
							121.95, 164.96, 220.35, 169.84, 130.87, 156.25,
							156.17, 164.47, 159.03, 193.35, 155.28, 148.56,
							213.63, 332.99, 289.62, 105.83, 86.76, 85.66,
							106.33, 142.53, 155.87, 143.43, 118.23 ],
					borderColor : "rgba(193, 103, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '대전광역시',
					data : [ 85.18, 92.59, 86.1, 92.34, 78.17, 84.94, 117.41,
							153.07, 216.92, 231.95, 159.19, 144.28, 167.71,
							162.07, 176.62, 172.04, 169.67, 146.71, 178.77,
							239.9, 326.15, 212.63, 102.19, 90.43, 103.43,
							117.32, 144.21, 152.3, 119.63, 90.56 ],
					borderColor : "rgba(92, 56, 20, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '울산광역시',
					data : [ 98.9, 95.91, 84.81, 78.91, 80.53, 92.5, 117.02,
							126.29, 176.58, 219.12, 163.79, 138.34, 138.08,
							139.13, 145.49, 146.24, 159.7, 146.2, 162.78,
							227.93, 319.74, 250.78, 113.64, 96.68, 101.28,
							119.79, 138.69, 141.35, 139.38, 125.68 ],
					borderColor : "rgba(70, 56, 20, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '강원',
					data : [ 90.46, 89.02, 82.36, 82.0, 81.71, 102.0, 124.01,
							143.04, 182.76, 234.57, 152.77, 141.8, 177.42,
							167.27, 174.92, 166.0, 157.93, 156.7, 162.05,
							241.06, 353.41, 297.55, 117.22, 106.34, 112.97,
							150.95, 192.38, 193.01, 155.83, 130.63 ],
					borderColor : "rgba(45, 56, 20, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '충북',
					data : [ 89.18, 81.48, 73.91, 82.01, 78.99, 95.62, 125.91,
							127.57, 173.21, 220.74, 144.59, 140.73, 150.74,
							155.19, 148.97, 160.33, 171.76, 154.3, 171.72,
							233.49, 320.02, 256.52, 98.75, 101.2, 102.01,
							121.58, 138.27, 163.46, 128.54, 111.18 ],
					borderColor : "rgba(28, 56, 20, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '충남',
					data : [ 90.89, 89.91, 80.91, 82.61, 83.97, 100.95, 144.25,
							146.96, 217.25, 249.99, 161.11, 136.19, 156.12,
							162.43, 169.36, 167.65, 170.89, 165.15, 197.19,
							280.92, 386.35, 292.24, 121.86, 103.27, 111.68,
							140.73, 165.32, 177.42, 141.22, 130.19 ],
					borderColor : "rgba(38, 76, 27, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '전북',
					data : [ 104.56, 110.86, 90.97, 88.16, 88.43, 110.27,
							137.06, 150.44, 192.86, 236.24, 184.98, 153.92,
							163.7, 172.11, 178.46, 161.34, 159.63, 147.87,
							167.83, 270.81, 337.29, 276.21, 128.97, 94.49,
							96.97, 128.84, 153.65, 178.68, 142.15, 127.9 ],
					borderColor : "rgba(48, 96, 34, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '전남',
					data : [ 94.36, 94.6, 83.89, 85.41, 87.94, 104.55, 137.11,
							144.41, 227.16, 274.51, 202.44, 166.95, 167.89,
							160.06, 164.17, 158.46, 174.5, 163.78, 175.13,
							234.33, 346.07, 303.21, 127.35, 105.57, 97.42,
							130.26, 160.87, 171.29, 145.68, 130.88 ],
					borderColor : "rgba(58, 117, 42, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '경북',
					data : [ 94.34, 90.34, 90.34, 87.41, 82.78, 95.77, 108.61,
							122.4, 184.87, 217.83, 154.86, 140.81, 156.09,
							144.5, 145.73, 142.55, 144.06, 141.17, 144.06,
							194.68, 318.93, 274.39, 115.34, 97.56, 102.59,
							123.37, 152.23, 155.24, 136.51, 117.3 ],
					borderColor : "rgba(146, 191, 134, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '경남',
					data : [ 85.33, 86.84, 78.17, 77.81, 81.18, 90.45, 116.76,
							122.53, 172.34, 209.83, 155.04, 146.19, 143.75,
							141.47, 145.91, 140.73, 142.6, 139.08, 156.0,
							217.4, 306.52, 250.03, 124.53, 111.66, 100.58,
							118.56, 140.94, 150.73, 134.31, 122.92 ],
					borderColor : "rgba(255, 208, 120, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				},
				{
					label : '제주',
					data : [ 73.67, 73.99, 70.18, 71.17, 70.6, 76.15, 106.13,
							127.99, 133.6, 220.3, 169.3, 125.01, 127.57,
							122.11, 115.33, 115.33, 122.68, 130.33, 139.77,
							161.11, 212.19, 228.09, 120.71, 79.94, 76.03,
							93.12, 104.94, 139.52, 118.28, 116.92 ],
					borderColor : "rgba(255, 185, 56, 1)",
					backgroundColor : "rgba(180, 148, 235, 0)",
					fill : true,
					lineTension : 0
				} ]

		// 배추 신선식품 지수 select 태그 지정시 특정 지역만 보여주는 함수
		function areaChange() {
			var temp = JSON.parse(JSON.stringify(g));
			dataset.forEach(function(item) {
				var selectedloc = $("#area option:selected").val();
				if (item['label'] == selectedloc) {
					console.log(item);
					temp['data']['datasets'] = [ item ];
				}
			})

			// 배추 신선식품 지수 그래프 그리는 함수
			new Chart(document.getElementById("canvas3"), temp);
		}

		var all = JSON.parse(JSON.stringify(g));
		all['data']['datasets'] = dataset;
		// html에 차트그리는 함수
		new Chart(document.getElementById("canvas3"), all);
	</script>
</body>
</html>