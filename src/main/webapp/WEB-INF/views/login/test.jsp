<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<script type="text/javascript">

$('#loginBtn').click(function(){
	
	var email = $('#inputEmail').val();
	var pwd = $('#inputPwd').val();
	
	var remember_us = $('#remember_us').is(':checked');
	
	$.ajax({
		
		type : 'post',
		url : '${pageContext.request.contextPath}/',
		data : {
			
			email : email,
			pwd : pwd,
			
			remember_email : remember_us
		},
		
		success : function(data) {
			
			if( data == 0) {
				console.log(data);
				
				$('#loginCheck').text("로그인 정보를 정확히 입력하세요");
				$('#loginCheck').css('color','red');
				
			}else if(data == -2){//login 인증 안했으면
				
				console.log(data);
				$('#loginCheck').text("이메일 인증을 해주셔야 합니다!!");
				$('#loginCheck').css('color','red');
			
			}else if(data == -3){//아이디가 사용중이면
				
				console.log(data);
				location.href = '${pageContext.request.contextPath}/redundant?email=' + email + '&pwd=' 
						+ pwd + '&remember_email=' + remember_us;
				
			}else if{//login 성공시
				
				console.log(data);
				location.href = '${pageContext.request.contextPath}/mainPage';
				
			}
			
		}
	});
});





</script>
<script type="text/javascript">
														
$(document).ready(function(){
	
	var nameJ = /^[가-힣]{2,6}$/;
	
	// 이름에 특수문자 들어가지 않도록 설정
	$("#name").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#name_check").text('');
		} else {
			$('#name_check').text('이름을 확인해주세요');
			$('#name_check').css('color', 'red');
		}
	});
	
	
});
			
		</script>

<script type="text/javascript"> 
									
		$(document).ready(function(){
			
			
			//email 검사 정규식 특수문자 가능,중앙에 @필수 그리고 뒤에 2~3글자
			var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;  
			
			$("#email").blur(function(){
				console.log("email");
				var email = $('#email').val();
				
				$.ajax({
					
				}) url : '${pageContext.request.contextPath}/emailCheck?email=' + email,
				   type : 'get',
				   success : function(data) {
					   
					   console.log("1 = 중복/ 0은 중복x" + data);

					   
					   //이메일 중복되면
					   if (data == 1){
						   											   
						   $("#email_check").text("사용중인 이메일입니다");
						   $('#email_check').css("color","red");
						   $('#reg_submit').attr("disabled",true);
						   
					   }else{
						   
						   if(mailJ.test(email)){
								
								$("#email").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(email == ""){
								
								$('#email_check').text('*는 필수사항입니다');
								$('#email_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#email_check').text("올바른 이메일 형식이 아닙니다");
								$('#email_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
		});


		
		</script>

<script type="text/javascript">
														
							$(document).ready(function(){						
						
							// 비밀번호 정규식
							var pwJ = /^[A-Za-z0-9]{4,12}$/; 
													
							$('#pwd')).blur(function({
								
								if(pwJ.test($(this).val())){
									
									console.log(pwJ.test($(this).val()));
									$("#pw_check").text('');
										
								}else if(pwd==""){
									$('#pw_check').text('*표시 칸은 필수 입력 항목입니다.');
									$('#pw_check').css('color','red');
									
								}else{
											
									$('pw_check').text('입력하신 패스워드는 보안 조건에 맞지 않습니다. (숫자 포함 최소 8자)');
									$('#pw_check').css('color','red');
								}
							});
													
						});
													
		</script>
<script type="text/javascript">
			
			 $('#showResult2').click(function(){
				 
				 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120';
				 var fileName = 'U';
					
				 var pName = 'U C50 퓨어 크림 C50-KR-CW-NE';
				 
				 $('#ResultStep3').slideToggle(200);
					$('#ta-continue-bottom').show();
					$('#hidden1').val(fileImage);
					$('#hidden2').val(fileName);
					$('#hidden3').val(pName);
				 
			 });
			 
			 
			 $('#showResult3').click(function(){
				 
				 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
				 var fileName = 'U';
					
				 var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';
				 
				 $('#ResultStep3').slideToggle(200);
					$('#ta-continue-bottom').show();
					$('#hidden7').val(fileImage);
					$('#hidden8').val(fileName);
					$('#hidden9').val(pName);
				 
			 });
			 
		 $('#showResult4').click(function(){
				 
				 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
				 var fileName = 'U';
					
				 var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';
				 
				 $('#ResultStep3').slideToggle(200);
					$('#ta-continue-bottom').show();
					$('#hidden1').val(fileImage);
					$('#hidden2').val(fileName);
					$('#hidden3').val(pName);
				 
			 });
		 
		 $('#showResult5').click(function(){
			 
			 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120';
			 var fileName = 'U';
				
			 var pName = 'U D50 퓨어 오렌지 D50-KR-OR-NE';
			 
			 $('#ResultStep3').slideToggle(200);
				$('#ta-continue-bottom').show();
				$('#hidden1').val(fileImage);
				$('#hidden2').val(fileName);
				$('#hidden3').val(pName);
			 
		 });
		 
		 
	 $('#showResult6').click(function(){
			 
			 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120';
			 var fileName = '유밀크 C55 퓨어크림';
				
			 var pName = 'U D50 퓨어 오렌지 C55-KR-CW-NE';
			 
			 $('#ResultStep3').slideToggle(200);
				$('#ta-continue-bottom').show();
				$('#hidden1').val(fileImage);
				$('#hidden2').val(fileName);
				$('#hidden3').val(pName);
		 });
	 
	 
	 $('#showResult7').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시';
			
		 var pName = '픽시 C61 타이탄 C61-KR-TI-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult8').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시';
			
		 var pName = '픽시 C61 일렉트릭 레드 C61-KR-RE-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 
	 $('#showResult9').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시';
			
		 var pName = '픽시 C60 다크 브라운 C60-KR-DB-NE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult10').click(function(){
		 
		 var fileImage = '';
		 var fileName = '픽시';
			
		 var pName = '픽시 C60 일렉트릭 타이탄 C60-KR-TI-NE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult11').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시';
			
		 var pName = '픽시 C60 스틸 C60-KR-SS-NE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 $('#showResult12').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시';
			
		 var pName = '픽시 C60 일렉트릭 레드 C60-KR-RE-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult13').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 블랙, C61 타이탄 A3NKC61-KR-TI';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult14').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 화이트, C61 타이탄 A3WKC61-KR-TI';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult15').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 블랙, C61 일렉트릭 레드 A3NKC61-KR-RE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult16').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 화이트, C61 일렉트릭 레드 A3WKC61-KR-RE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult17').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 화이트, C60 일렉트릭 레드 C60P-KR-RE-WH';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult18').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 & 에어로치노 블랙, C60 일렉트릭 레드 C60P-KR-RE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 $('#showResult19').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '픽시 & 에어로치노';
			
		 var pName = '픽시 C60 에어로치노 팩 (타이탄) C60P-KR-TI';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult20').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 D113 화이트 D113-KR-WH-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult21').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 D113 블랙 D113-KR-BK-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult22').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 
	 $('#showResult23').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 C112 체리 레드 C112-KR-CR-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult24').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 C110 파이어 엔진 레드 C110-KR-RE-NE';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult25').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 D113 화이트 D113-KR-WH-KIT2';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 
	 
	 $('#showResult26').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 D113 블랙 D113-KR-BK-KIT2';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
	 $('#showResult27').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈';
			
		 var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT2';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 $('#showResult28').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈 앤 밀크';
			
		 var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
	 
 $('#showResult29').click(function(){
		 
		 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
		 var fileName = '시티즈 앤 밀크';
			
		 var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT';
		 
		 $('#ResultStep3').slideToggle(200);
			$('#ta-continue-bottom').show();
			$('#hidden1').val(fileImage);
			$('#hidden2').val(fileName);
			$('#hidden3').val(pName);
		 
	 });
 
 $('#showResult30').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '시티즈 앤 밀크';
		
	 var pName = '시티즈 앤 밀크 D122 블랙 D122-KR-BK-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult31').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '시티즈 앤 밀크';
		
	 var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT2';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#"showResult32"').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '시티즈 앤 밀크';
		
	 var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT2';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult33').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아';
		
	 var pName = '이니시아 D40 블랙 D40-KR-BK-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult34').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아';
		
	 var pName = '이니시아 C40 루비 레드 C40-KR-RE-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult35').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아';
		
	 var pName = '이니시아 C40 화이트 C40-KR-WH-NE';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult36').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아';
		
	 var pName = '이니시아 C40 오렌지 C40-KR-PO-NE';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult37').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 블랙, C40 루비 레드 C40P-KR-RE';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult38').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 화이트, C40 루비 레드 C40P-KR-RE-WH';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult39').click(function(){
	 
	 var fileImage = '"https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120"';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 블랙, D40 블랙 A3NKD40-KR-BK-N ';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult40').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 화이트, D40 블랙 A3WKD40-KR-BK-N ';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult41').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 C40 에어로치노팩 스카이블루 C40P-KR-LB';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult42').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 블랙, C40 오렌지 C40P-KR-PO';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult43').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 D40 에어로치노팩 블루베리 블루 D40P-KR-BL';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult44').click(function(){
	 
	 var fileImage = 'showResult44';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노  화이트, C40 오렌지 C40P-KR-PO-WH';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult45').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
	
		
	 var pName = '이니시아 & 에어로치노 화이트, C40 화이트 C40P-KR-WH-WH';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult46').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '이니시아 & 에어로치노';
		
	 var pName = '이니시아 & 에어로치노 블랙, C40 화이트 C40P-KR-WH';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult47').click(function(){
	 
	 var fileImage = 'showResult47';
	 var fileName = '프로디지오';
		
	 var pName = '프로디지오 C70 타이탄 C70-KR-TI-NE';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });
 
 $('#showResult48').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '프로디지오 앤 밀크';
		
	 var pName = '프로디지오 앤 밀크, C75 타이탄 C75-KR-TI-NE';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
 });

$('#showResult49').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '엑스퍼트';
	
 var pName = '엑스퍼트 C80 블랙 C80-KR-BK-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult50').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '엑스퍼트 앤 밀크';
	
 var pName = '엑스퍼트 앤 밀크 C85 블랙 C85-KR-BK-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult51').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '크리아티스타 플러스';
	
 var pName = '크리아티스타 플러스 J520 스테인리스 스틸 J520-KR-ME-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult52').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니';
	
 var pName = '에센자 미니 C30 블랙 C30-KR-BK-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult53').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니';
	
 var pName = '에센자 미니 C30 화이트 C30-KR-WH-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult54').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니';
	
 var pName = '에센자 미니 D30 블랙 D30-KR-BK-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult55').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니';
	
 var pName = '에센자 미니 D30 레드 D30-KR-RE-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult56').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 블랙, C30 블랙 A3NKC30-KR-BK';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult57').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 화이트, C30 A3WKC30-KR-BK';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult58').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 블랙, C30 화이트 A3NKC30-KR-WH';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult59').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 화이트, C30 화이트 A3WKC30-KR-WH';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult60').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 블랙, D30 블랙 A3NKD30-KR-BK';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult61').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 화이트, D30 블랙 A3WKD30-KR-BK';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult62').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 블랙, D30 레드 A3NKD30-KR-RE';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult63').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '에센자 미니 & 에어로치노';
	
 var pName = '에센자 미니 & 에어로치노 화이트, D30 레드 A3WKD30-KR-RE';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult64').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '라티시마 원';
	
 var pName = '라티시마 원 F111 실키 화이트 F111-KR-WH-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult65').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120';
 var fileName = '라티시마 원';
	
 var pName = '라티시마 원 F111 블랙 F111-KR-BK-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult66').click(function(){
 
 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120';
 var fileName = '바리스타';
	
 var pName = '바리스타 레시피 메이커 4292VL-KR-KIT';
 
 $('#ResultStep3').slideToggle(200);
	$('#ta-continue-bottom').show();
	$('#hidden1').val(fileImage);
	$('#hidden2').val(fileName);
	$('#hidden3').val(pName);
 
});

$('#showResult67').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '그랑 라티시마';
		
	 var pName = '그랑 라티시마 F531 화이트 F531-KR-WH-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult68').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '라티시마 터치 리프레쉬';
		
	 var pName = '라티시마 터치 리프레쉬 화이트 F521-KR-WH-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult69').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '라티시마 터치 리프레쉬';
		
	 var pName = '라티시마 터치 리프레쉬 실버 F521-KR-SI-KIT;
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult70').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오';
		
	 var pName = '버츄오 블랙 GCA1-KR-BK-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult71').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오 플러스';
		
	 var pName = '버츄오 플러스 화이트 GCB2-KR-WH-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult72').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오 플러스';
		
	 var pName = '버츄오 플러스 실버 GCB2-KR-SI-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult73').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오 플러스';
		
	 var pName = '버츄오 플러스 블랙 GCB2-KR-BK-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult74').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오 플러스';
		
	 var pName = '버츄오 플러스 매트 블랙 GCB2-KR-MB-KIT';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	
$('#showResult75').click(function(){
	 
	 var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120';
	 var fileName = '버츄오 플러스';
		
	 var pName = '버츄오 플러스 매트 블랙 & 트래블 머그 GCB2-KR-MB-KIT2';
	 
	 $('#ResultStep3').slideToggle(200);
		$('#ta-continue-bottom').show();
		$('#hidden1').val(fileImage);
		$('#hidden2').val(fileName);
		$('#hidden3').val(pName);
	 
	});
	 
	 
	 
	 
			
			
			</script>


<body>



</body>


</html>