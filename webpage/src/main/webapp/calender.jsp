<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
	<form action="" method="post">
	<div id="testDatepicker"></div>
	<input type="text" id="date" name="hide">
	<button type="button" id="btn" onclick="javascript:buttonClick();">버튼</button>
	
	</form>
	<script>
		$(function(){
			$( "#testDatepicker").datepicker({
				minDate: 0,
				changeMonth : true,
				changeYear : true,
				nextText : '다음 달',
				prevText : '이전 달',
				dateFormat : "yymmdd",
				changeMonth : true,
				dayNames : ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'],
				dayNamesMin : ['월','화','수','목','금','토','일'],
				monthNamesShort : ['1','2','3','4','5','6','7','8','9','10','11','12'],
				monthName : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
			});
		});
		function buttonClick(){
			$('#date').val($('#testDatepicker').val());
			}
	</script>
	
</body>
</html>