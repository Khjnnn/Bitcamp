<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

// Call 예제
var obj = {
  string: 'aa',
  yell: function(val1, val2) {
    console.log(val1 + ', ' + val2 + ', ' + this.string);
	}
};

var obj2 = {
  string: 'bb'
};

obj.yell(1,2); // 1,2,aa
obj.yell.call(obj2,1,2); // 1,2,bb

</script>
</head>
<body>

</body>
</html>