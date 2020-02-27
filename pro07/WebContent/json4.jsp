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
		var _jsonInfo = '{"name":"박지성","age":"25","gender":"남","nickname":"날쌘돌이"}';
		$.ajax({
			type:"get",
			async:false,
			url:"${contextPath}/json",
			data:{jsonInfo: _jsonInfo},
			success:function(data,textStatus){
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
<a id="checkJson" style="cursor:pointer">전송</a><br><br>
<div id="output"></div>
</body>
</html>