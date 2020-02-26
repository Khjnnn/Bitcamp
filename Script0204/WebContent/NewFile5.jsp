<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function light(){
	if(!document.getElementsByTagName) return false;
	var rows = document.getElementsByTagName("td");
	// 모든 tr
	for(var i =0 ; i<rows.length;i++){
		rows[i].onmouseover = function(){
			this.style.fontWeight = "bold";
		}
		rows[i].onmouseout = function(){
			this.style.fontWeight = "normal";
		}
	}
}
</script>
</head>
<body onload='light()'>
<table border="1">
<tr>
	<td> d </td>
	<td> 222 </td>
	<td>333 </td>
	<td> 444</td>
</tr>
<tr>
<td> saasda </td>
<td> saasda </td>
<td> saasda </td>
<td> saasda </td>
</tr>
<tr>
	<td> d </td>
	<td> 222 </td>
	<td>333 </td>
	<td> 444</td>
</tr>
</table>
</body>
</html>