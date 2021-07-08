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
						id="ta-my-account-links-2" class="activated myaccount-menu__link"> <img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&imwidth=34 4x"
							alt="Responsive MyAccount My Personal Information media"
							class="myaccount-menu__picto" width="34" height="34"> <span
							class="myaccount-menu__label"> 개인 정보</span>
							<span class="visually-hidden"> selected</span>
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
							나의 주소</a>
						</li>
						<li><a class="dropdown-link" href="http://localhost:8080/support/information.action">
							개인 정보<span class="visually-hidden"> selected</span></a>
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
				<div id="my-account-personal-info" class="ng-scope">

					<form id="editPersonalInfoForm" novalidate="novalidate"
						action="/kr/ko/myaccount/editPersonalInformations" method="post"
						class="ng-pristine ng-valid">
						<h2 class="heading">내 회원 정보</h2>

						<div class="personal-info__form-container">
							<div class="clearfix">
								<p class="personal-info__disclaimer">Fill in the form below
									to update your personal information.</p>
							</div>

							<div class="clearfix input-group">
								<div class="input-row">

									<label for="editPersoInfoDTO.information.firstName"
										class="input-label"> 이름<span aria-hidden="true"
										class="required-indicator"> *</span></label>

									<div class="input-container">

										<div class="tt-container">
											<input id="editPersoInfoDTO.information.firstName"
												name="editPersoInfoDTO.information.firstName"
												class=" focus-tooltip" aria-describedby="firstName-tooltip"
												aria-required="true" aria-invalid="false" type="text"
												value="요한" maxlength="20">
											<div id="firstName-tooltip" class="tooltip">
												<div class="top"></div>
												<div class="body">
													<div class="content">
														<p>이름</p>
													</div>
												</div>
												<div class="bottom"></div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix input-group">
								<div class="input-row">

									<label for="editPersoInfoDTO.information.lastName"
										class="input-label"> 성<span aria-hidden="true"
										class="required-indicator"> *</span></label>

									<div class="input-container">

										<div class="tt-container">
											<input id="editPersoInfoDTO.information.lastName"
												name="editPersoInfoDTO.information.lastName"
												class=" focus-tooltip" aria-describedby="lastName-tooltip"
												aria-required="true" aria-invalid="false" type="text"
												value="지" maxlength="35">
											<div id="lastName-tooltip" class="tooltip">
												<div class="top"></div>
												<div class="body">
													<div class="content">
														<p>성</p>
													</div>
												</div>
												<div class="bottom"></div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix input-group">
								<div class="input-row">

									<label for="editPersoInfoDTO.information.email"
										class="input-label"> 이메일 주소<span aria-hidden="true"
										class="required-indicator"> *</span></label>

									<div class="input-container">

										<div class="tt-container">
											<input id="editPersoInfoDTO.information.email"
												name="editPersoInfoDTO.information.email"
												class=" doNotCopy focus-tooltip"
												aria-describedby="email-tooltip" aria-required="true"
												aria-invalid="false" type="email" value="yoeumiii@naver.com"
												maxlength="50">
											<div id="email-tooltip" class="tooltip">
												<div class="top"></div>
												<div class="body">
													<div class="content">
														<p>이메일 주소</p>
													</div>
												</div>
												<div class="bottom"></div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix input-group">
								<div class="input-row">

									<label for="editPersoInfoDTO.information.confirmationEmail"
										class="input-label"> 이메일 주소 확인<span aria-hidden="true"
										class="required-indicator"> *</span></label>

									<div class="input-container">

										<div class="tt-container">
											<input id="editPersoInfoDTO.information.confirmationEmail"
												name="editPersoInfoDTO.information.confirmationEmail"
												class=" doNotCopy focus-tooltip"
												aria-describedby="confirmationEmail-tooltip"
												aria-required="true" aria-invalid="false" type="email"
												value="yoeumiii@naver.com" maxlength="50">
											<div id="confirmationEmail-tooltip" class="tooltip">
												<div class="top"></div>
												<div class="body">
													<div class="content">
														<p>이메일 주소 재입력</p>
													</div>
												</div>
												<div class="bottom"></div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix input-group">
								<div class="input-row">
									<label for="personal-language-choice" class="input-label">
										언어<span aria-hidden="true" class="required-indicator"> *</span>
									</label>
									<div class="input-container">
										<select id="personal-language-choice"
											name="editPersoInfoDTO.language" class="regular"
											aria-required="true" required="required"><option
												value="ko">한국어</option>
											<option value="en">English</option></select>
									</div>
								</div>
							</div>
							<div class="form__button-container">
								<button type="submit"
									class="btn-container btn button-primary   clear-session-customer personal-info__save-btn"
									name="save">
									<span class="button__content"> 나의 정보 저장하기</span>
								</button>
							</div>
						</div>

						<div class="form-separator personal-info__form-container">
							<span class="personal-info__subtitle"> 비밀번호를 변경해주세요</span>

							<div class="clearfix nes_bloc_pass input-group empty">
								<div class="input-row">
									<label for="oldPassword" class="input-label"> 기존 비밀 번호<span
										aria-hidden="true" class="required-indicator"> *</span></label>

									<div class="input-container">
										<input id="oldPassword" name="changePasswordDTO.oldPassword"
											aria-describedby="old-password-tooltip" aria-required="true"
											aria-invalid="false" type="password" value="" maxlength="100">
										<div class="nes_pass-caps display-none">
											<p>Caps Lock이 켜져있습니다</p>
										</div>

									</div>
								</div>

							</div>
							<div class="clearfix nes_bloc_pass input-group empty">
								<div class="input-row">
									<label for="password"
										class="input-label change-password__label"> 새 비밀번호<span
										aria-hidden="true" class="required-indicator"> *</span></label>
									<div class="tt-container progressBar-active">
										<div class="input-container">
											<input id="password" name="changePasswordDTO.password"
												class=" focus-tooltip js-myaccount-password-input"
												aria-describedby="password-tooltip" aria-required="true"
												aria-invalid="false" type="password" value=""
												maxlength="100">
											<div class="tooltip myaccount-password-tooltip">
												<div class="top"></div>
												<div class="body">
													<div id="password-tooltip" class="content" tabindex="-1">
														<span class="tooltip-content-info"> 비밀번호 필수조건: </span>
														<ul class="tooltip-content-list">
															<li class="js-tooltip-content-list-minCharacters rule">
																<i aria-hidden="true" class="icon Glyph Glyph--check"></i>
																최소 8자 이상
															</li>
															<li class="js-tooltip-content-list-hasNumber rule">
																<i aria-hidden="true" class="icon Glyph Glyph--check"></i>
																숫자 포함
															</li>
															<li
																class="js-tooltip-content-list-hasCapitalLetter display-none rule">
																<i aria-hidden="true" class="icon Glyph Glyph--check"></i>
															</li>
														</ul>
													</div>
												</div>
												<div class="bottom"></div>
											</div>
											<div class="progress-bar">
												<span class="progress-bar__weak-level"></span> <span
													class="progress-bar__medium-level"></span> <span
													class="progress-bar__strong-level"></span>
												<p class="progress-bar__result">
													비밀번호 보안수준: <span class="progress-bar__result-info"></span>
												</p>
												<span id="a11y-review-password-error"
													class="visually-hidden" tabindex="-1"></span>
											</div>
										</div>
										<div class="nes_pass-caps display-none">
											<p>Caps Lock이 켜져있습니다</p>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix field-line nes_bloc_pass input-group empty">
								<div class="input-row">
									<label for="confirmPassword" class="input-label"> 새
										비밀번호<span aria-hidden="true" class="required-indicator"> *</span>
									</label>
									<div class="tt-container">
										<div class="input-container">
											<input id="confirmPassword"
												name="changePasswordDTO.confirmPassword"
												class=" focus-tooltip"
												aria-describedby="a11y-review-password-error"
												aria-required="true" aria-invalid="false" type="password"
												value="" maxlength="100">
										</div>
										<div class="nes_pass-caps display-none">
											<p>Caps Lock이 켜져있습니다</p>
										</div>
									</div>
								</div>

							</div>
							<div class="form__button-container">
								<button type="submit" id="editPersonalInfoSaveBottom"
									class="btn-container btn button-primary   clear-session-customer personal-info__save-btn"
									name="save">
									<span class="button__content"> 비밀번호 저장하기</span>
								</button>
							</div>
						</div>


						<input id="jeton" name="jeton" type="hidden"
							value="c88e5a23-5abc-42ff-801e-23f86fbe6cbb" style=""
							autocomplete="off"> <input id="persoInfoChanged"
							name="persoInfoChanged" type="hidden" value="false" style=""
							autocomplete="off"> <input id="persoInfoGlobalError"
							name="persoInfoGlobalError" type="hidden" value="false" style=""
							autocomplete="off">
					</form>
				</div>

			</div>
		</div>

	</main>

</body>
</html>