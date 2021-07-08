<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	
	<form action="/nespresso/board/membership_ok" method="post">
		이메일 <input type="text" name="pageUserEmail">
		이름 <input type="text" name="pageUserName">
		별명 <input type="text" name="nickname">
		
		<input type="submit" value="회원가입">
	</form>
	
</body>
</html>