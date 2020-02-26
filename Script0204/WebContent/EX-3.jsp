<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function divide(alpha,beta){
	if(beta ==0){
		throw {name:'ere'};
	} else {
		return alpha/beta;
	}
}
try{
	divide(10,0);
}catch(exception){
	alert('CATCH');
	console.log(exception);
	console.log(typeof exception);
	console.log(exception.name);
}

</script>
</head>
<body>

</body>
</html>