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

<link rel="stylesheet" type="text/css" href="/springwebmybatis/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/springwebmybatis/resources/css/created.css"/>

<script type="text/javascript" src="/springwebmybatis/resources/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		f = document.myForm;
		
		str = f.fname.value;
		str = str.trim();/* trim양쪽공백을없앰 */
		if(!str){
			alert("\nfname 입력하세요.");
			f.fname.focus();
			return;
		}
		f.fname.value = str;
		
		str = f.fsubname.value;
		str = str.trim();/* trim양쪽공백을없앰 */
		if(!str){
			alert("\nfsubname 입력하세요.");
			f.fsubname.focus();
			return;
		}
		f.fsubname.value = str;
		
		str = f.fuse.value;
		str = str.trim();
		if(!str){
			alert("\nfuse 입력하세요.");
			f.fuse.focus();
			return;
		}
		f.fuse.value = str;
		
		/* str = f.fsolution.value;
		str = str.trim();
		if(!str){
			alert("\nfsolution 입력하세요.");
			f.fsolution.focus();
			return;
		}
		f.fsolution.value = str; */
		
		/* 솔루션 */
		str = f.fsolution1.value; str = str.trim(); f.fsolution1.value = str;
		str = f.fsolution2.value; str = str.trim(); f.fsolution2.value = str;
		str = f.fsolution3.value; str = str.trim(); f.fsolution3.value = str;
		str = f.fsolution4.value; str = str.trim(); f.fsolution4.value = str;
		str = f.fsolution5.value; str = str.trim(); f.fsolution5.value = str;
		str = f.fsolution6.value; str = str.trim(); f.fsolution6.value = str;
		str = f.fsolution7.value; str = str.trim(); f.fsolution7.value = str;
		str = f.fsolution8.value; str = str.trim(); f.fsolution8.value = str;
		str = f.fsolution9.value; str = str.trim(); f.fsolution9.value = str;
		str = f.fsolution10.value; str = str.trim(); f.fsolution10.value = str;
		/* 솔루션끝 */
		
		/* 서머리 */
		str = f.fsummary1.value; str = str.trim(); f.fsummary1.value = str;
		str = f.fsummary2.value; str = str.trim(); f.fsummary2.value = str;
		str = f.fsummary3.value; str = str.trim(); f.fsummary3.value = str;
		str = f.fsummary4.value; str = str.trim(); f.fsummary4.value = str;
		str = f.fsummary5.value; str = str.trim(); f.fsummary5.value = str;
		str = f.fsummary6.value; str = str.trim(); f.fsummary6.value = str;
		str = f.fsummary7.value; str = str.trim(); f.fsummary7.value = str;
		str = f.fsummary8.value; str = str.trim(); f.fsummary8.value = str;
		/* 서머리끝 */
		
		/* str = f.fsummary.value;
		str = str.trim();
		if(!str){
			alert("\nfsummary 입력하세요.");
			f.fsummary.focus();
			return;
		}
		f.fsummary.value = str; */
		
		str = f.fimage1.value;
		str = str.trim();
		if(!str){
			alert("\nfimage1 입력하세요.");
			f.fimage1.focus();
			return;
		}
		f.fimage1.value = str;
		
		str = f.fimage2.value;
		str = str.trim();
		if(!str){
			alert("\nfimage2 입력하세요.");
			f.fimage2.focus();
			return;
		}
		f.fimage2.value = str;
		
		str = f.fbackimage.value;
		str = str.trim();
		if(!str){
			alert("\nfbackimage 입력하세요.");
			f.fbackimage.focus();
			return;
		}
		f.fbackimage.value = str;
		
		
		/* cp는study */
		/* 가상주소 */
		alert("등록완료");
		f.action = "<%=cp%>/machinecreated_ok.action";
		f.submit();
		
		
	}



</script>

</head>
<body>
<!-- #으로만든것은id로정의한다 -->
<div id="bbs">
	<div id="bbs_title">
	Machine추가페이지
	</div>
	
	<form action="" name="myForm" method="post">
	<div id="bbsCreated">
		<div>
		<br/><br/><br/>
		</div>
	<!-- ******************************************************************************* -->
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>이름</dt>
				<dd>
				<input type="text" name="fname" size="65" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>서브이름</dt>
				<dd>
				<input type="text" name="fsubname" size="65" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>사용법</dt>
				<dd>
					<textarea rows="3" cols="100" name="fuse" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법1</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution1" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법2</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution2" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법3</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution3" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법4</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution4" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법5</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution5" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법6</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution6" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법7</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution7" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법8</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution8" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법9</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution9" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>해결법10</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsolution10" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
<!-- 서머리 -->
		<div id="bbsCreated_content">
			<dl>
				<dt>개요1</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary1" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요2</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary2" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요3</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary3" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요4</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary4" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요5</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary5" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요6</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary6" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요7</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary7" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>개요8</dt>
				<dd>
					<textarea rows="3" cols="100" name="fsummary8" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		
		
		<div id="bbsCreated_content">
			<dl>
				<dt>메인이미지</dt>
				<dd>
					<textarea rows="3" cols="100" name="fimage1" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>서브이미지</dt>
				<dd>
					<textarea rows="3" cols="100" name="fimage2" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>백이미지</dt>
				<dd>
					<textarea rows="3" cols="100" name="fbackimage" class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
		
		
		
		
		
		
		
		
		
	</div>
	
	
	<div id="bbsCreated_footer">
		<input type="button" value=" 등록하기" class="btn2" onclick="sendIt();"/>
		<input type="reset" value=" 다시입력" class="btn2" onclick="document.myForm.fcategory.focus();"/>
		<input type="button" value=" 작성취소" class="btn2" 
		onclick="javascript:location.href='<%=cp%>/list.action';"/>
	</div>
	
	</form>

</div>







</body>
</html>