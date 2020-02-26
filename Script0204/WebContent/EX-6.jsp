<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	//5초후
	setTimeout(function (){
		//변수선언
		var value = $('select > option:selected').val();	
		//출력
		alert(value);
		},5000);
});
</script>
</head>
<body>
<select>
	<option>Apple</option>
	<option>Bag</option>
	<option>Cat</option>
	<option>Elephant</option>
</select>
</body>
</html>