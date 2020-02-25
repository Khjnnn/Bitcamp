<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #output {
        border: 1px solid #000;
        width: 400px;
        height: 100px;
        font-size: 11pt;
   }

</style>
<script src="jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function(){
		// 계산기 인스턴스 생성
		var cal = new Calculator();
	});
	
	function Calculator() {
		// 프로퍼티 선언
		this.value1 = null;
		this.operator = null;
		this.value2 = null;
		this.output = null;
		// 요소 초기화 메서드 호출
		this.init();
		// 이벤트 초기화 메서드 호출
		this.initEvent();
	}
	//요소초기화

	Calculator.prototype.init = function() {
		// 계산기 내부에서 계속해서 사용할 노드를 미리 찾아 변수에 담아 줍니다.
		this.value1 = $("#val1");
		this.operator = $("#op");
		this.value2 = $("#val2");
		this.output = $("#output");
	}
	//이벤트초기화
	Calculator.prototype.initEvent = function() {
		var objThis = this;
		$("#cal").click(function() {
			// 메서드 호출
			objThis.exeCalculate();
		})
	}
	// 계산기메서드
	Calculator.prototype.calculate = function(op, num1, num2) {
		var result = "";
		switch (op) {
		case "+":
			result = num1 + num2;
			break;
		case "-":
			result = num1 - num2;
			break;
		case "*":
			result = num1 * num2;
			break;
		case "/":
			result = num1 / num2;
			break;
		default:
			result = "지원하지 않는 연산자입니다";
		}
		// 계산 정보를 출력 영역에 출력
		this.output.html(result);
	}

	// 입력정보를 구한 후 계산 메서드 호출
	Calculator.prototype.exeCalculate = function() {
		// 입력 정보 구하기.
		var val1 = parseInt(this.value1.val());
		var operator = this.operator.val();
		var val2 = parseInt(this.value2.val());
		// 사칙연산 메서드 실행
		this.calculate(operator, val1, val2);
	}
</script>

</head>
<body>

 숫자1:<input id="val1">, 
 연산자:<input id="op">,
  숫자2:<input id="val2">
 <button id="cal">확인</button>

 <div id="output">
       여기에 결과를 출력 해주세요.
 </div>
</body>
</html>