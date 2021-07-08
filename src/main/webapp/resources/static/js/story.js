/**
	2. 스토리 페이지
	(1) 스토리 로드하기
	(2) 스토리 스크롤 페이징하기
	(3) 좋아요, 안좋아요
	(4) 댓글쓰기
	(5) 댓글삭제
 */

// (0) 현재 로긴한 사용자 아이디
let principalId = $("#principalId").val();

// (1) 스토리 로드하기
let page = 0;

// (2) 스토리 스크롤 페이징하기
$(window).scroll(() => {
	//console.log("윈도우 scrollTop", $(window).scrollTop());
	//console.log("문서의 높이", $(document).height());
	//console.log("윈도우 높이", $(window).height());
	
	let checkNum = $(window).scrollTop() - ( $(document).height() - $(window).height() );
	//console.log(checkNum);
	
	if(checkNum < 1 && checkNum > -1){
		page++;
	}
});


// (3) 좋아요, 안좋아요
function toggleLike(imageId) {
	let likeIcon = $(`#storyLikeIcon-${imageId}`);
	
	if (likeIcon.hasClass("far")) { // 좋아요 하겠다
		
		$.ajax({
			type: "post",
			url: `/api/image/${imageId}/likes`,
			dataType: "json"
		}).done(res=>{
			
			let likeCountStr = $(`#storyLikeCount-${imageId}`).text();
			let likeCount = Number(likeCountStr) + 1;
			$(`#storyLikeCount-${imageId}`).text(likeCount);
			
			likeIcon.addClass("fas");
			likeIcon.addClass("active");
			likeIcon.removeClass("far");
		}).fail(error=>{
			console.log("오류", error);
		});
		
		

	} else { // 좋아요취소 하겠다
		
		$.ajax({
			type: "delete",
			url: '/api/image/${imageId}/likes',
			dataType: "json"
		}).done(res=>{
			
			let likeCountStr = $(`#storyLikeCount-${imageId}`).text();
			let likeCount = Number(likeCountStr) - 1;
			$(`#storyLikeCount-${imageId}`).text(likeCount);
			
			likeIcon.removeClass("fas");
			likeIcon.removeClass("active");
			likeIcon.addClass("far");
		}).fail(error=>{
			console.log("오류", error);
		});
		

	}
}

$(function(){
    
    getCommentList();
    
});

//댓글 불러오기
function getCommentList() {	
	var pageUserEmail=$("#pageUserEmail" ).val();
	var num=$("#num" ).val();
	
	var data = {
		pageUserEmail: pageUserEmail,
		num: num
	};
	
	$.ajax({
		type: "GET",
		url: "/nespresso/board/commentList",
	    data: data,
	    dataType : "json",
	     contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	     success : function(data){
	    	//alert("성공");
	    	
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){              
                for(i=0; i<data.length; i++){
	            	html+="<div id='storyCommentList_"+data[i].comment_num+"'>";
	                html+="<div class='sl__item__contents__comment' id='storyCommentItem_"+data[i].comment_num+"'>";
	                html+="<p><b>"+data[i].nickname+" :</b>"+data[i].bcomment+"</p><button>";
	                html+="<i class='fas fa-times' onclick='deleteComment("+data[i].comment_num+")'>"
	                html+="</i></button></div></div>";
                }
            }
           
           	$("#cCnt").html(cCnt);
            $("#commentList").html(html);
        }, error : function(data){
			alert("통신실패");
	    }
	});

}

// (4) 댓글쓰기
function addComment() {	
	var commentInput = $("#storyCommentInput");

	if (commentInput.val() == "") {
		alert("댓글을 작성해주세요!");
		return;
	}
	
	$.ajax({
		type: "POST",
		url: "/nespresso/board/addComment",
	    data: $("#commentForm").serialize(),
	    success : function(data){
			 if(data=="success"){
                getCommentList();
                commentInput.val("");
            }
        },
        error:function(request,status,error){
            alert("통신 실패.");
       }
	});
	
	commentInput.val("");
}

// (5) 댓글 삭제
function deleteComment(comment_num) {
	var pageUserEmail=$("#pageUserEmail" ).val();
	var num=$("#num" ).val();

	if(confirm("삭제 하시겠습니까?")){
		var data = {
			pageUserEmail: pageUserEmail,
			num: num,
			comment_num: comment_num
		};
	   
        $.ajax({
			type: "POST",
			url: "/nespresso/board/comment_delete",
			data: data,
			success: function(data){
	            if(data=="success") {
	                getCommentList();
	            }
	        },
            error : function(XMLHttpRequest, textStatus, errorThrown){
                alert("통신 실패.");
            }
        });
            
    }
}

