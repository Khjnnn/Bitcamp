<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var btn = document.getElementById("myBtn");
		var handler = function(event) {
			switch (event.type) {
			case "click":
				alert('click');
				break;
			case "mouseover":
				event.target.style.backgroundColor = "red";
				break;
			case "mouseout":
				event.target.style.backgroundColor = "";
				break;
			}
		};
		btn.onclick = handler;
		btn.onmouseover = handler;
		btn.onmouseout = handler;
	}
</script>
</head>
<body id="body">
<input type="button" id="myBtn" value="Click"/>

</body>
</html>