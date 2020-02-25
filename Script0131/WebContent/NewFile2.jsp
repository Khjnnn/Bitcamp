<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function getPropertynames(o){

	var arr1 = [];
	arr1.push(o);
	return arr1;
	}
	// 실행코드
	var obj = {name:'홍길동', age:30};
	var arr = getPropertynames(obj);
	console.log(arr); // [name, age]
	
function copyProperties(from){
		var new_obj = new Object();
		new_obj = from;
		return new_obj;
}
	// 실행코드
	var obj = {name:'홍길동', age:30};
	var obj2 = copyProperties(obj);
	console.log(obj2);

function copyUndefineProperties(from, to){
	
	for(p in  from){ // 프롬 안에 모든 프로퍼티
		if(!(p in to)) to[p] = from[p]; // 투 안에 프로퍼티와 비교 > F > to안(p)에 프롬(p) 넣음 
	}
}
	// 실행코드
	var obj1 = {name:'김길동', age:30};
	var obj2 = {name:'홍길동', hobby:'게임'};
	copyUndefineProperties(obj2, obj1);
	console.log(obj1); // {name: "홍길동", hobby: "게임", age: 30}
	
</script>

</head>
<body>

</body>
</html>