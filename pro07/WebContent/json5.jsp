<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored = "false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	$("#checkJson").click(function() {
		$.ajax({
			type:"get",
			async:false,
			url:"${contextPath}/json3",
			success:function(data,textStatus){
				var jsonInfo = JSON.parse(data);
				var memberInfo = "회원정보<br>";
				memberInfo += "====<br>";
				for (var i in jsonInfo.members){
					memberInfo += "이름: " + jsonInfo.members[i].name + "<br>";
					memberInfo += "나이: " + jsonInfo.members[i].age + "<br>";
					memberInfo += "성별: " + jsonInfo.members[i].gender + "<br>";
					memberInfo += "별명: " + jsonInfo.members[i].nickname + "<br><br><br>";
				}
				var bookInfo = "<br> 도서정보 <br>";
				bookInfo += "====<br>";
				for (var i in jsonInfo.books){
					bookInfo += "제목: " + jsonInfo.books[i].title + "<br>";
					bookInfo += "저자: " + jsonInfo.books[i].writer + "<br>";
					bookInfo += "가격: " + jsonInfo.books[i].price + "<br>";
					bookInfo += "장르: " + jsonInfo.books[i].genre + "<br>";
					imageURL = jsonInfo.books[i].img;
					bookInfo += "<img src="+imageURL+" />"+"<br><br><br>";
				}
				$("#output").html(memberInfo+"<br>"+bookInfo);
			},
			error:function(data,textStatus){
				alert("error ~~~");
			},
			complete:function(data,textStatus){
				console.log("완료");
			}
		}); //end ajax		
	});
});


</script>
</head>
<body>
<a id="checkJson" style="cursor:pointer">데이터 수신하기</a><br><br>
<div id="output"></div>
</body>
</html>