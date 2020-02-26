<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function Queue() {
		var items = [];
		var fst;
		var last;
		var cnt;
		this.enqueue = function(element) {
			items.push(element);
			
		};
		this.dequeue = function() {
			return items.shift();
			 
		};
		
		this.isEmpty = function() {
			return items.length == 0;
		};
		this.size = function() {
			return items.length;
		};
		this.print = function() {
			console.log(items.toString());
		};
	}
	var queue = new Queue();
	console.log(queue.isEmpty()); //결과는 true
	queue.enqueue("John");
	queue.enqueue("Jack");
	queue.print(); // 결과는 John,Jack
	queue.enqueue("Camila");
	queue.print(); // 결과는 John,Jack,Camila
	console.log(queue.size()); //결과는 3
	console.log(queue.isEmpty()); //결과는 false
	queue.dequeue();
	queue.dequeue();
	queue.print(); // 결과는 Camila
	// 실행코드

	function Set(){
		    var items = {};
		    this.add = function(value){
		        if (!this.has(value)){
		           items[value] = value;
		            return true;
		        }
		        return false;
		    };
		    this.remove = function(value){
		        if (this.has(value)){
		            delete items[value];
		            return true;
		        }
		        return false;
		    };
		    this.has = function(value){
		         return value in items;
		    };
		    this.clear = function(){
		        items = {};
		    };
		    this.size = function(){
		        return Object.keys(items).length;
		    };
		    
		    this.print = function(){
		        return items;
		    };
		    
		    
		    this.values = function(){
		        return Object.keys(items);
		    };
	}
	var set = new Set();
	set.add(1);
	console.log(set.values()); //결과는 1
	console.log(set.has(1));   //결과는 true
	console.log(set.size());   //결과는 1
	set.add(1); // 중복추가
	set.add(2);
	console.log(set.print()); //결과는 1, 2
	set.remove(1);
	console.log(set.values()); //결과는 2
	set.clear();
	console.log(set.values()); //결과는 []

</script>
</head>
<body>ads
</body>
</html>