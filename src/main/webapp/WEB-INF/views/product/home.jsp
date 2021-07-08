<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

<br/><br/>

<div style="padding-left: 20px">

	<h2>관리자페이지 | 상품</h2>
	<!-- 주소바꾸기 -->
	<h3>[상품 등록]</h3>
	<h3><a href="/nespresso/product/admogcpCreated">오리지널커피 상품등록</a></h3>
	<h3><a href="/nespresso/product/admvtcpCreated">버츄오커피 상품등록</a></h3>
	
	<br/>
	<h3>[상품 조회]</h3>
	<h3><a href="/nespresso/product/originalcapsule">오리지널커피 상품조회</a></h3>
	
	<br/>
	<h3>[상품 수정/삭제]</h3>
	<h3><a href="/nespresso/product/admogcpUpdated.action">오리지널커피 상품수정/삭제</a></h3>
	
</div>

</body>
</html>