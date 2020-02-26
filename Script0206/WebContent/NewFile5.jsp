<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('tr:eq(0)').css('background', '#000000').css('color', 'white'); /* 첫번째줄. */
		//$('td:nth-child(3n+1)').css('background', '#565656'); /* 1, 4 .. */
		//$('td:nth-child(3n+2)').css('background', '#A9A9A9'); /* 2, 5.. */
		//$('td:nth-child(3n)').css('background', '#F9F9F9'); /* 0, 3.. */
		$( 'p:contains("jb")' ).css( 'color', 'red' );
		//$('tr:gt(1)').css('background', '#000000').css('color', 'white'); /* 초과 */
		$('h1:has(span)').css('background', 'red'); /* p태그를 가지는 div */
	});
</script>
</head>
<body>
<table>
	<tr><th>이름</th><th>혈액형</th><th>지역</th></tr>
	<tr><td>강민수</td><td>AB형</td><td>서울특별시 송파구</td></tr>
	<tr><td>구지연</td><td>B형</td><td>미국 캘리포니아</td></tr>
	<tr><td>김미화</td><td>AB형</td><td>미국 메사추세츠</td></tr>
	<tr><td>김선화</td><td>O형</td><td>서울 강서구</td></tr>
	<tr><td>남기주</td><td>A형</td><td>서울 노량진구</td></tr>
	<tr><td>윤하린</td><td>B형</td><td>서울 용산구</td></tr>
</table>
	<p>Lorem ipsum dolor sit amet.</p>
	<p>Aenean nec mollis jb nulla.</p> 
	<h1>Lorem <span>Ipsum</span> Dolor</h1>
	<h1>h1 Header</h1>
</body>
</html>