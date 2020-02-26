<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function getArgs(){
	var args = new Object();
	var query = location.search.substring(1);
	var pairs = query.split("&");
	for (var i = 0 ; i < pairs.length; i++){
		var pos = pairs[i].indexOf('=');
		if (pos == -1) continue;
		var argname = pairs[i].substring(0,pos); //이름추출
		var value = pairs[i].substring(pos+1); //값추출
		value = decodeURIComponent(value); //디코딩
		args[argname] = value;
	}
	return args;	
}
var as = getArgs();

console.log(as);

</script>
</head>
<body>

</body>
</html>