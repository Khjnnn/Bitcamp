<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<script>


function join(){
	var input = prompt("이름:",null);
	if(input==null){
		alert("실패");
	}else {
		alert(input + " 님 성공");
	}	
}

</script>
</head>
<body>
<input type="button" value="가입" onclick="join()">
</body>
</html>