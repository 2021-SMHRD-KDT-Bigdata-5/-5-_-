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
   font-family: '�����Ѱ���üEB';
   src: url(assets/fonts/�����Ѱ���üEB.ttf) format('truetype');
}

body {
   font-family: �����Ѱ���üEB;
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
         <li><a href="statics.jsp">��깰 ���</a></li>
         <li><a href="list.jsp">�󰡸���Ʈ</a></li>
         <%if(member != null){%>
         <li><a href="providerbooklist.jsp">����Ȯ��</a></li>
         <li><a href="logout.jsp">�α׾ƿ�</a></li>
         <%}else{%>
         <li><a href="book.jsp">����</a></li>
         <li><a href="customerbooklist.jsp">����Ȯ��</a></li>
         <%} %>
         <li style="float:right; font-size:25px; color:white; padding:14px 16px"><%if (member != null){%> 
         <%=member.getFarm_name()%> �����ִ� ȯ���մϴ�!
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
                  <h2>�츮 FARMCONN��</h2>
               </header>
               <p>
                  FARMCONN�� ä���� ���ŷ��� ���� �߰� ���뿡�� �߻��ϴ� ����� �ּ�ȭ�Ͽ� ���� ����� ������ ������ �����մϴ�.<br>
                  ���ÿ� �Һ��ڿ��� �ŷ��� �� �ִ� ��깰�� �����մϴ�.<br> �ֺ��� �̿��� �����ϴ� ���ѼҺ��� ��ȸ�� ��ġ��
                  ��Ű���� �մϴ�.<br>
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
                     ���ϡ���ä�� <br />�󰡿� ���� �ŷ�
                  </h2>
               </header>
               <p>����, ����, ���, ��, ����� ǰ���� �󰡿��� ���� �����غ�����.<br> �󰡿��� ������ ���� ���ŷ��� ������
                  �� �ֽ��ϴ�.</p>
                  <div style="float:right"><a href="list.jsp" class="button">�ڼ���</a><div>
            </div>
         </div>
      </div>
   </section>

   <!-- Three -->
   <section id="three" class="main style1 special">
      <div class="container">
         <header class="major">
            <h2>�����ϴ� ����</h2>
         </header>
         <div class="row gtr-150">
            <div class="col-4 col-12-medium">
               <span class="image fit"><img src="images/main/analytics.png"
                  alt="" /></span>
               <h3>��깰 ���޷� ����</h3>
               <p>������, �ӽŷ����� ����<br>���޷��� �����մϴ�</p>
               <ul class="actions special">
                  <li><a href="statics.jsp" class="button">�ڼ���</a></li>
               </ul>
            </div>
            <div class="col-4 col-12-medium">
               <span class="image fit"><img
                  src="images/main/financial-profit.png" alt="" /></span>
               <h3>���尡 �м�</h3>
               <p>���� ���Ž��� ������ �м��Ͽ�<br>�ùٸ� ���ŷ� �ݾ��� �����մϴ�</p>
               <ul class="actions special">
                  <li><a href="statics.jsp" class="button">�ڼ���</a></li>
               </ul>
            </div>
            <div class="col-4 col-12-medium">
               <span class="image fit"><img src="images/main/farmer.png"
                  alt="" /></span>
               <h3>��깰 ���ŷ�</h3>
               <p>�󰡿� �Һ����� �ǰ��� �ŷ��� �����մϴ�<br>���� �����ϼ���!</p>
               <ul class="actions special">
                  <li><a href="list.jsp" class="button">�ڼ���</a></li>
               </ul>
            </div>
         </div>
      </div>
   </section>

   <!-- Four -->
   <section id="four" class="main style2 special">
      <div class="container">
         <header class="major">
            <h2>��깰 ���ŷ� ����</h2>
         </header>
         <p>������ �����ϰ� �ִٸ� ���ŷ��� �����غ�����.</p>
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
                     <option value="">- ǰ�� -</option>
                     <option value="����">����</option>
                     <option value="���">���</option>
                     <option value="�ٳ���">�ٳ���</option>
                     <option value="������">������</option>
                     <option value="�ƺ�ī��">�ƺ�ī��</option>
                     <option value="��">��</option>
                     <option value="��">��</option>
                     <option value="���">���</option>
                     <option value="����">����</option>
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
         <li>&copy; 2021.���ӱ�ġ</li>
         <li>Design: <a href="http://html5up.net">���μ��� ���ֶ�</a></li>
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