<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function join(){
	var a = prompt("숫자:",null);
	var x = prompt("연산자:",null);
	var b = prompt("숫자:",null);
	if(a==null||b==null||x==null){
		alert("실패");
	}else {
		if(x=="+"){
			alert(a+x+b+"= "+(Number(a)+Number(b)));	
		}else if(x=="*"){
			alert(a+x+b+"= "+(Number(a)*Number(b)));
		}
		
	}	
}

function myFunction(value, index, array){
	
	return value > 5;
}

var nums1 = [45,4,9,16,25];
var nums2 = nums1.map(myFunction);
console.log(nums2); // tftt
var all18 = nums1.every(myFunction);
console.log(all18); //false
var txt = "";
nums1.sort(function(a,b){return a-b});
console.log(nums1);
console.log("dddddddddddddd");
nums1.forEach(fun2);


function fun2(value,index,array){
	txt= txt + value + "<br>";
	
}
console.log(txt);
</script>
</head>
<body>

<input type="submit" value="계산" onclick="join()">

</body>
</html>