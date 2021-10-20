<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp02 ex01-01</title>
</head>
<body>
	<% 
		String checkbox=request.getParameter("check");
		String[] values=request.getParameterValues("check");
		// <%= % > 혼용 불가능
	%>
	한개 선택 : <%= checkbox %><br>
	<!-- 여러개 선택(1) : <%-- <%= values[0] %> <%= values[1] %> <%= values[2] %> <br> --%>  -->
	여러개 선택(2) : <% for(int i=0;i<values.length;i++) {
				  out.print(values[i] + " "); } %> <br>
	여러개 선택(3) : <% for(String s : values) {
					 	out.print(s + " "); }%> <br>
	여러개 선택(4) : <c:forEach var="var" items="${paramValues.check }">
					${var }
				  </c:forEach> <!-- 위의 3번에서 var="stirng s", items="values" -->
					 	
	<hr>
	<h4> foreach문 연습</h4>
	<% String[] test = {"안녕","하세","요"}; 
	   for(String s : test) {
			out.print(s);
		}
	%> <br>
	<% int[] arr={111,222,333,444};
	   for(int i:arr) {
	   		out.print(i+" "); } %>
</body>
</html>