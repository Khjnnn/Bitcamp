<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body{
            font-size:9pt;
        }
        .panel {
            width:840px;
            height:415px;
            border:1px solid #ccc;
        }
        .nav {
            width:840px;
            text-align:center;
        }
        button {
        	margin-top:5px;
        	padding:5px;
        }
    </style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">		
	
	var num = 1;
	$(document).ready(function() {
		// 타겟 목록 구하기
		var $target = $("#play");
		var $stop = $("#stop");
		var $prev = $("#prev");
		var $next = $("#next");
		
		// 클릭 이벤트 등록
		$target.click(function() {
			
			play = setInterval(function() {
				$('.car img').attr("src", "img/"+(num+1)+".jpg");
				num++;
				if(num==60){
					num=1;
				}
			}, 90);
		});
		// 재생 함수
		$stop.click(function() {
			clearInterval(play);
		})
		// 스탑 함수
		$prev.click(function() {
			
			if(num>1 && num<=60){
				$('.car img').attr("src", "img/"+(num-1)+".jpg");
				num--;
			}else{
				num=60;
				$('.car img').attr("src", "img/"+(num)+".jpg");
			}
		});
		// 이전함수
		$next.click(function() {	
			if(num>=1 && num<60){
				$('.car img').attr("src", "img/"+(num+1)+".jpg");
				num++;
			}else{
				num=1;
				$('.car img').attr("src", "img/"+(num)+".jpg");
			}
		});
		// 다음 함수 
		
	});
</script>
</head>
<body>
<div class="car">
	<img src="img/1.jpg" id="view"/>
</div>	           
<div class="nav">
       <button id="play">play</button>
       <button id="stop">stop</button>
       <button id="prev">prev</button>
       <button id="next">next</button>
</div>
	
</body>
</html>