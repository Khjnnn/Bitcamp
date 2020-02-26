<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
div { border : 1px solid black;}
li { 
   list-style-type : none;
   border : 1px solid rgba(234, 236, 238) ;
}
.selected{
   background : rgba(139, 199, 235, .5);
}
</style>
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
   $(document).ready(function(){

      //add : <li> 생성, li에 input 내용 담기, 그 <li>를 <ul>에 append
      $('#add').click(function(){
         if($('#input').val() == ''){
            alert('메뉴 이름을 입력하세요');            
         }else{
            $('<li></li>').text($('#input').val()).appendTo('ul');
         }
      });
      
      //이벤트 버블링, event.target으로 LI선택하기
      var selected = false;
      selectedIndex = undefined;
      $('ul').click(function(){
         if(selected == false){
            $(event.target).addClass('selected');
            selected = true;
            selectedIndex = $(event.target).index();
         }else{
            $(event.target).removeClass('selected');
            selected = false;
            selectedIndex = undefined;
         }
      });
      
   
      //수정 클릭하면 선택된 요소의 내용 변경
      $('#modify').click(function(){
         var selected = $('li').eq(selectedIndex);
         if(selectedIndex == undefined){
            alert('아무것도 선택하지 않으셨습니다');
         }else if($('#input').val() == ''){
            alert('메뉴 이름을 입력하세요');
         }else{
            selected.text($('#input').val());
         }
      });
      
      //선택 후 삭제 누르면 선택 요소 삭제
      $('#delete').click(function(){
         var selected = $('li').eq(selectedIndex);
         if(selectedIndex == undefined){
            alert('아무것도 선택하지 않으셨습니다');
         }else{
            selected.remove();
         }
      });
      
      //선택 후 위로 누르면 선택 요소 위로
      //어레이의 인덱스 자체를 바꿔야 함
      $('#up').click(function(){
         var selected = $('li').eq(selectedIndex);
         var prev = selected.prev();
         
         if(selectedIndex == 0){
            alert('이미 제일 위입니다');
         }else if(selectedIndex == undefined){
            alert('우선 선택부터 하세요');
         }else{
            var tmp = prev.clone(true);
            prev.remove();
            selected.after(tmp);
            
            selectedIndex--;
         }
      });
      
      $('#down').click(function(){
         var selected = $('li').eq(selectedIndex);
         var next = selected.next();
         
         if(selectedIndex == $('li').length -1){
            alert('이미 제일 아래입니다');
         }else if(selectedIndex == undefined){
            alert('우선 선택부터 하세요');
         }else{
            var tmp = next.clone(true);
            next.remove();
            selected.before(tmp);
            selectedIndex++;
         }
      });
      
   });
</script>
</head>
<body>
<input id = "input" type = "text" size = "15" placeholder = "메뉴 이름 입력">
<button id = "add">추가</button>
<button id = "modify">수정</button>
<button id = "delete">삭제</button>
<button id = "up">위로</button>
<button id = "down">아래로</button>
<br><br>
<div>
   <ul>
      <li>메뉴 1</li>
      <li>메뉴 2</li>
      <li>메뉴 3</li>
   </ul>
</div>
</body>
</html>