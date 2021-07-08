<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게 시 판(Servlet)</title>
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />

<link rel="stylesheet" href="path/to/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="/c/cache/layout3.screen-68c1c42b2fc063455fbb6141243e264e-rev-f22bb4a.min.css" media="screen" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="/c/v3/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="/springwebmybatis/resources/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		f = document.myForm;
		
		
		str = f.nsubject.value;
		str = str.trim();/* trim양쪽공백을없앰 */
		if(!str){
			alert("\n제목을 입력하세요.");
			f.nsubject.focus();
			return;
		}
		f.nsubject.value = str;
		
		
		str = f.ncontent.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.ncontent.focus();
			return;
		}
		f.ncontent.value = str;
		
		str = f.ndate.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.ndate.focus();
			return;
		}
		f.ndate.value = str;
		
		
		/* cp는study */
		/* 가상주소 */
		alert("수정완료");
		f.action = "<%=cp%>/updatednotice_ok.action";
		f.submit();
		
		
	}

</script>

<style type="text/css">
label {
    padding-top: 11px;
    padding-bottom: 6px;
    padding-left: 0;
    margin-bottom: 0;
    line-height: 21px;
}

</style>


</head>
<body>
<!-- #으로만든것은id로정의한다 -->
<br/><br/>
<div class="col-xs-12" style="left: 13%; width: 87%;">
	<div class="contactus-subtitle col-xs-12">
	<h2>공지사항 추가페이지</h2>


	</div>
		
	<form action="" name="myForm" method="post">
	<div id="bbsCreated">
		<div>
		<br/><br/><br/>
		</div>
	<!-- ******************************************************************************* -->
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">제목</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<input type="text" name="nsubject" size="65" maxlength="100" value="${dto.nsubject }"
				class="col-xs-12 col-sm-8 col-md-8 col-lg-6"/>
			</div>
		</div>
		
		
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">날짜</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<input type="text" name="ndate" size="65" maxlength="100" value="${dto.ndate }"
				class="col-xs-12 col-sm-8 col-md-8 col-lg-6"/>
			</div>
		</div>
		
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">내&nbsp;&nbsp;&nbsp;&nbsp;용</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<textarea rows="12" cols="63" name="ncontent" class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				${dto.ncontent }</textarea>
			</div>
		</div>
		
	</div>
	
	<div id="bbsCreated_footer">
		<input type="hidden" name="fnum" value="${dto.nnum }"/>
		<input type="button" value=" 수정하기" class="btn btn-icon-right btn-green g-recaptcha" onclick="sendIt();"/>
		<!-- <input type="reset" value=" 다시입력" class="btn btn-icon-right btn-green g-recaptcha" onclick="document.myForm.nsubject.focus();"/> -->
	</div>
	
	</form>

</div>







</body>
</html>