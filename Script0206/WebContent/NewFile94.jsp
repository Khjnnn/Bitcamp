<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function (){
	$('img').attr('width',200);
});
$(document).ready(function (){
	$('img').attr('width',function(index){
		return (index+1)*100;
	});
});

</script>
</head>
<body>
<img src="Chrysanthemum.jpg"/>
<img src="Desert.jpg"/>
<img src="Hydrangeas.jpg"/>
</body>
</html>