<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	

var inputs = document.querySelectorAll('.itemList');
inputs.forEach(function(input) {
	
	input.addEventListener('click', function(event) {
		alert('clicked');
		console.log(event.currentTarget);
	});
});

var itemList = document.querySelector('.itemList');
var li = document.createElement('li');
var input = document.createElement('input');
var label = document.createElement('label');
var labelText = document.createTextNode('이벤트 위임 학습');

	input.setAttribute('type', 'checkbox');
	input.setAttribute('id', 'item3');
label.setAttribute('for', 'item3');
label.appendChild(labelText);
	li.appendChild(input);
	li.appendChild(label);
itemList.appendChild(li);
})
</script>
</head>
<body>
<h1>오늘의 할 일</h1>
<ul class="itemList">
	<li>
		<input type="checkbox" id="item1">
		<label for="item1">이벤트 버블링 학습</label>
	</li>
	<li>
		<input type="checkbox" id="item2">
		<label for="item2">이벤트 캡쳐 학습</label>
	</li>
</ul>
</body>
</html>