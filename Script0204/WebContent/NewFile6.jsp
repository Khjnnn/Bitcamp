<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .init{ background-color: #4CAF50;}
 .intro{ color: red; }
</style>
<script type="text/javascript">
function styleHeaderSiblings(){
	if(!document.getElementsByTagName) return false;
	var headers = document.getElementsByTagName("h1");
	var a = getNextElement(headers[0].nextSibling);
	console.log(a);
	for(var i = 0; i < headers.length ; i++){
		var elem = getNextElement(headers[i].nextSibling);
		addClass(elem,"intro"); //class 프로퍼티 값을 변경한다
	}
}
function addClass(element, value){
	if(!element.className){
		element.className = value;
	}else{
		// 기존의 style 에 더하여 속성 추가하는 로직
		newClassName = element.className;
		newClassName += "";
		newClassName += value;
		element.className = newClassName;
	}
}
</script>
</head>
<body onload='styleHeaderSiblings()'>
	<h1>첫번째 제목</h1>
	<p class='init'>이것은 첫번째 단락입니다.</p>
	<p>테스트1</p>
	<h1>두번째 제목</h1>
	<p>이것은 두번쨰 단락입니다.</p>
	<p>테스트2</p>
</body>
</html>