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
		
		str = f.fcategory.value;
		str = str.trim();/* trim양쪽공백을없앰 */
		if(!str){
			alert("\n카테고리를 입력하세요.");
			f.fcategory.focus();
			return;
		}
		f.fcategory.value = str;
		
		
		str = f.fsubject.value;
		str = str.trim();/* trim양쪽공백을없앰 */
		if(!str){
			alert("\n제목을 입력하세요.");
			f.fsubject.focus();
			return;
		}
		f.fsubject.value = str;
		
		
		str = f.fcontent.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.fcontent.focus();
			return;
		}
		f.fcontent.value = str;
		
		
		/* cp는study */
		/* 가상주소 */
		alert("등록완료");
		f.action = "<%=cp%>/created_ok.action";
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
	<h2>FAQ추가페이지</h2>
	<input type="button" value="수정하기" class="btn btn-icon-right btn-green g-recaptcha" onclick="location.href='http://localhost:8080/nespresso/listfaq.action';"
		style="height: 36px; min-width: 8%; padding: 0px 18px 0px 18px; right: -66%; background-color: teal;"/>
		<br/><br/>
	
	</div>
	
	<form action="" name="myForm" method="post">
	<div id="bbsCreated">
		<div>
		<br/><br/><br/>
		</div>
	<!-- ******************************************************************************* -->
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">카테고리</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<input type="text" name="fcategory" size="65" maxlength="100" class="col-xs-12 col-sm-8 col-md-8 col-lg-6"/>
			</div>
		</div>
		
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">제목</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<input type="text" name="fsubject" size="65" maxlength="100" class="col-xs-12 col-sm-8 col-md-8 col-lg-6"/>
			</div>
		</div>
		
		<div class="input-group input-group-generic contactus-form-field">
			<label class="desktop-label col-xs-12 col-sm-4 col-md-3 c-required">내&nbsp;&nbsp;&nbsp;&nbsp;용</label>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
				<textarea rows="12" cols="63" name="fcontent" class="col-xs-12 col-sm-8 col-md-8 col-lg-6"></textarea>
			</div>
		</div>
		
	</div>
	
	
	<div id="bbsCreated_footer">
		<input type="button" value=" 등록하기" class="btn btn-icon-right btn-green g-recaptcha" onclick="sendIt();"/>
		<%-- <input type="reset" value=" 다시입력" class="btn2" onclick="document.myForm.fcategory.focus();"/>
		<input type="button" value=" 작성취소" class="btn2" 
		onclick="javascript:location.href='<%=cp%>/list.action';"/> --%>
	</div>
	
	</form>

</div>







</body>
</html>