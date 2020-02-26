<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.redColor {
	color: red;
}

.blueColor {
	color: blue;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('td:contains("jQuery")') //td중 제이쿼리포함셀
		.siblings()
		.addClass('redColor')
		.parent()
		.find('td:eq(0)')
		.addClass('blueColor'); //
	})
</script>
</head>
<body>
	<table border="1">
		<tr>
			<td> java </td>
			<td> 기본 </td>
		</tr>
		<tr>
			<td> mobile </td>
			<td> 쿼모기본 </td>
		</tr>
		<tr>
			<td>jQuery</td>
			<td> 제이쿼리기보오온 </td>
		</tr>
	</table>

</body>
</html>