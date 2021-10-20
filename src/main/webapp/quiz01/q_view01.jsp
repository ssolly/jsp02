<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp02/quiz01/q_view01.jsp</title>
</head>
<body>
	<%
		String[] seasons=request.getParameterValues("seasons");
	%>
	<h3> 설문조사 결과 </h3>
	name : ${param.name } <br>
	gender : ${param.gender } <br>
	<c:forEach var="var" items="${paramValues.seasons }">
	season : ${var } <br>
	</c:forEach>

</body>
</html>