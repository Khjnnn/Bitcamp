<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.menu{
    display: block;
}
ul{
   list-style-image:none;
   list-style-position:outside;
   list-style-type:none;
   margin:0;
   padding:0; 
}
.year{
    display: block;

}
ul.year::before {
    
    
}
.menu a{cursor:pointer;

}
.menu .hide{display:none;

}


</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
function d(){
	var ad = document.getElementById(id);
	
}
$(document).ready(function(){
    $(".menu>a").click(function(){
        var submenu = $(this).next("ul");
        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
        if( submenu.is(":visible") ){
        	$(this).closest("img.img").attr("src","menu02.gif");
        	submenu.slideUp();           
        }else{
        	$(this).closest("img.img").attr("src","menu03.gif");
        	submenu.slideDown();            
        }
    })


    // menu class 중에 두번째 있는 menu 의 하위에 있는 a태그에 클릭 이벤트를 발생시킨다.
    //$(".menu:eq(1)>a").click();
});


		
		
		$('#btn').click(function() {
			$('.page').toggle('slow'); // 토글함수 		
	})
</script>
</head>
<body>
<button id="btn"> toggle show </button>
<div class="page">
<ul class="year">asdsa</ul>
	<h1> wkdokaoskdokd hoo!!!!!!</h1>
	<p> door amet tdWwdd wokdhiowpko dlksdksdojwiijdid </p>
</div>

<ul><li class="menu"><img class="img"><a>2013</a> 
    <ul class="hide">
        <li class="menu"><img><a>January</a>
        	<ul class="hide">
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            </ul>
        </li>
        <li class="menu"><img><a>Febrary</a>
        	<ul class="hide">
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            <li>test</li>
            </ul>
        </li>
    </ul>
  </li>
</ul>


</body>
</html>	