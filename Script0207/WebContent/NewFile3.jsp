<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#all-check').change(function(){
		if(this.checked){
			$('#check-item').children().prop('checked',true);
		}else{
			$('#check-item').children().prop('checked',false);
		}
	})
	
})
</script>
</head>
<body>
<input type="checkbox" id="all-check"/>
<label>all</label>
<div id="check-item">
<input type="checkbox"/>
<label>AQ</label>
<input type="checkbox"/>
<label>BB</label>
<input type="checkbox"/>
<label>CC</label>
</div>
</body>
</html>