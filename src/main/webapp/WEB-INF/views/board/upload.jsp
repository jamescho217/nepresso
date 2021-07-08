<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@ include file="../layout/header.jsp" %>

    <!--사진 업로드페이지 중앙배치-->
        <main class="uploadContainer">
           <!--사진업로드 박스-->
            <section class="upload">
               
               <!--사진업로드 로고-->
                <div class="upload-top">
                    <a href="home.html" class="">
                        <img src="/nespresso/resources/static/images/logo.jpg" alt="">
                    </a>
                    <p>사진 업로드</p>
                </div>
                <!--사진업로드 로고 end-->
                
                <!--사진업로드 Form-->
                <form class="upload-form" action="/nespresso/board/upload_ok" method="post" enctype="multipart/form-data">                 
                    <input type="hidden" name="pageUserEmail" value="${pageUserEmail }">
                    <input type="hidden" name="num" value="${num }">
                    
                    <input type="file" name="file_main" id="file_main" onchange="imageChoose(this);"/>
                    
                    <!-- 사진 출력화면 -->
                    <div class="upload-img">
                        <img src="/nespresso/resources/static/images/photo.png" alt="" id="imageUploadPreview">
                    </div>
                    
                    <span>추가 이미지 선택</span>
                    <input type="file" multiple="multiple" name="file_sub" id="file_sub" onchange="subimageChoose(this);"/>
                    
                    <!--사진설명 + 업로드버튼-->
                    <div class="upload-form-detail">
                    	<input type="text" placeholder="제목" name="subject" />
                   		<input type="text" placeholder="사진설명" name="content" />
                   		<input type="text" placeholder="태그" name="tag" />
                        <button class="cta blue">업로드</button>
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