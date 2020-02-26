<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var o = new Object();
o.square = function(x){return x*x;};
var y = o.square(16);
console.log(y);

var a = new Array(3);
a[0]= function(e){return e*e;};
a[1]= 20;
a[2]= a[0](a[1]);


function copyPropertyNamesToArray(o,a){
	if(!a)a = [];
	for(var property in o) a.push(property);
	return a;
}
copyPropertyNamesToArray(o,a);
var i = a[3];
document.write(i);
document.write("<br>");
document.write(a);
document.write("<br>");
document.write(o);
</script>
</head>
<body>

</body>
</html>