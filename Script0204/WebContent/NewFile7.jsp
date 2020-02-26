<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function () {
	// 버튼을 클릭했지만 event가 버블되어 body에서 catch된다
	document.getElementById('body').onclick = function(event){
	// currentTarget: 현재 이벤트를 처리중인 element
	
	// this: 이벤트가 속한 element
	console.log(event.currentTarget === document.body); //true
	console.log(this === document.body); //true
	// target: 현재 실제 타겟(클릭된) 요소를 가리킨다
	console.log(event.target === document.getElementById("myBtn"));//true
	}
}
</script>
</head>
<body id='body'>
<input type="button" id="myBtn" value="Click"/>

</body>
</html>