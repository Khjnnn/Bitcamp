<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//변수
	var array = [
		{name: 'hanbit', link: 'http://hanb.co.kr'},
		{name: 'naver', link: 'http://naver.com'},
		{name: 'daum', link: 'http://daum.net'},
		{name: 'paran', link: 'http://paran.com'},
	];
	//each 메소드
	$.each(array, function (index,item) {
		//변수
		var output="";
		//문자열
		output += '<a href= "' + item.link + '">';
		output += '  <h1>' + item.name + '</h1>';
		output += '</a>';
		//넣기
		//document.body.innerHTML += output;
		document.getElementsByTagName("body")[0].innerHTML += output;
	})
	
})

</script>
</head>
<body>

</body>
</html>