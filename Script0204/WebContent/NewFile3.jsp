<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var testdiv = document.getElementById("testdiv");
	var para = document.createElement("p");
	var txt1 = document.createTextNode("this");

	para.appendChild(txt1);
	console.log(para);
	testdiv.appendChild(para);
	var emphasis = document.createElement("em");
	var txt2 = document.createTextNode("아아아");
	
	emphasis.appendChild(txt2);
	para.appendChild(emphasis);
	
	var txt3 = document.createTextNode(" 입니다");
	para.appendChild(txt3);
	
	var sp1 = document.createElement("span");
	var sp2 = document.getElementById("child");
	
	var parent = sp2.parentNode;
	var txt5 = document.createTextNode(" 우리 사이는 원 ");
	var txt6 = document.createTextNode(" 우리 사이에 투투투투투 ");
	sp1.appendChild(txt5); // 1
	parent.insertBefore(sp1,sp2); 
	parent.insertBefore(txt6,sp2); // 2
}
</script>
</head>
<body>

<div id='testdiv'>
	<span id="child"> foo </span> 
</div>
</body>
</html>