<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
function Rectangle(width,height){
	this.width = width;
	this.height = height;
}
*/
Rectangle.prototype.getArea = function(){
	return this.getWidth() * this.getHeight();
};

var rectangle = new Rectangle(5,7);

function Rectangle(w,h){
	var width = w;
	var height = h;
	//메소드
	this.getWidth = function(){	return width; }
	this.getHeight = function(){ return height;	}
	this.setWidth = function(w){ return width=w; }
	this.setHeight = function(h){ return height=h; }
}
console.log(rectangle.getHeight);
console.log(rectangle.getWidth());
rectangle.setWidth(2);
console.log(rectangle.getWidth());
console.log(rectangle.getArea());
</script>
</head>
<body>

</body>
</html>