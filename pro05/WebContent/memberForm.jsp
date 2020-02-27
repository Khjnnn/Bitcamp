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
<title> 회원가입 </title>
</head>
<body>
	<form method="get" action="${contextPath }/mem/addMember.do">
		<h1> 회원가입 </h1>
		<table>
			<tr>
			<td width=200><p align="right">아이디</p></td>
			<td width=400><input type="text" name="id"></td>
			</tr>
			<tr>
			<td width=200><p align="right">비밀번호</p></td>
			<td width=400><input type="password" name="pwd"></td>
			</tr>
			<tr>
			<td width=200><p align="right">이름</p></td>
			<td width=400><input type="text" name="name"></td>
			</tr>
			<tr>
			<td width=200><p align="right">이메일</p></td>
			<td width=400><input type="text" name="email"></td>
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