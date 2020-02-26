<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
		font-family: Consolas, monospace;
		
	}

h1{
		color: red;
}
.abc {
		color: yellow;
	}
</style>
<script type="text/javascript">
function upcase(n){
	 if(n.nodeType == 3){
	    // 노드가 Text노드이면 덱스트를 대문자로 바꾼다
	    n.nodeValue = n.nodeValue.toUpperCase();
	  }else{
	    // 현재 노드가 Text노드가 아니면 각 자식에 대해 재귀적으로 호출
	     var kids = n.childNodes;
	     for(var i=0; i<kids.length; i++) upcase(kids[i]);
	 }
}
function myF(){
	document.getElementsByTagName('h1')[0].removeAttribute('class');
	}


</script>

</head>
<body onload="upcase(document.body)">
<h1 class="abc"> sadsadasd H </h1>
<h1> adsdassadasdsadsadasd H </h1>
<p>dom child</p>
<button onclick="myF()"> go </button>
 <div>
   <h1>aa</h1>
   <h2>bb</h2>
 </div>
 <div>
   <h1>cc</h1>
   <h1>dd</h1>
 </div>
 
</body>

</html>