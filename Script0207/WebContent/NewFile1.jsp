<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">		
$(document).ready(function(event){
	$('textarea').keyup(function(){
		//남은글자수
		var inputLength = $(this).val().length;
		var remain = 150 - inputLength;
		//문서객체에 입력
		$('h1').html(remain);
		
		//남은글자수가 없으면 문서객체의 색상을 변경
		if(remain>=0){
			$('h1').css('color','black');
		}else{
			$('h1').css('color','red');
		}
	});
})


</script>
</head>
<body>
<div>
	<p>지금 내 생각을</p>
	<h1>150</h1>
	<textarea cols="70" rows="5">
	</textarea>
</div>
</body>
</html>