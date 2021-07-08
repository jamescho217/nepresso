<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<main class="main">
	<section class="container">
		<!--전체 리스트 시작-->
		<article class="story-list" id="storyList">
			<input type="hidden" id="pageUserEmail" name="pageUserEmail" value="${pageUserEmail }">
			<input type="hidden" id="num" name="num" value="${num }">
			<!--전체 리스트 아이템-->
			<div class="story-list__item">
				<div class="sl__item__header">
					<div>
						<img class="profile-image" src="/nespresso/resources/static/user_profile/${profileImage} "
							onerror="this.src='/nespresso/resources/static/images/person.jpeg'" />
							<%-- src="/nespresso/resources/static/images/${dto.savefilename }" --%>
					</div>
					<div>${dto.subject }</div>
				</div>
				
				<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<c:forEach var="dto1" items="${lists1 }" varStatus="status">
						<c:choose>
						<c:when test="${status.index==0 }">
					    <div class="carousel-item active">
					      <img src="/nespresso/resources/static/story_image/${dto1.saveFileName }" class="d-block w-100"
					      style="object-fit: contain;">
					    </div>
					    </c:when>
					    <c:otherwise>
					    <div class="carousel-item">
					      <img src="/nespresso/resources/static/story_image/${dto1.saveFileName }" class="d-block w-100"
					      style="object-fit: contain;">
					    </div>
					    </c:otherwise>
					    </c:choose>
					    </c:forEach>
					</div>
					
					<c:if test="${lists1.size()>1 }">
					<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					</a>
					
					<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
					</c:if>
				</div>
				
				<div class="sl__item__contents">
					<span style="margin-top: 5px; margin-right: 8px;font-size: 16px; text-align: right">등록일: ${dto.registration }</span>
				
					<div class="sl__item__contents__icon">
						<button>
							<i class="fas fa-heart active" id="storyLikeIcon" onclick="toggleLike()"></i>
						</button>
					</div>

					<span class="like"><b id="storyLikeCount">${dto.likecount } </b>likes</span>

					<div class="sl__item__contents__tags">
						<p>${dto.tag }</p>
					</div>

					<div class="sl__item__contents__content">
						<p>${dto.content }</p>
					</div>
					
					<div style="margin-left: 10px; margin-bottom: 10px">
						<span><strong>댓글</strong></span> <span id="cCnt"></span>
					</div>
					
					<div id="commentList">

					</div>
					
					<form id="commentForm" name="commentForm" method="post">
					<div class="sl__item__input">
						<input type="hidden" id="pageUserEmail" name="pageUserEmail" value="${pageUserEmail }">
						<input type="hidden" id="num" name="num" value="${num }">
						<input type="hidden" id="nickname" name="nickname" value="경환"><%-- ${sessionScope.SnsInfo.nickname } --%>
						<input type="text" id="bcomment" name="bcomment" placeholder="댓글 달기..." id="storyCommentInput"/>
						<button type="button" onClick="addComment()">게시</button>
					</div>
					</form>
				</div>
			</div>
			
			
			
		</article>
	</section>
</main>
<script src="/nespresso/resources/static/js/story.js"></script>
</body>
</html>