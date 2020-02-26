<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var stack = new Stack();
	console.log(stack.isEmpty()); //결과는 true
	stack.push(5);
	stack.push(8);
	console.log(stack.peek()); // 결과는 8
	stack.push(11);
	console.log(stack.size()); // 결과는 3
	console.log(stack.isEmpty()); //결과는 false
	stack.push(15);
	stack.pop();
	stack.pop();
	console.log(stack.size()); // 결과는 2
	stack.print(); // 결과는 [5, 8]
	function Stack() {
		var items = [];
		this.push = function(element) {
			items.push(element);
		};
		this.pop = function() {
			return items.pop();
		};
		this.peek = function() {
			return items[items.length - 1];
		};
		this.isEmpty = function() {
			return items.length == 0;
		};
		this.size = function() {
			return items.length;
		};
		this.clear = function() {
			items = [];
		};
		this.print = function() {
			console.log(items.toString());
		};
		this.toString = function() {
			return items.toString();
		};

	}
</script>
</head>
<body>

</body>
</html>