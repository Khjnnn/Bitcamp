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
<title>회원정보 수정창</title>
<style type="text/css">
.cls1{
font-size:40px;
text-align:center;
}
</style>
</head>
<body>
<h1 class="cls1">제품정보 수정</h1>
<form method="get" action="${contextPath }/emp/modProd.do">
		<table align="center">
			<tr>
			<td width=200><p align="right">아이디</p></td>
			<td width=400><input type="text" name="id" value="${prodInfo.id }" displayonly></td>
			</tr>
			<tr>
			<td width=200><p align="right">제품명</p></td>
			<td width=400><input type="text" name="name" value="${prodInfo.name }"></td>
			</tr>
			<tr>
			<td width=200><p align="right">가격(숫자)</p></td>
			<td width=400><input type="text" name="price" value="${prodInfo.price }"></td>
			</tr>
			<tr>
			<td width=200><p align="right">제품설명</p></td>
			<td width=400><input type="text" name="desc" value="${prodInfo.desc }"></td>
			</tr>
			<tr>
			<td width=200><p align="right">공급업체아이디</p></td>
			<td width=400><input type="text" name="vendid" value="${prodInfo.vendid }"></td>
			</tr>
			<tr align="center">
			<td width=400><input type="submit" value="수정하기">
			<td width=400><input type="reset" value="다시입력">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>