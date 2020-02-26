<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var openWin;

function openChild(){
window.name = "parentForm"; // 창이름 설정
// 자식창 띄우기
openWin = window.open("Child.jsp", "childForm", "width=570, height=350, resizable = no, scrollbars = no");
}

function setChildText(){ // 자식창에 값설정
openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
}

function callFunc(){
alert('callFunc22222');
}
</script>
</head>

<body>

<button onclick="openChild()"> Child Open </button> <br>
전달할 값 : <input type="text" id="pInput">
<button onclick="setChildText()">전달</button> 

</body>
</html>