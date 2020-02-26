<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	document.getElementById('my-form').onsubmit = function(){
		return true;
	};
}

</script>
</head>

<body>
<form id="my-form">
	<label for="name">이름</label>
	<input type="text" name="name" id="name"/><br>
	<label for="pass">비번</label><br>
	<input type="password" name="pass" id="pass"/><br>
	<input type="submit" value="제출" />
</form>
</body>
</html>