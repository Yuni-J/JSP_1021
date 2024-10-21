<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-2.jsp 화면.</h1>
	<!-- EL 방식으로 파라미터 받기 -->
	<h2>- EL 방식으로 파라미터 받기</h2>
	<h3>상품명 : ${param.name } / 원산지 : ${param.addr }</h3>
	
	<!-- 스크립틀릿 방식으로 파라미터 받기 -->
	<h2>- 스크립틀릿 방식으로 파라미터 받기 </h2>
	<h3>상품명 : <%= request.getParameter("name") %></h3>
	<h3>원산지 : <%= request.getParameter("addr") %></h3>
	
	<!-- form tag 로 데이터 전송 -->
	<!-- queryString 방식은 get방식으로 전송 -->
	<!-- form tab에서 데이터를 전송하는 방식 get / post 방식 중 선택 가능 생략하면 get -->
	<h2>- form tag로 데이터 전송</h2>
	<form action="step-3.jsp">
		이름 : <input type="text" name="name"> <br>
		나이 : <input type="text" name="age"> <br>
		<button type="submit">step-3.jsp로 전송</button>
	</form>	
</body>
</html>