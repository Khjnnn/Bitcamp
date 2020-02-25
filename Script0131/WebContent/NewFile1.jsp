<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function makeStudent(name,kor,math,eng,sci){
	var willReturn = {
			이름 : name,
			국어 : kor,
			수학 : math,
			영어 : eng,
			과학 : sci,
			
		//메소드
		getSum: function() {
			return this.국어 + this.수학 + this.영어 +this.과학;
		},
		getAvg:
			 function() {
			return this.getSum() / 4;
		},
		toString:
			function() {
			return this.이름 + '\t ' + this.getSum() + '\t ' + this.getAvg();
		}
	};
	return willReturn;
}
var students = [];
students.push(makeStudent('윤인성',84,98,88,95));
students.push(makeStudent('선우성',82,11,13,25));
students.push(makeStudent('김영성',86,99,31,45));
students.push(makeStudent('박치성',54,78,89,75));
students.push(makeStudent('성성',44,38,88,85));
students.push(makeStudent('부사심',24,48,58,65));


var output = "이름\t 총점\t 평균<br>";
for (var i in students){
	output += students[i].toString() + "<br>";
}

document.write(output);



</script>
</head>
<body>
adasda
</body>
</html>