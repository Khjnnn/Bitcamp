<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
var a = {
		id:1,
		name:'tam'
}
var b = {
		name:'tam-ne',
		hobby:'foorball'
}
var c = {
		name:'tam-new-new',
		job:'designer'
}
$.extend(a,b,c);
var newObj=$.extend({},a,b);
console.log(a);
console.log(newObj);

var a1={
	style:{
		top:100,
		left:200,
		width:300
	}, 
	duration:1000
}
var b1={
	style:{
		height:400
	}
}

$.extend(true,a1,b1);
console.log(a1);
/*
$(document).ready(function(){
	$('h1').filter(':even').css({
		backgroundColor:'black',
		color:"white"
	})
})

*/
$(document).ready(function(){
	$('h1').filter(function (index){
		return index % 3 == 0 ;
	}).css({
		backgroundColor:'black',
		color:"white"
	})
})



</script>

</head>
<body>
<h1>item - 0</h1>
<h1>item - 1</h1>
<h1>item - 2</h1>
<h1>item - 3</h1>
<h1>item - 4</h1>
</body>
</html>