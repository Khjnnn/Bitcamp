<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
function execute(){
//$( ":text" ).val( "this is it" );
//$( ":enabled" ).val( "this is it" );
//$( ":disabled" ).val( "this is it" );
//$( ":input" ).val( "this is it" );
alert($( ":radio" ).val());
}
</script>

</head>
<body>
<form>
<input type='text' name='input1'>
<input type='text' name='input2' disabled="disabled">
<input type='password' name='input3'>
<input type="radio" name="radio" value="01" checked="checked"/>
<input type="radio" name="radio" value="02"/>
</form>
<button onclick='execute()'>Click</button>
</body>
</html>