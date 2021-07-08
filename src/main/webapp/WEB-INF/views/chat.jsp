<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" style="display: block;" class=""><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>한국 네스프레소 공식사이트 | 캡슐 커피, 커피 머신 | 네스프레소 코리아</title>

    
<link rel="shortcut icon" type="image/x-icon" href="https://www.nespresso.com/_ui/img/favicon.ico">
<script async="" src="https://www.contact.nespresso.com/apps.php?a=calleo-livechat"></script>  
<script src="https://www.nespresso.com/_ui/generated/allHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>  
<link rel="preload" as="style" href="https://www.nespresso.com/_ui/generated/crema/styles.a3c466e43c59e68709ef.css">

<style>html { display:none }</style>

<script type="text/javascript">

//채팅창 활성화
$(document).ready(function() {
	$("#accept_legal_terms").click(function(){
		var chk = $("#accept_legal_terms").is(":checked");
		var fname = $("#first_name").val();
		var lname = $("#last_name").val();
		var email = $("#email").val();
		
		if(chk && fname && lname && email){
			$("#chatReq").attr("class","nlc-bt nlc-bt-main ");
		}else{
			$("#chatReq").attr("class","nlc-bt nlc-bt-main is-disabled");
		}
	});
});

//채팅창 열기/닫기
function chatDis(){
	
	var webConnectChk = $("#webConnectChk").val();
	
	if($('#chatDis').css('display')=='none'){//열기
		
		$('.nlc-header').attr("onclick", "");
		$('#nespresso-livechat').attr('class','is-animation nlc-expand');
		$('body').attr('class','test-dbp livechat-expanded');
		$('#chatDis').slideDown();
		$('.nlc-action-account').css('display','');
		
		if(webConnectChk=='open'){//채팅연결 된 상태
			$('#chatInfo').css('display','none');
			$('.nlc-action-close').css('display','');
		}else{//채팅연결 안된 상태
			$('#chatInfo').css('display','');
			$('.nlc-action-close').css('display','none');
			$('#chatScreen').empty();
		}
		
	}else{//닫기
		$('.nlc-header').attr("onclick", "chatDis();");
		$('#nespresso-livechat').attr('class','is-no-animation nlc-collapse');
		$('body').attr('class','test-dbp livechat-collapsed');
		$('#chatDis').slideUp();
		$('.nlc-action-account').css('display','none');
		$('.nlc-action-close').css('display','none');
		
		if(webConnectChk=='close'){//채팅연결 안된 상태	
			$('.nlc-action-close').css('display','none');
			$('#chatReqBtn').css('display','');
			$('#sendBtn').css('display','none');
			
		}
		
	}	
};

var ws;

$(document).ready(function() {
	
	/* //채팅창 접기 버튼
	$(".nlc-action-collapse").click(function(){
		//$('#chatDis').css('display','none');
		$('#nespresso-livechat').attr('class','is-no-animation nlc-collapse');
		$('body').attr('class','test-dbp livechat-collapsed');		
		$('.nlc-action-account').remove();
		
	}); */
	
	//채팅종료
	$(".nlc-action-close").click(function(){
		
		$("#accept_legal_terms").prop("checked",false);
		$("#first_name").val('');
		$("#last_name").val('');
		$("#email").val('');		
		$("#chatReq").attr("class","nlc-bt nlc-bt-main is-disabled");
		
		
		$('#webConnectChk').val('close');
		
		closeSocket();
	});
	
	
	
	$("input[type=text]").on("propertychange change keyup paste input", function() { 
		
		var fname = $("#first_name").val();
		var lname = $("#last_name").val();
		var email = $("#email").val();		
		var chk = $(accept_legal_terms).is(":checked");
		
		if(chk && fname && lname && email){
			$("#chatReq").attr("class","nlc-bt nlc-bt-main ");
		}else{
			$("#chatReq").attr("class","nlc-bt nlc-bt-main is-disabled");
		}
    });
	
	//채팅요청 버튼 클릭
	$("#chatReq").click(function(){
		
		$('#chatInfo').css('display','none');		
		$('#chatReqBtn').css('display','none');
		$('#sendBtn').css('display','');
		$('.nlc-action-close').css('display','');
		$('#chatScreen').empty();
		$('#webConnectChk').val('open');
		
		//웹소켓 연결
		/* ws = new WebSocker("ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/chat"); */
		ws = new WebSocket("ws://10.10.7.58:8080/nespresso/echo.do");
		ws.onopen = function(event){
			if(event.data === undefined){
				return;
			}
			writeResponse(event.data);
		};
		
		ws.onmessage = function(event){
			console.log('writeResponse');
			console.log(event.data);
			writeResponse(event.data);
		};
	       
		ws.onclose = function(event){
			/* writeResponse("채팅이 종료되었습니다."); */
		};	
	});	
	
	$('#messageInput').keydown(function(e){
		if(e.keyCode==13){
			send();
			
		}		
	});
	
	$('#sendMsg').click(function(e){		
		send();	
		
	});
});

function send(){
	var msg = $('#messageInput').val();
	var sender = $('#sender').val();
	var text = msg + "," + sender;
		
	ws.send(text);
	text = "";
	clearText();
}
function closeSocket(){
	ws.close();
	$('.nlc-action-close').css('display','none');
	var contents = "<li rel=\"nespresso\" class=\"nlc-is-closed\">"
				+ "<div>"
				+ "<span><p>상담원과의 채팅을 종료하였습니다.<p>네스프레소 라이브 채팅을 이용해주셔서 </br>감사합니다.</p></p></span>"
				+ "</div>"
				+ "</li>";
				
	$('#chatScreen').append(contents);
	$('.nlc-main-scrollable').scrollTop( $(document).height() );
}

function writeResponse(text){
	
	var dt = new Date();
	var hour = dt.getHours();
	var cvHour = 0;
	if (hour == 12) {
		cvHour = hour;
	}else {
		cvHour = hour%12;
	}
	var minutes = dt.getMinutes();
	var h = cvHour < 10 ? "0"+cvHour : cvHour;
	var m = minutes < 10 ? "0"+minutes : minutes;
	var time = h + ":" + m + " ";
	time+= dt.getHours()>=12?"PM":"AM";
	
	/* var data = JSON.parse(text); */
	var userSession = $('#sender').val();
	var sender = text.split(",")[1];
	var message = text.split(",")[0];
	var contents = "";
	
	if(sender!=userSession) { //관리자
		contents = "<li rel=\"nespresso\" class=\"\">"
			 + "<div class=\"nlc-author\">"
			 + "<figure><img src=\"https:/" + "/www.contact.nespresso.com/assets/operators/avatar/default.png\" alt=\"nespresso\"></figure>"
			 + "<span class=\"nlc-author-name\">" + sender + "</span>"
			 + "</div>"
			 + "<div aria-role=\"log\" aria-live=\"assertive\" aria-atomic=\"false\" aria-relevant=\"additions\" class=\"nlc-message\">"
			 + "<span class=\"sessioncamhidetext\"><p>" + message + "</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>"
			 + "</div>"
			 + "<div style=\"text-align: right;\"><time datetime=\"\">" + time + "</time></div>"
			 + "</li>";			 
	}else{ //client		
		contents = "<li rel=\"client\" class=\"\">" 
			 + "<div aria-role=\"log\" aria-live=\"assertive\" aria-atomic=\"false\" aria-relevant=\"additions\" class=\"nlc-message\">"
			 + "<span class=\"sessioncamhidetext\"><p>" + message + "</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>"
			 + "</div>"
			 + "<div style=\"text-align: right;\"><time datetime=\"\">" + time + "</time></div>"
			 + "</li>";
	}
		 
	$('#chatScreen').append(contents);
	$('#messageInput').val('');
	$('#messageInput').focus();
	$('.nlc-main-scrollable').scrollTop( $(document).height() );
}

function clearText(){
  console.log(messages.parentNode);
  messages.parentNode.removeChild(messages)
}

</script>

</head>
<!-- ---------------------채팅 창--------------------- -->
<body class="test-dbp livechat-collapsed">
<input type="hidden" id="sender" name="sender" value="${sessionScope.userSession.lName }${sessionScope.userSession.name }">
	<section id="nespresso-livechat" class="is-no-animation nlc-collapse" >
		<header class="nlc-header" onclick="chatDis();">
			<div class="nlc-wrapper">
				<div class="nlc-icon"><!---->
					<img alt="Icon" width="24px" height="24px" src="https://www.contact.nespresso.com/apps/calleo-livechat/img/icon-chat.svg">
				</div>
				<div class="nlc-title"><h6>채팅 상담이<br/>필요하신가요?</h6></div>
				<div class="nlc-action">				
					<a class="nlc-action-account" style="display: none;"><img src="https://www.contact.nespresso.com/apps/calleo-livechat/img/icon-user-small.svg" alt="Icon" width="20px" height="25px"></a>
					<a href="javascript:chatDis();" class="nlc-action-collapse"><img src="https://www.contact.nespresso.com/apps/calleo-livechat/img/icon-collapse.svg" alt="Icon" width="24px" height="24px"></a>
					<a class="nlc-action-close" style="display: none;"><img src="https://www.contact.nespresso.com/apps/calleo-livechat/img/icon-close.svg" title="채팅창 닫기" alt="Icon" width="24px" height="24px"></a>
				</div>
			</div>
		</header>
		<div id="chatDis" class="nlc-wrapper" style="display: none;">
			<div class="nlc-main"><!----> <!----> <!---->
				<div id="nlc-main-scrollable" class="nlc-main-scrollable">
					<div id="chatInfo" style="display: none;">
						<div style="clear: both;"></div> 
						<div id="nlc-form-subscribe" role="form" class="nlc-form-subscribe row"><!----> <!----> 
							<div class="nlc-field"><label for="first_name" class="nlc-label">이름&nbsp;<span class="mandatory">*</span></label> 
								<div class="nlc-input">
									<input type="text" id="first_name" name="first_name" title="이름" placeholder="이름" aria-required="true" required="required" value="${sessionScope.userSession.name }"/>
								</div>
							</div> 
							<div class="nlc-field"><label for="last_name" class="nlc-label">성&nbsp;<span class="mandatory">*</span></label> 
								<div class="nlc-input">
									<input type="text" id="last_name" name="last_name" title="성" placeholder="성" aria-required="true" required="required" value="${sessionScope.userSession.lName }"/>
								</div>
							</div> 
							<div class="nlc-field"><label for="email" class="nlc-label">이메일&nbsp;<span class="mandatory">*</span></label> 
								<div class="nlc-input">
									<input type="text" id="email" name="email" title="이메일" placeholder="이메일" aria-required="true" required="required" value="${sessionScope.userSession.email }"/>
								</div>
							</div> 
							<div class="nlc-privacy-force">
							<div class="textarea"><label for="legal_terms_content" class="nlc-label head-terms nlc-bottom-spacer">
                    							입력해주신 개인 정보는 정확한 답변 제공 목적으로 수집되며, 엄격히 보호되고 있습니다. 아래 취급 방침에 동의해주시기 바랍니다.
               									 </label>
               									 <div class="nlc-input nlc-bottom-spacer">
               									 <textarea rows="6" readonly="readonly" id="legal_terms_content" class="legal-terms-content">개인정보 처리방침
네스프레소 계열사를 포함하여 네슬레코리아 유한책임회사 네스프레소 사업부(이하 “네스프레소”)는 귀하가 네스프레소는 브랜드 홈페이지를 운용함에 있어 이용자가 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 네스프레소는 개인정보 보호법, 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 등에 관한 법률 등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정 및 방송통신위원회, 과학기술정보통신부 및 행정안전부 등 대한민국 정부가 제정한 개인정보보호지침들을 준수하며, 개인정보처리방침을 통하여 이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 네스프레소의 개인정보처리방침은 홈페이지 첫 화면에 공개되며 이용자들은 언제나 용이하게 보실 수 있습니다.


네스프레소의 개인정보처리방침은 법률 및 지침 변경이나 네스프레소 내부 방침 변경 등으로 인하여 변경될 수 있으며, 개인정보취급방침이 변경되는 경우 그 변경사항에 대하여 즉시 브랜드 홈페이지를 통하여 게시하고 개정일자를 부여하여 개정된 사항을 이용자들이 쉽게 알아볼 수 있도록 하고 있습니다.

네스프레소의 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.

1. 수집하는 개인정보 항목 및 수집방법
2. 개인정보의 수집 및 이용목적
3. 수집한 개인정보의 보유 및 이용기간
4. 개인정보의 파기절차
5. 개인정보 처리 위탁
6. 이용자 및 법정대리인의 권리와 그 행사방법
7. 개인정보의 기술적, 관리적 보호조치
8. 쿠키의 설치, 운영 및 그 거부에 관한 사항
9. 개인정보의 제3자 제공
10. 개인정보의 국외 이전
11. 개인정보 관리책임자 및 관련 부서
12. 정책변경에 따른 공지의무

1. 수집하는 개인정보 항목 및 수집방법
네스프레소는 이용자들의 회원가입, 상담, 그리고 각종 서비스의 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.
이름, 이메일, 주소, 휴대폰 번호, 우편번호, 전화번호
또한 서비스 이용과정이나 사업 처리 과정에서 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 정보, 사업자가 마케팅 등에 이용할 목적으로 가공한 회원정보 등이 생성되어 수집될 수 있습니다.
아울러 네스프레소의 상품의 구입 과정에서 신용카드 결제 시 신용카드명, 카드번호, 계좌이체 시 은행명, 계좌 번호 등이 수집될 수 있으며, 물품 배송 시에 물품 수취인의 이름, 전화번호, 주소, 우편번호 등이 수집될 수 있습니다.

2. 개인정보의 수집 및 이용목적
대부분의 브랜드 홈페이지 서비스는 별도의 이용자 등록이 없이 사용할 수 있습니다. 그러나 브랜드 회원서비스, 상품구매, 각종 이벤트 참여, 소비자 조사 등을 통하여 이용자들에게 맞춤 서비스를 비롯한 보다 더 향상된 양질의 서비스를 제공하기 위하여 필요한 이용자 개인 정보를 수집하고 있으며, 수집한 개인정보는 다음의 목적으로 활용됩니다.

2.1. 서비스 제공에 관한 계약이행 및 서비스 제공에 따른 요금정산
콘텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송, 본인인증, 구매 및 요금 결제, 요금추심

2.2. 회원관리
회원제 서비스 이용 및 제한적 본인 확인 제에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달
2.3. 마케팅 광고에 활용
신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계

3. 수집한 개인정보의 보유 및 이용기간
이용자가 네스프레소의 브랜드 홈페이지 회원으로서 네스프레소에서 제공하는 브랜드 홈페이지의 회원서비스를 이용하는 동안 네스프레소는 이용자들의 개인정보를 보유하며 규정에 따라 개인정보를 활용합니다. 회원이 가입 해지를 요청하거나 개인정보 수집 및 이용 목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.

&lt;관련법령에 의한 정보보유&gt;
상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관계법령에서 정한 일정한 기간 동안 회원정보 보관.

1) 보존 항목: 계약 또는 청약철회 등에 관한 기록
근거 법령 및 방침: 전자상거래 등에서의 소비자 보호에 관한 법률
보존 기간: 5년
2) 보존 항목: 대금결제 및 재화 등의 공급에 관한 기록
근거 법령 및 방침: 전자상거래 등에서의 소비자 보호에 관한 법률
보존 기간: 5년
3) 보존 항목: 소비자의 불만 또는 분쟁처리에 관한 기록
근거 법령 및 방침: 전자상거래 등에서의 소비자 보호에 관한 법률
보존 기간: 3년
4) 보존 항목: 표시/광고에 관한 기록
근거 법령 및 방침: 전자상거래 등에서의 소비자 보호에 관한 법률
보존 기간: 6개월
5) 보존 항목: 세법이 규정하는 모든 거래에 관한 장부 및 증빙서류
근거 법령 및 방침: 국세기본법
보존 기간: 5년
6) 보존 항목: 전자금융거래에 관한 기록
근거 법령 및 방침: 전자금융거래법
보존 기간: 5년
7) 보존 항목: 서비스 방문 기록
근거 법령 및 방침: 통신비밀보호법, 정보통신망법
보존 기간: 1년
8) 보존 항목: 부정이용기록
근거 법령 및 방침: 회사 내부 방침
보존 기간: 1년

4. 개인정보의 파기절차
이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.

5. 개인정보 처리 위탁
네스프레소는 다음과 같이 서비스 제공을 위하여 필요한 개인정보 처리 위탁을 하고 있습니다. 네스프레소는 관계 법령에 따라 위탁 계약 시 개인정보가 안전하게 처리될 수 있도록 필요한 사항을 규정하고 있습니다.
위탁 받은 업체(수탁자) 위탁 업무
㈜지어소프트 디지털 마케팅 업무
㈜벨류포인트
 온-오프라인 회원 등에 대한 DM 발송
㈜제이콘컴퍼니
 온-오프라인 회원 등에 대한 SMS/E-Mail 발송
NHN한국사이버결제주식회사 신용카드, 휴대폰결제, 실시간 계좌이체 결제
주식회사 태은 주문 배송 처리 대행
㈜Ubase 고객 응대 서비스 대행
발렉스 오프라인 회원의 문서 보관
CJ 대한통운 주문 배송 서비스 대행
㈜일양 주문 배송 서비스 대행


회사는 신상품 소개, 이벤트 정보 등의 유용한 정보를 제공하기 위하여 개인정보 처리 위탁을 할 수 있으며 그러한 경우 별도의 동의절차를 밟고 있습니다. 개인정보 처리 위탁에 동의 않을 수 있으나, 동의하지 않는 경우 본인 확인 인증, 고객정보 분석, 상품 배송 서비스 등 개인정보 처리 위탁을 하는 업무의 제공이 불가능합니다.

6. 이용자 및 법정대리인의 권리와 그 행사방법
이용자 및 법정 대리인은 브랜드 홈페이지를 이용하여 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를 요청할 수도 있습니다.
이용자 혹은 만 14세 미만 아동의 개인정보 조회, 수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 가입 해지(동의철회)를 위해서는 "계정 해지"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.
혹은 개인정보관리책임자에게 서면, 전화 또는 이 메일로 연락하시면 지체 없이 조치하겠습니다.
이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "3. 수집한 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.

7. 개인정보의 기술적, 관리적 보호조치
네스프레소는 네스프레소를 위해, 또는 네스프레소를 대리하여 활동하며 귀하의 데이터의 비밀과 보안을 유지하도록 동의한 제 3자를 제외한 다른 단체가 귀하의 데이터를 확보할 수 없도록 모든 합리적인 조치들을 취하고 있습니다.

가. 관리적 조치
네스프레소는 내부관리계획을 수립하고 직원들에게 정기적인 교육을 실시하여, 귀하의 개인정보를 보호하기 위해 노력하고 있습니다. 데이터에 대한 접근은 필요한 경우에만 실시되며 귀하의 데이터 취급 시 비밀유지를 위한 엄격한 기준을 준수하도록 교육을 받은 네스프레소 직원들 중 일부로만 제한됩니다.
나. 기술적 조치
네스프레소가 수집하는 데이터의 보안과 비밀을 유지하기 위해, 네스프레소는 산업표준 방화벽 및 패스워드 보안을 통해 보호되는 데이터 네트워크를 사용합니다. 다만, 네스프레소가 방문객을 위해 안전하고 신뢰할 수 있는 웹사이트를 구축하기 위해 노력함에도 불구하고, 인터넷은 일반적으로 완벽한 보안 환경으로 간주되지 않으며, 따라서 귀하가 제공하는 데이터나 귀하가 네스프레소 웹사이트나 이메일을 통해 전송하신 자료의 기밀 유지를 네스프레소에서 보장할 수 없음을 인식해 주시기 바랍니다. 따라서 네스프레소는 귀하의 데이터가 인터넷을 통해 네스프레소에게 전송되는 과정 동안 귀하의 데이터의 보안을 책임질 수 없습니다.
다. 물리적 조치
네스프레소는 개인정보 처리시스템에 대한 물리적 잠금장치, 전산실, 문서보관 장소 등의 접근통제를 통하여 개인정보의 물리적 접근방지를 위한 보호조치를 취하고 있습니다.

8. 쿠키의 설치, 운영 및 그 거부에 관한 사항
서비스 이용과정이나 사업 처리 과정에서 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 정보, 사업자가 마케팅 등에 이용할 목적으로 가공한 회원정보 등이 생성되어 수집될 수 있습니다.
네스프레소 웹사이트의 콘텐츠 개선, 웹사이트 방문객을 위한 웹사이트 최적화, 방문객 현황과 웹사이트 이용실태 파악을 위해 익명의 데이터를 처리합니다. 이러한 활동 수행 시 네스프레소는 추적 기술(“쿠키”)을 이용하여 브라우저 유형, 운영체제, 접속 날짜 및 시간 등 익명의 정보를 수집할 수 있습니다. “쿠키” 자체는 사용자의 신원을 밝히는 용도로 사용될 수 없습니다. 쿠키는 귀하의 브라우저로 전송되어 귀하의 컴퓨터 하드 드라이브에 저장되는 작은 정보의 조각입니다.
이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 온라인 샵 일부 서비스는 이용에 어려움이 있을 수 있습니다.

9. 개인정보의 제3자 제공
네스프레소는 이용자의 개인정보를 원칙적으로 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
- 이용자들이 사전에 공개에 동의한 경우
- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

10. 개인정보의 국외 이전
네스프레소는 다국적 브랜드로서 다양한 사법관할구역 내에서 데이터 베이스를 보유합니다. 네스프레소는 귀하의 거주 국가 외부에 위치한 목적지, 즉 이러한 데이터베이스 중 한 곳, 네스프레소 그룹 소속사, 또는 귀하의 데이터에 대한 기밀과 보안 유지에 동의한 파트너사로 귀하의 데이터를 전송할 수 있습니다. 네스프레소는 해당 국가 내의 데이터베이스로 전송되는 데이터가 동일한 수준으로 보호되도록 보장할 것이며, 이러한 국가 내에서 제3자에게 데이터가 전송되는 일이 없도록 노력할 것입니다. 귀하는 귀하의 데이터를 제공함으로써 네스프레소 그룹의 계열사/파트너사로의 데이터 전송이 발생할 수 있으며 이러한 목적으로 개인정보를 국외로 이전하는 것에 명시적으로 동의하는 것으로 간주됩니다. 그 구체적 내용은 다음과 같습니다.
이전되는
개인정보 항목 이전되는
국가 이전
일시 이전
방법 이전받는
법인 이전받는 법인의
정보관리책임자 이전받는 법인의
이용목적 이전받는 법인의
보유∙이용기간
이름, 이메일, 전화번호, 주소 스위스
 회원 가입 즉시 전자적 방법을 통한 국외 이전 Nestle Nespresso S.A
 로버트 리네케, 정보 보호 프로그램 관리자 네스프레소 클럽 회원 서비스 제공에 관한 계약이행 및 서비스 제공에 따른 요금 정산, 회원관리 및 고객 클레임 처리
 네스프레소 클럽 회원 탈퇴 및 개인정보 수집 및 이용 목적 달성 시까지



11. 개인정보 관리책임자 및 관련부서
네스프레소는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.

[네스프레소 사업부 개인정보 관리 책임자]
성명: 민재용 팀장
전화번호: 080-734-1111
[네스프레소 클럽]
전화번호: 080-734-1111
기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
- 개인정보침해신고센터(한국인터넷진흥원) (privacy.kisa.or.kr / 02-405-5118)
- 정보보호마크인증위원회 (www.eprivacy.or.kr / 02-550-9531~2)
- 경찰청 사이버안전국 (www.ctrc.go.kr / 182)
- 대검찰청 첨단범죄수사과 (http://www.spo.go.kr / 02-3480-2000)
- 경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)

12. 정책변경에 따른 공지 의무
네스프레소 개인정보처리방침은 2013년 09월 01일에 제정되었으며 법령, 정책 또는 보유기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 변경되는 개인정보처리방침을 브랜드 홈페이지를 통해 내용을 공지하도록 하겠습니다.

개인정보처리방침 최종 변경 일자: 2020년 5월 26일
개인정보처리방침 시행 일자: 2014년 6월 1일
네슬레코리아 유한책임회사 네스프레소 사업부

2003 Nestlé Korea Nespresso S.A. All rights reserved.</textarea>
												</div>
											</div>
											<div class="accept-legal-terms-input nlc-bottom-spacer">
												<label id="policy" for="accept_legal_terms" class="nlc-label">
													<input type="checkbox" id="accept_legal_terms" aria-required="true" required="required">동의 합니다&nbsp;
                   									<span class="mandatory">*</span>
                   								</label>
                   							</div>
                   						</div>
                   					</div>
                   				</div>
                   				<div>
                   					<ul id="chatScreen" class="nlc-livechat">
                   					
                   						<!-- 메세지 -->
                   							
                   					</ul> 
                   				</div>
                   			</div>
                   		</div>
                   		<footer id="chatReqBtn" class="nlc-footer" style="display: block;">
							<div class="nlc-action">
								<button id="chatReq" title="채팅 요청" class="nlc-bt nlc-bt-main is-disabled" onclick="openSocket();"><span>채팅 요청</span></button>
								<input type="hidden" id="webConnectChk" name="webConnectChk" value="close"/>
							</div>
						</footer>
						<footer id="sendBtn" class="nlc-footer nlc-can-upload" style="display: none;">
							<div><!----> <!----> 
								<div class="nlc-message">
									<textarea id="messageInput" placeholder="메세지를 입력해 주세요." class="nlc-input" style="min-height: 2em; overflow: hidden; overflow-wrap: break-word; height: 43px;"></textarea> 
									<button class="nlc-bt nlc-bt-main nlc-bt-send" id="sendMsg"><span>보내기</span></button> 
									<button class="nlc-bt nlc-bt-attachment"></button>
								</div>
							</div> <!----> <!----> <!----> <!---->
						</footer>
                   	</div>
</section>


</body>
</html>