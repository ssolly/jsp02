<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp02/quiz01/quiz01.jsp</title>
<style type="text/css">
	form {text-align:center;}
</style>
</head>
<body>
<h3 style="margin-left: 130px;">설문 조사</h3>
<form action="q_view01.jsp">
	<table border="1">
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>성별</td><td><input type="radio" name="gender" value="남자"> 남자 
							<input type="radio" name="gender" value="여자"> 여자 </td>
		</tr>
		<tr>
			<td>좋아하는 계절</td><td><input type="checkbox" name="seasons" value="봄">봄
								  <input type="checkbox" name="seasons" value="여름">여름
								  <input type="checkbox" name="seasons" value="가을">가을
								  <input type="checkbox" name="seasons" value="겨울">겨울 </td>
		</tr>
		<tr>
			<td colspan="2"> <input type="submit" value="전송">
							 <input type="reset" value="취소"> </td>
		<tr>
	</table>
</form>
</body>
</html>