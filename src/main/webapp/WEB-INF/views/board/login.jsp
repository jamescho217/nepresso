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
<title>로그인</title>
</head>
<body>
	
	<form action="/nespresso/board/login_ok" method="post">
		이메일 <input type="text" name="pageUserEmail" value="hkh9405@naver.com">
		비밀번호 <input type="text" name="pwd" value="123">
		
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>