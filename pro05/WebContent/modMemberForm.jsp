<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1 class="cls1">회원정보 수정</h1>
<form method="get" action="${contextPath }/mem/modMember.do?id=${memInfo.id }">
		<table align="center">
			<tr>
			<td width=200><p align="right">아이디</p></td>
			<td width=400><input type="text" name="id" value="${memInfo.id }" disabled></td>
			</tr>
			<tr>
			<td width=200><p align="right">비밀번호</p></td>
			<td width=400><input type="password" name="pwd" value="${memInfo.pwd }"></td>
			</tr>
			<tr>
			<td width=200><p align="right">이름</p></td>
			<td width=400><input type="text" name="name" value="${memInfo.name }"></td>
			</tr>
			<tr>
			<td width=200><p align="right">이메일</p></td>
			<td width=400><input type="text" name="email" value="${memInfo.email }"></td>
			</tr>
				<tr>
			<td width=200><p align="right">가입일</p></td>
			<td width=400><input type="text" name="joinDate" value="${memInfo.joinDate }" disabled></td>
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