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
	$('h1').css('background','orange').filter(':even').css('color','white').end().filter(':odd').css('color','red');
})

</script>

</head>
<body>
<h1>11</h1>
<h1>22</h1>
<h1>33</h1>
<h1>44</h1>
<h1>55</h1>
<h1>66</h1>
<h1>77</h1>

</body>
</html>