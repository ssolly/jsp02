<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp02 ex01</title>
</head>
<body>
	<!-- 절대 경로의 프로젝트 이름 -->
	<%= request.getContextPath() %>	
	${pageContext.request.contextPath }
	
	<c:set var="contextPath1" value="<%= request.getContextPath() %>"/>
	<c:set var="contextPath2" value="${pageContext.request.contextPath }"/>
	
	<br>
	path1 : ${contextPath1 }<br>
	path2 : ${contextPath2 } <br>
	
	<a href="<%= request.getContextPath() %>/ex01_01.jsp"> ex01_01로 이동</a> <br>
	<a href="${contextPath1 }/ex01_01.jsp"> ex01_01로 이동 </a>
	<hr>
	
	<form action="${contextPath2 }/ex01_01.jsp">
		<input type="checkbox" name="check" value="사과"> 사과주스
		<input type="checkbox" name="check" value="딸기"> 딸기주스
		<input type="checkbox" name="check" value="수박"> 수박주스
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>