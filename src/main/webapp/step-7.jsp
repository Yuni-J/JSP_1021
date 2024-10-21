<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jstl_study.Student" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<h1>step-7.jsp 화면.</h1>
	<%
		ArrayList<Student> stList = new ArrayList<>();
		stList.add(new Student("24001","hong","010-1111-1111","incheon",23));
		stList.add(new Student("24002","kim","010-1111-2222","incheon",25));
		stList.add(new Student("24003","lee","010-1111-3333","seoul",21));
		stList.add(new Student("24004","pack","010-1111-4444","seoul",23));
		stList.add(new Student("24005","choi","010-1111-5555","incheon",26));
		//request.setAttribute("list", stList);
		session.setAttribute("list", stList);
	%>
	
<%-- 	<c:forEach items="${list }" var="st" varStatus="i">
		<h3>${i.count }. ${st }</h3>
	</c:forEach> --%>
	
	<hr>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>no.</th>
				<th>학번</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>나이</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="st" varStatus="i">
			<tr>
				<td>${i.count }</td>
				<td>${st.num }</td>
				<td>${st.name }</td>
				<td>${st.phone }</td>
				<td>${st.addr }</td>
				<td>${st.age }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>