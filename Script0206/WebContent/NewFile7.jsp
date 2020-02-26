<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.high-light-0{background: yellow;}
.high-light-1{background: orange;}
.high-light-2{background: blue;}
.high-light-3{background: green;}
.high-light-4{background: red;}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	// $(selector).each(function(index,item){}) 
	// selector 요소에 대해 각각 콜백함수 실행 
	$('h1').each(function(index,item){
		$(this).addClass('high-light-'+index); //class 속성추가
	}) 
	
})
</script>
</head>
<body>
<h1>item - 0</h1>
<h1>item - 1</h1>
<h1>item - 2</h1>
<h1>item - 3</h1>
<h1>item - 4</h1>
</body>
</html>