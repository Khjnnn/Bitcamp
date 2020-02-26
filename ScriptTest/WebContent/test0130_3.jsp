<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.info{
font-size: 14pt;
}
.panel {
width: 600px;
height: 400px;
position: relative;
border: 2px solid #000;
}
.panel #fish {
position: absolute;
left: 250px;
top: 150px;
}

</style>
<script src="jquery-1.11.0.min.js"></script>
</head>

<body>
<div>
현재점수 <span id="score">0</span>
</div>
<div class="panel" id="pan">
<img src="fish1.png" id="fish">
</div>
<script>
$(document).ready(function() {
// 점수 변수
var count = 0;
// 점수를 출력할 요소
var score = $("#score");
// 여기에 코드를 입력해주세요.
// 게임 진행 유무 판단 변수
var playing = true;
// 물고기에 클릭 이벤트 등록
$("#fish").click(function() {
if (playing == true) {
// 점수 증가
	count++;
	score.html(count);
	}
	});
//게임을 5초후에 종료시켜 줍니다.
setTimeout(function() {
playing = false;
alert("게임이 종료 되었습니다.")
}, 5000);
});
</script>
</body>
</html>