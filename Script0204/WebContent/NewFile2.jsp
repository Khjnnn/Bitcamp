<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function test(){
	document.getElementById('a').addEventListener('click', function(){console.log('a')});
	document.getElementById('b').addEventListener('click', function(){console.log('b')});
	document.getElementById('c').addEventListener('click', function(){console.log('c')});
}
function test3(){
	document.getElementById('a').addEventListener('click', function(){console.log('a')});
	document.getElementById('b').addEventListener('click', function(evt){
									evt.stopPropagation();
									console.log('b')});
	document.getElementById('c').addEventListener('click', function(){console.log('c')});
}

window.onload = function(){
	var testdiv = document.getElementById("testdiv");
	alert(testdiv.innerHTML); // "테스트입니다 "출력
}
window.onload = function(){
	var testdiv = document.getElementById("testdiv");
	testdiv.innerHTML = "<p> 요곤 <em> 내용을 </em> 추가합니다</p>";
}

</script>
</head>
<body >
<div id='a'>a 클릭
	<div id='b'> b클릭
		<div id='c'> c cli릭
		</div>
	</div>
</div>
<div id='testdiv'>
	<p> 이것은 <em> 테스트</em> 입니다</p>
</div>

</body>
</html>