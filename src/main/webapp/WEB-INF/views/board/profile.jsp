<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

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

				<a href="/nespresso/board/profile_upload?pageUserEmail=${dto.pageUserEmail}&profileImage=${dto.profileImage}">
					<img class="profile-image" src="/nespresso/resources/static/user_profile/${dto.profileImage}"/>
				</a>
				
			</div>
		</div>
		<!--유저이미지end-->

		<!--유저정보 및 사진등록 구독하기-->
		<div class="profile-right">
			<div class="name-group">
				<h2>${dto.pageUserName}</h2>
				
				<c:choose>
					<c:when test="${dto.pageUserEmail eq sessionScope.userSession.email}">
						<button class="cta" onclick="location.href='/nespresso/board/upload?pageUserEmail=${dto.pageUserEmail}&profileImage=${dto.profileImage}';">사진등록</button>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${subscribeState}">
								<button class="cta blue" onclick="toggleSubscribe(${dto.pageUserEmail}, this)">언팔로우</button>
							</c:when>
							<c:otherwise>
								<button class="cta" onclick="toggleSubscribe(${dto.pageUserEmail}, this)">팔로우</button>
							</c:otherwise>
						</c:choose>		
					</c:otherwise>
				</c:choose>
				
				
				<button class="modi" onclick="popup('.modal-info')">
					<i class="fas fa-cog"></i>
				</button>
			</div>

			<div class="subscribe">
				<ul>
					<li>게시물 <span>${dto.boardNum}</span></a></li>
					<li><a href="javascript:subscribeInfoModalOpen('${dto.pageUserEmail}');">구독정보&nbsp;<span>${dto.follower}</span>
					</a></li>
				</ul>
			</div>
			<div class="state">
				<h5>${dto.nickname}</h5>
				<h5 style="color: blue;text-decoration:underline"><a href="#">${dto.pageUserEmail}</a></h5>
			</div>
		</div>
		<!--유저정보 및 사진등록 구독하기-->

	</div>
</section>

<!--게시물컨섹션-->
<section id="tab-content">
	<!--게시물컨컨테이너-->
	<div class="profileContainer">
		<!--그냥 감싸는 div (지우면이미지커짐)-->
		<div id="tab-1-content" class="tab-content-item show">
			<!--게시물컨 그리드배열-->
			<div class="tab-1-content-inner">
				<!--아이템들-->
				<c:forEach var="dto1" items="${lists}"> <!-- EL표현식에서 변수명을 적으면 get함수가 자동 호출된다. -->		
					<div class="img-box">
						<a href="/nespresso/board/story?num=${dto1.num }&pageUserEmail=${dto.pageUserEmail}&profileImage=${dto.profileImage}">
						<img src="/nespresso/resources/static/story_image/${dto1.saveFileName }"/>
						</a>
						<div class="comment">
							<a href="/nespresso/board/story?num=${dto1.num }&pageUserEmail=${dto.pageUserEmail}&profileImage=${dto.profileImage}">
							<i class="fas fa-heart"></i><span>10</span></a>
						</div>
					</div>
				</c:forEach>
				<!--아이템들end-->
			</div>
			
			<c:if test="${empty lists }">
			<div align="center" style="padding-top: 20px">
				<span>등록된 게시물이 없습니다.</span>
			</div>
			</c:if>
			
		</div>
		
	</div>
</section>

<!--프로필사진 바꾸기 모달
<div class="modal-image" onclick="modalImage()">
	<div class="modal">
		<p>프로필 사진 바꾸기</p>
		<button onclick="profileImageUpload('${sessionScope.pageUserEmail}', '${dto.pageUserEmail}')">사진 업로드</button>
		<button onclick="closePopup('.modal-image')">취소</button>
	</div>
</div>
프로필사진 바꾸기 모달end-->

<div class="modal-subscribe">
	<div class="subscribe">
		<div class="subscribe-header">
			<span>구독정보</span>
			<button onclick="modalClose()">
				<i class="fas fa-times"></i>
			</button>
		</div>

		<div class="subscribe-list" id="subscribeModalList">			
			<div class="subscribe__item">
				<div class="subscribe__img"><img src="/nespresso/resources/static/images/person.jpeg<%-- ${dto.구독자프사} --%>"></div>
				<div class="subscribe__text"><h2>수지<%-- ${dto.구독자이메일} --%></h2></div>
				<div class="subscribe__btn"><button>구독하기</button></div>
			</div>			
		</div>
	</div>
</div>

<script src="/nespresso/resources/static/js/profile.js"></script>

<%@ include file="../layout/footer.jsp"%>