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
	$("p.b").find('span.ip').css('font-size','2em');	
});
</script>
</head>
<body>
<p class="a">
	<span class="lo"> lorm </span>
	<span class="ip"> lpsim </span>
	<span class="do"> dolorm </span>
</p>
<p class="b">
	<span class="lo"> lorm </span>
	<span class="ip"> lpsim </span>
	<span class="do"> dolorm </span>
</p>

</body>
</html>