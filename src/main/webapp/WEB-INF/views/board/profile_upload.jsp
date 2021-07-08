<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@ include file="../layout/header.jsp" %>

<script type="text/javascript">
function sendIt() {
	var f = document.form1;
	
	str=f.file.value;
	if(str==""){
		alert("사진을 선택하세요!");
		return;
	}
	
	f.action="/nespresso/board/profile_upload_ok";
	f.submit();
}
</script>

    <!--사진 업로드페이지 중앙배치-->
        <main class="uploadContainer">
           <!--사진업로드 박스-->
            <section class="upload">
               
               <!--사진업로드 로고-->
                <div class="upload-top">
                    <a href="home.html" class="">
                        <img src="/nespresso/resources/static/images/logo.jpg" alt="">
                    </a>
                    <p>프사 업로드</p>
                </div>
                <!--사진업로드 로고 end-->
                
                <!--사진업로드 Form-->
                <form name="form1" class="upload-form" action="" method="post" enctype="multipart/form-data">                 
                    <input type="hidden" name="pageUserEmail" value="${pageUserEmail }">
                    <input type="hidden" name="profileImage" value="${profileImage }">
                    
                    <input type="file" name="file" id="file_main" onchange="imageChoose(this);"/>
                    
                    <!-- 사진 출력화면 -->
                    <div class="upload-img">
                        <img src="/nespresso/resources/static/images/photo.png" alt="" id="imageUploadPreview">
                    </div> 
                    
                    <!--사진설명 + 업로드버튼-->
                    <div class="upload-form-detail">
                        <button class="cta blue" onclick="sendIt()">업로드</button>
                    </div>
                    <!--사진설명end-->                   
                </form>
                <!--사진업로드 Form-->
            </section>
            <!--사진업로드 박스 end-->
        </main>
        <br/><br/>
	
	<script src="/nespresso/resources/static/js/upload.js" ></script>
	
    <%@ include file="../layout/footer.jsp" %>