<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../layout/header.jsp"%>

<c:forEach var="dto" items="${lists }">
<!--프로필 섹션-->
<section class="profile">
	<!--유저정보 컨테이너-->
	<div class="profileContainer">

		<!--유저이미지-->
		<div class="profile-left">
			<div class="profile-img-wrap story-border" onclick="popup('.modal-image')">
				
				<form id="userProfileImageForm">
					<input type="file" name="profileImageFile" style="display: none;" id="userProfileImageInput" />
				</form>

				<a href="/nespresso/board/profile?pageUserEmail=${dto.pageUserEmail}">
					<img class="profile-image" src="/nespresso/resources/static/user_profile/${dto.profileImage}"/>
				</a>
				
			</div>
		</div>
		<!--유저이미지end-->
		
		<!--유저정보 및 사진등록 구독하기-->
		<div class="profile-right">
			<div class="name-group">
				<h2>${dto.pageUserName}</h2>	
			</div>
			
			<div class="state">
				<h5>${dto.nickname}</h5>
				<h5 style="color: blue;text-decoration:underline"><a href="#">${dto.pageUserEmail}</a></h5>
			</div>
		</div>
	</div>
</section>
</c:forEach>

<c:if test="${empty lists }">
<section class="profile">
	<!--유저정보 컨테이너-->
	<div class="profileContainer" style="padding-left: 300px">
	<h2>검색 결과가 없습니다.</h2>
	</div>
</section>
</c:if>

<script src="/nespresso/resources/static/js/profile2.js"></script>

<%@ include file="../layout/footer.jsp"%>