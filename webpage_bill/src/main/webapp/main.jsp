<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@page import="model.memberDTO"%>

<%
memberDTO member = (memberDTO) session.getAttribute("member");
%>

<!DOCTYPE HTML>
<html>
<head>
<title>FARMCONN</title>
<meta charset="EUC-kr" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<!-- <script src="jquery-3.6.0.min.js"></script> -->

<style>

@font-face {
   font-family: '서울한강장체EB';
   src: url(assets/fonts/서울한강장체EB.ttf) format('truetype');
}

body {
   font-family: 서울한강장체EB;
}

#sec_login, #sec_register {
   display: none;
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
</head>
<body class="is-preload">

   <section>
      <ul id="ul" style="z-index: 999;">
         <li><a href="main.jsp">Home</a></li>
         <li><a href="statics.jsp">농산물 통계</a></li>
         <li><a href="list.jsp">농가리스트</a></li>
         <%if(member != null){%>
         <li><a href="providerbooklist.jsp">예약확인</a></li>
         <li><a href="logout.jsp">로그아웃</a></li>
         <%}else{%>
         <li><a href="book.jsp">예약</a></li>
         <li><a href="customerbooklist.jsp">예약확인</a></li>
         <%} %>
         <li style="float:right; font-size:25px; color:white; padding:14px 16px"><%if (member != null){%> 
         <%=member.getFarm_name()%> 농장주님 환영합니다!
         <%} %>      
         </li>
      </ul>
   </section>

   <!-- Header -->
   <section id="header" style="z-index: 1000;">
      <div class="inner">

         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
      </div>
      
   </section>

   <!-- One -->
   <section id="one" class="main style1">
      <div class="container">
         <div class="row gtr-150">
            <div class="col-6 col-12-medium">
               <header class="major">
                  <h2>우리 FARMCONN은</h2>
               </header>
               <p>
                  FARMCONN은 채소의 직거래를 통해 중간 유통에서 발생하는 비용을 최소화하여 지역 농민의 정당한 수익을 보장합니다.<br>
                  동시에 소비자에게 신뢰할 수 있는 농산물을 제공합니다.<br> 주변과 이웃을 생각하는 착한소비의 사회적 가치를
                  지키고자 합니다.<br>
               </p>
            </div>
            <div class="col-6 col-12-medium imp-medium">
               <span class="image fit"><img src="images/main/main.png"
                  alt="" /></span>
            </div>
         </div>
      </div>
   </section>

   <!-- Two -->
   <section id="two" class="main style2">
      <div class="container">
         <div class="row gtr-150">
            <div class="col-6 col-12-medium">
               <ul class="major-icons">
                  <li><span class="icon solid style1 major fa-code"><img
                        src="images/fruit/cabage.webp"
                        style="width: 100%; height: 100%;"></span></li>
                  <li><span class="icon solid style2 major fa-bolt"><img
                        src="images/fruit/Apple.jpg" style="width: 100%; height: 100%;"></span></li>
                  <li><span class="icon solid style3 major fa-camera-retro"><img
                        src="images/fruit/orange.webp"
                        style="width: 100%; height: 100%;"></span></li>
                  <li><span class="icon solid style4 major fa-cog"><img
                        src="images/fruit/peach.webp" style="width: 100%; height: 100%;"></span></li>
                  <li><span class="icon solid style5 major fa-desktop"><img
                        src="images/fruit/avocado.webp"
                        style="width: 100%; height: 100%;"></span></li>
                  <li><span class="icon solid style6 major fa-calendar"><img
                        src="images/fruit/carrot.webp"
                        style="width: 100%; height: 100%;"></span></li>
               </ul>
            </div>
            <div class="col-6 col-12-medium">
               <br> <br> <br> <br> <br> <br> <br>
               <header class="major">
                  <h2>
                     과일·야채를 <br />농가와 직접 거래
                  </h2>
               </header>
               <p>딸기, 배추, 사과, 무, 당근의 품목을 농가에서 직접 구매해보세요.<br> 농가와의 예약을 통해 직거래를 진행할
                  수 있습니다.</p>
                  <div style="float:right"><a href="list.jsp" class="button">자세히</a><div>
            </div>
         </div>
      </div>
   </section>

   <!-- Three -->
   <section id="three" class="main style1 special">
      <div class="container">
         <header class="major">
            <h2>제공하는 서비스</h2>
         </header>
         <div class="row gtr-150">
            <div class="col-4 col-12-medium">
               <span class="image fit"><img src="images/main/analytics.png"
                  alt="" /></span>
               <h3>농산물 공급량 예측</h3>
               <p>빅데이터, 머신러닝을 통해<br>공급량을 예측합니다</p>
               <ul class="actions special">
                  <li><a href="statics.jsp" class="button">자세히</a></li>
               </ul>
            </div>
            <div class="col-4 col-12-medium">
               <span class="image fit"><img
                  src="images/main/financial-profit.png" alt="" /></span>
               <h3>시장가 분석</h3>
               <p>전국 도매시장 가격을 분석하여<br>올바른 직거래 금액을 제시합니다</p>
               <ul class="actions special">
                  <li><a href="statics.jsp" class="button">자세히</a></li>
               </ul>
            </div>
            <div class="col-4 col-12-medium">
               <span class="image fit"><img src="images/main/farmer.png"
                  alt="" /></span>
               <h3>농산물 직거래</h3>
               <p>농가와 소비자의 건강한 거래를 제공합니다<br>지금 시작하세요!</p>
               <ul class="actions special">
                  <li><a href="list.jsp" class="button">자세히</a></li>
               </ul>
            </div>
         </div>
      </div>
   </section>

   <!-- Four -->
   <section id="four" class="main style2 special">
      <div class="container">
         <header class="major">
            <h2>농산물 직거래 서비스</h2>
         </header>
         <p>농장을 소유하고 있다면 직거래를 시작해보세요.</p>
         <ul class="actions special">
            <li><a class="button wide primary" id="login"
               onclick="login();">Login</a></li>
            <li><a class="button wide" id="register" onclick="register();">Register</a></li>
         </ul>
      </div>

      <section id="sec_login">
         <h4>LOGIN</h4>
         <form method="post" action="LoginCon">
            <div id="div_login" style="width: 500px; margin-left: 37%">
               <div class="col-6 col-12-xsmall">
                  <input type="text" name="login_email" id="demo-email" value=""
                     placeholder="Email" style="margin-bottom: 5px; size: 50px" /> <input
                     type="text" name="login_password" id="demo-password" value=""
                     placeholder="password" style="margin-bottom: 5px;" />
                  <ul>
                     <li><input type="submit" value="LOGIN" /></li>
                  </ul>
               </div>
            </div>
         </form>
      </section>

      <section id="sec_register">
         <h4>REGISTER</h4>
         <form method="post" action="JoinCon">
            <div id="div_register" style="width: 500px; margin-left: 36.8%">
               <div class="col-6 col-12-xsmall">
                  <input type="text" name="Join_email" id="demo-email" value=""
                     placeholder="Email" style="margin-bottom: 5px;" /> <input
                     type="text" name="Join_password" id="demo-password" value=""
                     placeholder="Password" style="margin-bottom: 5px;" /> <input
                     type="text" name="Join_name" id="demo-name" value=""
                     placeholder="Name" style="margin-bottom: 5px;" /> <input
                     type="text" name="Join_phone" id="demo-phone" value=""
                     placeholder="Phone" style="margin-bottom: 5px;" /> 
                     <select name="produce" id="demo-item"
                     style="width: 310.66px; margin-bottom: 5px;">
                     <option value="">- 품목 -</option>
                     <option value="배추">배추</option>
                     <option value="사과">사과</option>
                     <option value="바나나">바나나</option>
                     <option value="복숭아">복숭아</option>
                     <option value="아보카도">아보카도</option>
                     <option value="무">무</option>
                     <option value="귤">귤</option>
                     <option value="당근">당근</option>
                     <option value="딸기">딸기</option>
                  </select>
                  <ul>
                     <li><input type="submit" value="REGISTER" /></li>
                  </ul>
               </div>
            </div>
         </form>
      </section>
   </section>

   <!-- Footer -->
   <section id="footer">
      <ul class="icons">
         <li><a href="#" class="icon brands alt fa-twitter"><span
               class="label">Twitter</span></a></li>
         <li><a href="#" class="icon brands alt fa-facebook-f"><span
               class="label">Facebook</span></a></li>
         <li><a href="#" class="icon brands alt fa-instagram"><span
               class="label">Instagram</span></a></li>
         <li><a href="#" class="icon brands alt fa-github"><span
               class="label">GitHub</span></a></li>
         <li><a href="#" class="icon solid alt fa-envelope"><span
               class="label">Email</span></a></li>
      </ul>
      <ul class="copyright">
         <li>&copy; 2021.보쌈김치</li>
         <li>Design: <a href="http://html5up.net">진로소주 맛있땅</a></li>
      </ul>
   </section>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

   <script>
      function login() {
         var view = document.getElementById('sec_login');
         if (view.style.display == 'none' && view.style.display == 'none') {
            view.style.display = 'block';
         } else {
            view.style.display = 'none';
         }
      }

      function register() {
         var view = document.getElementById('sec_register');
         if (view.style.display == 'none') {
            view.style.display = 'block';
         } else {
            view.style.display = 'none';
         }
      }
   </script>

</body>
</html>