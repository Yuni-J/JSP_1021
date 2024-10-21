<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-4.jsp 화면.</h1>
	<h2>- paramValues로 데이터 받기</h2>
	<h3>선택 1 : ${paramValues.food[0] }</h3>
	<h3>선택 2 : ${paramValues.food[1] }</h3>
	<h3>선택 3 : ${paramValues.food[2] }</h3>
	<h3>선택 4 : ${paramValues.food[3] }</h3>
	<h3>선택 5 : ${paramValues.food[4] }</h3>
	
	<hr>
	
	<!-- c:forEach items="반복할 배열/컬렉션" var="저장값" varStatus="index" -->
	<!-- varStatus : index(번지:0부터 시작)  count(개수:1부터 시작) -->
	<h2>- forEach를 활용한 출력</h2>
	<c:forEach items="${paramValues.food }" var="f" varStatus="i">
		<h3>선택 ${i.count } : ${f }</h3>
	</c:forEach>

	<hr>
	
	<%
		String friends[] = {"삼겹살", "족발","소주","맥주"};
		//java Controller 에서 jsp로 데이터를 보낼때
		request.setAttribute("friend", friends);
	%>
	
	<c:forEach items="${requestScope.friend }" var="fname" varStatus="i">
		count: ${i.count } / index : ${i.index } / ${fname } <br>
	</c:forEach>
	
	<hr>
	
	<!-- 1부터 10까지 반복해서 숫자 출력 -->
	<!-- begin="시작숫자" end="끝숫자" var="저장변수" -->
	<c:forEach begin="1" end="10" var="i">
		${i } /
	</c:forEach>
	
	<a href="step-5.jsp">step-5.jps로 이동</a>
	
	
</body>
</html>