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
        font-family:"굴림";       
    }
    div, p, ul, li{
        border:1px #eeeeee solid;
        margin:10px;
    }
    ul {
     padding:10px;
    }
    li.select {
        background-color:#ccc;
    }
</style>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 // 1번문제
	$("#footer").css("color", "red");
 // 2번문제
	$(".test1").css("color", "red");
 // 3번문제
	$("ul.menu li.select").css("color", "red");
 // 4번문제
	$('[class*="test"]').css("color", "red");
 // 5번문제
	$('#content').css("color", "red");
 // 6번문제
	$('div#header,div#footer').css("color", "blue");
});

</script>
</head>
<body>
<div id="samplePage" class="page" >
        샘플 페이지(div, id=samplePage, class=page)
    <div id="header">               
        헤더 영역(div, id=header)
    </div>
    <div id="content" class="sample-content">
         노드 찾기(div, id=content, class=sample-content)
        <ul class="menu">
                  일반 노드 찾기(ul, class=menu)
            <li data-value="1">id로 찾기(li, data-value=1)</li>
            <li class="select">tag로 찾기(li, class=select)</li>
            <li data-value="2">class로 찾기(li, data-value=2)</li>
            <li class="test1">속성으로 찾기(li, class=test1)</li>
        </ul>
        <div class="content-data">
                 자식 노드 찾기(div, class=content-data)
            <p class="test1">1. 모든 자식 노드 찾기(p, class=test1)</p>
            <p>2. 특정 자식 노드만 찾기(p)</p>
            <p class="test2">3. 마지막 자식 노드 찾기(p, class=test2)</p>
        </div>
    </div>
    <div id="footer">               
         푸터 영역(div, id=footer)
    </div>      
</div>  
</body>
</html>