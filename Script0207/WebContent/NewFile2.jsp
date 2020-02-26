<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
p{
	width:80%;
	margin:auto;
	padding:20px;
	text-align:center;
	border: 1px solid #bcbcbc;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var jbWidth = $('p').width();
		$('p').append(jbWidth);
		$(window).resize(function(){
			jbWidth = $('p').width();
			$('p').empty().append(jbWidth);
		});		
	});
</script>
</head>
<body>
<p></p>
</body>
</html>