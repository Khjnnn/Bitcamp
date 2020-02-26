<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
var changFlag = true;

$(document).ready(function() {
    // 타겟 목록 구하기
    var $target = $(".target");

    // 클릭 이벤트 등록
    $target.click(function() {
        if (changFlag == true){
         $(this).attr("src", "ch2.png");
            changFlag = false;
        }else{
         $(this).attr("src", "ch1.png");
            changFlag = true;
        }
    });
})
/*
x.addEventListener("click", myFunction);

var x = document.getElementById("a");

function myFunction() {
	$("a").attr('src',function(){
		return "ch2.png";
		});
}	
*/
</script>
</head>
<body>
<img class="target" src="ch1.png">

</body>
</html>