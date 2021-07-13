<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/list.css" />
<noscript>
   <link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>

<style>
@font-face {
   font-family: '서울한강장체EB';
   src: url(assets/fonts/서울한강장체EB.ttf) format('truetype');
}

body {
   font-family: 서울한강장체EB;
}

span {
   width : 500px;
   height : 400px;
   margin-right : 30px;
   padding-right : 10px;
}

img{
   width :100%;
   height : 100%;
}

.hungry{
   width : 100%;
   height : 400px;
}
</style>
<title>Insert title here</title>
</head>
<body>
   <section id="five" class="main style1">
      <div class="container" style="height : 100%;">
         <section>
            <h5>농가리스트</h5>
            <div class="hungry">
               <span class="image left"><img src="images/fruit/cabageList3.jpg" alt="" /></span>
               <ul>
                  <li>품명 : 국내산 친환경 배추</li>
                  <li>생산자 : 바름<br>도척면 도척로 699번길 8-1</li>
                  <br>
                  <li>보쌈, 수육 등의 고기와 함께 드셔도 좋고 겉절이로 무쳐 먹기에도 좋은 배추입니다.</li>
                  
                  <div>
                  <li><a href="book_selected.jsp" class="button">예약</a></li>
                  </div>
               </ul>   
            </div>

            <div class="hungry">
               <span class="image left"><img src="images/fruit/cabageList4.jpg" alt="" /></span>
               <ul>
                  <li>품명 : 샤인 노랑봄배추</li>
                  <li>공급업소 : 샤인트리<br>남양주시 금강로 960번길 39</li>
                  <br>
                  <li>노랑봄배추 특성상 배추 내부의 색이 노란색이며 맛이 극히 우수합니다. </li>
                  <li><a href="book_selected.jsp" class="button">예약</a></li>
               </ul>
            </div>
         </section>
      </div>
   </section>
</body>
</html>