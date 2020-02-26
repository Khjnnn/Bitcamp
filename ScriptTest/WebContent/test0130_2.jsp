<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var arr = [0,1,2,3,4,5,6,7,8,9];
var arr2 = [0,1,1,2,2,3,3,4,5,5];

function solution1(arr){
   var unique_array = []
   for(let i = 0;i < arr.length; i++){
   //첫번째와 두번째가 같지 않을 때만 배열에 추가
        if(arr[i] !== arr[i+1]){
            unique_array.push(arr[i])
       }
   }
   return unique_array;
}
var arr3 = solution1(arr2);

console.log(arr3);

/////////////////////
// 카운터 클로저를 생성합니다.

var counter = (function() {
 var privateCounter = 0;
 return {
   'inc': function() {
        privateCounter++;
   },
   'dec': function() {
        privateCounter--;
   },
   'val': function() {
        return privateCounter;
   }
 };
})();

counter.inc(); // 1증가
counter.inc(); // 1증가
counter.dec(); // 1감소
counter.inc(); // 1증가
console.log(counter.val()); // 1출력

function ho(){
	console.log("va1= "+value);
	var value = 10;
	console.log("va2= "+value);
}
ho();

</script>
</head>
<body>

</body>
</html>