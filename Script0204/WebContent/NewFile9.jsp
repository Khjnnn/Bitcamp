<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var a = document.getElementsByTagName("a")[0];
	a.onclick = function(event){
		console.log(event.bubbles); //이벤트 버블여부
		console.log(event.cancelable); //기본동작 취소 가능여부
		event.preventDefault();
		console.log(event.defaultPrevented); // true 면 preventDefault() 호출상태
	}
	
}
</script>
</head>
<body>
	<a href="https://w3schools.com/">go to school.com</a>
</body>
</html>