<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp02/response/chkLogin.jsp</title>
</head>
<body>
	<%-- jsp
		String dbId="abc";
		String dbPwd="abc";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)) {
			//out.print("인증 통과");
			//response.sendRedirect("main.jsp"); 
			//response.sendRedirect("main.jsp?id="+inputId);
			//리퀘스트 객체를 전달
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request,response);
		} else {
			//out.print("인증 실패");
			response.sendRedirect("loginForm.jsp");
		}
	--%>
	
	<!-- jstl -->
	<c:set var="dbId" value="abc"/>
	<c:set var="dbPwd" value="abc"/>
	<c:set var="inputId" value="${param.id }"/>
	<c:set var="inputPwd" value="${param.pwd }"/>
	
	<%--
	<!--  test="dbId"로 쓰면 문자열로 인식한다 -->
	<c:if test="${dbId == inputId && dbPwd eq inputPwd}">
	인증성공 <c:redirect url="main.jsp"/>
	</c:if>
	<c:if test="${dbId != inputId || dbPwd ne inputPwd}">
	인증실패  <c:redirect url="loginForm.jsp"/>
	</c:if>
	 --%>
	 
	<%-- if(when),else if(when), else(otherwise)문 : choose로 묶어줘야 사용 가능 --%>
	<%-- 
	<c:choose> 
		<c:when test="${dbId == inputId && dbPwd eq inputPwd}">
			<c:redirect url="main.jsp"/>
		</c:when>
		<c:otherwise>
			<c:redirect url="loginForm.jsp"/>
		</c:otherwise>
	</c:choose>
	--%>
	<c:choose>
		<c:when test="${dbId eq inputId }">
			<c:choose>
				<c:when test="${dbPwd eq inputPwd }">
					로그인 성공
					<script type="text/javascript">
						alert('로그인 성공')
					</script>
				</c:when>
				<c:otherwise> 비밀번호 오류</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise> 존재하지 않는 아이디 </c:otherwise>
	</c:choose>
	
</body>
</html>