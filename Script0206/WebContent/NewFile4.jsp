<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.first { color: red; }
.second { color: pink; }
.third { color: orange; }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	$(".me").siblings().css({"border": "2px solid red"});
	//$(".me").next().css({"border": "2px solid red"});
	//$(".me").nextAll().css({"border": "2px solid red"});
	//$(".me").prev().css({"border": "2px solid red"});
	//$(".me").prevAll().css({"border": "2px solid red"});
});
</script>
</head>
<body>
<ul>ul (부모)
<li>li (형제)</li>
<li>li (형제)</li>
<li class="me">li (나)</li>
<li>li (형제)</li>
<li>li (형제)</li>
</ul>
</body>
</html>