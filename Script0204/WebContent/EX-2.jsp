<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	document.f1.b1.onclick = function(){ alert("Thanks!!");}
}
</script>
</head>
<body>
<input type="button" value="click he"
 onclick="if(window.numclicks) numclicks++; else numclicks=1; this.value='Click #'+numclicks; ">
 
<form name="f1">
	<input name="b1" type="button" value="press Me">
	
</form>
</body>
</html>