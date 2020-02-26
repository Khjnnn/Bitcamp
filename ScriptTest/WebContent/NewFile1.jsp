<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
outerloop:
	for(var i =0; i<10 ;i++){
		innerloop:
			for(var j=0 ; j<10 ;j++){
				if(j>3) break;
				if(i==2) break innerloop;
				if(i==4) break outerloop;
				console.log("i="+i +"  j=" + j);
			}
	}
	console.log("final == " + i + " j=" + j)
</script>
</head>
<body>

</body>
</html>