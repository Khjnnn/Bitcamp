<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored = "false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품입력창</title>
</head>
<body>
<form method="get" action="${contextPath }/emp/addProd.do">
		<h1> 제품입력 </h1>
		<table>
			<tr>
			<td width=200><p align="right">아이디</p></td>
			<td width=400><input type="text" name="id"></td>
			</tr>
			<tr>
			<td width=200><p align="right">제품명</p></td>
			<td width=400><input type="text" name="name"></td>
			</tr>
			<tr>
			<td width=200><p align="right">가격(숫자)</p></td>
			<td width=400><input type="text" name="price"></td>
			</tr>
			<tr>
			<td width=200><p align="right">제품설명</p></td>
			<td width=400><input type="text" name="desc"></td>
			</tr>
			<tr>
			<td width=200><p align="right">공급업체아이디</p></td>
			<td width=400><input type="text" name="vendid"></td>
			</tr>
			<tr>
			<td width=200><p>&nbsp</p></td>
			<td width=400><input type="submit" value="가입">
			<td width=400><input type="reset" value="다시">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>