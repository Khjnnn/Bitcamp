<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function myF(){
	var msg, x;
	msg = document.getElementById("p01");
	msg.innerHTML = "";
	x = document.getElementById("demo").value;
	try {
		if(x == "") throw "empty";
		if(isNaN(x)) throw "not a number";
		x = Number(x);
		if(x < 5) throw "too low";
		if(x > 10) throw "too high";
		}
		catch(err) {
		msg.innerHTML = "Input is " + err;
		}	
}

</script>
</head>
<body>
<p>Please input a number between 5 and 10:</p>
<input id="demo" type="text">
<button type="button" onclick="myF()">Test Input</button>
<p id="p01"></p>
</body>
</html>