<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function setChildText(){ // 부모창에 값설정
opener.document.getElementById("pInput").value = document.getElementById("cInput").value;
}

function parentCallFunc(){
opener.callFunc();
}
</script>
</head>
<body>
<input type="text" id="cInput">
<button onclick="setChildText()">전달</button><br>
<button onclick="parentCallFunc()">부모함수호출</button><br>
<button onclick="window.close()"> 창닫기 </button>
</body>
</html>