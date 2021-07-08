<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="/support/resources/css/responsiveMyAccount.css" />
<link rel="stylesheet" type="text/css" href="/support/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/support/resources/css/responsiveComponents2.css" />
<link rel="stylesheet" type="text/css" href="/support/resources/css/responsiveLoadedFirst2.css" />
<link rel="stylesheet" type="text/css" href="/support/resources/css/styles.f39e04764e2617265801.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body class="livechat-collapsed">

	<main id="main" class="content account account-address account-my-order account-my-order-empty site-width wrapper">

	<span id="a11y-main-area" class="visually-hidden" tabindex="-1">메인 컨텐츠를 보고 계십니다.</span>
 
	<div class="clearfix account">
		<div class="sidebar">
			<div id="welcome-box" class="welcome-box">
				<div class="account-title f20">
					<h2 class="visually-hidden">내 계정 메뉴</h2>
					<div class="heading">내 계정</div>
					<a href="#" class="membership-button hidden"></a>
				</div>
				<div class="welcome">
					<div class="clearfix">
						<div class="col">

							<p class="member welcome-box__label sessioncamhidetext">지 요한
								님 환영합니다.</p>
							<p class="number welcome-box__label sessioncamhidetext">네스프레소
								회원 번호: 4914948</p>
						</div>
					</div>
				</div>
				<nav class="myaccount-menu">
				<ul class="nav myaccount-menu__item-list" id="my-account-menu">
					<li class="menu-item myaccount-menu__item"><a
						href="http://localhost:8080/support/orders.action"
						id="ta-my-account-links-0" class=" myaccount-menu__link">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Orders Media"
							class="myaccount-menu__picto" width="34" height="34"> 
							<span class="myaccount-menu__label"> 나의 주문 내역
						</span>
					</a></li>

					<li class="menu-item myaccount-menu__item"><a
						href="http://localhost:8080/support/address.action"
						id="ta-my-account-links-1" class=" myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Addresses Media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 나의 주소</span>
					</a></li>

					<li class="menu-item myaccount-menu__item"><a
						href="http://localhost:8080/support/information.action"
						id="ta-my-account-links-2" class=" myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Personal Information media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 개인 정보</span>
					</a></li>

					<li class="menu-item myaccount-menu__item"><a
						href="http://localhost:8080/support/mymachines.action"
						id="ta-my-account-links-3" class=" myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Machines media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 나의 머신</span>
					</a></li>

					<li class="menu-item myaccount-menu__item"><a
						href="http://localhost:8080/support/subscription.action"
						id="ta-my-account-links-4" class="activated myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Contact preferences media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 정보 수신 항목 설정</span>
							<span class="visually-hidden"> selected</span>
					</a></li>

				</ul>

				<div id="account-menu" class="dropdown">
					<button type="button"
						class="btn-container btn button-primary button-right-icon  account-menu__dropdown-button">
						<span class="button__content"> 나의 주문 내역</span> <i
							class="responsive-icon Glyph Glyph--arrow-bottom"
							aria-hidden="true"></i>
					</button>
					<ul class="menu-items">
						<li><a class="dropdown-link" href="http://localhost:8080/support/orders.action">
								나의 주문 내역</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/address.action"> 
							나의 주소</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/information.action">
							개인 정보</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/mymachines.action"> 
							나의 머신</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/subscription.action">
							정보 수신 항목 설정<span class="visually-hidden"> selected</span></a>
						</li>
					</ul>
				</div>
				</nav>
			</div>

			<div class="my-account-banners">

				<div class="wrapper-push-banner">

					<a class="push-banner"
						href="http://localhost:8080/support/subscription.action">
						<img
						src="https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&imwidth=750"
						srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&imwidth=750 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&imwidth=750 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&imwidth=750 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&imwidth=750 4x"
						alt="" class="responsive-localized-banner__with-link" width="750"
						height="719">
					</a>
				</div>

			</div>

		</div>
<!-- 주문내역 있을때/없을때 -->
			<div class="main">
				<form id="contactMeans" novalidate="novalidate"
					class="my-account-contact-preferences clearfix"
					action="saveMySubscription" method="post">
					<p class="heading">정보 수신 항목 설정</p>

					<div class="contact-preferences__title">
						<h2 class="heading">네스프레소 소식 수신 방법 선택</h2>
					</div>

					<div class="contact-preferences-content contact-methods__global-optin-container"
						id="my-account-my-news">

						&nbsp;
						<p class="contact-methods__global-optin-separator">
							<input id="contact-methods-global-optin" name="groupedOptinAuthorized" type="checkbox" value="true">
								<input type="hidden" name="_groupedOptinAuthorized" value="on" style="">
								<label for="contact-methods-global-optin"> <strong>네스프레소에서
									제공하는 이벤트 및 서비스(제휴서비스 포함) 안내 등 광고성 정보를 받으시려면 마케팅 목적 이용에 동의해 주세요.
									(전체 동의)</strong>
							</label>
						</p>
					</div>
					<div class="contact-preferences-content "
						id="my-account-contact-methods">
						<h3 class="legend">
							동의 시 네스프레소의 다양한 혜택 및 소식을 받아보실 수 있습니다.<br>(1주년 기념 혜택, 무료 커피샘플
							증정, 이벤트 초청, 할인 바우처 , 커피 클래스, 신제품 및 한정판 소식 등)
						</h3>
						<div>
							<ul id="contact-method-list">
								<li class="clearfix"><input id="emailAuthorized"
									name="emailAuthorized" data-track-preference-name="Email"
									type="checkbox" value="true"><input type="hidden"
									name="_emailAuthorized" value="on" style=""><label
									for="emailAuthorized" class="checkbox "> 이메일</label></li>
								<li class="clearfix"><input id="phoneAuthorized"
									name="phoneAuthorized" data-track-preference-name="Phone"
									type="checkbox" value="true"><input type="hidden"
									name="_phoneAuthorized" value="on" style=""><label
									for="phoneAuthorized" class="checkbox "> 전화</label></li>
								<li class="clearfix"><input id="postMailAuthorized"
									name="postMailAuthorized" data-track-preference-name="Mail"
									type="checkbox" value="true"><input type="hidden"
									name="_postMailAuthorized" value="on" style=""><label
									for="postMailAuthorized" class="checkbox "> 우편</label></li>
								<li class="clearfix"><input id="messagingAuthorized"
									name="messagingAuthorized" data-track-preference-name="SMS"
									type="checkbox" value="true"><input type="hidden"
									name="_messagingAuthorized" value="on" style=""><label
									for="messagingAuthorized" class="checkbox "> 휴대전화 문자</label></li>
							</ul>
						</div>
					</div>
					<div class="fieldset-separator"></div>
					<div class="my-account-save-preferences clearfix">
						<button type="submit" id="contactPreferencesSaveButton"
							class="btn-container btn button-primary  contact-preferences__save-button track-click "
							data-track-click="{&quot;category&quot;: &quot;contact_preferences&quot;}">
							<span class="button__content"> 저장</span>
						</button>
					</div>
				</form>
			</div>
		</div>
		
		<!-- All Select -->
		<script type="text/javascript">
		
		$('#contact-methods-global-optin').click(function(){
			if($("input:checkbox[id='contact-methods-global-optin']").prop("checked")){
				$("input[type=checkbox]").prop("checked", true);
			}else{
				$("input[type=checkbox]").prop("checked", false);
			}
			
		});
		
		</script>

	</main>

</body>
</html>