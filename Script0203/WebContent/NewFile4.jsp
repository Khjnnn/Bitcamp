<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function domTest1() {
		var nodObj = document.getElementById("myList");
		var childNodes = nodObj.childNodes;
		for (var i = 0; i < childNodes.length; i++) {
			console.log(childNodes[i].nodeType + " , " + childNodes[i].nodeName); // LI
			var textNode = childNodes[i].firstChild;
			console.log(textNode.nodeType + "," + textNode.nodeName + "," + textNode.nodeValue);
		}
	}
	function domTest2() { //차일드노드 > 정보출력 / 1번 다른방법 (고급)
		var nodObj = document.getElementById("myList");
		for (var node = nodObj.firstChild; node != null;node = node.nextSibling) {
			console.log(node.nodeType + ' , ' + node.nodeName);
			var textNode = node.firstChild;
			console.log(textNode.nodeType + ' , ' + textNode.nodeName + ' , '
					+ textNode.nodeValue);
		}
	}

	function domTest3() { // 속성변경
		var nodObj = document.getElementById("myList");
		var id = nodObj.getAttribute("id");
		console.log(id);
		nodObj.setAttribute("id", "test");
		id = nodObj.getAttribute("id"); // test
		console.log(id);
	}

	function domTest4() { // 
		var nodObj = document.getElementById("myList");
		var childNode = nodObj.firstChild;
		var parentNode = childNode.parentNode;
		console.log(parentNode.nodeType + ', ' + parentNode.nodeName); // UL
	}

	function domTest5() {
		var textnode = document.createTextNode("Water");
		var item = document.getElementById("myList").childNodes[0];
		item.replaceChild(textnode , item.childNodes[0]);
	}
</script>
</head>
<body>
	<ul id="myList"><li>Coffee</li><li>Tea</li><li>Milk</li></ul>
	<button onclick="domTest1()">domTest1</button>
	<button onclick="domTest2()">domTest2</button>
	<button onclick="domTest3()">domTest3</button>
	<button onclick="domTest4()">domTest4</button>
	<button onclick="domTest5()">domTest5</button>
</body>
</html>