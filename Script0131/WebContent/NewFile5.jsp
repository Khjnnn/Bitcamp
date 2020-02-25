<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var object= {};
Object.defineProperty(object,'name',{
	value:'dd',
	writeable : true,
	enumerable : true,
	configurable : true
})
object.name='other';
for(var i in object){
	console.log(i+':'+object[i]);
}

</script>
</head>
<body>

</body>
</html>