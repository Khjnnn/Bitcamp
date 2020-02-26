<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("p, div").css({"border":"2px solid yellow"});
	$("div#after").find("p").addBack().css({"backgroundColor":"aqua"});	
})


</script>
</head>
<body>

<div id="after">
	<p> .add백 적용후 </p>
	<p> 안녕하세요 데브쿠마입니다 </p>
</div>

</body>
</html>