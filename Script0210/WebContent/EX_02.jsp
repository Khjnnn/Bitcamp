<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  table {
    width: 100%;
    border: 1px solid #333333;
  }
  td {
    padding: 10px;
    border: 1px solid #333333;
  }
  .a {
    border-collapse: separate;   /* 간격존재 */
    /*border-collapse: collapse; */  /* 간격제거 */
  }
  
</style>
</head>
<body>

<script>
   window.onload = function() {
      
      function make(tagname, attributes, children){
         
         var tname = document.createElement(tagname);
         var child = document.createTextNode(children);
         //tname.appendChild(child);
         
         for(var i in attributes){
            tname.setAttribute(i, attributes[i]);
         }
         
         if(typeof children == 'string') {
            tname.appendChild(child);
         } else if(Array.isArray(children)) {
            for(var j = 0 ; j < children.length ; j++) {
               tname.appendChild(children[j]);
            }
         } else{
            tname.appendChild(children);
         }
         
         return tname;
      }
      
      var body = document.getElementsByTagName('body')[0];

	      var div = make("div", {'style':'background-color:red;', 'id':'div1'}, "hello world");
	      body.appendChild(div);
	
	      var tds = [make("td",{},"Name"), make("td",{},"Type"), make("td",{},"Value")];
      var tr = make("tr",{}, tds);

      var table = make("table", {'style':'border: 1px solid red;'}, tr);
      body.appendChild(table);
   }
</script>


</body>
</html>