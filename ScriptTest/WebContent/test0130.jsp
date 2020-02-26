<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var data = [10,1,20,5,9];

data.sort(function(a,b){return a-b});
console.log(data);

for(var i=1; i<11 ; i++){
	for(var c=i; c<10 ; c++){
		document.write("&nbsp");
	}
	for(var j=0; j<((i*2)-1) ; j++){
		document.write("*");
		
	}
	document.write("<br>");
}


function calculator(op, num1, num2,/*function*/callback) {
	var result = "";
	switch (op) {
	case "+" :
		result = add(num1, num2);
	break;
	case "-" :
		result = sub(num1, num2);
	break;
	case "*" :
		result = mul(num1, num2);
	break;
	case "/" :
		result = div(num1, num2);
	break;
	default :
		result = "지원하지 않는 연산자입니다";
	}
	
	function add(num1, num2) {
		return num1+num2;
		}
		function sub(num1, num2) {
		return num1-num2;
		}
		function mul(num1, num2) {
		return num1*num2;
		}
		function div(num1, num2) {
		return num1/num2;
		}
	

	var callback = function (result1){
		document.write("두수 합은="+result1+" 임다");
	}
	callback(result);
}
	

	

calculator("+",2,3);
document.write(result);
console.log(calculator("+",2,3));

document.write(calculator("+",2,3));

</script>
</head>
<body>
<BR>
test

</body>
</html>