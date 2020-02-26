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
		//$("#div1 :checked").wrap("<span style='background-color:red'>");
		$("#div1 :enabled").wrap("<span style='background-color:red'>");
	})
</script>
</head>
<body>
	<div id='div1'>
		<form action="">
			11: <input type="text" name="user"><br> 
			22: <input type="checkbox" name="vehicle"><br> 
			33: <input type="checkbox" name="vehicle" checked="checked"><br>
			44: <input type="checkbox" name="vehicle"><br> 
			55:	<textarea name='longtext'>입력해주세요</textarea>
			<br> <input type="submit">
		</form>
	</div>
	<div id='div2'>
		<form action="">
			11: <input type="text" name="user"><br>
			22: <input type="checkbox" name="vehicle"><br> 
			33: <input type="checkbox" name="vehicle" checked="checked"><br>
			44: <input type="checkbox" name="vehicle"><br> 
			<input type="submit">
		</form>
	</div>
</body>
</html>