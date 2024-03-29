<%@ page language="java" contentType="text/html; charset=UTF-8"
	import=" java.util.*,sec01.ex01.*"
	pageEncoding="UTF-8"
	isELIgnored="false" 
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />

<%
request.setCharacterEncoding("UTF-8");
%>    
<html>
<head>
   <meta  charset="UTF-8">
   <title>회원 정보 출력창</title>
<style>
     .cls1 {
       font-size:40px;
       text-align:center;
     }
    
     .cls2 {
       font-size:20px;
       text-align:center;
     }
  </style>
  
</head>
<body>
 <p class="cls1">제품정보</p>
   <table align="center" border="1" >
      <tr align="center" bgcolor="lightgreen">
         <td width="7%" ><b>제품아이디</b></td>
         <td width="7%" ><b>제품명</b></td>
         <td width="7%" ><b>제품가격</b></td>
         <td width="7%"><b>제품설명</b></td>
         <td width="7%" ><b>공급업체명</b></td>
         <td width="7%" ><b>수정</b></td>
         <td width="7%" ><b>삭제</b></td>
   </tr>

<c:choose>
    <c:when test="${ prodsList==null}" >
      <tr>
        <td colspan=5>
          <b>등록된 회원이 없습니다.</b>
       </td>  
      </tr>
   </c:when>  
   <c:when test="${prodsList != null }" >
      <c:forEach  var="prod" items="${prodsList }" >
        <tr align="center">
          <td>${prod.id }</td>
          <td>${prod.name }</td>
          <td>${prod.price}$</td>     
          <td>${prod.desc }</td>     
          <td>${prod.vendid}</td>
          <td><a href="${contextPath}/emp/modProdForm.do?id=${prod.id}">수정</a></td>
          <td><a href="${contextPath}/emp/delProd.do?id=${prod.id}">삭제</a></td>     
       </tr>
     </c:forEach>
</c:when>
</c:choose>
   </table>  
 <a href="${contextPath }/emp/prodForm.do"><p class="cls2">제품등록하기</p></a>
 <form method="get" action="${contextPath }/emp/searchProd.do">
 <a align="left"> &nbsp검색할 아이디 &nbsp</a><input type="text" name="sid" >&nbsp<input type="submit" value="검색">
 <a href="${contextPath }/emp/prodslist.do">전체목록보기</a>
 </form>
</body>
</html>
