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

<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>

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
						id="ta-my-account-links-1" class="activated myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Addresses Media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 나의 주소</span>
							<span class="visually-hidden"> selected</span>
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
						id="ta-my-account-links-4" class=" myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Contact preferences media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 정보 수신 항목 설정</span>
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
							나의 주소<span class="visually-hidden"> selected</span></a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/information.action">
							개인 정보</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/mymachines.action"> 
							나의 머신</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/subscription.action">
							정보 수신 항목 설정</a>
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
				<div id="address-book-main" class="addresses">
					<div class="account-title">
						<h2 class="heading">내 주소</h2>
					</div>
					<fieldset class="address-group">
						<legend class="visually-hidden"> 기본 배송지/청구지 주소</legend>
						<div class="addresses__address addresses__address--odd">

							<div class="addresses__address-column">

								<div class="addresses__address-item">
									<span class="addresses__subtitle"> 주소</span>
									<address class="address-pattern sessioncamhidetext">
										<div>
											<strong>지 요한 님</strong>
										</div>
										<div>주소1</div>
										<div>상세주소1</div>
										<div>05744 서울특별시</div>
									</address>
								</div>

							</div>

							<div class="addresses__address-column">
								<div class="addresses__address-item sessioncamhidetext">
									<span class="addresses__subtitle"> 전화번호(배송 연락처)</span> (개인
									전화번호) 01044648572
								</div>
							</div>

							<div class="addresses__address-bottom">

								<a href="editShippingAndBillingAddress?p=12622113603607"
									class="btn-container addresses__edit-button"> <span
									class="btn button-primary  "> <span> 주소 수정하기</span>
								</span>
								</a>
							</div>

							<div class="addresses__address-bottom">

								<div class="my-default-address">
									<i class="responsive-icon Glyph Glyph--check addresses__selected-default-icon"
										aria-hidden="true"></i> <i class="fas fa-check"></i> 내 기본 배송지 주소
								</div>
								<div class="my-default-address">
									<i class="responsive-icon Glyph Glyph--check addresses__selected-default-icon"
										aria-hidden="true"></i> <i class="fas fa-check"></i> 내 기본 청구지 주소
								</div>
							</div>
						</div>
					</fieldset>
					<div class="addresses__bottom addresses__address--even">
						<a href="addAddress" class="btn-container "> <span
							class="btn button-primary  addresses__add-button"> <span>
									주소 추가하기</span>
						</span>
						</a>
					</div>

				</div>

				<div id="confirm-delete-dialog"
					class="confirm-info-dialog display-none responsive-popin"
					data-dlg-attributes="
    {
        &quot;autoOpen&quot;: false,
        &quot;width&quot;: 838
    }
    ">
					<div>
						<p class="title">확인</p>
						<div>
							<p>삭제하시겠습니까?</p>
							<button type="button"
								class="btn-container btn button-primary   cancel addresses-delete-dialog__cancel-button">
								<span class="button__content"> 취소</span>
							</button>
							<button type="button" id="delete-confirm"
								class="btn-container btn button-primary   addresses-delete-dialog__confirm-button">
								<span class="button__content"> 확인</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>

</body>
</html>