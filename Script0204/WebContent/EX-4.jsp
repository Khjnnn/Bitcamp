<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function sortkids(){
	var parent = document.getElementById("list");
	var child = parent.childNodes;
	var tmp = [];
	   
	for(var i=0;i<chlid.length;i++){		
		var elem = getNextElement(child[i].NextSibling);
		if(elem != null){
			tmp.push(elem.childNodes[0].nodeValue);
		}
	}
	tmp.sort();
 
}


</script>

</head>
<body>
 <ul id='list'><li>c</li><li>b</li><li>a</li><li>d</li></ul>
 <button onclick="sortkids()">Sort list</button>
</body>
</html>