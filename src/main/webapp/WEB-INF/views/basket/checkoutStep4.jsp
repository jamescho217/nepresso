<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko" style="display: block;">
<head>
<style type="text/css">
@charset "UTF-8";

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
	display: none !important;
}

ng\:form {
	display: block;
}

.ng-animate-shim {
	visibility: hidden;
}

.ng-anchor {
	position: absolute;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="keywords" content="주문 검토 및 확인, 네스프레소">
<meta name="description" content="주문 검토 및 확인">
<meta property="og:title" content="주문 검토 및 확인 | 네스프레소">
<meta property="og:url"
	content="https://www.nespresso.com:443/kr/ko/checkout">
<meta property="og:description" content="주문 검토 및 확인">
<title>주문 검토 및 확인 | 네스프레소 | Mosaic Site KR</title>

<link rel="shortcut icon" type="image/x-icon"
	href="https://www.nespresso.com/_ui/img/favicon.ico">

<link rel="dns-prefetch" href="https://www.googletagmanager.com">
<link rel="dns-prefetch" href="https://www.contact.nespresso.com">
<link rel="dns-prefetch" href="https://collect.analzye.ly">
<link rel="dns-prefetch" href="https://connect.facebook.com">
<link rel="dns-prefetch" href="https://ad.doubleclick.net">
<link rel="dns-prefetch" href="https://analytics.twitter.com">

<link
	href="https://www.nespresso.com/_ui/generated/responsiveLoadedFirst.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="https://www.nespresso.com/_ui/generated/responsiveComponents.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	media="screen" onload="if(media!='screen')media='screen'">
<noscript>
	<link rel="stylesheet"
		href="https://www.nespresso.com/_ui/generated/responsiveComponents.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125">
</noscript>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script async=""
	src="https://d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js"></script>
<script async=""
	src="https://www.contact.nespresso.com/apps.php?a=calleo-triggers"></script>
<script async=""
	src="https://www.contact.nespresso.com/apps.php?a=calleo-livechat"></script>
<script type="text/javascript" async=""
	src="https://d16fk4ms6rqz1v.cloudfront.net/capture/nespresso.js"></script>
<script
	src="https://connect.facebook.net/signals/config/522051272523535?v=2.9.41&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://www.nespresso.com/_ui/generated/secondary.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-PJM4LSH&amp;l=gtmDataObject"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-WJGQVL&amp;l=gtmDataObject"></script>
<script>
	var P = {
		baseUrl : 'https://www.nespresso.com/_ui/generated/frontend-polyfills'
	};
</script>
<script
	src="https://www.nespresso.com/_ui/generated/frontend-polyfills/polyfill-loader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
<script>
	var config = {};
	config.capsulesThirdLineQuantities = '100,150,200,250,300';
	config.resUrl = 'https://www.nespresso.com/_ui';

	config.buildVersion = '32.36.41';
	config.cacheBusting = 'b68e98c89fd319126d2eb64ae2105aaaa6c5c125';

	config.urls = {
		loginPage : '/kr/ko/secure/login',
		loadCrossSells : '/kr/ko/view/PushCrossSellsBlockController',
		saveEditAddress : '/kr/ko/checkout/saveEditDeliveryAddress',
		saveNewAddress : '/kr/ko/checkout/saveNewDeliveryAddress',
		saveEditBillingAddress : '/kr/ko/checkout/saveEditBillingAddress',
		saveNewBillingAddress : '/kr/ko/checkout/saveNewBillingAddress',
		validateSelectedBillingAddress : '/kr/ko/checkout/validateSelectedBillingAddress',
		validateSelectedDeliveryAddress : '/kr/ko/checkout/validateSelectedDeliveryAddress',
		giftCard : '/kr/ko/giftCard',
		myAccountAddressBook : '/kr/ko/myaccount/addressbook.action',
		resendActivationEmailUrl : '/kr/ko/resendActivationEmail',
		errorPage : '/kr/ko/error/unexpected.jsp',
		homePage : '/kr/ko/'
	};

	config.labels = {
		authentication : {
			wrongLoginOrPassword : '입력하신 고객명 또는 비밀번호가 유효하지 않습니다. 다시 확인 후 재시도 해주세요.',
			required : '필수 입력 항목 입니다.',
			bruteForce : '{0}회 로그인을 시도하셨습니다. {1} 후 다시 시도해주세요.',
			descLogged : '로그인 해주셔서 감사합니다. 이제 아래 링크를 통해 내 계정의 각 메뉴를 이용하실 수 있습니다.',
			headingLogged : '로그인 창 펼침',
			headingNotLogged : '내 계정 창 펼침'
		},
		addToBagA11yQuantityInCart : '장바구니에 \u003Cspan class=\"quantity\"\u003E{0}\u003C\/span\u003E \/ {1} 를 가지고 있습니다.\u003Cspan class=\"label\"\u003E{2}\u003C\/span\u003E을 위해 클릭해주세요.',
		addToBagAddButtonLabel : '장바구니에 담기',
		addToBagAddButtonMaxQuantityReachedLabel : '최대 가능 수량에 도달하였습니다.',
		addToBagAddButtonProductUnavailableLabel : '일시 품절',
		addToBagTooltipErrorSalesMultipleMessage : '잘못된 주문 단위 입니다.',
		addToBagTooltipErrorMaxNumberPerOrderMessage : '최대 주문 가능 수량에 도달하였습니다.',
		addToBagUpdateButtonLabel : '장바구니 업데이트',
		close : '닫기',
		quantitySelector : {
			description : '확인된 수량을 선택하시거나, 아래 수량 선택란을 조정하여 선택해주세요.',
			addQuantityProductToCart : '{0} 추가',
			removeProductFromCart : '클릭하여 {0}를 장바구니에서 삭제해주세요.',
			warningProductLimit : '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있습니다.',
			warningProductLimitZero : '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있으며, 이미 최대 수량을 구매하셨습니다.',
			warningProductLimitRemaining : '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있으며, 현재 구매 가능한 수량은 {1}개 입니다.'
		},
		a11yMainNavigationBar : '이 링크를 통해 새창이 열립니다.',
		a11yMainNavigationSubMenu : {
			open : '보조 메뉴 펼치기',
			close : '보조 메뉴 닫기'
		},
		a11yProductListPager : {
			currentPage : '{0}페이지\/전체 {1} 페이지',
			activePage : '현재 페이지',
			sliderMinimumDescription : 'Filter slider minimum price',
			sliderMaximumDescription : 'Filter slider maximum price'
		},
		a11yProductQuantity : {
			update : '업데이트 전체 {1}건 중 {0}건 완료',
			remove : '{0} 제품이 장바구니에서 삭제 되었습니다.'
		},
		a11yActivationCode : {
			submitSuccess : '입력하신 프로모션 코드가 적용 되었습니다, 아래에서 확인 가능 합니다.',
			deleteSuccess : '입력하신 프로모션 코드가 삭제 되었습니다. 아래에서 확인 가능 합니다.'
		},
		machineRegistration : {
			a11ySearchingForStores : 'Searching for stores…',
			a11yNoStoresFound : '판매처를 찾을 수 없습니다. 검색 조건을 변경해주세요.',
			a11yStoresFound : '{0}개의 판매처를 찾았습니다. 원하시는 매장을 찾아서 자세한 정보를 확인해보세요.'
		},
		a11yAddressUpdatedMessage : '상세 주소 정보가 업데이트 되었습니다.',
		checkoutBoutiques : {
			a11yBoutiquesFound : '{0}개의 부티크를 찾았습니다. 리스트의 부티크 중 원하시는 곳을 선택하시면, 더 자세한 정보를 확인 하실 수 있습니다.',
			a11yNoBoutiquesFound : '검색하신 지역에 네스프레소 부티크가 없습니다.',
			a11ySearchingForBoutiques : ' 부티크 검색',
			a11yBoutiqueSelected : '부티크가 선택되었습니다.'
		},
		a11yProductBrowserBlockFilteredList : '{0}개의 조건에 맞는 제품이 검색되었습니다. 커서를 움직여 리스트로 이동할 수 있습니다.',
		machineCompare : {
			a11yFilterChangeNotify : '{0}개의 머신이 검색되었습니다. 커서를 이동하여 리스트의 머신을 확인하실 수 있습니다.'
		},
		a11ySlider : {
			startPlaying : '슬라이딩 배너 멈추기',
			pausePlaying : '슬라이딩 배너 멈추기',
			triggerPlay : '슬라이드가 잠시 정지하였습니다.',
			triggerPause : '슬라이드가 잠시 정지하였습니다.'
		},
		a11yRatingScore : '별점 {0}',
		passwordStrength : {
			weak : '취약',
			medium : '보통',
			strong : '안전',
			a11yReviewPassword : '고객님의 비밀번호는 {0} 입니다. 보안을 위해 더 복잡한 조합의 비밀번호를 입력해주세요.',
			containsCapital : '대문자 포함'
		},
		cart : {
			warning : {
				updated : '장바구니가 업데이트 되었습니다.',
				merged : '장바구니가 업데이트 되었습니다.',
				product : {
					not : {
						added : '선택하신 제품 또는 일부가 현재 이용 불가능 하여, 장바구니에 담을 수 없습니다.'
					}
				},
				tariff : {
					changed : '고객님의 등급에 따라 장바구니가 업데이트 되었습니다.'
				}
			}
		},
		accountordersblock : {
			myorders : {
				orderdetail : {
					reorderconfirmation : {
						message : '계속하여 진행하실 경우, 지난 주문의 제품들이 장바구니에 추가 됩니다.\u003Cbr \/\u003E\u003Cul\u003E\u003Cli\u003E지난 주문 내역의 일부 제품이 품절 또는 프로모션 종료로 인해 현재 장바구니에 추가되지 않을 수 있습니다. \u003C\/li\u003E\u003Cli\u003E지난 주문 내역 중 캡슐 재활용 백이나 수거 요청 주문은 자동으로 삭제됩니다. 고객님의 재활용 캡슐 상황에 맞춰 다시금 장바구니에 담아주시기 부탁 드립니다. \u003C\/li\u003E\u003C\/ul\u003E'
					}
				}
			}
		},
		order : {
			reorderProduct : {
				contentMessage : '계속하여 진행하실 경우, 지난 주문의 제품들이 장바구니에 추가 됩니다.'
			}
		},
		pickupPoint : {
			close : 'Close',
			a11yErrorOccurred : '작업이 정상적으로 이루어지지 않았습니다. 다시 시도해주세요.',
			a11yPickUpPointsFound : '{0} 개의 픽업 가능 부티크를 찾았습니다. 다음 단계에서 자세한 내용을 확인하실 수 있습니다. 픽업 가능 부티크 리스트에서 최종 선택해 주시기 바랍니다.',
			a11yOnePickUpPointFound : '{0} 개의 픽업 가능 부티크를 찾았습니다. 다음 단계에서 자세한 내용을 확인하실 수 있습니다. 픽업 가능 부티크 리스트에서 최종 선택해 주시기 바랍니다.',
			a11yNoPickUpPointsFound : '요청된 주소에 이용 가능한 제품 수령 장소가 없습니다.',
			a11yAmbiguousResultsFound : '선택하신 지역에는 픽업이 가능한 부티크가 없습니다. 다음 단계에서, 지금 검색하신 지역에서 가장 가까운 픽업 가능 부티크를 선택해 주세요.',
			a11ySearchingForPickUpPoints : '픽업 가능 부티크 검색 중',
			a11yPickUpPointSelected : '픽업 부티크가 선택되었습니다. 저장해 주세요.',
		},
		checkout : {
			shipping : {
				yourTime : {
					a11yNoSlotsFound : '현재 선택하신 배송 방법으로는 예약 가능한 픽업 시간이 없습니다.',
					a11ySlotsFound : '선택하신 배송 방법으로, {0} 개 예약 가능한 픽업 시간이 있습니다.',
					a11yNarrowSlotsFound : '현재 선택하신 배송 방법으로, {0} 개 예약 가능한 픽업 시간이 있습니다.'
				},
				boutiquePickup : {
					a11yOutOfStockMessage : '주문에 포함된 일부 제품은 선택하신 배송 수단으로 이용 불가능 합니다.'
				}
			},
			payment : {
				noneOption : 'None'
			}
		}
	};

	config.einvoiceErrorMessages = {
		'checkout.payment.einvoice.mandatory' : 'Select valid invoice type',
		'checkout.payment.einvoice.incomplete.companydata' : 'Incomplete company info'
	};

	config.defaults = {
		addressType : 'private',
		addressCountry : 'kr'
	};

	config.padl = {
		namespace : 'padl-' + 'b2c' + '-' + 'kr'
	};

	window[config.padl.namespace] = window[config.padl.namespace] || {
		dataLayer : {}
	};

	var gtmDataObject = [];

	config.liveChat = {
		isLiveChatAnonymousEnabled : true,
		isLiveChatEmbeddedActivated : false,
		isLiveChatProactiveActivated : false
	};

	P.insertPolyfills();

	var padlNamespace = config.padl.namespace, padlPromotions;

	window[padlNamespace].dataLayer.app = {
		"app" : {
			"affiliation" : "Nespresso Online Store",
			"brand" : "Nespresso",
			"currency" : "KRW",
			"landscape" : "NC2-mosaic",
			"market" : "KR",
			"version" : "32.36.41",
			"isEnvironmentProd" : true
		}
	};

	window[padlNamespace].dataLayer.page = {
		"page" : {
			"pageInfo" : {
				"language" : "ko",
				"breadcrumbUID" : "checkout:::checkout-order-verification:",
				"pageName" : "Checkout Recap",
				"primaryCategory" : "",
				"secondaryCategory" : [],
				"segmentBusiness" : "B2C",
				"technology" : [],
				"type" : "",
				"variant" : ""
			}
		}
	};

	window[padlNamespace].dataLayer.pageInstanceID = {
		"pageInstanceID" : "checkout:::checkout-order-verification::NC2-mosaic:true:B2C:KR:ko"
	};

	window[padlNamespace].dataLayer.user = {
		"isLoggedIn" : true
	};

	// Initializing promotions tracking data structure
	padlPromotions = {
		promotions : {}
	};
</script>
<script
	src="https://www.nespresso.com/_ui/generated/frontend-polyfills/SetFromOf.js?v=f9480793ef095cc9cb8d"></script>

<script
	src="https://www.googleoptimize.com/optimize.js?id=GTM-K7F7RGL&amp;l=gtmDataObject"></script>
<script type="text/javascript">
	var padlNamespace = config.padl.namespace;

	window[padlNamespace].dataLayer.checkout = {};

	window[padlNamespace].dataLayer.checkout.step = {};
	window[padlNamespace].dataLayer.checkout.step.cart = {
		"attributes" : {
			"deliveryOptions" : {
				"recycling" : "",
				"signature" : "",
				"priority" : ""
			},
			"paymentMethods" : [ {
				"paymentMethodID" : "RT",
				"paymentMethodAmount" : 1220800.0
			} ],
			"shippingMethodID" : "C",
			"clubActionID" : [ "377", "395", "8409" ],
			"mainPaymentMethod" : "RT"
		},
		"item" : [
				{
					"productInfo" : {
						"productLocalSKU" : "120013-KIT2",
						"productLocalName" : "Our All-Time Favourites 150 Capsules Assortment",
						"productInternationalSKU" : "120014",
						"productInternationalName" : "KR Welcome Offer Favorite 150 pack witho",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2022",
								"4730" ],
						"aromatic" : [],
						"cupSize" : [ "Ristretto", "룽고", "에스프레소" ],
						"intensity" : 0
					},
					"category" : {
						"type" : "BUNDLE",
						"primaryCategory" : "CAPSULE",
						"secondaryCategory" : [ "Assortment", "Ristretto",
								"Espresso", "Lungo", "Assortment" ],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 8481.818,
						"productPrice" : 93300.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 150,
						"machineQuantity" : 0,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/120013-KIT2",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "117129-KIT2",
						"productLocalName" : "Vertuo 100 Capsules Assortment",
						"productInternationalSKU" : "117129",
						"productInternationalName" : "KR Vertuo Welcome Offer No GWP 100 New 2",
						"belongsToProductSelections" : [ "60", "61", "62",
								"64", "65", "66", "67", "1020", "2007", "2022",
								"4730" ],
						"aromatic" : [],
						"cupSize" : [ "에스프레소", "룽고", "Ristretto" ],
						"intensity" : 0
					},
					"category" : {
						"type" : "BUNDLE",
						"primaryCategory" : "CAPSULE",
						"secondaryCategory" : [ "Gran Lungo", "Espresso",
								"Mug", "Double Espresso", "Alto", "Assortment",
								"Assortment" ],
						"technology" : [ "vertuo" ]
					},
					"price" : {
						"taxAmount" : 7581.8184,
						"productPrice" : 83400.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 100,
						"machineQuantity" : 0,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/117129-KIT2",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "122449",
						"productLocalName" : "BARISTA CREATIONS FOR ICE VERTUO 8 SLEEVE PACK",
						"productInternationalSKU" : "122449",
						"productInternationalName" : "KR 2021 ICE Vertuo 8 SLV Pack",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2303" ],
						"aromatic" : [],
						"cupSize" : [],
						"intensity" : 0
					},
					"category" : {
						"type" : "BUNDLE",
						"primaryCategory" : "CAPSULE",
						"secondaryCategory" : [ "Mug", "Double Espresso",
								"Iced Recipe Vertuo", "Barista Creations",
								"Barista Creations" ],
						"technology" : [ "vertuo" ]
					},
					"price" : {
						"taxAmount" : 5963.636,
						"productPrice" : 65600.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 80,
						"machineQuantity" : 0,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/122449",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "C30-KR-WH-KIT",
						"productLocalName" : "Essenza Mini C30 White",
						"productInternationalSKU" : "104994",
						"productInternationalName" : "Essenza Mini C30  Pure White  Kitted",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2009",
								"2397", "2756", "2903", "2925", "2927", "2967",
								"2978" ],
						"colorShade" : "White"
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "MACHINE",
						"secondaryCategory" : [ "19 bar pressure", "White",
								"Espresso", "OFF mode after 9 min.",
								"Essenza Mini", "Lungo" ],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 14454.546,
						"productPrice" : 159000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 1,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/C30-KR-WH-KIT",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "GCB2-KR-WH-KIT",
						"productLocalName" : "Vertuo Plus White",
						"productInternationalSKU" : "108289",
						"productInternationalName" : "KR VertuoPlus GCB2 White Dlx Kitted",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2009",
								"2332", "2756", "2917", "2918", "2944", "2967",
								"2998" ],
						"colorShade" : "White"
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "MACHINE",
						"secondaryCategory" : [
								"Mug",
								"Automated functions with one button brewing",
								"Electrical opening and closing",
								"Different cup sizes (230ml for Mug, 150ml for Gran Lungo and 40 ml for Espresso)",
								"Moveable water tank to fit different kitchen counter spaces",
								"Adjustable cup support: 4 positions", "White",
								"Gran Lungo", "Espresso", "VertuoPlus" ],
						"technology" : [ "vertuo" ]
					},
					"price" : {
						"taxAmount" : 27181.818,
						"productPrice" : 299000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 1,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/GCB2-KR-WH-KIT",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "3583",
						"productLocalName" : "Nespresso x Chiara Ferragni Coffee Mug",
						"productInternationalSKU" : "3583",
						"productInternationalName" : "Coffee Mug Limited Edition 2021",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2027" ],
						"finish" : "Glass"
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [ "Nespresso x Chiara Ferragni" ],
						"technology" : [ "original", "vertuo" ]
					},
					"price" : {
						"taxAmount" : 1636.3636,
						"productPrice" : 18000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/3583",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "5099",
						"productLocalName" : "Nespresso Eco Bag",
						"productInternationalSKU" : "5099",
						"productInternationalName" : "Tote bag 1st Edition",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2027",
								"2312", "2628", "2844" ],
						"finish" : null
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [ "We Make Green Moments" ],
						"technology" : [ "original", "vertuo" ]
					},
					"price" : {
						"taxAmount" : 1363.6364,
						"productPrice" : 15000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/5099",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "4192-KR-SI-NE2",
						"productLocalName" : "Aeroccino4",
						"productInternationalSKU" : "4192-KR-SI-NE2",
						"productInternationalName" : "Aeroccino4 4192 KR Nespresso V2",
						"belongsToProductSelections" : [ "12", "54", "60",
								"61", "62", "63", "64", "65", "66", "67",
								"1010", "2007", "2399", "2844" ],
						"finish" : "Stainless Steel"
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [ "Aeroccino" ],
						"technology" : [ "original", "vertuo", "pro" ]
					},
					"price" : {
						"taxAmount" : 12636.363,
						"productPrice" : 139000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/4192-KR-SI-NE2",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "3711R/2",
						"productLocalName" : "Vertuo Espresso Set",
						"productInternationalSKU" : "3711R/2",
						"productInternationalName" : "2 VERTUO Espresso Cups & Saucers, 2 Spoo",
						"belongsToProductSelections" : [ "12", "60", "61",
								"62", "63", "64", "65", "66", "67", "2007",
								"2027", "2037", "2710", "2732", "2778", "2844",
								"2919", "3758", "3782", "3784" ],
						"finish" : "Glass"
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [ "Vertuo Collection" ],
						"technology" : [ "original", "vertuo" ]
					},
					"price" : {
						"taxAmount" : 3000.0,
						"productPrice" : 33000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/3711R/2",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "93449",
						"productLocalName" : "Inissia Water Tank",
						"productInternationalSKU" : "93449",
						"productInternationalName" : "Inissia Water Tank",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007" ],
						"finish" : null
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 636.36365,
						"productPrice" : 7000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/93449",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "95625",
						"productLocalName" : "Aeroccino 3 Whisk",
						"productInternationalSKU" : "95625",
						"productInternationalName" : "Aero3 / Whisk assembly ASB 1004589",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "1010", "2007" ],
						"finish" : null
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 181.81818,
						"productPrice" : 2000.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/95625",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "93253",
						"productLocalName" : "U & UMilk Machine Water Tank Lid",
						"productInternationalSKU" : "93253",
						"productInternationalName" : "U water tank lid",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007" ],
						"finish" : null
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 336.36365,
						"productPrice" : 3700.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 1,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 1
					},
					"id" : "erp.kr.b2c/prod/93253",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "7549.80",
						"productLocalName" : "LIMITED EDITION AGED SUMATRA",
						"productInternationalSKU" : "7549.80",
						"productInternationalName" : "Master Origin Aged Sumatra v80",
						"belongsToProductSelections" : [ "10", "13", "14",
								"60", "61", "62", "63", "64", "65", "66", "67",
								"1020", "2007", "2022", "2331", "2743", "4730" ],
						"aromatic" : [ "스파이시함", "나무", "코코아" ],
						"cupSize" : [ "에스프레소", "룽고" ],
						"intensity" : 7
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "CAPSULE",
						"secondaryCategory" : [ "Master Origins", "Woody",
								"Spicy", "Cocoa", "Woody", "Spicy", "Cocoa",
								"Espresso", "Lungo" ],
						"technology" : [ "original" ]
					},
					"price" : {
						"taxAmount" : 25909.092,
						"productPrice" : 950.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 300,
						"capsuleQuantity" : 300,
						"machineQuantity" : 0,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/7549.80",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "7108.40",
						"productLocalName" : "Vanilla Custard Pie",
						"productInternationalSKU" : "7108.40",
						"productInternationalName" : "Barista Creation Vanilla Custard Pie N1 ",
						"belongsToProductSelections" : [ "10", "13", "14",
								"60", "61", "62", "63", "64", "65", "66", "67",
								"101", "1020", "2007", "2022", "2743", "2939",
								"4730" ],
						"aromatic" : [ "바닐라향", "Biscuity" ],
						"cupSize" : [ "밀크 레시피" ],
						"intensity" : 0
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "CAPSULE",
						"secondaryCategory" : [ "Vanilla", "Vanilla",
								"Milk Selection", "Barista Creations",
								"Barista Creations", "Mug" ],
						"technology" : [ "vertuo" ]
					},
					"price" : {
						"taxAmount" : 1618.1818,
						"productPrice" : 890.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 20,
						"capsuleQuantity" : 20,
						"machineQuantity" : 0,
						"accessoryQuantity" : 0
					},
					"id" : "erp.kr.b2c/prod/7108.40",
					"isAddedByUser" : true
				},
				{
					"productInfo" : {
						"productLocalSKU" : "122675",
						"productLocalName" : "Monin Syrup Kit + Glass Water Bottle",
						"productInternationalSKU" : "122675",
						"productInternationalName" : "KR 2021 ICE GWP",
						"belongsToProductSelections" : [ "60", "61", "62",
								"63", "64", "65", "66", "67", "2007", "2027" ],
						"finish" : null
					},
					"category" : {
						"type" : "SINGLE",
						"primaryCategory" : "ACCESSORY",
						"secondaryCategory" : [],
						"technology" : [ "original", "vertuo" ]
					},
					"price" : {
						"taxAmount" : 0.0,
						"productPrice" : 0.0,
						"isEcoTax" : false
					},
					"quantity" : {
						"productQuantity" : 4,
						"capsuleQuantity" : 0,
						"machineQuantity" : 0,
						"accessoryQuantity" : 4
					},
					"id" : "erp.kr.b2c/prod/122675",
					"isAddedByUser" : false
				} ],
		"profile" : {
			"shippingAddress" : {
				"saCity" : "경기도",
				"saCountry" : "한국",
				"saLine1" : "경기도 안양시 동안구 학의로 390",
				"saLine2" : "(평촌동, 인덕원대우아파트푸른마을)113동 703호",
				"saPostalCode" : "14061",
				"saStateProvince" : "KYK"
			},
			"billingAddress" : {
				"baCity" : "경기도",
				"baCountry" : "한국",
				"baLine1" : "경기도 안양시 동안구 학의로 390",
				"baLine2" : "(평촌동, 인덕원대우아파트푸른마을)113동 703호",
				"baPostalCode" : "14061",
				"baStateProvince" : "KYK"
			}
		}
	};

	window[padlNamespace].dataLayer.checkout.einvoice = {};
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?language=ko&amp;key=AIzaSyAzhiALsGAO1G_p8YjDV2IA1KZy1bZw41A&amp;libraries=places"
	async="" defer=""></script>
<script
	src="https://www.nespresso.com/_ui/generated/allHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
<script>
	napi.staticInit = true;
	napi.initialize('b2c', 'kr', 'ko', 'desktop', '');
</script>

<script
	src="https://www.nespresso.com/_ui/generated/allHeaderNonBlocking.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	defer=""></script>
<link rel="preload" as="script"
	href="https://www.nespresso.com/_ui/generated/crema/styles.8a6d6775f09b82fd8045.js">
<link rel="preload" as="style"
	href="https://www.nespresso.com/_ui/generated/crema/styles.a3c466e43c59e68709ef.css">
<link rel="preload" as="script"
	href="https://www.nespresso.com/_ui/generated/crema/bundle.40fec13ff5a145beaecc.js">
<link rel="preload" as="script"
	href="https://www.nespresso.com/_ui/generated/crema/glyphs.44e6ef646bac7a4eb473.js">
<link
	href="https://www.nespresso.com/_ui/generated/crema/styles.a3c466e43c59e68709ef.css"
	rel="stylesheet" media="screen">
<script
	src="https://www.nespresso.com/_ui/generated/crema/styles.8a6d6775f09b82fd8045.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.babel-runtime.8ec927568a1eaa609f03.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.core-js.b06a901d5aafeec5d743.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/bundle.40fec13ff5a145beaecc.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-messageformat.a36a42c150efbc89c5e0.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-messageformat-parser.bff11d8f694b5da67172.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-relativeformat.aeb239dfea6e3145e801.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.react-dom.ea0baf7a5bb715ebefdb.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.react-intl.bdfa21c75ea74053fd57.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.react-redux.7edd6f2c01f29e9041af.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.react-transition-group.af03f37f74cbc6ada82b.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.redux.b1092caa1b7517a1e735.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendor.store2.50d30a659c7b55854c8f.js"
	defer="defer"></script>
<script
	src="https://www.nespresso.com/_ui/generated/crema/vendors~bundle.08daf8e3fbe0917ff1d5.js"
	defer="defer"></script>
<link rel="stylesheet"
	href="https://www.nespresso.com/_ui/generated/responsiveCheckout.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	media="screen" onload="if(media!='screen')media='screen'">
<noscript>
	<link rel="stylesheet"
		href="https://www.nespresso.com/_ui/generated/responsiveCheckout.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125">
</noscript>
<link
	href="https://www.nespresso.com/_ui/generated/exceptions/asia/locale-related-kr.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	rel="stylesheet" media="screen">

<style>
html {
	display: none
}
</style>

<script type="text/javascript">
	if (self == top) {
		document.documentElement.style.display = 'block';
	} else {
		top.location = self.location;
	}
</script>
<script type="text/javascript">
	(function() {
		var initialState = {
			"config" : {
				"currentLanguage" : "ko",
				"currentMarket" : "kr",
				"currentPage" : {
					"accessRequirement" : null,
					"pk" : null
				},
				"languages" : [ {
					"code" : "en",
					"name" : "English",
					"url" : "/kr/en/checkout?execution=e2s12"
				}, {
					"code" : "ko",
					"name" : "한국어",
					"url" : "/kr/ko/checkout?execution=e2s12"
				} ],
				"storeCountryCodes" : [ "kr" ],
				"translations" : {
					"global.addtobag.button.remove" : "장바구니에서 삭제하기",
					"global.addtobag.button.unavailable" : "구매 불가",
					"global.limitedproduct.remaining" : "해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.  고객님은 현재 {maxCustomerQuantity} 개 까지 더 주문하실 수 있습니다.",
					"global.addtobag.button.a11y.removeproductfromcart" : "고객님의 장바구니에서 삭제된 상품",
					"global.addtobag.button.a11y.unavailable" : "{productName} 는 현재 판매되지 않습니다.",
					"global.a11y.spinner.label" : "로딩 중 입니다. 잠시 기다려 주세요.",
					"global.addtobag.button.limitedproduct.unavailable" : "구매 불가",
					"global.a11y.order.summary.label" : "Label",
					"global.addtobag.button.add" : "장바구니 담기",
					"global.a11y.order.summary.amount" : "Amount",
					"global.addtobag.button.a11y.addproduct.label" : "고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.",
					"global.unexpectederror.page.title" : "오류가 발생하였습니다. 불편을 드려 죄송합니다.",
					"global.addtobag.button.outofstocklabel" : "일시 품절",
					"global.addtobag.button.a11y.updateproduct.label" : "고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.",
					"global.a11y.link.target.blank" : "이 링크는 새로운 창을 엽니다.",
					"global.unexpectederror.page.phonenumber" : "080-734-1111 <small>(수신자 부담)</small>",
					"global.addtobagpromotion.a11y.updatecart" : "고객님의 장바구니에 추가된 프로모션 코드",
					"global.addtobag.button.a11y.removeproduct.label" : "장바구니에서 {productName} 삭제하기",
					"global.addtobag.button.a11y.unavailable.label" : "{productName} 는 현재 판매되지 않습니다.",
					"global.addtobag.button.a11y.updateproduct" : "고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.",
					"global.limitedproduct.notavailable" : "해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다. 현재 최대 구매 가능 개수를 초과하였습니다.",
					"global.addtobag.button.a11y.outofstock" : "{productName} 는 현재 일시 품절 입니다.",
					"global.limitedproduct.available" : "해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.",
					"global.addtobag.button.update" : "장바구니 업데이트하기",
					"global.addtobag.button.a11y.addproduct" : "고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.",
					"global.addtobag.button.a11y.outofstock.label" : "{productName} 는 현재 일시 품절 입니다.",
					"global.addtobag.button.a11y.REMOVEDproduct.label" : "{productName} 가 고객님의 장바구니에서 삭제되었습니다.",
					"global.order.total" : "Total",
					"global.addtobag.button.outofstock" : "일시 품절"
				},
				"loginPage" : {
					"url" : "/kr/ko/secure/login",
					"pk" : "8817864639536"
				},
				"homePage" : {
					"url" : "/kr/ko/home"
				},
				"marketCurrency" : "KRW",
				"storeTechno" : {
					"enabledTechnoIds" : [
							"nesclub2.kr.b2c/machineTechno/original",
							"nesclub2.kr.b2c/machineTechno/vertuo" ],
					"preferredTechnoId" : "nesclub2.kr.b2c/machineTechno/original",
					"multiTechnoEnabled" : true
				},
				"application" : {
					"recaptchaSiteKey" : "6LcwBCwUAAAAAOVh8lXjOGHk2IR1yTh-BB805z8c"
				}
			}
		};
		if (initialState && initialState.config) {
			window.__INITIAL_CONFIG__ = initialState.config;
		}
	})();
</script>
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WJGQVL"
		height="0" width="0" style="display: none; visibility: hidden"></iframe>
</noscript>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'gtmDataObject', 'GTM-WJGQVL');
</script>

<script>
	(window.BOOMR_mq = window.BOOMR_mq || []).push([ "addVar", {
		"rua.upush" : "false",
		"rua.cpush" : "false",
		"rua.upre" : "true",
		"rua.cpre" : "false",
		"rua.uprl" : "false",
		"rua.cprl" : "false",
		"rua.cprf" : "false",
		"rua.trans" : "SJ-93a52573-ed42-48e6-90c8-5b981055aa7e",
		"rua.cook" : "true",
		"rua.ims" : "false",
		"rua.ufprl" : "false",
		"rua.cfprl" : "false",
		"rua.isuxp" : "false",
		"rua.texp" : "norulematch"
	} ]);
</script>
<script>
	!function() {
		function o(n, i) {
			if (n && i)
				for ( var r in i)
					i.hasOwnProperty(r)
							&& (void 0 === n[r] ? n[r] = i[r]
									: n[r].constructor === Object
											&& i[r].constructor === Object ? o(
											n[r], i[r]) : n[r] = i[r])
		}
		try {
			var n = decodeURIComponent("%7B%0A%22ResourceTiming%22%3A%20%7B%0A%22clearOnBeacon%22%3Atrue%0A%7D%2C%0A%22RT%22%3A%20%7B%0A%22cookie%22%3A%20%22RT%22%0A%7D%0A%7D");
			if (n.length > 0 && window.JSON
					&& "function" == typeof window.JSON.parse) {
				var i = JSON.parse(n);
				void 0 !== window.BOOMR_config ? o(window.BOOMR_config, i)
						: window.BOOMR_config = i
			}
		} catch (r) {
			window.console
					&& "function" == typeof window.console.error
					&& console
							.error("mPulse: Could not parse configuration", r)
		}
	}();
</script>
<script>
	!function(e) {
		var n = "https://s.go-mpulse.net/boomerang/";
		if ("True" == "True")
					e.BOOMR_config = e.BOOMR_config || {},
					e.BOOMR_config.PageParams = e.BOOMR_config.PageParams || {},
					e.BOOMR_config.PageParams.pci = !0,
					n = "https://s2.go-mpulse.net/boomerang/";
		if (
				window.BOOMR_API_key = "NT4K9-3WWLD-YXPMD-LDFKE-BYKW2",
				function() {
					function e() {
						if (!o) {
							var e = document.createElement("script");
							e.id = "boomr-scr-as", e.src = window.BOOMR.url,
									e.async = !0, i.parentNode.appendChild(e),
									o = !0
						}
					}
					function t(e) {
						o = !0;
						var n, t, a, r, d = document, O = window;
						if (
								window.BOOMR.snippetMethod = e ? "if" : "i",
								t = function(e, n) {
									var t = d.createElement("script");
											t.id = n || "boomr-if-as",
											t.src = window.BOOMR.url,
											BOOMR_lstart = (new Date).getTime(),
											e = e || d.body, e.appendChild(t)
								}, !window.addEventListener
										&& window.attachEvent
										&& navigator.userAgent
												.match(/MSIE [67]\./))
							return window.BOOMR.snippetMethod = "s", void t(
									i.parentNode, "boomr-async");
						a = document.createElement("IFRAME"),
								a.src = "about:blank", a.title = "",
								a.role = "presentation", a.loading = "eager",
								r = (a.frameElement || a).style, r.width = 0,
								r.height = 0, r.border = 0, r.display = "none",
								i.parentNode.appendChild(a);
						try {
							O = a.contentWindow, d = O.document.open()
						} catch (c) {
									n = document.domain,
									a.src = "javascript:var d=document.open();d.domain='"
											+ n + "';void(0);",
									O = a.contentWindow, d = O.document.open()
						}
						if (n)
							d._boomrl = function() {
								this.domain = n, t()
							}, d.write("<bo"
									+ "dy onload='document._boomrl();'>");
						else if (O._boomrl = function() {
							t()
						}, O.addEventListener)
							O.addEventListener("load", O._boomrl, !1);
						else if (O.attachEvent)
							O.attachEvent("onload", O._boomrl);
						d.close()
					}
					function a(e) {
						window.BOOMR_onload = e && e.timeStamp
								|| (new Date).getTime()
					}
					if (!window.BOOMR || !window.BOOMR.version
							&& !window.BOOMR.snippetExecuted) {
						window.BOOMR = window.BOOMR || {},
								window.BOOMR.snippetStart = (new Date)
										.getTime(),
								window.BOOMR.snippetExecuted = !0,
								window.BOOMR.snippetVersion = 12,
								window.BOOMR.url = n
										+ "NT4K9-3WWLD-YXPMD-LDFKE-BYKW2";
						var i = document.currentScript
								|| document.getElementsByTagName("script")[0], o = !1, r = document
								.createElement("link");
						if (r.relList
								&& "function" == typeof r.relList.supports
								&& r.relList.supports("preload") && "as" in r)
							window.BOOMR.snippetMethod = "p",
									r.href = window.BOOMR.url,
									r.rel = "preload", r.as = "script", r
											.addEventListener("load", e), r
											.addEventListener("error",
													function() {
														t(!0)
													}), setTimeout(function() {
										if (!o)
											t(!0)
									}, 3e3), BOOMR_lstart = (new Date)
											.getTime(), i.parentNode
											.appendChild(r);
						else
							t(!1);
						if (window.addEventListener)
							window.addEventListener("load", a, !1);
						else if (window.attachEvent)
							window.attachEvent("onload", a)
					}
				}(), "".length > 0)
			if (e
					&& "performance" in e
					&& e.performance
					&& "function" == typeof e.performance.setResourceTimingBufferSize)
				e.performance.setResourceTimingBufferSize();
		!function() {
			if (BOOMR = e.BOOMR || {}, BOOMR.plugins = BOOMR.plugins || {},
					!BOOMR.plugins.AK) {
				var n = "true" == "true" ? 1 : 0, t = "cookiepresent", a = "ocno3edijk7q6ygrr2va-f-4e5450099-clientnsv4-s.akamaihd.net", i = {
					"ak.v" : "31",
					"ak.cp" : "19131",
					"ak.ai" : parseInt("166517", 10),
					"ak.ol" : "0",
					"ak.cr" : 8,
					"ak.ipv" : 4,
					"ak.proto" : "h2",
					"ak.rid" : "177aeb70",
					"ak.r" : 23484,
					"ak.a2" : n,
					"ak.m" : "dscx",
					"ak.n" : "essl",
					"ak.bpcip" : "112.154.237.0",
					"ak.cport" : 1457,
					"ak.gh" : "23.65.188.37",
					"ak.quicv" : "",
					"ak.tlsv" : "tls1.3",
					"ak.0rtt" : "",
					"ak.csrc" : "-",
					"ak.acc" : "",
					"ak.t" : "1624346282",
					"ak.ak" : "hOBiQwZUYzCg5VSAfCLimQ==E6CsfJmtnJGorC4p8WuFO4tyFCJTZuxlF+Hhj6g0uGsNsmASiJdD3B8cwSg3TaH3v5mu37tAm25PX5ULBcm/mZKxERyLyC5FcVNb1bSjBT3e26ki45361QM1AmK990dYDHWJiM/bNQzRW9gsx7WgVh0h4sODRJbkWsbpZp+AgzOPEiJviPDqh0sRw6zP1N0zDvp2gXX3xnKdpUzA242WfU6dn8BU4g5kmBcl1SfCIrnLXn/DVCu10RS+n/6t52R+Pex2uUuivJw0Gz44AWgasy3Kxi9Hph2ziPo9pgNHR40VHQofG1gDaGy88Z6dwPJBLI9WG4ZA7gm43OcfmHvP4NsdET1dOLSWCRUlgVC/IwUY+cTKmHftm13cK0K+pWU/pfb0OhZ70dRjk5zQq60EKrVqXTCYghL8fFuA0N9EgjQ=",
					"ak.pv" : "749",
					"ak.dpoabenc" : ""
				};
				if ("" !== t)
					i["ak.ruds"] = t;
				var o = {
					i : !1,
					av : function(n) {
						var t = "http.initiator";
						if (n && (!n[t] || "spa_hard" === n[t]))
							i["ak.feo"] = void 0 !== e.aFeoApplied ? 1 : 0,
									BOOMR.addVar(i)
					},
					rv : function() {
						var e = [ "ak.bpcip", "ak.cport", "ak.cr", "ak.csrc",
								"ak.gh", "ak.ipv", "ak.m", "ak.n", "ak.ol",
								"ak.proto", "ak.quicv", "ak.tlsv", "ak.0rtt",
								"ak.r", "ak.acc", "ak.t" ];
						BOOMR.removeVar(e)
					}
				};
				BOOMR.plugins.AK = {
					akVars : i,
					akDNSPreFetchDomain : a,
					init : function() {
						if (!o.i) {
							var e = BOOMR.subscribe;
							e("before_beacon", o.av, null, null), e("onbeacon",
									o.rv, null, null), o.i = !0
						}
						return this
					},
					is_complete : function() {
						return !0
					}
				}
			}
		}()
	}(window);
</script>
<link
	href="https://s2.go-mpulse.net/boomerang/NT4K9-3WWLD-YXPMD-LDFKE-BYKW2"
	rel="preload" as="script">
<script id="boomr-scr-as"
	src="https://s2.go-mpulse.net/boomerang/NT4K9-3WWLD-YXPMD-LDFKE-BYKW2"
	async=""></script>
<style type="text/css"></style>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/comp-HeaderCountryMessage.1a0c5c25a79acf9da5f0.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/comp-Header.4594af5027d26bcc46d5.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/comp-Footer.4966367ff73f1977d615.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/4.da3a4067f56cc4f8544e.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/5.a93ba4ab07c7bf1ec815.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/comp-QuantitySelector.3a2e36cf9b9dd28b186d.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/comp-Overlay.b8150ec94e6537831c9d.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/vendor.style-loader.fc902b8ebe3b94a4fb59.js"></script>
<script charset="utf-8"
	src="https://www.nespresso.com/_ui/generated/crema/glyphs.44e6ef646bac7a4eb473.js"></script>
<style type="text/css">
@font-face {
	font-family: Crema Glyphs;
	src:
		url("data:application/font-woff;charset=utf-8;base64,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")
		format("woff");
	font-display: block
}

.Glyph {
	line-height: 1
}

.Glyph:before {
	font-family: Crema Glyphs !important;
	font-style: normal;
	font-weight: 400 !important;
	vertical-align: top
}

.Glyph--arrow-bottom-thin:before {
	content: "\F101"
}

.Glyph--arrow-bottom:before {
	content: "\F102"
}

.Glyph--arrow-dropdown:before {
	content: "\F103"
}

.Glyph--arrow-filled-down:before {
	content: "\F104"
}

.Glyph--arrow-filled-up:before {
	content: "\F105"
}

.Glyph--arrow-left:before {
	content: "\F106"
}

.Glyph--arrow-right:before {
	content: "\F107"
}

.Glyph--arrow-up:before {
	content: "\F108"
}

.Glyph--arrow:before {
	content: "\F109"
}

.Glyph--basket:before {
	content: "\F10A"
}

.Glyph--card:before {
	content: "\F10B"
}

.Glyph--check:before {
	content: "\F10C"
}

.Glyph--checked-black:before {
	content: "\F10D"
}

.Glyph--checked-green:before {
	content: "\F10E"
}

.Glyph--circle-arrow-bottom:before {
	content: "\F10F"
}

.Glyph--circle-arrow-up:before {
	content: "\F110"
}

.Glyph--circle-min:before {
	content: "\F111"
}

.Glyph--circle-plus:before {
	content: "\F112"
}

.Glyph--clock:before {
	content: "\F113"
}

.Glyph--cross:before {
	content: "\F114"
}

.Glyph--delivery-off:before {
	content: "\F115"
}

.Glyph--easy-order:before {
	content: "\F116"
}

.Glyph--eye-closed:before {
	content: "\F117"
}

.Glyph--eye-opened:before {
	content: "\F118"
}

.Glyph--facebook:before {
	content: "\F119"
}

.Glyph--gift-card-off:before {
	content: "\F11A"
}

.Glyph--googleplus:before {
	content: "\F11B"
}

.Glyph--ico_esclamation:before {
	content: "\F11C"
}

.Glyph--info:before {
	content: "\F11D"
}

.Glyph--intensity-on:before {
	content: "\F11E"
}

.Glyph--machines-on:before {
	content: "\F11F"
}

.Glyph--min:before {
	content: "\F120"
}

.Glyph--nespresso-logo:before {
	content: "\F121"
}

.Glyph--nespresso-your-time-off:before {
	content: "\F122"
}

.Glyph--new-order:before {
	content: "\F123"
}

.Glyph--nwhere-off:before {
	content: "\F124"
}

.Glyph--papers:before {
	content: "\F125"
}

.Glyph--pinterest:before {
	content: "\F126"
}

.Glyph--plus:before {
	content: "\F127"
}

.Glyph--po-number:before {
	content: "\F128"
}

.Glyph--recurring-order:before {
	content: "\F129"
}

.Glyph--reorder:before {
	content: "\F12A"
}

.Glyph--save-file-option:before {
	content: "\F12B"
}

.Glyph--search:before {
	content: "\F12C"
}

.Glyph--star-empty:before {
	content: "\F12D"
}

.Glyph--star-half:before {
	content: "\F12E"
}

.Glyph--star:before {
	content: "\F12F"
}

.Glyph--store-pickup-off:before {
	content: "\F130"
}

.Glyph--subscription-bag:before {
	content: "\F131"
}

.Glyph--trace-order:before {
	content: "\F132"
}

.Glyph--trash:before {
	content: "\F133"
}

.Glyph--twitter:before {
	content: "\F134"
}

.Glyph--user:before {
	content: "\F135"
}

.Glyph--warning-circle:before {
	content: "\F136"
}

.Glyph--warning:before {
	content: "\F137"
}
</style>
<link id="dnsprefetchlink" rel="dns-prefetch"
	href="https://ocno3edijk7q6ygrr2va-f-4e5450099-clientnsv4-s.akamaihd.net">
<meta http-equiv="origin-trial"
	content="AwT1b8oq50zre+sKn5NsGOAlmHkKIV1dYwqfiDFRF61tCS1l0Wg/jqJejtPhHcv0uVFTSeLP0QQS4bf1KjGMpgwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ21hbmFnZXIuY29tOjQ0MyIsImZlYXR1cmUiOiJDb252ZXJzaW9uTWVhc3VyZW1lbnQiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<iframe target="_self" title="SaleCycle"
	style="display: none; height: 0px; width: 0px;"
	src="https://s.salecycle.com/receiver.html?sc_frame_id=65863162-df8b-4a11-8f58-e6e98db487c7"></iframe>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/45/3/intl/ko_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="https://maps.googleapis.com/maps-api-v3/api/js/45/3/intl/ko_ALL/util.js"></script>
</head>

<body class="PageCheckout livechat-collapsed">
	<!---->
	<h2 id="a11y-main-heading" class="visually-hidden" tabindex="-1">주문
		검토 및 확인 | 네스프레소 | Mosaic Site KR</h2>
	<span tabindex="-1" id="a11y-message-area"
		class="visually-hidden display-none"></span>

	<a class="skip-links visually-hidden" href="#a11y-main-area"> 컨텐츠
		영역으로 넘어가기</a>
	<div id="headercountrymessage" class="crema-ui-container "></div>
	<script>
		window.ui = window.ui || [];
		window.ui
				.push({
					"id" : "headercountrymessage",
					"module" : "HeaderCountryMessage",
					"configuration" : {
						"translations" : {
							"wrongcountrynotification.a11y.title" : "접속 사이트의 국가 안내",
							"wrongcountrynotification.othercountry.message" : "현재 고객님께서 계신 국가로 배송을 원하시면,<br /><a href=\"{correctStoreUrl}\">해당사이트</a>를 방문해 주세요.",
							"wrongcountrynotification.a11y.button.close" : "닫기",
							"wrongcountrynotification.currentmarket.message" : "현재 대한민국 <em>네스프레소</em> 웹사이트에 접속 중이십니다."
						},
						"props" : {
							"activated" : true
						},
						"eCommerceData" : null
					}
				});
	</script>
	<div>

		<header id="top">
			<h2 class="visually-hidden">Header</h2>
			<!-- *************************상단************************* -->

			<c:import url="../header.jsp"></c:import>

			<!-- ****************************************************** -->
			

		</header>
		<div class="wrapper">
			<nav class="responsive-registration steps-nav BellowLogo">

				<h3 class="visually-hidden">타임라인</h3>
				<ul
					class="unstyled registration-navigation__list responsive-clearfix">

					<li class="done registration-navigation__item"><a
						href="/nespresso/checkoutStep1"
						class="registration-navigation__link"> <span
							class="step registration-navigation__step"> <span>
									Step</span> <span>1</span> <i aria-hidden="true"
								class="Glyph Glyph--check registration-navigation__icon"></i>
						</span> <span
							class="title registration-navigation__title registration-navigation__title--done ">
								장바구니 상세 </span>
					</a> <span class="border"></span></li>

					<li class="done registration-navigation__item"><a
						href="/nespresso/checkoutStep2"
						class="registration-navigation__link"> <span
							class="step registration-navigation__step"> <span>
									Step</span> <span>2</span> <i aria-hidden="true"
								class="Glyph Glyph--check registration-navigation__icon"></i>
						</span> <span
							class="title registration-navigation__title registration-navigation__title--done ">
								배송 정보 입력</span>
					</a> <span class="border"></span></li>

					<li class="done registration-navigation__item"><a
						href="/nespresso/checkoutStep3"
						class="registration-navigation__link"> <span
							class="step registration-navigation__step"> <span>
									Step</span> <span>3</span> <i aria-hidden="true"
								class="Glyph Glyph--check registration-navigation__icon"></i>
						</span> <span
							class="title registration-navigation__title registration-navigation__title--done ">
								결제 정보 입력</span>
					</a> <span class="border"></span></li>

					<li class="active registration-navigation__item"><span
						class="step registration-navigation__step"> <span>
								Step</span> <span>4</span> <i aria-hidden="true"
							class="Glyph Glyph--check registration-navigation__icon"></i>
					</span> <span
						class="title registration-navigation__title registration-navigation__title--active">
							주문 상세 내역 확인</span> <span class="visually-hidden"> 현재 단계</span> <span
						class="border"></span></li>

					<li class=" registration-navigation__item"><span
						class="step registration-navigation__step"> <span>
								Step</span> <span>5</span> <i aria-hidden="true"
							class="Glyph Glyph--check registration-navigation__icon"></i>
					</span> <span class="title registration-navigation__title "> 주문 완료
							및 확인</span></li>

				</ul>

			</nav>

			<utils:versionedresource tagtype="script"
				path="https://www.nespresso.com/_ui/generated/responsiveRegistration.js">

			</utils:versionedresource>
		</div>
		<main id="main" class="content checkout">
			<span id="a11y-main-area" class="visually-hidden" tabindex="-1">
				메인 컨텐츠를 보고 계십니다.</span>
			<div class="responsive-checkout-frame">
				<!-- pageName = "checkout:step 3:order review" -->
				<div id="checkout-flow-loading"
					class="display-none dark-overlay full-page-loader" role="dialog"
					aria-labelledby="loading-indicator-message" tabindex="-1">

					<div class="loader-outer">
						<div class="loader-inner">
							<p>
								<img
									src="https://www.nespresso.com/_ui/img/ajax-loader-dark-bg.gif">
							</p>
							<p id="loading-indicator-message">고객님의 주문이 현재 처리 중입니다.</p>
						</div>
					</div>
				</div>

				<div class="content checkout">
					<div class="wrapper">
						<div class="clearfix">
							<form id="confirmation" novalidate="novalidate"
								action="/nespresso/checkoutStep5" method="post">
								<input id="order-confirmation-form-factor" name="formFactor"
									type="hidden" value="WIDE" style="">
								<div class="order-summary-wrapper clearfix">
									<div
										class="delivery-title responsive-order-summary__delivery-title">
										<h2 class="order-summary__heading">주문 상세 나의역</h2>
										<span id="a11y-checkout-recap-confirm-description"
											class="visually-hidden">이 페이지에서 배송 정보 확인 및 수정이 가능 합니다.</span>
									</div>
									<div class="row clearfix">
										<div class="col left clearfix">
											<div class="order-summary clearfix">
												<div class="col clearfix">
													<div class="os-step-title">
														<h3
															class="checkout__sub-heading order-summary__sub-header-title">
															배송 상세 정보</h3>
													</div>

													<div class="order-summary__step-container">
														<div class="block">
															<address>
																<div class="address-pattern sessioncamhidetext">
																	<div>
																		<strong>${sessionScope.userSession.lName} ${sessionScope.userSession.name} 님</strong>
																	</div>
																	<div>${sessionScope.userSession.ad1}</div>
																	<div>${sessionScope.userSession.extraAd}${sessionScope.userSession.ad2}</div>
																	<div>${sessionScope.userSession.pcode}</div>
																</div>
															</address>

															<div class="sep"></div>

															<div class="info clearfix">
																<div class="order-summary__delivery-mode-icon">
																	<img
																		src="https://www.nespresso.com/ecom/medias/sys_master/public/13649020846110/respShippingMethodStandardDelivery.svg?impolicy=small&amp;imwidth=40"
																		srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13649020846110/respShippingMethodStandardDelivery.svg?impolicy=small&amp;imwidth=40 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13649020846110/respShippingMethodStandardDelivery.svg?impolicy=small&amp;imwidth=80 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13649020846110/respShippingMethodStandardDelivery.svg?impolicy=small&amp;imwidth=120 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13649020846110/respShippingMethodStandardDelivery.svg?impolicy=small&amp;imwidth=160 4x"
																		alt="respShippingMethodStandardDelivery" width="40">
																</div>
																<div class="order-summary__mode-details-container">
																	<ul>
																		<li class="clearfix"><span
																			class="order-summary__details-label">배송 수단 :</span> <span
																			class="black-txt order-summary__details-value sessioncamhidetext">&nbsp;일반
																				택배배송</span></li>

																	</ul>
																</div>
															</div>
														</div>
													</div>
													<button type="button"
														class="btn-container btn button-primary   order-summary__edit-button"
														name="_eventId_deliverySetup" onclick="<%=cp%>/checkoutStep2">
														<span class="button__content"> 수정하기</span>
													</button>
												</div>
											</div>
											<div class="order-summary clearfix">
												<div class="col clearfix">
													<div class="os-step-title">
														<h3
															class="checkout__sub-heading order-summary__sub-header-title">
															청구 정보</h3>
													</div>

													<div class="order-summary__step-container">
														<div class="block">
															<address>
																<div class="address-pattern sessioncamhidetext">
																	<div>
																		<strong>${sessionScope.userSession.lName} ${sessionScope.userSession.name} 님</strong>
																	</div>
																	<div>${sessionScope.userSession.ad1}</div>
																	<div>${sessionScope.userSession.extraAd}${sessionScope.userSession.ad2}</div>
																	<div>${sessionScope.userSession.pcode}</div>
																</div>
															</address>

															<div data-ng-controller="eInvoiceSummaryCtrl"
																id="einvoice-summary"
																data-einvoice="{&quot;values&quot;:[],&quot;einvoiceId&quot;:&quot;none&quot;}"
																class="ng-scope">
																<!-- ngIf: eInvoiceTypeDefinition -->
															</div>
															<div class="sep"></div>
															<div class="info clearfix billing-infos">
																<ul class="order-summary__mode-details-container">
																	<li class="clearfix order-summary__billing-details">
																		<c:if test="${empty cardNum }">
																		<div class="input-group">
																			<div class="input-row">
																				<div class="order-summary__payment-method-icon">
																				
																					<img
																						src="https://www.nespresso.com/ecom/medias/sys_master/public/9657707790366/CB.png?impolicy=small&amp;imwidth=40"
																						srcset="https://www.nespresso.com/ecom/medias/sys_master/public/9657707790366/CB.png?impolicy=small&amp;imwidth=40 1x, https://www.nespresso.com/ecom/medias/sys_master/public/9657707790366/CB.png?impolicy=small&amp;imwidth=80 2x, https://www.nespresso.com/ecom/medias/sys_master/public/9657707790366/CB.png?impolicy=small&amp;imwidth=120 3x, https://www.nespresso.com/ecom/medias/sys_master/public/9657707790366/CB.png?impolicy=small&amp;imwidth=160 4x"
																						alt="" width="40">
																				</div>
																				<span class="order-summary__billing-details-item"></span>
																			</div>
																		</div>
																		</c:if>
																		<c:if test="${!empty cardNum }">
																		<div class="input-group">
																			<div class="input-row">
																				<div class="order-summary__payment-method-icon">
																				
																					<img
																						src="https://www.nespresso.com/ecom//medias/sys_master/public/10484238843934/CreditCard.png?impolicy=small&amp;imwidth=40"
																						srcset="https://www.nespresso.com/ecom//medias/sys_master/public/10484238843934/CreditCard.png?impolicy=small&amp;imwidth=40 1x, https://www.nespresso.com/ecom//medias/sys_master/public/10484238843934/CreditCard.png?impolicy=small&amp;imwidth=80 2x, https://www.nespresso.com/ecom//medias/sys_master/public/10484238843934/CreditCard.png?impolicy=small&amp;imwidth=120 3x, https://www.nespresso.com/ecom//medias/sys_master/public/10484238843934/CreditCard.png?impolicy=small&amp;imwidth=160 4x"
																						alt="Payment methods media" width="40">
																				</div>
																				<span
																					class="order-summary__credit-card-label order-summary__details-label">신용카드
																					결제 (한번 저장 후 간편 결제):&nbsp;</span> <span
																					class="black-txt order-summary__credit-card-info order-summary__details-value sessioncamhidetext">${cardNum }<br>
																					유효기간&nbsp;${cardMon }/${cardYear }
																				</span>
																			</div>
																		</div> <span class="black-txt order-summary__details-value sessioncamhidetext">${installments }개월 할부</span>
																		</c:if>
																	</li>

																</ul>
															</div>
														</div>
													</div>
													<button type="button"
														class="btn-container btn button-primary   order-summary__edit-button"
														name="_eventId_payment" onclick="<%=cp%>/checkoutStep3">
														<span class="button__content"> 수정</span>
													</button>
												</div>
											</div>
										</div>
										<div class="col right clearfix">
											<div id="checkout-recap-with-ecotax"
												class="order-summary ng-scope">

												<div class="os-step-title">
													<h3
														class="checkout__sub-heading order-summary__sub-header-title">
														장바구니</h3>
												</div>

												<span id="a11y-shopping-bag-description"
													class="visually-hidden">장바구니 상세 내역의 제품은 각 카테고리 별로 표시
													됩니다. 각각의 제품은 개별 단가와 수량 그리고 합계 가격으로 표시 되며, 페이지 안에서 수량을 조절 및
													삭제가 가능 합니다.</span>
												<table id="js-shopping-bag" class="shopping-bag"
													aria-labelledby="a11y-shopping-bag-description">
													<caption class="visually-hidden">장바구니 내역</caption>
													<thead class="visually-hidden">
														<tr>
															<th id="article-header" scope="col">제품명</th>
															<th id="price-header" scope="col"></th>
															<th id="quantity-header" scope="col">수량</th>
															<th id="total-header" scope="col">가격</th>
														</tr>
													</thead>
													<tbody>

														<!-- 오리지널 커피 -->
														<c:set var="cotQty" value="0" />

														<c:forEach var="qdto" items="${listsCo }">
															<c:set var="cotQty" value="${cotQty + qdto.quantity }" />
														</c:forEach>
														
														<c:if test="${!empty listsCo}">
														<tr class="responsive-shopping-bag__header-row">
															<th scope="col" class="responsive-shopping-bag__table-col 
																responsive-shopping-bag__table-col--heading responsive-shopping-bag__table-col--product-heading 
																responsive-shopping-bag__table-col--product">오리지널 커피
															<sup class="responsive-shopping-bag__amount--product-heading">(${cotQty })</sup>
															</th>
															<th scope="colgroup" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--unit-price-heading responsive-shopping-bag__table-col--unit-price">
																개별 단가
															</th>
															<th scope="colgroup" aria-hidden="true" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--multiple-heading">
															</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--quantity-heading responsive-shopping-bag__table-col--quantity">
																수량</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--total-price-heading responsive-shopping-bag__table-col--total-price">
																<span class="responsive-shopping-bag__total-label">합계</span>
															</th>
														</tr>
														<tr class="responsive-shopping-bag__separator-row" aria-hidden="true">
															<td colspan="5" class="responsive-shopping-bag__table-col">
																<div class="responsive-shopping-bag__separator-col--product"></div>
															</td>
														</tr>
														<c:forEach var="dto" items="${listsCo }">
															<tr class="responsive-shopping-bag__row responsive-shopping-bag__product-row">
																<th id="product-485841d9-aa80-44d3-b5af-6cdf53c08ea3" scope="row" headers="group-capsules article-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--product">
																	<p class="art-tab responsive-shopping-bag__table-cell-value--product">
																		<img src="${dto.imageUrl }"
																			srcset="${dto.imageUrl } 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=90 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=135 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=180 4x"
																			alt="" class="responsive-shopping-bag__product-image" width="45" height="45"> 
																			<span class="responsive-shopping-bag__product-text">
																				<span class="responsive-shopping-bag__product-name">${dto.modelName1 }</span>
																				<br class="responsive-shopping-bag__total-price-separator">
																				<span class="responsive-shopping-bag__total-price--product">
																					<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																					₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																					</span>
																				</span>
																			</span>
																	</p> <span class="responsive-shopping-bag__product-notice"></span>
																</th>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 price-header"
																	class=" responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--unit-price">
																	<div class="price pull-right single-price responsive-shopping-bag__table-col--unit-price-value">
																		<span class="primary-price"> ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" /></span>
																	</div>
																</td>
																<td class="responsive-shopping-bag__table-col--multiple">×</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 quantity-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--quantity">
																	<div class="qty">${dto.quantity }</div>
																</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 total-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--total-price">
																	<div class="price pull-left total single-price responsive-shopping-bag__total-price responsive-shopping-bag__total-price--no-remove">
																		<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																			₩<fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</span>
																	</div>
																</td>
															</tr>
														</c:forEach>
														</c:if>
														
														<!-- 오리지널 머신 -->
														<c:set var="motQty" value="0" />

														<c:forEach var="qdto" items="${listsMo }">
															<c:set var="motQty" value="${motQty + qdto.quantity }" />
														</c:forEach>
														
														<c:if test="${!empty listsMo}">
														<tr class="responsive-shopping-bag__header-row">
															<th scope="col" class="responsive-shopping-bag__table-col 
																responsive-shopping-bag__table-col--heading responsive-shopping-bag__table-col--product-heading 
																responsive-shopping-bag__table-col--product">오리지널 머신
															<sup class="responsive-shopping-bag__amount--product-heading">(${motQty })</sup>
															</th>
															<th scope="colgroup" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--unit-price-heading responsive-shopping-bag__table-col--unit-price">
																개별 단가
															</th>
															<th scope="colgroup" aria-hidden="true" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--multiple-heading">
															</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--quantity-heading responsive-shopping-bag__table-col--quantity">
																수량</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--total-price-heading responsive-shopping-bag__table-col--total-price">
																<span class="responsive-shopping-bag__total-label">합계</span>
															</th>
														</tr>
														<tr class="responsive-shopping-bag__separator-row" aria-hidden="true">
															<td colspan="5" class="responsive-shopping-bag__table-col">
																<div class="responsive-shopping-bag__separator-col--product"></div>
															</td>
														</tr>
														<c:forEach var="dto" items="${listsMo }">
															<tr class="responsive-shopping-bag__row responsive-shopping-bag__product-row">
																<th id="product-485841d9-aa80-44d3-b5af-6cdf53c08ea3" scope="row" headers="group-capsules article-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--product">
																	<p class="art-tab responsive-shopping-bag__table-cell-value--product">
																		<img src="${dto.imageUrl }"
																			srcset="${dto.imageUrl } 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=90 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=135 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=180 4x"
																			alt="" class="responsive-shopping-bag__product-image" width="45" height="45"> 
																			<span class="responsive-shopping-bag__product-text">
																				<span class="responsive-shopping-bag__product-name">${dto.modelName1 }</span>
																				<br class="responsive-shopping-bag__total-price-separator">
																				<span class="responsive-shopping-bag__total-price--product">
																					<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																					₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																					</span>
																				</span>
																			</span>
																	</p> <span class="responsive-shopping-bag__product-notice"></span>
																</th>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 price-header"
																	class=" responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--unit-price">
																	<div class="price pull-right single-price responsive-shopping-bag__table-col--unit-price-value">
																		<span class="primary-price"> ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" /></span>
																	</div>
																</td>
																<td class="responsive-shopping-bag__table-col--multiple">×</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 quantity-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--quantity">
																	<div class="qty">${dto.quantity }</div>
																</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 total-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--total-price">
																	<div class="price pull-left total single-price responsive-shopping-bag__total-price responsive-shopping-bag__total-price--no-remove">
																		<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																			₩<fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</span>
																	</div>
																</td>
															</tr>
														</c:forEach>
														</c:if>
														
														<!-- 버츄오 커피 -->
														<c:set var="cvtQty" value="0" />

														<c:forEach var="qdto" items="${listsCv }">
															<c:set var="cvtQty" value="${cvtQty + qdto.quantity }" />
														</c:forEach>
														
														<c:if test="${!empty listsCv}">
														<tr class="responsive-shopping-bag__header-row">
															<th scope="col" class="responsive-shopping-bag__table-col 
																responsive-shopping-bag__table-col--heading responsive-shopping-bag__table-col--product-heading 
																responsive-shopping-bag__table-col--product">버츄오 커피
															<sup class="responsive-shopping-bag__amount--product-heading">(${cvtQty })</sup>
															</th>
															<th scope="colgroup" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--unit-price-heading responsive-shopping-bag__table-col--unit-price">
																개별 단가
															</th>
															<th scope="colgroup" aria-hidden="true" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--multiple-heading">
															</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--quantity-heading responsive-shopping-bag__table-col--quantity">
																수량</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--total-price-heading responsive-shopping-bag__table-col--total-price">
																<span class="responsive-shopping-bag__total-label">합계</span>
															</th>
														</tr>
														<tr class="responsive-shopping-bag__separator-row" aria-hidden="true">
															<td colspan="5" class="responsive-shopping-bag__table-col">
																<div class="responsive-shopping-bag__separator-col--product"></div>
															</td>
														</tr>
														<c:forEach var="dto" items="${listsCv }">
															<tr class="responsive-shopping-bag__row responsive-shopping-bag__product-row">
																<th id="product-485841d9-aa80-44d3-b5af-6cdf53c08ea3" scope="row" headers="group-capsules article-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--product">
																	<p class="art-tab responsive-shopping-bag__table-cell-value--product">
																		<img src="${dto.imageUrl }"
																			srcset="${dto.imageUrl } 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=90 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=135 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=180 4x"
																			alt="" class="responsive-shopping-bag__product-image" width="45" height="45"> 
																			<span class="responsive-shopping-bag__product-text">
																				<span class="responsive-shopping-bag__product-name">${dto.modelName1 }</span>
																				<br class="responsive-shopping-bag__total-price-separator">
																				<span class="responsive-shopping-bag__total-price--product">
																					<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																					₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																					</span>
																				</span>
																			</span>
																	</p> <span class="responsive-shopping-bag__product-notice"></span>
																</th>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 price-header"
																	class=" responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--unit-price">
																	<div class="price pull-right single-price responsive-shopping-bag__table-col--unit-price-value">
																		<span class="primary-price"> ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" /></span>
																	</div>
																</td>
																<td class="responsive-shopping-bag__table-col--multiple">×</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 quantity-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--quantity">
																	<div class="qty">${dto.quantity }</div>
																</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 total-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--total-price">
																	<div class="price pull-left total single-price responsive-shopping-bag__total-price responsive-shopping-bag__total-price--no-remove">
																		<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																			₩<fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</span>
																	</div>
																</td>
															</tr>
														</c:forEach>
														</c:if>														
														
														<!-- 버츄오 머신 -->
														<c:set var="mvtQty" value="0" />

														<c:forEach var="qdto" items="${listsMv }">
															<c:set var="mvtQty" value="${mvtQty + qdto.quantity }" />
														</c:forEach>
														<c:if test="${!empty listsMv}">
														<tr class="responsive-shopping-bag__header-row">
															<th scope="col" class="responsive-shopping-bag__table-col 
																responsive-shopping-bag__table-col--heading responsive-shopping-bag__table-col--product-heading 
																responsive-shopping-bag__table-col--product">버츄오 머신
															<sup class="responsive-shopping-bag__amount--product-heading">(${mvtQty })</sup>
															</th>
															<th scope="colgroup" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--unit-price-heading responsive-shopping-bag__table-col--unit-price">
																개별 단가
															</th>
															<th scope="colgroup" aria-hidden="true" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--multiple-heading">
															</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--quantity-heading responsive-shopping-bag__table-col--quantity">
																수량</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--total-price-heading responsive-shopping-bag__table-col--total-price">
																<span class="responsive-shopping-bag__total-label">합계</span>
															</th>
														</tr>
														<tr class="responsive-shopping-bag__separator-row" aria-hidden="true">
															<td colspan="5" class="responsive-shopping-bag__table-col">
																<div class="responsive-shopping-bag__separator-col--product"></div>
															</td>
														</tr>
														<c:forEach var="dto" items="${listsMv }">
															<tr class="responsive-shopping-bag__row responsive-shopping-bag__product-row">
																<th id="product-485841d9-aa80-44d3-b5af-6cdf53c08ea3" scope="row" headers="group-capsules article-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--product">
																	<p class="art-tab responsive-shopping-bag__table-cell-value--product">
																		<img src="${dto.imageUrl }"
																			srcset="${dto.imageUrl } 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=90 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=135 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=180 4x"
																			alt="" class="responsive-shopping-bag__product-image" width="45" height="45"> 
																			<span class="responsive-shopping-bag__product-text">
																				<span class="responsive-shopping-bag__product-name">${dto.modelName1 }</span>
																				<br class="responsive-shopping-bag__total-price-separator">
																				<span class="responsive-shopping-bag__total-price--product">
																					<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																					₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																					</span>
																				</span>
																			</span>
																	</p> <span class="responsive-shopping-bag__product-notice"></span>
																</th>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 price-header"
																	class=" responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--unit-price">
																	<div class="price pull-right single-price responsive-shopping-bag__table-col--unit-price-value">
																		<span class="primary-price"> ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" /></span>
																	</div>
																</td>
																<td class="responsive-shopping-bag__table-col--multiple">×</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 quantity-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--quantity">
																	<div class="qty">${dto.quantity }</div>
																</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 total-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--total-price">
																	<div class="price pull-left total single-price responsive-shopping-bag__total-price responsive-shopping-bag__total-price--no-remove">
																		<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																			₩<fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</span>
																	</div>
																</td>
															</tr>
														</c:forEach>
														</c:if>
														
														<!-- 액새서리 -->
														<c:set var="actQty" value="0" />

														<c:forEach var="qdto" items="${listsAc }">
															<c:set var="actQty" value="${actQty + qdto.quantity }" />
														</c:forEach>
														
														<c:if test="${!empty listsAc}">
														<tr class="responsive-shopping-bag__header-row">
															<th scope="col" class="responsive-shopping-bag__table-col 
																responsive-shopping-bag__table-col--heading responsive-shopping-bag__table-col--product-heading 
																responsive-shopping-bag__table-col--product">액새서리
															<sup class="responsive-shopping-bag__amount--product-heading">(${actQty })</sup>
															</th>
															<th scope="colgroup" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--unit-price-heading responsive-shopping-bag__table-col--unit-price">
																개별 단가
															</th>
															<th scope="colgroup" aria-hidden="true" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--multiple-heading">
															</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--quantity-heading responsive-shopping-bag__table-col--quantity">
																수량</th>
															<th scope="col" class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--heading 
															responsive-shopping-bag__table-col--total-price-heading responsive-shopping-bag__table-col--total-price">
																<span class="responsive-shopping-bag__total-label">합계</span>
															</th>
														</tr>
														<tr class="responsive-shopping-bag__separator-row" aria-hidden="true">
															<td colspan="5" class="responsive-shopping-bag__table-col">
																<div class="responsive-shopping-bag__separator-col--product"></div>
															</td>
														</tr>
														<c:forEach var="dto" items="${listsAc }">
															<tr class="responsive-shopping-bag__row responsive-shopping-bag__product-row">
																<th id="product-485841d9-aa80-44d3-b5af-6cdf53c08ea3" scope="row" headers="group-capsules article-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--product">
																	<p class="art-tab responsive-shopping-bag__table-cell-value--product">
																		<img src="${dto.imageUrl }"
																			srcset="${dto.imageUrl } 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=90 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=135 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13938191892510/DS-Favourite-Capsules-2000x2000.png?impolicy=product&amp;imwidth=180 4x"
																			alt="" class="responsive-shopping-bag__product-image" width="45" height="45"> 
																			<span class="responsive-shopping-bag__product-text">
																				<span class="responsive-shopping-bag__product-name">${dto.modelName1 }</span>
																				<br class="responsive-shopping-bag__total-price-separator">
																				<span class="responsive-shopping-bag__total-price--product">
																					<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																					₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																					</span>
																				</span>
																			</span>
																	</p> <span class="responsive-shopping-bag__product-notice"></span>
																</th>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 price-header"
																	class=" responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--unit-price">
																	<div class="price pull-right single-price responsive-shopping-bag__table-col--unit-price-value">
																		<span class="primary-price"> ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" /></span>
																	</div>
																</td>
																<td class="responsive-shopping-bag__table-col--multiple">×</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 quantity-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--quantity">
																	<div class="qty">${dto.quantity }</div>
																</td>
																<td headers="group-capsules product-485841d9-aa80-44d3-b5af-6cdf53c08ea3 total-header"
																	class="responsive-shopping-bag__table-col responsive-shopping-bag__table-col--normal responsive-shopping-bag__table-col--total-price">
																	<div class="price pull-left total single-price responsive-shopping-bag__total-price responsive-shopping-bag__total-price--no-remove">
																		<span class="primary-price responsive-shopping-bag__table-cell-value--total-price">
																			₩<fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</span>
																	</div>
																</td>
															</tr>
														</c:forEach>
														</c:if>
														
													</tbody>
												</table>
												<div class="delivery-summary__edit-shopping-bag">
													<button type="submit"
														class="btn-container btn button-primary   order-summary__edit-shopping-bag-button"
														name="_eventId_shoppingBag">
														<span class="button__content"> 수정하기</span>
													</button>
												</div>

											</div>
											<div class="neslink-recap"></div>

											<div
												class="shopping-bag-total-gradient clearfix responsive-totals-wrapper">
												<table
													class="shopping-bag-total order-summary-table responsive-totals__table">
													<caption class="responsive-totals__caption">
														<span class="responsive-totals__title"> 합계</span> 
														<span class="responsive-totals__category-total"> 오리지널 커피(${cotQty }) </span>
														<span class="responsive-totals__category-total"> 오리지널 머신 (${motQty }) </span> 
														<span class="responsive-totals__category-total"> 버츄오 커피(${cvtQty }) </span> 
														<span class="responsive-totals__category-total"> 버츄오 머신 (${mvtQty }) </span> 
														<span class="responsive-totals__category-total"> 액세서리 (${actQty }) </span>
													</caption>
													<thead>
														<tr class="responsive-shopping-bag__separator-row"
															aria-hidden="true">
															<td colspan="2"
																class="responsive-shopping-bag__table-col">
																<div
																	class="responsive-shopping-bag__separator-col--totals"></div>
															</td>
														</tr>
														<tr class="responsive-shopping-bag__row">
															<th
																class="col-articles responsive-totals__col responsive-totals__col--label"
																scope="row">소계</th>
															<td
																class="col-total text-right responsive-totals__col responsive-totals__col--amount">
																₩ <fmt:formatNumber value="${totalPrice }" pattern="#,###" /></td>
														</tr>
													</thead>
													<tbody>
														<tr class="responsive-shopping-bag__separator-row"
															aria-hidden="true">
															<td colspan="2"
																class="responsive-shopping-bag__table-col">
																<div
																	class="responsive-shopping-bag__separator-col--totals"></div>
															</td>
														</tr>
														<tr class="responsive-shopping-bag__row">
															<th
																class="line-tiret col1 responsive-totals__col responsive-totals__col--label"
																scope="row"><span> 배송비</span></th>
															<td
																class="col2 text-right responsive-totals__col responsive-totals__col--amount">
																무료</td>
														</tr>

														<tr class="responsive-shopping-bag__separator-row"
															aria-hidden="true">
															<td colspan="2"
																class="responsive-shopping-bag__table-col">
																<div
																	class="responsive-shopping-bag__separator-col--totals"></div>
															</td>
														</tr>
														<tr class="responsive-shopping-bag__row">
															<th
																class="line-tiret col1 responsive-totals__col responsive-totals__col--label"
																scope="row"><span> 부가세 (포함)</span></th>
															<td
																class="col2 text-right responsive-totals__col responsive-totals__col--amount">
																₩ <fmt:formatNumber value="${((totalPrice*0.1)/11) }" pattern="#,###" /></td>
														</tr>
													</tbody>

													<tfoot>
														<tr class="responsive-shopping-bag__separator-row"
															aria-hidden="true">
															<td colspan="2"
																class="responsive-shopping-bag__table-col">
																<div
																	class="responsive-shopping-bag__separator-col--totals"></div>
															</td>
														</tr>
														<tr
															class="line-total responsive-shopping-bag__row responsive-totals__footer">
															<th
																class="col-articles responsive-totals__col responsive-totals__col--label"
																scope="row">전체 합계</th>
															<td
																class="col-total text-right responsive-totals__col responsive-totals__col--amount">
																₩ <fmt:formatNumber value="${totalPrice }" pattern="#,###" /></td>
														</tr>
													</tfoot>
												</table>
												<div id="a11y-error-panel" class="error-message" style="display: none;">
            										<i class="Glyph Glyph--warning error-icon" aria-hidden="true"></i>         
                									<span id="termConfirmed.errors">네스프레소의 판매 정책에 동의 합니다.</span>
                								</div>
							
												<div class="terms clearfix">
													<div class="title">
														<h3 class="responsive-order-summary__terms-title">판매
															정책 확인</h3>
													</div>

													<div class="field-holder clearfix ">
														<div class="input-group ">
															<div class="input-row">
																<label for="ta-confirmation-terms"
																	class="checkbox small responsive-order-summary__terms-label">
																	<input id="ta-confirmation-terms" name="termConfirmed"
																	aria-required="true"
																	class="responsive-order-summary__terms-checkbox"
																	type="checkbox" value="true"><input
																	type="hidden" name="_termConfirmed" value="on" style="">네스프레소의
																	<a href="" data-popin-id="conditions"
																	class="popin-trigger">판매약관</a>과 <a href=""
																	data-popin-id="confidentiality" class="popin-trigger">개인정보처리방침</a>을
																	확인하였으며, 이에 동의 합니다.
																	<div id="conditions"
																		class="confirm-info-dialog display-none responsive-popin"
																		data-dlg-attributes="{&quot;autoOpen&quot;: false,&quot;width&quot;: 838}">
																		<div>
																			<div>
																				<div id="block-8807213553141" class="free-html"
																					data-label="">
																					<h2>판매이용약관</h2>

																					<p>
																						<b>제1조(목적)</b>
																					</p>
																					<p>이 약관은 네슬레코리아 유한책임회사 네스프레소 사업부 또는
																						계열사(이하”회사”)가 운영하는 사이버 몰(이하 “몰”이라 한다)에서 제공하는 서비스(이하
																						“서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을
																						목적으로 합니다.</p>

																					<p>
																						<b>제2조(정의)</b>
																					</p>
																					<p>
																						① “몰”이란 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기
																						위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의
																						영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
																						② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및
																						비회원을 말합니다.<br> ③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서,
																						계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br> ④
																						‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를
																						말합니다.
																					</p>

																					<p>
																						<b>제3조 (약관 등의 명시와 설명 및 개정)</b>
																					</p>
																					<p>
																						① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을
																						처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 전자우편주소,
																						사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록
																						몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여
																						볼 수 있도록 할 수 있습니다.<br> ② “몰은 이용자가 약관에 동의하기에 앞서
																						약관에 정해져 있는 내용 중 청약철회, 배송 책임, 환불 조건 등과 같은 중요한 내용을
																						이용자가 이해할 수 있도록 별도의 연결 화면 또는 팝업 화면 등을 제공하여 이용자의 확인을
																						구할 수 있습니다.<br> ③ “몰”은 「전자상거래 등에서의 소비자보호에 관한
																						법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,
																						「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한
																						법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수
																						있습니다.<br> ④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를
																						명시하여 현행 약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지
																						공지합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 최소한 30일 이상의
																						사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을
																						명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br> ⑤ “몰”이 약관을
																						개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에
																						이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을
																						체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의
																						공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>
																						⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의
																						소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래
																						등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
																					</p>

																					<p>
																						<b>제4조(서비스의 제공 및 변경)</b>
																					</p>
																					<p>
																						① “몰”은 다음과 같은 업무를 수행합니다.<br> 1) 재화 또는 용역에 대한
																						정보 제공 및 구매계약의 체결<br> 2) 구매계약이 체결된 재화 또는 용역의
																						배송<br> 3) 기타 “몰”이 정하는 업무<br> ② “몰”은 재화
																						또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할
																						재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용
																						및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br>
																						③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적
																						사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시
																						통지합니다.
																					</p>

																					<p>
																						<b>제5조(서비스의 중단)</b>
																					</p>
																					<p>
																						① “몰”은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가
																						발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br> ②
																						“몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가
																						입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는
																						그러하지 아니합니다.
																					</p>

																					<p>
																						<b>제6조(회원가입)</b>
																					</p>
																					<p>
																						① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는
																						의사표시를 함으로서 회원가입을 신청합니다.<br> ② “몰”은 제1항과 같이
																						회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로
																						등록합니다.<br> 1) 등록 내용에 허위, 기재 누락, 오기가 있는 경우<br>
																						2) 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br>
																						③ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 지체 없이 “몰”에 대하여
																						회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
																					</p>

																					<p>
																						<b>제7조(회원 탈퇴 및 자격 상실 등)</b>
																					</p>
																					<p>
																						① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br>
																						② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수
																						있습니다.<br> 1) 가입 신청 시에 허위 내용을 등록한 경우<br>
																						2) “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는
																						채무를 기일에 지급하지 않는 경우<br> 3) 다른 사람의 “몰” 이용을
																						방해하거나, “몰”의 회원 가입 시 타인의 정보를 도용한 것으로 확인 또는 의심되는 등
																						전자상거래 질서를 위협하는 경우<br> 4) “몰”의 이용 과정에서 직원에게
																						폭언, 협박 또는 음란한 언행 및 기타 이에 준하는 행동으로 “몰”의 운영을 방해하는 경우<br>
																						5) “몰”을 통하여 재화 등을 구매한 후 정당한 이유 없이 상습 또는 반복적으로
																						취소·반품하여 “몰”의 업무를 방해하는 경우<br> 6) 부정한 용도 또는
																						재판매를 통해 영리를 추구할 목적으로 “몰”을 통해 재화 등을 중복 구매하는 등 “몰”의
																						거래 질서를 방해하는 경우 <br> 7) 무단으로 “몰”의 재화, 서비스, 기타
																						정보를 수집하거나 외부에 제출, 게시, 이용하여 “몰”의 저작권, 상표권 등 지식재산권을
																						침해하는 경우<br> 8) “몰”을 이용하여 법령 또는 이 약관이 금지하는 행위를
																						하는 경우<br> ③ “몰”이 회원 자격을 제한∙정지시킨 후, 동일한 행위가 2회
																						이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을
																						상실시킬 수 있습니다.<br> ④ “몰”이 회원자격을 상실시키는 경우에는
																						회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일
																						이상의 기간을 정하여 소명할 기회를 부여합니다.
																					</p>

																					<p>
																						<b>제8조(회원에 대한 통지)</b>
																					</p>
																					<p>
																						① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편
																						주소로 할 수 있습니다.<br> ② “몰”은 불특정다수 회원에 대한 통지의 경우
																						1주일이상 “몰” 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원
																						본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
																					</p>

																					<p>
																						<b>제9조(주문 및 가격)</b>
																					</p>
																					<p>
																						① “몰”에서 주문을 신청함으로써 이용자는 매매의 청약을 합니다.<br> ② 주문
																						시의 가격은 주문 당일 “몰”에 명시되어 있는 가격으로 부가가치세는 포함되어있으나 배송비는
																						포함하지 않습니다(쇼핑백과 체크아웃 시 부가가치세와 배송비는 각기 별도 표기됩니다).<br>
																						③ 총 주문 금액이 60,000원 미만일 경우 배송비(부가가치세 포함) 2,500원이
																						발생되며, 총 주문 금액이 60,000원 이상 또는 커피 머신 주문 시에는 무료입니다.<br>
																						④ 이용자의 주문은 최소/최대 수량 제한을 받을 수 있으며, 커피 캡슐은 1줄(10개)
																						단위로 주문이 가능합니다.
																					</p>

																					<p>
																						<b>제10조 (계약의 성립)</b>
																					</p>
																					<p>
																						① “몰”은 합리적인 사유가 있는 경우 제9조와 같은 주문 신청을 승낙하지 않을 수
																						있습니다.<br> ② “몰”의 승낙이 제12조 제1항의 수신확인통지형태로
																						이용자에게 도달한 시점에 계약이 성립한 것으로 보고, 그 전까지는 계약이 성립하지
																						않습니다.
																					</p>

																					<p>
																						<b>제11조(지급방법) </b>
																					</p>
																					<p>
																						“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한
																						방법으로 할 수 있습니다.<br> 1) 선불카드, 직불카드, 신용카드 등의 각종
																						카드 결제 (즉시 처리되며 처리 내역은 보안을 위해 암호화됩니다.)<br> 2)
																						실시간 계좌이체<br> 3) 모바일 소액결제
																					</p>

																					<p>
																						<b>제12조(수신확인통지, 주문 변경 및 취소)</b>
																					</p>
																					<p>
																						① “몰”은 이용자의 주문이 있는 경우 이용자에게 수신확인통지를 합니다.<br>
																						② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은
																						후 즉시 주문 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는
																						경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는
																						제15조의 청약철회 등에 관한 규정에 따릅니다.’<br> ③ “몰”은 이용자의
																						주문 신청 및 대금 결제과정에서 ‘기술적인 오류’ 또는 ‘비정상적 거래’에 의하여 부당한
																						이득을 취하는 등 통상적인 전자상거래 관행에 부합하지 않는 거래가 있음을 알게 된 경우,
																						이를 이용자에게 고지하고 주문 신청을 승인하지 않거나 수신확인통지를 철회하여 계약을 취소할
																						수 있습니다. 이 경우 이용자는 수령한 재화 등을 “몰”의 요청에 따라 반환하여야 하고,
																						“몰”은 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의
																						대금을 환급합니다.
																					</p>

																					<p>
																						<b>제13조(재화 등의 배송)</b>
																					</p>
																					<p>
																						① “몰”은 계약이 성립된 재화 등을 이용자가 주문할 때 명시한 배송지로 배송합니다. 단
																						배송지는 대한민국 내로 제한됩니다.<br> ② 이용자와 재화 등의 공급시기에
																						관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 3일 이내에 재화 등을 배송할
																						수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, 오후 5시 이전
																						신청된 주문은 당일 출고되며, 배송이 시작된 이후에 이용자가 단순변심에 의한 청약철회 시
																						반송비를 부담하게 될 수 있습니다.
																					</p>

																					<p>
																						<b>제14조(검수)</b>
																					</p>
																					<p>
																						① 이용자는 주문한 재화 등을 수령한 후 지체 없이 그 수량 및 상태를 확인해야 합니다.<br>
																						② 위와 같은 확인 결과 재화 등이 훼손 또는 누락된 경우 “몰”에 8일 이내에 알리면
																						제15조와 별도로 동일한 제품으로 반품 받을 수 있습니다.
																					</p>

																					<p>
																						<b>제15조(청약철회 등)</b>
																					</p>
																					<p>
																						① 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른
																						계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진
																						경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는
																						청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에
																						관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.<br> ②
																						이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을
																						할 수 없습니다.<br> 1) 이용자에게 책임 있는 사유로 재화 등이 멸실 또는
																						훼손된 경우 (다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는
																						청약철회를 할 수 있습니다)<br> 2) 이용자의 사용 또는 일부 소비에 의하여
																						재화 등의 가치가 현저히 감소한 경우<br> 3) 시간의 경과에 의하여 재판매가
																						곤란할 정도로 재화 등의 가치가 현저히 감소한 경우<br> 4) 동일 성능의 재화
																						등으로 복제 가능한 경우 그 원본인 재화 등 포장을 훼손한 경우<br> ③
																						이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나
																						계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안
																						날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.
																					</p>

																					<p>
																						<b>제16조(청약철회 등의 효과)</b>
																					</p>
																					<p>
																						① “몰”은 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화
																						등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화 등의 환급을 지연한 때에는 그
																						지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」 제21조의2에서
																						정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br> ② “몰”은 위
																						대금을 환급함에 있어서 이용자가 신용카드 등의 결제수단으로 재화 등의 대금을 지급한 때에는
																						지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는
																						취소하도록 요청합니다.<br> ③ 청약철회 등의 경우 공급받은 재화 등의 반환에
																						필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는
																						손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과
																						다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이
																						부담합니다.
																					</p>

																					<p>
																						<b>제17조(개인정보보호)</b>
																					</p>
																					<p>
																						① “몰”은 이용자의 개인정보 처리 시 관련 법령을 준수합니다.<br> ②
																						이용자의 개인정보 처리에 관하여는 “몰”에 별도로 공개되는 개인정보 처리방침이 적용됩니다.
																					</p>

																					<p>
																						<b>제18조(커피 머신에 대한 보증 및 AS)</b>
																					</p>
																					<p>
																						① 이용자가 “몰”에서 구매한 커피 머신은 제품명세서 원본에 명시된 약관에 따라 커피머신
																						제조업체의 보증을 받습니다.<br> ② 이용자는 커피머신과 관련한 AS와 관련한
																						사항을 “몰”에 표기된 연락처로 문의하여 조치를 받을 수 있습니다.
																					</p>

																					<p>
																						<b>제19조(회원의 비밀번호에 대한 의무)</b>
																					</p>
																					<p>
																						① 비밀번호에 관한 관리책임은 회원에게 있습니다.<br> ② 회원은 자신의
																						비밀번호를 제3자와 공유하거나 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의
																						비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고
																						“몰”의 안내가 있는 경우에는 그에 따라야 합니다.
																					</p>

																					<p>
																						<b>제20조(이용자의 의무) </b>
																					</p>
																					<p>
																						이용자는 다음 행위를 하여서는 안 됩니다.<br> 1) 신청 또는 변경 시 허위
																						내용의 등록<br> 2) 타인의 정보 도용<br> 3) “몰”에 게시된
																						정보의 변경<br> 4) “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등)
																						등의 송신 또는 게시<br> 5) “몰” 기타 제3자의 저작권 등 지식재산권에
																						대한 침해<br> 6) “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는
																						행위
																					</p>

																					<p>
																						<b>제21조(책임의 한계)</b>
																					</p>
																					<p>
																						① “몰”에 게시된 재화 등의 묘사 및 기술하는 사진과 텍스트는 계약의 구속을 받지 않으며
																						오직 정보제공의 목적으로만 제공되며, “몰”은 그 사진이나 텍스트에 오류 또는 누락이 있을
																						경우 책임을 지지 않습니다.<br> ② “몰”이 재화 등을 발송하는 국가와
																						도착하는 국가가 다를 경우 “몰”은 재화 등이 배송지 국가의 법과 규제를 준수하지 않거나
																						전력 및 다른 제품호환성에 문제가 있더라도 책임을 지지 않습니다.
																					</p>

																					<p>
																						<b>제22조(저작권의 귀속 및 이용제한)</b>
																					</p>
																					<p>
																						① “몰“이 작성한 저작물에 대한 저작권 기타 지식재산권은 ”몰“에 귀속합니다.<br>
																						② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지식재산권이 귀속된 정보를
																						“몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로
																						이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br> ③ “몰”은 약정에 따라
																						이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.
																					</p>

																					<p>
																						<b>제23조(불가항력)</b>
																					</p>
																					<p>
																						① “몰”은 이 약관상 의무를 이행하기 위한 모든 합리적인 노력을 다할 것이나, 합리적인
																						통제를 벗어난 상황에 의해 발생한 배송 지연이나 배송 실패에 관해서는 책임을 지지
																						않습니다. 이러한 상황에는 파업, 전쟁, 자연재해 또는 상품의 생산, 운송, 배송을
																						불가능하게 만드는 기타 상황들이 있습니다.<br> ② 제1항과 같은 경우에도
																						“몰”은 합리적으로 가능한 신속하게 의무를 이행할 것이며, 공정하고 합리적인 방법으로
																						이용자들에게 남아있는 재화 등의 공급을 할당하고자 최선의 노력을 다합니다.
																					</p>

																					<p>
																						<b>제24조(재판권 및 준거법)</b>
																					</p>
																					<p>
																						① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에
																						의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소
																						당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의
																						관할법원에 제기합니다.<br> ② 본 약관의 준거법은 한국법입니다.
																					</p>

																					<p>
																						<b>제25조 (부칙)</b><br> 본 판매약관은 2020년9월1일부터 적용
																						됩니다.
																					</p>
																				</div>

																			</div>
																		</div>
																	</div>
																	<div id="confidentiality"
																		class="confirm-info-dialog display-none responsive-popin"
																		data-dlg-attributes="
    {
        &quot;autoOpen&quot;: false,
        &quot;width&quot;: 838
    }
    ">
																		<div>
																			<div>
																				<div id="block-8807213520373" class="free-html"
																					data-label="">
																					<h2>개인정보 처리방침</h2>

																					<p>네스프레소 계열사를 포함하여 네슬레코리아 유한책임회사 네스프레소 사업부(이하
																						“네스프레소”)는 귀하가 네스프레소는 브랜드 홈페이지를 운용함에 있어 이용자가 제공한
																						개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 네스프레소는 개인정보 보호법,
																						통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 등에 관한 법률 등
																						정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정 및 방송통신위원회,
																						과학기술정보통신부 및 행정안전부 등 대한민국 정부가 제정한 개인정보보호지침들을 준수하며,
																						개인정보처리방침을 통하여 이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고
																						있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 네스프레소의
																						개인정보처리방침은 홈페이지 첫 화면에 공개되며 이용자들은 언제나 용이하게 보실 수
																						있습니다.</p>
																					<br> <br>
																					<p>네스프레소의 개인정보처리방침은 법률 및 지침 변경이나 네스프레소 내부 방침 변경
																						등으로 인하여 변경될 수 있으며, 개인정보취급방침이 변경되는 경우 그 변경사항에 대하여
																						즉시 브랜드 홈페이지를 통하여 게시하고 개정일자를 부여하여 개정된 사항을 이용자들이 쉽게
																						알아볼 수 있도록 하고 있습니다.</p>

																					<p>네스프레소의 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>

																					<p>1. 수집하는 개인정보 항목 및 수집방법</p>
																					<p>2. 개인정보의 수집 및 이용목적</p>
																					<p>3. 수집한 개인정보의 보유 및 이용기간</p>
																					<p>4. 개인정보의 파기절차</p>
																					<p>5. 개인정보 처리 위탁</p>
																					<p>6. 이용자 및 법정대리인의 권리와 그 행사방법</p>
																					<p>7. 개인정보의 기술적, 관리적 보호조치</p>
																					<p>8. 쿠키의 설치, 운영 및 그 거부에 관한 사항</p>
																					<p>9. 개인정보의 제3자 제공</p>
																					<p>10. 개인정보의 국외 이전</p>
																					<p>11. 개인정보 관리책임자 및 관련 부서</p>
																					<p>12. 정책변경에 따른 공지의무</p>
																					<br> <br>

																					<p>1. 수집하는 개인정보 항목 및 수집방법</p>

																					<p>네스프레소는 이용자들의 회원가입, 상담, 그리고 각종 서비스의 제공을 위해
																						아래와 같은 개인정보를 수집하고 있습니다.</p>

																					<p>
																						성명, 네스프레소 클럽 회원번호, 전자우편 주소, 전화번호 (휴대전화 번호),
																						우편주소(배송지/청구지), <br> 또한 서비스 이용과정이나 사업 처리 과정에서
																						사용자 이름 및 패스워드, 웹 브라우저, 및 OS 유형, 접속 로그, IP 주소, 광고
																						ID, 쿠키, 방문 날짜, 서비스 이용 기록, 사업자가 마케팅 등에 이용할 목적으로 가공한
																						회원정보 등이 생성되어 수집될 수 있습니다. <br> 아울러 네스프레소의 상품의
																						구입 과정에서 대금 지불 방법, 신용/직불카드 결제 시 카드명, 카드번호, 카드소지자명,
																						유효기간, 비밀번호 앞 2자리, 생년월일 8자리 또는 사업자 등록번호, 계좌이체 시
																						은행명, 계좌 번호 등이 수집될 수 있으며, 물품 배송 시에 물품 수취인의 이름,
																						전화번호, 주소, 우편번호 등이 수집될 수 있습니다.
																					</p>

																					<p>아울러 네스프레소의 상품의 구입 과정에서 신용카드 결제 시 신용카드명,
																						카드번호, 계좌이체 시 은행명, 계좌 번호 등이 수집될 수 있으며, 물품 배송 시에 물품
																						수취인의 이름, 전화번호, 주소, 우편번호 등이 수집될 수 있습니다.</p>
																					<br>
																					<p>2. 개인정보의 수집 및 이용목적</p>

																					<p>대부분의 브랜드 홈페이지 서비스는 별도의 이용자 등록이 없이 사용할 수
																						있습니다. 그러나 브랜드 회원서비스, 상품구매, 각종 이벤트 참여(1주년 기념 혜택, 무료
																						커피샘플 증정, 할인 바우처 제공, 커피 클래스 초청, 신제품 및 한정판 제품 소식 안내
																						등), 소비자 조사 등을 통하여 이용자들에게 맞춤 서비스를 비롯한 보다 더 향상된 양질의
																						서비스를 제공하기 위하여 필요한 이용자 개인 정보를 수집하고 있으며, 수집한 개인정보는
																						다음의 목적으로 활용됩니다.</p>

																					<p>2.1. 서비스 제공에 관한 계약이행 및 서비스 제공에 따른 요금정산</p>

																					<p>콘텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송,
																						본인인증, 구매 및 요금 결제, 요금추심</p>

																					<p>2.2. 회원관리</p>

																					<p>회원제 서비스 이용 및 제한적 본인 확인 제에 따른 본인확인, 개인식별,
																						불량회원의 부정 이용 방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한,
																						만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인
																						본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달</p>

																					<p>2.3. 마케팅 광고에 활용</p>

																					<p>신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및
																						광고 게재, 서비스의 유효성 확인, 이벤트 및 광고성 정보 제공 및 참여기회 제공,
																						접속빈도 파악, 회원의 서비스이용에 대한 통계</p>
																					<br>
																					<p>3. 수집한 개인정보의 보유 및 이용기간</p>

																					<p>이용자가 네스프레소의 브랜드 홈페이지 회원으로서 네스프레소에서 제공하는 브랜드
																						홈페이지의 회원서비스를 이용하는 동안 네스프레소는 이용자들의 개인정보를 보유하며 규정에
																						따라 개인정보를 활용합니다. 회원이 가입 해지를 요청하거나 개인정보 수집 및 이용 목적이
																						달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의
																						이유로 명시한 기간 동안 보존합니다.</p>

																					<p>&lt;관련법령에 의한 정보보유&gt;</p>

																					<p>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여
																						보존할 필요가 있는 경우 관계법령에서 정한 일정한 기간 동안 회원정보 보관.</p>
																					<p>
																						1) 보존 항목: 계약 또는 청약철회 등에 관한 기록 <br> 근거 법령 및
																						방침: 전자상거래 등에서의 소비자 보호에 관한 법률<br> 보존 기간: 5년 <br>
																						2) 보존 항목: 대금결제 및 재화 등의 공급에 관한 기록<br> 근거 법령 및
																						방침: 전자상거래 등에서의 소비자 보호에 관한 법률<br> 보존 기간: 5년 <br>
																						3) 보존 항목: 소비자의 불만 또는 분쟁처리에 관한 기록 <br> 근거 법령 및
																						방침: 전자상거래 등에서의 소비자 보호에 관한 법률 <br> 보존 기간: 3년 <br>
																						4) 보존 항목: 표시/광고에 관한 기록 <br> 근거 법령 및 방침: 전자상거래
																						등에서의 소비자 보호에 관한 법률 <br> 보존 기간: 6개월 <br>
																						5) 보존 항목: 세법이 규정하는 모든 거래에 관한 장부 및 증빙서류<br> 근거
																						법령 및 방침: 국세기본법 <br> 보존 기간: 5년 <br> 6) 보존
																						항목: 전자금융거래에 관한 기록 <br> 근거 법령 및 방침: 전자금융거래법 <br>
																						보존 기간: 5년 <br> 7) 보존 항목: 서비스 방문 기록 <br>
																						근거 법령 및 방침: 통신비밀보호법, 정보통신망법 <br> 보존 기간: 1년 <br>
																						8) 보존 항목: 부정이용기록 <br> 근거 법령 및 방침: 회사 내부 방침 <br>
																						보존 기간: 1년
																					</p>

																					<p>4. 개인정보의 파기절차</p>

																					<p>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이
																						파기합니다. 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로
																						옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에
																						따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.</p>

																					<p>5. 개인정보 처리 위탁</p>

																					<p>네스프레소는 다음과 같이 서비스 제공을 위하여 필요한 개인정보 처리 위탁을 하고
																						있습니다. 네스프레소는 관계 법령에 따라 위탁 계약 시 개인정보가 안전하게 처리될 수
																						있도록 필요한 사항을 규정하고 있습니다.</p>
																					<p>
																						위탁 받은 업체(수탁자) 위탁 업무 <br> ㈜지어소프트 디지털 마케팅 업무 <br>
																						㈜벨류포인트 온-오프라인 회원 등에 대한 DM 발송 <br> ㈜제이콘컴퍼니
																						온-오프라인 회원 등에 대한 SMS/E-Mail 발송 <br>
																						NHN한국사이버결제주식회사 신용카드, 휴대폰결제, 실시간 계좌이체 결제 <br>
																						㈜ 태은물류 주문 배송 처리 대행 <br> ㈜Ubase 고객 응대 서비스 대행 <br>
																						발렉스 오프라인 회원의 문서 보관 <br> ㈜ 주희물류 주문 배송 서비스 대행 <br>
																						CJ대한통운㈜ 주문 배송 서비스 대행 <br> ㈜일양로지스 주문 배송 서비스 대행
																						<br> ㈜페르미 고객 응대 서비스를 위한 영상상담 솔루션 제공 <br>
																						하이큐 (HIQ) A/S 서비스 대행 <br> Cybersource 전자상거래
																						플랫폼 운영 및 사해행위에 의한 거래 방지 <br> Adyen B.V. 신용카드
																						정보 저장 시 신용카드 결제 대행 업무
																					</p>

																					<p>회사는 신상품 소개, 이벤트 정보 등의 유용한 정보를 제공하기 위하여 개인정보
																						처리 위탁을 할 수 있으며 그러한 경우 별도의 동의절차를 밟고 있습니다. 개인정보 처리
																						위탁에 동의 않을 수 있으나, 동의하지 않는 경우 본인 확인 인증, 고객정보 분석, 상품
																						배송 서비스 등 개인정보 처리 위탁을 하는 업무의 제공이 불가능합니다.</p>

																					<p>6. 이용자 및 법정대리인의 권리와 그 행사방법</p>

																					<p>이용자 및 법정 대리인은 브랜드 홈페이지를 이용하여 언제든지 등록되어 있는 자신
																						혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를
																						요청할 수도 있습니다.</p>

																					<p>이용자 혹은 만 14세 미만 아동의 개인정보 조회, 수정을 위해서는
																						'개인정보변경'(또는 '회원정보수정' 등)을, 가입 해지(동의철회) 및 삭제를 위해서는
																						네스프레소 클럽 (080-734-111)을 통해 요청 하실 수 있으며 본인 확인 절차를
																						거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</p>

																					<p>혹은 개인정보관리책임자에게 서면, 전화 또는 이 메일로 연락하시면 지체 없이
																						조치하겠습니다.</p>

																					<p>이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지
																						당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미
																						제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록
																						하겠습니다.</p>

																					<p>회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는
																						"3. 수집한 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로
																						열람 또는 이용할 수 없도록 처리하고 있습니다.</p>

																					<p>7. 개인정보의 기술적, 관리적 보호조치</p>
																					<p>네스프레소는 네스프레소를 위해, 또는 네스프레소를 대리하여 활동하며 귀하의
																						데이터의 비밀과 보안을 유지하도록 동의한 제 3자를 제외한 다른 단체가 귀하의 데이터를
																						확보할 수 없도록 모든 합리적인 조치들을 취하고 있습니다.</p>
																					<p>
																						가. 관리적 조치<br> 네스프레소는 내부관리계획을 수립하고 직원들에게 정기적인
																						교육을 실시하여, 귀하의 개인정보를 보호하기 위해 노력하고 있습니다. 데이터에 대한 접근은
																						필요한 경우에만 실시되며 귀하의 데이터 취급 시 비밀유지를 위한 엄격한 기준을 준수하도록
																						교육을 받은 네스프레소 직원들 중 일부로만 제한됩니다.
																					</p>
																					<p>
																						나. 기술적 조치<br> 네스프레소가 수집하는 데이터의 보안과 비밀을 유지하기
																						위해, 네스프레소는 산업표준 방화벽 및 패스워드 보안을 통해 보호되는 데이터 네트워크를
																						사용합니다. 다만, 네스프레소가 방문객을 위해 안전하고 신뢰할 수 있는 웹사이트를 구축하기
																						위해 노력함에도 불구하고, 인터넷은 일반적으로 완벽한 보안 환경으로 간주되지 않으며,
																						따라서 귀하가 제공하는 데이터나 귀하가 네스프레소 웹사이트나 이메일을 통해 전송하신 자료의
																						기밀 유지를 네스프레소에서 보장할 수 없음을 인식해 주시기 바랍니다. 따라서 네스프레소는
																						귀하의 데이터가 인터넷을 통해 네스프레소에게 전송되는 과정 동안 귀하의 데이터의 보안을
																						책임질 수 없습니다.
																					</p>
																					<p>
																						다. 물리적 조치 <br> 네스프레소는 개인정보 처리시스템에 대한 물리적
																						잠금장치, 전산실, 문서보관 장소 등의 접근통제를 통하여 개인정보의 물리적 접근방지를 위한
																						보호조치를 취하고 있습니다.
																					</p>

																					<p>8. 쿠키의 설치, 운영 및 그 거부에 관한 사항</p>

																					<p>
																						서비스 이용과정이나 사업 처리 과정에서 사용자 이름 및 패스워드, 웹 브라우저, 및 OS
																						유형, 접속 로그, IP 주소, 광고 ID, 쿠키, 방문 날짜, 서비스 이용 기록,
																						사업자가 마케팅 등에 이용할 목적으로 가공한 회원정보 등이 생성되어 수집될 수 있습니다.
																						<br> 네스프레소 웹사이트의 콘텐츠 개선, 웹사이트 방문객을 위한 웹사이트
																						최적화, 방문객 현황과 웹사이트 이용실태 파악을 위해 익명의 데이터를 처리합니다. 이러한
																						활동 수행 시 네스프레소는 추적 기술(“쿠키”)을 이용하여 브라우저 유형, 운영체제, 접속
																						날짜 및 시간 등 익명의 정보를 수집할 수 있습니다. “쿠키” 자체는 사용자의 신원을
																						밝히는 용도로 사용될 수 없습니다. 쿠키는 귀하의 브라우저로 전송되어 귀하의 컴퓨터 하드
																						드라이브에 저장되는 작은 정보의 조각입니다. <br> 이용자는 쿠키 설치에 대한
																						선택권을 가지고 있습니다. 따라서 이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를
																						허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도
																						있습니다. 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 온라인 샵 일부 서비스는
																						이용에 어려움이 있을 수 있습니다.
																					</p>

																					<p>이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹
																						브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을
																						거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 쿠키의 저장을 거부할
																						경우에는 로그인이 필요한 온라인 샵 일부 서비스는 이용에 어려움이 있을 수 있습니다.</p>

																					<p>9. 개인정보의 제3자 제공</p>

																					<p>
																						네스프레소는 이용자의 개인정보를 원칙적으로 외부에 공개하지 않습니다. 다만, 아래의
																						경우에는 예외로 합니다. <br> - 정보주체인 이용자가 사전에 제공에 동의한
																						경우 <br> - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와
																						방법에 따라 수사기관의 요구가 있는 경우 <br> - 정보주체 또는 그
																						법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수
																						없는 경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여
																						필요하다고 인정되는 경우
																					</p>

																					<p>10. 개인정보의 국외 이전</p>
																					<p>네스프레소는 다국적 브랜드로서 다양한 사법관할구역 내에서 데이터 베이스를
																						보유합니다. 네스프레소는 귀하의 거주 국가 외부에 위치한 목적지, 즉 이러한 데이터베이스
																						중 한 곳, 네스프레소 그룹 소속사, 또는 귀하의 데이터에 대한 기밀과 보안 유지에 동의한
																						파트너사로 귀하의 데이터를 전송할 수 있습니다. 네스프레소는 해당 국가 내의 데이터베이스로
																						전송되는 데이터가 동일한 수준으로 보호되도록 보장할 것이며, 이러한 국가 내에서 제3자에게
																						데이터가 전송되는 일이 없도록 노력할 것입니다. 귀하는 귀하의 데이터를 제공함으로써
																						네스프레소 그룹의 계열사/파트너사로의 데이터 전송이 발생할 수 있으며 이러한 목적으로
																						개인정보를 국외로 이전하는 것에 명시적으로 동의하는 것으로 간주됩니다. 그 구체적 내용은
																						다음과 같습니다.</p>
																					<p></p>
																					<ul>
																						<li>이전되는 개인정보 항목: 이름, 이메일, 전화번호, 주소</li>
																						<li>이전되는 국가: 스위스</li>
																						<li>이전 일시: 회원 가입 즉시</li>
																						<li>이전 방법: 전자적 방법을 통한 국외 이전</li>
																						<li>이전받는 법인: Nestle Nespresso S.A</li>
																						<li>이전받는 법인의 정보관리책임자: 로버트 리네케, 정보 보호 프로그램 관리자</li>
																						<li>이전받는 법인의 이용목적: 네스프레소 클럽 회원 서비스 제공에 관한
																							계약이행 및 서비스 제공에 따른 요금 정산, 회원관리 및 고객 클레임 처리</li>
																						<li>이전받는 법인의 보유∙이용기간: 네스프레소 클럽 회원 탈퇴 및 개인정보
																							수집 및 이용 목적 달성 시까지</li>
																					</ul>
																					<p></p>


																					<p></p>
																					<ul>
																						<li>이전되는 개인정보 항목: 카드번호,카드 유효기간,카드 소지자명,카드의
																							비밀번호 앞2자리,생년월일 8자리 또는 사업자 등록번호</li>
																						<li>이전되는 국가: 네덜란드</li>
																						<li>이전 일시: 신용카드 정보 저장시</li>
																						<li>이전 방법: 전자적 방법을 통한 국외 이전</li>
																						<li>이전받는 법인: ADYEN B.V.</li>
																						<li>이전받는 법인의 정보관리책임자: Joop Wijn</li>
																						<li>이전받는 법인의 이용목적: 신용카드 결제 대행 업무</li>
																						<li>이전받는 법인의 보유∙이용기간: 네스프레소 클럽 회원 탈퇴 및 개인정보
																							수집 및 이용 목적 달성 시까지</li>
																					</ul>
																					<p></p>


																					<p></p>
																					<ul>
																						<li>이전되는 개인정보 항목: 카드번호,카드유효기간,소지자명</li>
																						<li>이전되는 국가: 미국과 영국</li>
																						<li>이전 일시: 결제 시</li>
																						<li>이전 방법: 전자적 방법을 통한 국외 이전</li>
																						<li>이전받는 법인: Cybersource</li>
																						<li>이전받는 법인의 정보관리책임자: Zou Nora (IT manager)</li>
																						<li>이전받는 법인의 이용목적: 제품의 공급 및 대금 수령 등 계약의 이행</li>
																						<li>이전받는 법인의 보유∙이용기간: 네스프레소 클럽 회원 탈퇴 및 개인정보
																							수집 및 이용 목적 달성 시까지</li>
																					</ul>
																					<p></p>

																					<p>특정 국가의 개인정보보호 수준이 국제인증기준에 부합하지 않을 경우, 네스프레소는
																						해당 국가 내의 네스프레소 데이터베이스로 전송되는 데이터가 동일한 수준으로 보호되도록
																						보장할 것이며, 이러한 국가 내에서 제 3자에게 데이터를 전송되는 일이 없도록 보장할
																						것입니다. 귀하는 귀하의 데이터를 제출함으로써, 네스프레소 그룹의 계열사/파트너사로의
																						데이터 전송이 발생할 수 있으며 이러한 목적으로 국경을 넘는 전송이 발생할 수도 있다는
																						점에 명시적으로 동의하는 것으로 간주됩니다.</p>

																					<p>11. 개인정보 관리책임자 및 관련부서</p>
																					<p>네스프레소는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기
																						위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</p>

																					[네슬레코리아 유한책임회사 개인정보 보호책임자] <br> 성명: 박근원 <br>
																					[네스프레소 사업부 개인정보 관리 책임자] <br> 성명: 민재용 팀장 <br>
																					[네스프레소 클럽] <br> 전화번호: 080-734-1111<br>
																					<p>
																						기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>
																						- 개인정보침해신고센터(한국인터넷진흥원) (privacy.kisa.or.kr /
																						02-405-5118)<br> - 개인정보 분쟁조정위원회
																						(www.kopico.go.kr / 1833-6972)<br> -
																						정보보호마크인증위원회 (www.eprivacy.or.kr / 02-550-9531~2)<br>
																						- 경찰청 사이버안전국 (www.ctrc.go.kr / 182)<br> -
																						대검찰청 사이버범죄수사단 (http://www.spo.go.kr /
																						02-3480-2000)<br> - 경찰청 사이버테러대응센터
																						(www.ctrc.go.kr / 02-392-0330)
																					</p>

																					<p>12. 정책변경에 따른 공지 의무</p>

																					<p>네스프레소 개인정보처리방침은 2013년 09월 01일에 제정되었으며 법령, 정책
																						또는 보유기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 변경되는
																						개인정보처리방침을 브랜드 홈페이지를 통해 내용을 공지하도록 하겠습니다.</p>

																					<p>
																						개인정보처리방침 최종 변경 일자: 2020년 9월 8일<br> 개인정보처리방침
																						시행 일자: 2014년 6월 1일
																					</p>

																					<p>
																						네슬레코리아 유한책임회사 네스프레소 사업부<br>
																					</p>
																				</div>

																			</div>
																		</div>
																	</div>
																</label>
															</div>
														</div>
													</div>

												</div>
											</div>
											<div class="responsive-order-summary__footer clearfix ">
												<a class="order-summary__previous-step-link"
													href="/nespresso/checkoutStep3"> 주문 수정하기</a>
												<button type="submit" id="ta-continue-bottom"
													class="btn-container btn button-primary button-right-icon  checkout-flow order-summary__confirmation-button--bottom clear-session-customer-cart"
													name="_eventId_continue">
													<span class="button__content"> 결제 진행하기</span> 
													<i class="responsive-icon Glyph Glyph--arrow-right" aria-hidden="true"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div id="block-8813860673013" class="free-html" data-label="">
						<script>
							console.log("layer");
						</script>
					</div>

				</div>










				<div id="potential-duplicate-order"
					class="popin-page responsive-popin">
					<div class="content">
						<div>
							<div class="art-title popin-title">주의 : 금일 이미 주문하신 내역이
								있습니다.</div>
							<p class="potential-duplicate-order-warning popin-content">
								지난 15분 안에 결제된 주문 내역이 있습니다. 현재 주문 요청이 원치 않는 중복 주문이 될 수 있으니 확인하시기
								바랍니다.</p>
						</div>
						<div class="popin-separator"></div>

						<div class="clearfix popin-footer">
							<button type="button"
								id="potential-duplicate-order-warning-close"
								class="btn-container btn button-primary   dialog__ok-button">
								<span class="button__content"> 확인</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</main>
		<!-- *************************하단************************* -->

		<c:import url="../footer.jsp"></c:import>

		<!-- ****************************************************** -->

		<!-- 
<script src="https://www.nespresso.com/_ui/generated/responsiveCheckout.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
    </div>
<div id="full-page-loader" class="display-none dark-overlay full-page-loader" tabindex="-1">

        <div class="loader-outer">
            <div class="loader-inner">
                <img src="https://www.nespresso.com/_ui/img/ajax-loader-dark-bg.gif" alt="로딩">
            </div>
        </div>
    </div>

    <div id="full-page-loader-discreet" class="display-none overlay full-page-loader"></div>

    <span id="a11y-notification-area" class="visually-hidden" aria-live="assertive" aria-relevant="text" role="alert"></span>

    <script src="https://www.nespresso.com/_ui/generated/responsiveHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" defer=""></script>
    <script>
        config.pageReloadOnCartUpdate = true;
    </script>

    "
    <script type="text/javascript">
    var _sift = window._sift = window._sift || [];
    _sift.push(['_setAccount', '6c28ac92f0']);
    _sift.push(['_setUserId', '4909122']);
    _sift.push(['_setSessionId', 'c0d86a244860d9e2d9d2041d74727a9a']);
    _sift.push(['_trackPageview']);

    (function() {
        function ls() {
            var e = document.createElement('script');
            e.src = 'https://cdn.siftscience.com/s.js';
            document.body.appendChild(e);
        }
            window.addEventListener('load', ls, false);
    })();
</script><script src="https://www.nespresso.com/_ui/generated/angular.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
    <script src="https://www.nespresso.com/_ui/generated/checkout.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" defer=""></script><script src="https://www.nespresso.com/_ui/generated/allFooter.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" defer=""></script>
    <div id="gdpr-consent-lightbox" class="gdpr-consent-lightbox" style="display: none;">
        <div class="popin">
            <main id="gdpr-consent-lightbox__content" class="gdpr-consent-lightbox__content" data-content-url="/kr/ko/view/FreeHtmlContentBlockController?componentUid=gdprConsentLightboxContent">
                    </main>
            <footer class="gdpr-consent-lightbox__controls">
                <div class="gdpr-consent-lightbox__controls-container">
                    <button class="gdpr-consent-lightbox__change-preferences" data-my-account-url="/kr/ko/myaccount/showMySubscriptions ">
                        <span aria-hidden="true">
                            네스프로세소 소식 수신 - 설정 변경</span>
                        <span class="visually-hidden">
                            이 버튼을 누르시면 현재 페이지가 닫히고, 정보 수신 항목 설정 메뉴로 이동하게 됩니다.</span>
                    </button>
                    <button class="gdpr-consent-lightbox__keep-preferences">
                        <span aria-hidden="true">
                            네스프로세소 소식 수신 - 설정 유지</span>
                        <span class="visually-hidden">
                            이 버튼을 누르시면, 네스프레소 소식 수신 동의와 관련하여 고객님이 기존 셋팅하신 내용대로 저장되고, 현재 페이지가 닫힙니다.</span>
                    </button>
                </div>
            </footer>
        </div>
    </div>
<div id="simplelightbox" class="crema-ui-container "></div>
<script>
              window.ui = window.ui || [];
              window.ui.push({"id":"simplelightbox","module":"SimpleLightbox","configuration":{"translations":{"lightboxmodule.a11y.button.close":"닫기"},"props":{},"eCommerceData":null}});
            </script><script type="text/javascript" id="">_mpulsePageGroup=function(c){var a=c.page.pageInfo.breadcrumbUID.split(":"),b=function(){if("customEvent"===google_tag_manager["GTM-WJGQVL"].macro(259)&&"other"!==google_tag_manager["GTM-WJGQVL"].macro(260))return google_tag_manager["GTM-WJGQVL"].macro(261);switch(a[0]){case "account":return a[0]+"-"+(a[1]||"other");case "checkister":return a[0]+"-"+a[3];case "cart":case "shopping bag":return"checkout-shopping-bag";case "multi-step-checkout-summary-page":return"checkout-multi-step-checkout-summary-page";case "checkout":return"shopping bag"===a[3]?"checkout-shopping-bag":
a[0]+"-"+a[3];case "shop":a[0]="catalog";case "catalog":return/plp|pdp/.test(a[3])?/_plp/.test(c.page.pageInfo.pageName)?a[0]+"-plp":a[0]+"-pdp":a[0]+"-other";case "guest-checkout":return a[0]+"-"+a[3];case "login":return a[0]+"-"+a[3];case "registration-personal-info-page":return"registration";case "store-locator":return"locator";case "services-site-internet-nespresso":return"services";case "personal-info-page":case "brand":case "content":case "country-language":case "home":case "legal":case "locator":case "local-page":case "club":case "maintenance":case "registration":case "landing-page":case "services":case "standalone":case "support":return a[0];
case "page":return"unsubscribe"===a[3]?"page-unsubscribe":a[0]+"-"+a[1]}return"other"}();b=b.replace(/[^0-9a-z-]/g,"-").replace(/-+/g,"-");b=b.split("-");b[0]==b[1]&&(b=b.slice(1));return b.join("-")};mpulsePageGroup=function(){try{return _mpulsePageGroup(padl)}catch(c){}};mpulseBreadcrumbUIDGetter=function(c){return function(){try{return padl.page.pageInfo.breadcrumbUID.split(":")[c]}catch(a){}}};mpulseBreadcrumbUIDType=mpulseBreadcrumbUIDGetter(0);mpulseBreadcrumbUIDCategory=mpulseBreadcrumbUIDGetter(1);
mpulseBreadcrumbUIDSubCategory=mpulseBreadcrumbUIDGetter(2);mpulseBreadcrumbUIDName=mpulseBreadcrumbUIDGetter(3);mpulseBreadcrumbUIDTechnology=mpulseBreadcrumbUIDGetter(4);</script><script type="text/javascript" id="">!function(n,p,F,x,G,k){try{ah={version:G=56};var R="length",H="script",t="cookie",y="analytics",I="ah_console_output";k=[];var S=k.map,J=k.reduce,z=k.slice,u=p.console||{},e=document,K=decodeURIComponent,v=encodeURIComponent;k=["Testing","Production"];var L=e.getElementsByTagName(H)[0],T=L.parentNode,f=location.hostname,M="true"===google_tag_manager["GTM-WJGQVL"].macro(262),N=/\.nespresso\.com$/,A=n.keys,q=ah.options={},w=p.localStorage;["debug","log","info","warn","error"].forEach(function(a,b,c){b=u[a]||u.log;c=["[ah"+
(u[a]?"":":"+a)+"]"];ah[a]=function(){var d=arguments;b&&q.output&&b.apply(0,c.concat(z.call(d)));return d[d[R]-1]}},{});!function(a,b){b=ah.output=function(c){c=null==c?!q.output:c;q.output=1;ah.info("Output:",c?"enabled":"disabled");q.output=c;w&&(w[I]=c)};a&&(q.output=1,ah.info("Analytics Helpers",G),b("true"===a))}(w&&w[I]);if(N.test(f)){f=f.replace(N,"");var O="www"===f;O!==M&&ah.error(k[+M],"container running on",k[+O],"environment")}var U=ah.extend=n.assign||function(a){a&&z.call(arguments,
1).forEach(function(b){b&&A(b).forEach(function(c){a[c]=b[c]})});return a},V=ah.entries=n.entries||function(a){return A(a).map(function(b){return[b,a[b]]})};ah.join=function(a,b){return a.join.call(a,b)};ah.map=function(a,b){return S.call(a,b)};ah.reduce=function(a,b,c){return J.call(a,b,c)};var P=ah.wrap=function(a,b,c){c=a instanceof Function?a:b&&b[a];c instanceof Function||ah.error("Wrap:","Invalid function",[a,b,c]);return function(){try{return c.apply(b||this,arguments)}catch(d){ah.error(d)}}};
ah.unique=function(a,b){return A(a.reduce(function(c,d){if(d||b)c[d]=1;return c},{}))};var W=ah.params=function(){return[].concat.apply([],arguments).reduce(function(a,b){if(b&&"0"!==b)try{U(a,b instanceof n?b:F("("+b+")"))}catch(c){ah.error(c,"\nParams: Failed to merge",b)}return a},{})},B=ah.url=function(a){return a+X(W(z.call(arguments,1)),/(\?|&)$/.test(a)?"":/\?/.test(a)?"\x26":"?")},l=/^((\/(mobile|pro|mosaic|myoffice))?\/[a-z]{2})(\/|$)/i.exec(location.pathname);ah.path=l=ah[l?"log":"warn"]("Website path:",
(l&&l[1]||"")+"/");ah[t]=function(a,b,c,d,g){a=v(a);if(null===b)e[t]=a+"\x3d; expires\x3dThu, 01 Jan 1970 00:00:00 UTC; path\x3d"+(c||d||l);else{if(null==b)return(a=e[t].match("(^|;) *"+a+"\x3d([^;]*)(;|$)"))&&a[2]&&K(a[2]);g=new Date;g.setTime(g.getTime()+(c?864E5*c:31536E6));e[t]=a+"\x3d"+v(b)+";expires\x3d"+g.toUTCString()+";path\x3d"+(d||l);return b}};f=function(a,b){this.storage=b;this.keyName=a;this.init(this.keyName)};f.prototype.init=function(){var a=this.storage.getItem(this.keyName);this.data=
a=a?JSON.parse(a):{}};f.prototype.get=function(a,b){void 0===b&&(b="");return void 0===this.data[a]?this.data[a]=b:this.data[a]};f.prototype.set=function(a){for(var b in a)this.data[b]=a[b]};f.prototype.save=function(){this.storage.setItem(this.keyName,JSON.stringify(this.data))};ah.sessStorage=new f("_gtm",sessionStorage);ah.locStorage=new f("_gtm",localStorage);var X=ah.query=function(a,b){if(a instanceof n)a=V(a).reduce(function(c,d){null!=d[1]&&c.push(d.map(v).join("\x3d"));return c},[]),a=a.length?
"?"+a.join("\x26"):"";else if(null==b&&(b=location.search),a=b.match("(\\?|\x26)"+v(a)+"\x3d([^\x26]*)(\x26|$)"))a=a[2]&&K(a[2]);return a};ah["try"]=function(a,b){try{return F(2>arguments.length?a:"arguments[0]"+b)}catch(c){}};x=J.call(x,function(a,b,c,d){c%2&&(a[d[c-1]]=b);return a},{});ah.sane_uid=function(a){return null==a?"":a.toString().replace(/[\u0300-\u036f]/g,"").replace(/[\u0301\u0060]/gi,"").replace(/[^\u0000-\u007E]/g,function(b){return x[b]||b}).replace(/([a-z])([A-Z])|(\D)(\d)|(\d)(\D)/g,
function(b,c,d,g,m,C,D){return(c||g||C)+"-"+(d||m||D)}).toLowerCase().replace(/b-2(b|c)/g,"b2$1").replace(/[^a-z0-9]+/g,"-").replace(/^-+|-+$/g,"")};ah.load=function(){var a=e.createElement(H);a.async=!0;a.className=y;a.src=B.apply(0,arguments);T.insertBefore(a,L);return a};ah.pixel=function(){var a=e.createElement("img");a.src=B.apply(0,arguments);a.height=1;a.width=1;a.style.display="none";a.className=y;e.body.appendChild(a)};ah.container=function(){var a=e.createElement("iframe");a.src=B.apply(0,
arguments);a.height=1;a.width=1;a.frameBorder=0;a.style.display="none";a.className=y+" dtmiframe";e.body.appendChild(a)};ah.clickListener=function(a,b){var c=null,d="MutationObserver"in window,g=function(){var m=!1,C=document.body,D={childList:!0,subtree:!0},Y=function(E){m=!1;for(var Q=0;Q<E.length&&!(m=document.body.querySelector(a));Q++);m&&(E=m,c&&c.disconnect(),b(E))};c=new MutationObserver(Y);c.observe(C,D)};document.body.querySelector(a)?b(document.body.querySelector(a)):d&&g()};ah.optOut=
function(){try{p.evidon.notice.showOptions()}catch(a){}};var h=ah.ready=function(a){a=P(a);h.wait?h.wait.push(a):a()},r=P(function(){this!==h&&(e.removeEventListener("DOMContentLoaded",r),p.removeEventListener("load",r));h.wait&&(ah.log("DOM: ready"),h.wait.forEach(function(a){a()}),delete h.wait)});"complete"===e.readyState||"loading"!==e.readyState&&!e.documentElement.doScroll?(ah.log("DOM: previously ready"),setTimeout(r.bind(h))):(ah.log("DOM: waiting"),h.wait=[],e.addEventListener("DOMContentLoaded",
r),p.addEventListener("load",r))}catch(a){ah.fatal=a,(f=window.console&&u.error)&&f("[ah] Fatal error:",a)}}(Object,window,eval,"\u24b6A\uff21A\u00c0A\u00c1A\u00c2A\u1ea6A\u1ea4A\u1eaaA\u1ea8A\u00c3A\u0100A\u0102A\u1eb0A\u1eaeA\u1eb4A\u1eb2A\u0226A\u01e0A\u00c4A\u01deA\u1ea2A\u00c5A\u01faA\u01cdA\u0200A\u0202A\u1ea0A\u1eacA\u1eb6A\u1e00A\u0104A\u023aA\u2c6fA\ua732AA\u00c6AE\u01fcAE\u01e2AE\ua734AO\ua736AU\ua738AV\ua73aAV\ua73cAY\u24b7B\uff22B\u1e02B\u1e04B\u1e06B\u0243B\u0182B\u0181B\u24b8C\uff23C\u0106C\u0108C\u010aC\u010cC\u00c7C\u1e08C\u0187C\u023bC\ua73eC\u24b9D\uff24D\u1e0aD\u010eD\u1e0cD\u1e10D\u1e12D\u1e0eD\u0110D\u018bD\u018aD\u0189D\ua779D\u00d0D\u01f1DZ\u01c4DZ\u01f2Dz\u01c5Dz\u24baE\uff25E\u00c8E\u00c9E\u00caE\u1ec0E\u1ebeE\u1ec4E\u1ec2E\u1ebcE\u0112E\u1e14E\u1e16E\u0114E\u0116E\u00cbE\u1ebaE\u011aE\u0204E\u0206E\u1eb8E\u1ec6E\u0228E\u1e1cE\u0118E\u1e18E\u1e1aE\u0190E\u018eE\u24bbF\uff26F\u1e1eF\u0191F\ua77bF\u24bcG\uff27G\u01f4G\u011cG\u1e20G\u011eG\u0120G\u01e6G\u0122G\u01e4G\u0193G\ua7a0G\ua77dG\ua77eG\u24bdH\uff28H\u0124H\u1e22H\u1e26H\u021eH\u1e24H\u1e28H\u1e2aH\u0126H\u2c67H\u2c75H\ua78dH\u24beI\uff29I\u00ccI\u00cdI\u00ceI\u0128I\u012aI\u012cI\u0130I\u00cfI\u1e2eI\u1ec8I\u01cfI\u0208I\u020aI\u1ecaI\u012eI\u1e2cI\u0197I\u24bfJ\uff2aJ\u0134J\u0248J\u24c0K\uff2bK\u1e30K\u01e8K\u1e32K\u0136K\u1e34K\u0198K\u2c69K\ua740K\ua742K\ua744K\ua7a2K\u24c1L\uff2cL\u013fL\u0139L\u013dL\u1e36L\u1e38L\u013bL\u1e3cL\u1e3aL\u0141L\u023dL\u2c62L\u2c60L\ua748L\ua746L\ua780L\u01c7LJ\u01c8Lj\u24c2M\uff2dM\u1e3eM\u1e40M\u1e42M\u2c6eM\u019cM\u24c3N\uff2eN\u01f8N\u0143N\u00d1N\u1e44N\u0147N\u1e46N\u0145N\u1e4aN\u1e48N\u0220N\u019dN\ua790N\ua7a4N\u01caNJ\u01cbNj\u24c4O\uff2fO\u00d2O\u00d3O\u00d4O\u1ed2O\u1ed0O\u1ed6O\u1ed4O\u00d5O\u1e4cO\u022cO\u1e4eO\u014cO\u1e50O\u1e52O\u014eO\u022eO\u0230O\u00d6O\u022aO\u1eceO\u0150O\u01d1O\u020cO\u020eO\u01a0O\u1edcO\u1edaO\u1ee0O\u1edeO\u1ee2O\u1eccO\u1ed8O\u01eaO\u01ecO\u00d8O\u01feO\u0186O\u019fO\ua74aO\ua74cO\u01a2OI\ua74eOO\u0222OU\u008cOE\u0152OE\u009coe\u0153oe\u24c5P\uff30P\u1e54P\u1e56P\u01a4P\u2c63P\ua750P\ua752P\ua754P\u24c6Q\uff31Q\ua756Q\ua758Q\u024aQ\u24c7R\uff32R\u0154R\u1e58R\u0158R\u0210R\u0212R\u1e5aR\u1e5cR\u0156R\u1e5eR\u024cR\u2c64R\ua75aR\ua7a6R\ua782R\u24c8S\uff33S\u1e9eS\u015aS\u1e64S\u015cS\u1e60S\u0160S\u1e66S\u1e62S\u1e68S\u0218S\u015eS\u2c7eS\ua7a8S\ua784S\u24c9T\uff34T\u1e6aT\u0164T\u1e6cT\u021aT\u0162T\u1e70T\u1e6eT\u0166T\u01acT\u01aeT\u023eT\ua786T\ua728TZ\u24caU\uff35U\u00d9U\u00daU\u00dbU\u0168U\u1e78U\u016aU\u1e7aU\u016cU\u00dcU\u01dbU\u01d7U\u01d5U\u01d9U\u1ee6U\u016eU\u0170U\u01d3U\u0214U\u0216U\u01afU\u1eeaU\u1ee8U\u1eeeU\u1eecU\u1ef0U\u1ee4U\u1e72U\u0172U\u1e76U\u1e74U\u0244U\u24cbV\uff36V\u1e7cV\u1e7eV\u01b2V\ua75eV\u0245V\ua760VY\u24ccW\uff37W\u1e80W\u1e82W\u0174W\u1e86W\u1e84W\u1e88W\u2c72W\u24cdX\uff38X\u1e8aX\u1e8cX\u24ceY\uff39Y\u1ef2Y\u00ddY\u0176Y\u1ef8Y\u0232Y\u1e8eY\u0178Y\u1ef6Y\u1ef4Y\u01b3Y\u024eY\u1efeY\u24cfZ\uff3aZ\u0179Z\u1e90Z\u017bZ\u017dZ\u1e92Z\u1e94Z\u01b5Z\u0224Z\u2c7fZ\u2c6bZ\ua762Z\u24d0a\uff41a\u1e9aa\u00e0a\u00e1a\u00e2a\u1ea7a\u1ea5a\u1eaba\u1ea9a\u00e3a\u0101a\u0103a\u1eb1a\u1eafa\u1eb5a\u1eb3a\u0227a\u01e1a\u00e4a\u01dfa\u1ea3a\u00e5a\u01fba\u01cea\u0201a\u0203a\u1ea1a\u1eada\u1eb7a\u1e01a\u0105a\u2c65a\u0250a\ua733aa\u00e6ae\u01fdae\u01e3ae\ua735ao\ua737au\ua739av\ua73bav\ua73day\u24d1b\uff42b\u1e03b\u1e05b\u1e07b\u0180b\u0183b\u0253b\u24d2c\uff43c\u0107c\u0109c\u010bc\u010dc\u00e7c\u1e09c\u0188c\u023cc\ua73fc\u2184c\u24d3d\uff44d\u1e0bd\u010fd\u1e0dd\u1e11d\u1e13d\u1e0fd\u0111d\u018cd\u0256d\u0257d\ua77ad\u01f3dz\u01c6dz\u24d4e\uff45e\u00e8e\u00e9e\u00eae\u1ec1e\u1ebfe\u1ec5e\u1ec3e\u1ebde\u0113e\u1e15e\u1e17e\u0115e\u0117e\u00ebe\u1ebbe\u011be\u0205e\u0207e\u1eb9e\u1ec7e\u0229e\u1e1de\u0119e\u1e19e\u1e1be\u0247e\u025be\u01dde\u24d5f\uff46f\u1e1ff\u0192f\ua77cf\u24d6g\uff47g\u01f5g\u011dg\u1e21g\u011fg\u0121g\u01e7g\u0123g\u01e5g\u0260g\ua7a1g\u1d79g\ua77fg\u24d7h\uff48h\u0125h\u1e23h\u1e27h\u021fh\u1e25h\u1e29h\u1e2bh\u1e96h\u0127h\u2c68h\u2c76h\u0265h\u0195hv\u24d8i\uff49i\u00eci\u00edi\u00eei\u0129i\u012bi\u012di\u00efi\u1e2fi\u1ec9i\u01d0i\u0209i\u020bi\u1ecbi\u012fi\u1e2di\u0268i\u0131i\u24d9j\uff4aj\u0135j\u01f0j\u0249j\u24dak\uff4bk\u1e31k\u01e9k\u1e33k\u0137k\u1e35k\u0199k\u2c6ak\ua741k\ua743k\ua745k\ua7a3k\u24dbl\uff4cl\u0140l\u013al\u013el\u1e37l\u1e39l\u013cl\u1e3dl\u1e3bl\u017fl\u0142l\u019al\u026bl\u2c61l\ua749l\ua781l\ua747l\u01c9lj\u24dcm\uff4dm\u1e3fm\u1e41m\u1e43m\u0271m\u026fm\u24ddn\uff4en\u01f9n\u0144n\u00f1n\u1e45n\u0148n\u1e47n\u0146n\u1e4bn\u1e49n\u019en\u0272n\u0149n\ua791n\ua7a5n\u01ccnj\u24deo\uff4fo\u00f2o\u00f3o\u00f4o\u1ed3o\u1ed1o\u1ed7o\u1ed5o\u00f5o\u1e4do\u022do\u1e4fo\u014do\u1e51o\u1e53o\u014fo\u022fo\u0231o\u00f6o\u022bo\u1ecfo\u0151o\u01d2o\u020do\u020fo\u01a1o\u1eddo\u1edbo\u1ee1o\u1edfo\u1ee3o\u1ecdo\u1ed9o\u01ebo\u01edo\u00f8o\u01ffo\u0254o\ua74bo\ua74do\u0275o\u01a3oi\u0223ou\ua74foo\u24dfp\uff50p\u1e55p\u1e57p\u01a5p\u1d7dp\ua751p\ua753p\ua755p\u24e0q\uff51q\u024bq\ua757q\ua759q\u24e1r\uff52r\u0155r\u1e59r\u0159r\u0211r\u0213r\u1e5br\u1e5dr\u0157r\u1e5fr\u024dr\u027dr\ua75br\ua7a7r\ua783r\u24e2s\uff53s\u00dfss\u015bs\u1e65s\u015ds\u1e61s\u0161s\u1e67s\u1e63s\u1e69s\u0219s\u015fs\u023fs\ua7a9s\ua785s\u1e9bs\u24e3t\uff54t\u1e6bt\u1e97t\u0165t\u1e6dt\u021bt\u0163t\u1e71t\u1e6ft\u0167t\u01adt\u0288t\u2c66t\ua787t\ua729tz\u24e4u\uff55u\u00f9u\u00fau\u00fbu\u0169u\u1e79u\u016bu\u1e7bu\u016du\u00fcu\u01dcu\u01d8u\u01d6u\u01dau\u1ee7u\u016fu\u0171u\u01d4u\u0215u\u0217u\u01b0u\u1eebu\u1ee9u\u1eefu\u1eedu\u1ef1u\u1ee5u\u1e73u\u0173u\u1e77u\u1e75u\u0289u\u24e5v\uff56v\u1e7dv\u1e7fv\u028bv\ua75fv\u028cv\ua761vy\u24e6w\uff57w\u1e81w\u1e83w\u0175w\u1e87w\u1e85w\u1e98w\u1e89w\u2c73w\u24e7x\uff58x\u1e8bx\u1e8dx\u24e8y\uff59y\u1ef3y\u00fdy\u0177y\u1ef9y\u0233y\u1e8fy\u00ffy\u1ef7y\u1e99y\u1ef5y\u01b4y\u024fy\u1effy\u24e9z\uff5az\u017az\u1e91z\u017cz\u017ez\u1e93z\u1e95z\u01b6z\u0225z\u0240z\u2c6cz\ua763z");</script><script type="text/javascript" id="">ah.wrap(function(){ah.ga={customTask:ah.wrap(function(p,u,v){return ah.wrap(function(c){var w=c.get("sendHitTask"),e=new Date;c.set("dimension50",c.get("clientId"));c.set("dimension163",60*e.getTimezoneOffset()+e/1E3);c.set("sendHitTask",ah.wrap(function(l){function f(d,b){var a=g?"gaLastNotice":"gaNotice",h=d.name?""+d.name:0,f="GA Notice L"+(e?5:g?4:3-b);h=h?h[0].toUpperCase()+h.substr(1,23):"Misc";a={event:a,eventRaisedBy:"GTM",eventCategory:"GTM Monitoring",eventAction:"GA Notice",eventLabel:f+
" - "+h,gaEvent:p,gaEventUID:u,gaException:d,gaModel:c,gaOrderID:v,gaSendModel:l,gaOverload1:r,gaOverload2:q,gaOverload3:t,gaPayLoad1:m,gaPayLoad2:k,gaPayLoad3:n,nonInteraction:1};(g?ah.error:ah.warn)("GA: Request error",a);ah.ga.errors.push(a);e||gtmDataObject.push(a)}var g=/^gaError(Fatal)?$/.test(p),e="gaLastNotice"===p,b=l.get("hitPayload"),m=g?b.replace(/(^|&)(c(d|g|m)\d+)=[^&]*/g,function(d,b,a){return"cd73"===a?d:""}):g?b.replace(/(^|&)cd(\d+)\d+=[^&]*/g,function(b,c,a){return 29>a||50==a||
73==a||74==a||139==a?b:""}):b,r=8192<m.length,k=m.replace(/(^|&)pr\d+cd(75|78|79|80|81|87|89|130)=[^&]*/g,""),q=8192<k.length,n=q?k.replace(/(^|&)pr\d+cd\d+=[^&]*/g,""):k,t=8192<n.length;b=m.length+"-"+k.length+"-"+n.length+"-8192";if(t)f({message:b,name:"len"},0);else{r&&f({message:b,name:"len"},2-q);try{l.set("hitPayload",n,!0),w(l)}catch(d){f(d,0)}}}))})}),errors:[]}})();</script><script type="text/javascript" id="">ah.wrap(function(d,c,e){function f(a){return(a=d.cookie.match("(^|;)\\s*"+e+a+"\x3d([^;]+)"))&&decodeURIComponent(a[2])}function b(a,b,c){d.cookie=e+a+"\x3d"+encodeURIComponent(b||"")+";path\x3d/;expires\x3d"+(new Date(c?Date.now()+c:0)).toUTCString()}f(0)&&b(1,b(0));ah.affiliation=function(a){return 0===a?b(0,1,c):a?b(1,a,c):f(1)}})(document,2592E6,"gtm_aff_");</script><script type="text/javascript" id="">ah.wrap(function(e){ah.sanitize=ah.wrap(function(a,b,c){var d=a&&a.map;b=b||0;a?!0===b?b="|":d||b.trim||(a=a.toString().trim().replace(/[\u0300-\u036f]/g,"").replace(/[\u0301\u0060]/gi,"").replace(/[^\u0000-\u007E]/g,function(a){return e[a]||a}).replace(/[^a-z0-9]+/gi,"-").replace(/^-+|-+$/g,""),!0===c?a=a.toUpperCase():!1!==c&&(a=a.toLowerCase()),b=0):a="";if(a&&b||d)d||(a=a.split(/\|+/)),a=a.reduce(function(a,b){(b=b&&ah.sanitize(b,0,c))&&a.push(b);return a},[]),b&&(a=a.join(b));return a})})({"\u24b6":"A",
"\uff21":"A","\u00c0":"A","\u00c1":"A","\u00c2":"A","\u1ea6":"A","\u1ea4":"A","\u1eaa":"A","\u1ea8":"A","\u00c3":"A","\u0100":"A","\u0102":"A","\u1eb0":"A","\u1eae":"A","\u1eb4":"A","\u1eb2":"A","\u0226":"A","\u01e0":"A","\u00c4":"A","\u01de":"A","\u1ea2":"A","\u00c5":"A","\u01fa":"A","\u01cd":"A","\u0200":"A","\u0202":"A","\u1ea0":"A","\u1eac":"A","\u1eb6":"A","\u1e00":"A","\u0104":"A","\u023a":"A","\u2c6f":"A","\ua732":"AA","\u00c6":"AE","\u01fc":"AE","\u01e2":"AE","\ua734":"AO","\ua736":"AU","\ua738":"AV",
"\ua73a":"AV","\ua73c":"AY","\u24b7":"B","\uff22":"B","\u1e02":"B","\u1e04":"B","\u1e06":"B","\u0243":"B","\u0182":"B","\u0181":"B","\u24b8":"C","\uff23":"C","\u0106":"C","\u0108":"C","\u010a":"C","\u010c":"C","\u00c7":"C","\u1e08":"C","\u0187":"C","\u023b":"C","\ua73e":"C","\u24b9":"D","\uff24":"D","\u1e0a":"D","\u010e":"D","\u1e0c":"D","\u1e10":"D","\u1e12":"D","\u1e0e":"D","\u0110":"D","\u018b":"D","\u018a":"D","\u0189":"D","\ua779":"D","\u00d0":"D","\u01f1":"DZ","\u01c4":"DZ","\u01f2":"Dz","\u01c5":"Dz",
"\u24ba":"E","\uff25":"E","\u00c8":"E","\u00c9":"E","\u00ca":"E","\u1ec0":"E","\u1ebe":"E","\u1ec4":"E","\u1ec2":"E","\u1ebc":"E","\u0112":"E","\u1e14":"E","\u1e16":"E","\u0114":"E","\u0116":"E","\u00cb":"E","\u1eba":"E","\u011a":"E","\u0204":"E","\u0206":"E","\u1eb8":"E","\u1ec6":"E","\u0228":"E","\u1e1c":"E","\u0118":"E","\u1e18":"E","\u1e1a":"E","\u0190":"E","\u018e":"E","\u24bb":"F","\uff26":"F","\u1e1e":"F","\u0191":"F","\ua77b":"F","\u24bc":"G","\uff27":"G","\u01f4":"G","\u011c":"G","\u1e20":"G",
"\u011e":"G","\u0120":"G","\u01e6":"G","\u0122":"G","\u01e4":"G","\u0193":"G","\ua7a0":"G","\ua77d":"G","\ua77e":"G","\u24bd":"H","\uff28":"H","\u0124":"H","\u1e22":"H","\u1e26":"H","\u021e":"H","\u1e24":"H","\u1e28":"H","\u1e2a":"H","\u0126":"H","\u2c67":"H","\u2c75":"H","\ua78d":"H","\u24be":"I","\uff29":"I","\u00cc":"I","\u00cd":"I","\u00ce":"I","\u0128":"I","\u012a":"I","\u012c":"I","\u0130":"I","\u00cf":"I","\u1e2e":"I","\u1ec8":"I","\u01cf":"I","\u0208":"I","\u020a":"I","\u1eca":"I","\u012e":"I",
"\u1e2c":"I","\u0197":"I","\u24bf":"J","\uff2a":"J","\u0134":"J","\u0248":"J","\u24c0":"K","\uff2b":"K","\u1e30":"K","\u01e8":"K","\u1e32":"K","\u0136":"K","\u1e34":"K","\u0198":"K","\u2c69":"K","\ua740":"K","\ua742":"K","\ua744":"K","\ua7a2":"K","\u24c1":"L","\uff2c":"L","\u013f":"L","\u0139":"L","\u013d":"L","\u1e36":"L","\u1e38":"L","\u013b":"L","\u1e3c":"L","\u1e3a":"L","\u0141":"L","\u023d":"L","\u2c62":"L","\u2c60":"L","\ua748":"L","\ua746":"L","\ua780":"L","\u01c7":"LJ","\u01c8":"Lj","\u24c2":"M",
"\uff2d":"M","\u1e3e":"M","\u1e40":"M","\u1e42":"M","\u2c6e":"M","\u019c":"M","\u24c3":"N","\uff2e":"N","\u01f8":"N","\u0143":"N","\u00d1":"N","\u1e44":"N","\u0147":"N","\u1e46":"N","\u0145":"N","\u1e4a":"N","\u1e48":"N","\u0220":"N","\u019d":"N","\ua790":"N","\ua7a4":"N","\u01ca":"NJ","\u01cb":"Nj","\u24c4":"O","\uff2f":"O","\u00d2":"O","\u00d3":"O","\u00d4":"O","\u1ed2":"O","\u1ed0":"O","\u1ed6":"O","\u1ed4":"O","\u00d5":"O","\u1e4c":"O","\u022c":"O","\u1e4e":"O","\u014c":"O","\u1e50":"O","\u1e52":"O",
"\u014e":"O","\u022e":"O","\u0230":"O","\u00d6":"O","\u022a":"O","\u1ece":"O","\u0150":"O","\u01d1":"O","\u020c":"O","\u020e":"O","\u01a0":"O","\u1edc":"O","\u1eda":"O","\u1ee0":"O","\u1ede":"O","\u1ee2":"O","\u1ecc":"O","\u1ed8":"O","\u01ea":"O","\u01ec":"O","\u00d8":"O","\u01fe":"O","\u0186":"O","\u019f":"O","\ua74a":"O","\ua74c":"O","\u01a2":"OI","\ua74e":"OO","\u0222":"OU","\u008c":"OE","\u0152":"OE","\u009c":"oe","\u0153":"oe","\u24c5":"P","\uff30":"P","\u1e54":"P","\u1e56":"P","\u01a4":"P",
"\u2c63":"P","\ua750":"P","\ua752":"P","\ua754":"P","\u24c6":"Q","\uff31":"Q","\ua756":"Q","\ua758":"Q","\u024a":"Q","\u24c7":"R","\uff32":"R","\u0154":"R","\u1e58":"R","\u0158":"R","\u0210":"R","\u0212":"R","\u1e5a":"R","\u1e5c":"R","\u0156":"R","\u1e5e":"R","\u024c":"R","\u2c64":"R","\ua75a":"R","\ua7a6":"R","\ua782":"R","\u24c8":"S","\uff33":"S","\u1e9e":"S","\u015a":"S","\u1e64":"S","\u015c":"S","\u1e60":"S","\u0160":"S","\u1e66":"S","\u1e62":"S","\u1e68":"S","\u0218":"S","\u015e":"S","\u2c7e":"S",
"\ua7a8":"S","\ua784":"S","\u24c9":"T","\uff34":"T","\u1e6a":"T","\u0164":"T","\u1e6c":"T","\u021a":"T","\u0162":"T","\u1e70":"T","\u1e6e":"T","\u0166":"T","\u01ac":"T","\u01ae":"T","\u023e":"T","\ua786":"T","\ua728":"TZ","\u24ca":"U","\uff35":"U","\u00d9":"U","\u00da":"U","\u00db":"U","\u0168":"U","\u1e78":"U","\u016a":"U","\u1e7a":"U","\u016c":"U","\u00dc":"U","\u01db":"U","\u01d7":"U","\u01d5":"U","\u01d9":"U","\u1ee6":"U","\u016e":"U","\u0170":"U","\u01d3":"U","\u0214":"U","\u0216":"U","\u01af":"U",
"\u1eea":"U","\u1ee8":"U","\u1eee":"U","\u1eec":"U","\u1ef0":"U","\u1ee4":"U","\u1e72":"U","\u0172":"U","\u1e76":"U","\u1e74":"U","\u0244":"U","\u24cb":"V","\uff36":"V","\u1e7c":"V","\u1e7e":"V","\u01b2":"V","\ua75e":"V","\u0245":"V","\ua760":"VY","\u24cc":"W","\uff37":"W","\u1e80":"W","\u1e82":"W","\u0174":"W","\u1e86":"W","\u1e84":"W","\u1e88":"W","\u2c72":"W","\u24cd":"X","\uff38":"X","\u1e8a":"X","\u1e8c":"X","\u24ce":"Y","\uff39":"Y","\u1ef2":"Y","\u00dd":"Y","\u0176":"Y","\u1ef8":"Y","\u0232":"Y",
"\u1e8e":"Y","\u0178":"Y","\u1ef6":"Y","\u1ef4":"Y","\u01b3":"Y","\u024e":"Y","\u1efe":"Y","\u24cf":"Z","\uff3a":"Z","\u0179":"Z","\u1e90":"Z","\u017b":"Z","\u017d":"Z","\u1e92":"Z","\u1e94":"Z","\u01b5":"Z","\u0224":"Z","\u2c7f":"Z","\u2c6b":"Z","\ua762":"Z","\u24d0":"a","\uff41":"a","\u1e9a":"a","\u00e0":"a","\u00e1":"a","\u00e2":"a","\u1ea7":"a","\u1ea5":"a","\u1eab":"a","\u1ea9":"a","\u00e3":"a","\u0101":"a","\u0103":"a","\u1eb1":"a","\u1eaf":"a","\u1eb5":"a","\u1eb3":"a","\u0227":"a","\u01e1":"a",
"\u00e4":"a","\u01df":"a","\u1ea3":"a","\u00e5":"a","\u01fb":"a","\u01ce":"a","\u0201":"a","\u0203":"a","\u1ea1":"a","\u1ead":"a","\u1eb7":"a","\u1e01":"a","\u0105":"a","\u2c65":"a","\u0250":"a","\ua733":"aa","\u00e6":"ae","\u01fd":"ae","\u01e3":"ae","\ua735":"ao","\ua737":"au","\ua739":"av","\ua73b":"av","\ua73d":"ay","\u24d1":"b","\uff42":"b","\u1e03":"b","\u1e05":"b","\u1e07":"b","\u0180":"b","\u0183":"b","\u0253":"b","\u24d2":"c","\uff43":"c","\u0107":"c","\u0109":"c","\u010b":"c","\u010d":"c",
"\u00e7":"c","\u1e09":"c","\u0188":"c","\u023c":"c","\ua73f":"c","\u2184":"c","\u24d3":"d","\uff44":"d","\u1e0b":"d","\u010f":"d","\u1e0d":"d","\u1e11":"d","\u1e13":"d","\u1e0f":"d","\u0111":"d","\u018c":"d","\u0256":"d","\u0257":"d","\ua77a":"d","\u01f3":"dz","\u01c6":"dz","\u24d4":"e","\uff45":"e","\u00e8":"e","\u00e9":"e","\u00ea":"e","\u1ec1":"e","\u1ebf":"e","\u1ec5":"e","\u1ec3":"e","\u1ebd":"e","\u0113":"e","\u1e15":"e","\u1e17":"e","\u0115":"e","\u0117":"e","\u00eb":"e","\u1ebb":"e","\u011b":"e",
"\u0205":"e","\u0207":"e","\u1eb9":"e","\u1ec7":"e","\u0229":"e","\u1e1d":"e","\u0119":"e","\u1e19":"e","\u1e1b":"e","\u0247":"e","\u025b":"e","\u01dd":"e","\u24d5":"f","\uff46":"f","\u1e1f":"f","\u0192":"f","\ua77c":"f","\u24d6":"g","\uff47":"g","\u01f5":"g","\u011d":"g","\u1e21":"g","\u011f":"g","\u0121":"g","\u01e7":"g","\u0123":"g","\u01e5":"g","\u0260":"g","\ua7a1":"g","\u1d79":"g","\ua77f":"g","\u24d7":"h","\uff48":"h","\u0125":"h","\u1e23":"h","\u1e27":"h","\u021f":"h","\u1e25":"h","\u1e29":"h",
"\u1e2b":"h","\u1e96":"h","\u0127":"h","\u2c68":"h","\u2c76":"h","\u0265":"h","\u0195":"hv","\u24d8":"i","\uff49":"i","\u00ec":"i","\u00ed":"i","\u00ee":"i","\u0129":"i","\u012b":"i","\u012d":"i","\u00ef":"i","\u1e2f":"i","\u1ec9":"i","\u01d0":"i","\u0209":"i","\u020b":"i","\u1ecb":"i","\u012f":"i","\u1e2d":"i","\u0268":"i","\u0131":"i","\u24d9":"j","\uff4a":"j","\u0135":"j","\u01f0":"j","\u0249":"j","\u24da":"k","\uff4b":"k","\u1e31":"k","\u01e9":"k","\u1e33":"k","\u0137":"k","\u1e35":"k","\u0199":"k",
"\u2c6a":"k","\ua741":"k","\ua743":"k","\ua745":"k","\ua7a3":"k","\u24db":"l","\uff4c":"l","\u0140":"l","\u013a":"l","\u013e":"l","\u1e37":"l","\u1e39":"l","\u013c":"l","\u1e3d":"l","\u1e3b":"l","\u017f":"l","\u0142":"l","\u019a":"l","\u026b":"l","\u2c61":"l","\ua749":"l","\ua781":"l","\ua747":"l","\u01c9":"lj","\u24dc":"m","\uff4d":"m","\u1e3f":"m","\u1e41":"m","\u1e43":"m","\u0271":"m","\u026f":"m","\u24dd":"n","\uff4e":"n","\u01f9":"n","\u0144":"n","\u00f1":"n","\u1e45":"n","\u0148":"n","\u1e47":"n",
"\u0146":"n","\u1e4b":"n","\u1e49":"n","\u019e":"n","\u0272":"n","\u0149":"n","\ua791":"n","\ua7a5":"n","\u01cc":"nj","\u24de":"o","\uff4f":"o","\u00f2":"o","\u00f3":"o","\u00f4":"o","\u1ed3":"o","\u1ed1":"o","\u1ed7":"o","\u1ed5":"o","\u00f5":"o","\u1e4d":"o","\u022d":"o","\u1e4f":"o","\u014d":"o","\u1e51":"o","\u1e53":"o","\u014f":"o","\u022f":"o","\u0231":"o","\u00f6":"o","\u022b":"o","\u1ecf":"o","\u0151":"o","\u01d2":"o","\u020d":"o","\u020f":"o","\u01a1":"o","\u1edd":"o","\u1edb":"o","\u1ee1":"o",
"\u1edf":"o","\u1ee3":"o","\u1ecd":"o","\u1ed9":"o","\u01eb":"o","\u01ed":"o","\u00f8":"o","\u01ff":"o","\u0254":"o","\ua74b":"o","\ua74d":"o","\u0275":"o","\u01a3":"oi","\u0223":"ou","\ua74f":"oo","\u24df":"p","\uff50":"p","\u1e55":"p","\u1e57":"p","\u01a5":"p","\u1d7d":"p","\ua751":"p","\ua753":"p","\ua755":"p","\u24e0":"q","\uff51":"q","\u024b":"q","\ua757":"q","\ua759":"q","\u24e1":"r","\uff52":"r","\u0155":"r","\u1e59":"r","\u0159":"r","\u0211":"r","\u0213":"r","\u1e5b":"r","\u1e5d":"r","\u0157":"r",
"\u1e5f":"r","\u024d":"r","\u027d":"r","\ua75b":"r","\ua7a7":"r","\ua783":"r","\u24e2":"s","\uff53":"s","\u00df":"ss","\u015b":"s","\u1e65":"s","\u015d":"s","\u1e61":"s","\u0161":"s","\u1e67":"s","\u1e63":"s","\u1e69":"s","\u0219":"s","\u015f":"s","\u023f":"s","\ua7a9":"s","\ua785":"s","\u1e9b":"s","\u24e3":"t","\uff54":"t","\u1e6b":"t","\u1e97":"t","\u0165":"t","\u1e6d":"t","\u021b":"t","\u0163":"t","\u1e71":"t","\u1e6f":"t","\u0167":"t","\u01ad":"t","\u0288":"t","\u2c66":"t","\ua787":"t","\ua729":"tz",
"\u24e4":"u","\uff55":"u","\u00f9":"u","\u00fa":"u","\u00fb":"u","\u0169":"u","\u1e79":"u","\u016b":"u","\u1e7b":"u","\u016d":"u","\u00fc":"u","\u01dc":"u","\u01d8":"u","\u01d6":"u","\u01da":"u","\u1ee7":"u","\u016f":"u","\u0171":"u","\u01d4":"u","\u0215":"u","\u0217":"u","\u01b0":"u","\u1eeb":"u","\u1ee9":"u","\u1eef":"u","\u1eed":"u","\u1ef1":"u","\u1ee5":"u","\u1e73":"u","\u0173":"u","\u1e77":"u","\u1e75":"u","\u0289":"u","\u24e5":"v","\uff56":"v","\u1e7d":"v","\u1e7f":"v","\u028b":"v","\ua75f":"v",
"\u028c":"v","\ua761":"vy","\u24e6":"w","\uff57":"w","\u1e81":"w","\u1e83":"w","\u0175":"w","\u1e87":"w","\u1e85":"w","\u1e98":"w","\u1e89":"w","\u2c73":"w","\u24e7":"x","\uff58":"x","\u1e8b":"x","\u1e8d":"x","\u24e8":"y","\uff59":"y","\u1ef3":"y","\u00fd":"y","\u0177":"y","\u1ef9":"y","\u0233":"y","\u1e8f":"y","\u00ff":"y","\u1ef7":"y","\u1e99":"y","\u1ef5":"y","\u01b4":"y","\u024f":"y","\u1eff":"y","\u24e9":"z","\uff5a":"z","\u017a":"z","\u1e91":"z","\u017c":"z","\u017e":"z","\u1e93":"z","\u1e95":"z",
"\u01b6":"z","\u0225":"z","\u0240":"z","\u2c6c":"z","\ua763":"z"});</script><script type="text/javascript" id="" src="https://d22xmn10vbouk4.cloudfront.net/b924dea2389e11e6bf0212f5c79d2169.js"></script>
        <div id="quantityselector" class="crema-ui-container "></div>
<script>
              window.ui = window.ui || [];
              window.ui.push({"id":"quantityselector","module":"QuantitySelector","configuration":{"translations":{"quantityselector.customquantity.rounding.message":"상품 개수를  {productQuantity}로 변경하였습니다.","quantityselector.a11y.addproduct.label":"{quantity} 추가하기","quantityselector.a11y.dialog.description":"아래 수량 중에서 골라주세요.","quantityselector.a11y.REMOVEDproduct.label":"{productName} 이(가) 고객님의 장바구니에서 삭제되었습니다.","quantityselector.okbutton.label":"OK","quantityselector.choosehint.label":"수량을 선택해 주세요.","quantityselector.customquantity.error.salesMultiple":"해당 상품의 최소 구매 단위는 {salesMultiple} 입니다.","quantityselector.a11y.updateproduct.label":"{quantity} 개로 업데이트 하기","quantityselector.customquantity.error.maximumAmount":"해당 상품의 최대 구매 가능 개수는 {maxQuantity} 입니다.","quantityselector.customquantity.error.invalidQuantity":"선택하신 수량으로는 구매할 수 없습니다.","quantityselector.a11y.dialog.title":"수량 선택 메뉴"},"props":{"thirdLine":[100,150,200,250,300]},"eCommerceData":null}});
            </script>
        <div id="a11yNotification" class="visually-hidden" aria-live="assertive" role="alert">
    </div>

    <div id="responsive-overlay" class="crema-ui-container "><div></div></div>
<script>
              window.ui = window.ui || [];
              window.ui.push({id: 'responsive-overlay', module: 'Overlay', configuration: {}});
            </script>
        





[if lt IE 8]>
<div id="outdated-browser" class="display-none">
    <div>
        <h3>오래된 버전의 인터넷 브라우저를 사용하고 계십니다.</h3>
        <p>현재 브라우저를 이용하여 네스프레소 웹사이트를 이용 하실 경우, 일부 제공되지 않는 서비스가 있을 수 있습니다.</p>
        <div>
            <a href="#" class="btn black confirm">
                이해하였습니다.
                <span class="border"></span>
            </a>
        </div>
    </div>
</div>

<script>
    oldBrowser();
</script>

<![endif]
<script async=""> 
	    (function (window) {
            //function getParameterByName is getting a param value from current url 
            function getParameterByName(paramName) {
                var regex = new RegExp("[\\?&]" + paramName + "=([^&#]*)"),
                    paramValue = regex.exec(location.search);
                return paramValue === null
                    ? ""
                    : decodeURIComponent(paramValue[1].toLowerCase().replace(/\+/g, " "));
            }
            
            //Get terminal param to detect if user is in the mobile webview
            const TERMINAL = "terminal";
            const terminalParam = getParameterByName(TERMINAL);
            const MOBAPP = 'mobapp';

			//Publish the SmartBanner To be showed
			if(typeof smartbanner !== "undefined"){
                window.onload = function () {
                    try {
                        if (terminalParam !== MOBAPP){
                            smartbanner.publish();
                        }
                    } catch(err) {
                        console.log(err)
                    }
                };
            }
		})(window);
    </script> 
<script type="text/javascript" src="/T7bmxN_sOnhGS/f8ry/btVXBWBmQA/h9iDtcbr7u9Y/Zmw1TEs/dhZHXhU/CYg4"></script>
<div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front popin-dialog-open dark ui-popin" aria-describedby="ui-id-1" aria-labelledby="ui-id-2" style="display: none;"><div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">&nbsp;</span><button type="button" class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close" title="닫기"><span class="ui-button-icon ui-icon ui-icon-closethick"></span><span class="ui-button-icon-space"> </span>닫기</button></div><div class="popin-page display-none ng-isolate-scope ui-dialog-content ui-widget-content" data-nes-lightbox="checkout-ecotax" id="ui-id-1" style="display: block;">
        </div></div><script src="https://cdn.siftscience.com/s.js"></script><script type="text/javascript" id="">ah.wrap(function(){function b(a,c){return(a=location.search.match("(\\?|\x26)("+a+")\x3d([^\x26]+)"))&&(c?a[2]+":":"")+a[3]}ah.affiliation(b("aff")||b("utm_id|gclid|dclid",1)||b("utm_source"))})();</script><script type="text/javascript" id="">ah.wrap(function(b,f,e,m,d,c,n,g,p,k){c=b.fbq=b.fbq||function(){b=arguments;c[m]?c[m].apply(c,b):n.push(b)};b._fbq=b._fbq||c;c.push=c;c.version="2.0";n=c.queue=[];b=f.getElementsByTagName(e)[0];e=f.createElement(e);c.loaded=e.async=!0;e.src="https://connect.facebook.net/en_US/fbevents.js";b.parentNode.insertBefore(e,b);ah.facebook={split:function(a){return a?a.split(/\|+/):[]},track:function(a){google_tag_manager["GTM-WJGQVL"].macro(5614)&&console.log("FB Deprecated Track Fired");if(a){a=a.split(";");d="product"!==a[3]?{page_type:d=
a[3],content_category:a[4]||d}:{content_type:d=a[3],content_category:a[4]||d};b=arguments;for(e=b.length+1;--e;)if(f=b[e])for(g in f)d[g]=f[g];c(a[2],a[1],d)}},trackSingle:function(a,h){if(a&&h){a=a.split(";");h=h.split(",");google_tag_manager["GTM-WJGQVL"].macro(5615)&&console.log("FB Data: "+a);google_tag_manager["GTM-WJGQVL"].macro(5616)&&console.log("FB Pixels: "+h);d="product"!==a[3]?{page_type:d=a[3],content_category:a[4]||d}:{content_type:d=a[3],content_category:a[4]||d};b=arguments;for(e=b.length+1;--e;)if(f=b[e])for(g in f)d[g]=f[g];
for(var q="track"==a[2]?"trackSingle":"trackSingleCustom",l=0;l<h.length;l++)c(q,h[l],a[1],d)}}};g=google_tag_manager["GTM-WJGQVL"].macro(5617).split(",");for(p=0;k=+g[p++];)c("set","autoConfig",!1,k),c("init",k);0!=google_tag_manager["GTM-WJGQVL"].macro(5618)&&(c("set","autoConfig",!1,google_tag_manager["GTM-WJGQVL"].macro(5619)),c("init",google_tag_manager["GTM-WJGQVL"].macro(5620)))})(window,document,"script","callMethod");</script><script type="text/javascript" id="">ah.wrap(function(a){a.trackSingle(google_tag_manager["GTM-WJGQVL"].macro(5625),google_tag_manager["GTM-WJGQVL"].macro(5626),{content_name:google_tag_manager["GTM-WJGQVL"].macro(5629),content_subsection:google_tag_manager["GTM-WJGQVL"].macro(5632),content_technology:google_tag_manager["GTM-WJGQVL"].macro(5635),is_live:google_tag_manager["GTM-WJGQVL"].macro(5636),landscape:google_tag_manager["GTM-WJGQVL"].macro(5637),language:google_tag_manager["GTM-WJGQVL"].macro(5638),user_id:google_tag_manager["GTM-WJGQVL"].macro(5639),user_owned_machines:a.split(google_tag_manager["GTM-WJGQVL"].macro(5646))})})(ah.facebook);</script>
<script type="text/javascript" id="">ah.wrap(function(f,g,Z,w,aa,H,ba,ca,da,ea,I,J,P,fa,ha,ia,ja,K,ka,la,Q,ma,z,R,na,x,A,S,y){function L(){x&&(g[x="remove"+x](na,L),f[x](R,L),x=0,S())}S=w(function(M,B,T,N,oa,wa,U,C,D,E,F,e,h,r,k,pa,qa,n,V){function O(a,l,b){clearTimeout(a);return Z(l,b)}function ra(){e=f.pageXOffset;e<C&&(C=e);e>E&&(E=e);h=f.pageYOffset;h<D&&(D=h);h>F&&(F=h);pa=O(pa,qa,1E3)}function ua(a,l,b,m,v,c,p,t,q,u,d,G,W,sa,X){b=this;a=a||"Click";a=b.p[a]||(b.p[a]=[]);0!==l&&(e=h=0,r=g[da]||f[I]||y[I],k=g[ea]||f[J]||y[J]);m=(l||
M).querySelectorAll(b.$);for(p=m[P];c=m[--p];)if(c[ba]&&!c[ma]&&(!b.f||c[H](b.f)==b.v)&&(u=t=c[H](b.i))&&(b.o&&(u+="|"+c[H](b.o)),!b.d[u]&&(d=c.getBoundingClientRect(),d.left>=e&&d.left<r&&d.top>=h&&d.top<k))){G=c[ma]=b.d[u]=1;W={};for(sa=0;X=b.K[sa++];)B[ha]=c[H](X[0]),W[X[1]]=B[ia];a.push([t,W])}G&&b.S()}function va(a,l,b,m,v,c,p,t,q){a=this;if(l=f[a.k])for(b in a.p){if(m=a.p[b],m[0]){for(v=[];c=m.pop();)if(t=l[c[0]]){p=c[1];for(q in t)B[ha]=p[q]||t[q],p[q]=B[ia];v.push(p)}else ah.warn("Impressions:",
c[0],"missing from",a.k);for(;v[0];)gtmDataObject.push({event:ka,eventRaisedBy:"GTM",eventAction:a.a+b,ecommerce:a.F(v.splice(0,10))})}}else a.t=O(a.t,a.S,1E3)}function ta(a){return{impressions:a}}function Y(a,l,b,m,v,c,p,t,q,u,d,G){q="data-"+a+"-";for(u=-1;d=c[++u];)c[u]=[q+d[0],d[1]||d[0]];d=V[a+l]={k:b,i:G=q+"item-id",a:m+" Impression - On ",F:v,f:p?q+p:0,v:t,$:"["+G+"]",d:{},p:{},K:c,o:c&&c[0][0]};d.S=w(va,d);return d.detect=w(ua,d)}V=ah[U=ka+"s"]={display:function(a,l,b){l.forEach(function(m){setTimeout(function(){V[m].detect(a,
b)},16)})}};M=g.body;B=g.createElement("DIV");C=D=1E9;E=F=0;qa=w(function(){n=f.pageXOffset;e=C-n;r=E-n+(g[da]||f[I]||y[I]);C=E=n;n=f.pageYOffset;h=D-n;k=F-n+(g[ea]||f[J]||y[J]);D=F=n;T(z,0);oa(z,0);N(z,0);z=Q});T=Y(ja,"s",ja+"sOn"+Q,"Promo",function(a){return{promoView:{promotions:a}}},[["creative"],["name"],[la]]);N=Y("p"+K,"s",U+="On"+Q,"P"+K,ta,[["section","list"],[la]],"so");oa=Y("p"+K,"s_so",U+"SO","P"+K,ta,0,"so","true");ra();f[A]("scroll",w(ra));N(z,0);if(e=g[ca+"ById"]("filter-form"))e[A](fa,
function(a){"INPUT"===a.target.tagName&&O(0,n=function(){N()})});$(M).on(fa,".navbar-link",function(){O(0,n)});if(e=f.MutationObserver)for(e=new e(w(function(a){for(r=a[P];k=a[--r];)"style"===k.attributeName&&(k=k.target,k[ba]&&(T("Menu Dropdown",k),r=0))})),h=M[ca+"sByClassName"]("submenu"),r=h[P];k=h[--r];)e.observe(k,{attributes:!0})});y=g.documentElement;A="add"+x;"complete"===g[aa]||g[aa]!==R+"ing"&&!y.doScroll?Z(S,3E3):(g[A](na,L),f[A](R,L))})(window,document,setTimeout,ah.wrap,"readyState",
"getAttribute","offsetParent","getElement","innerWidth","innerHeight","clientWidth","clientHeight","length","click","innerHTML","innerText","promotion","roduct","impression","position","Scroll","gtmTracked","Load","load","DOMContentLoaded","EventListener");</script><script type="text/javascript" id="">ah.wrap(function(g,t,w,x,n,y,z,A,u,B,C,p,h,D,l,c){function E(b,d){var a=g[b]=g[b]||function(){e=arguments;a[x]?a[x].apply(a,e):a.queue.push(e)},e=t.getElementsByTagName(w)[0],f=t.createElement(w);g[b="_"+b]=g[b]||a;a.push=a;a.loaded=!0;a.version="1.0";a.queue=[];a.market=google_tag_manager["GTM-WJGQVL"].macro(5647);a.language=google_tag_manager["GTM-WJGQVL"].macro(5648);a.channel=google_tag_manager["GTM-WJGQVL"].macro(5649);f.async=!0;f.src="https://www."+("true"===google_tag_manager["GTM-WJGQVL"].macro(5650)?"":"vst.")+"contact.nespresso.com/apps.php?a\x3dcalleo-"+d+(/(msie [1-9]|Trident\/7\.0)/i.test(navigator.userAgent)?
"\x26v\x3die":"");e.parentNode.insertBefore(f,e)}function F(b,d,a,e){a&&a(l);c=function(f,G,q,m,r){m&&m(l);m=m||a;q=q||f.replace(/e?$/,"ed");g[n+b]("add"+b+"Listener",f[z](),D[r=d+q]=y(function(I,J,H,k,v){k=G||"Click";k={eventAction:"Source:"+H+";Action:"+k,eventLabel:q,calleoChatType:d,nonInteraction:+!!G};for(v in l)k[v]=l[v];k[r]=1;m&&m(k,H,I,J);gtmDataObject.push(k)}));l[r=h+r]=e}}l={event:h=n+u,eventRaisedBy:"GTM"};D=ah[h]={};"true"===google_tag_manager["GTM-WJGQVL"].macro(5651)+""&&(E(h,"livechat"),F(u,A),c(C),c("Start"),
c("End"),c("Cancel"),c("Rating",0,"Reviewed",function(b,d){function a(e,f){b[h+A+"Review"+e]=d&&(f||["","Very good","Good","Fairly good","Not acceptable"])[+d[e[z]()]]}a("Delay");a("Quality");a("Satisfaction",["No","Yes"])}),t.addEventListener("click",y(function(b,d){d=b.target;/(^|\s)open-live-chat(\s|$)/.test(d.id+" "+d.className)&&(b.preventDefault(),g[h]("start"+u))})));if("true"===google_tag_manager["GTM-WJGQVL"].macro(5652)+""){E(n+p,"triggers");if(c=google_tag_manager["GTM-WJGQVL"].macro(5653))g[n+p]("NessclubId",c);F(p,B,function(b,d,
a,e){c=h+B;b[c+p+"Category"]=d;b[c+"ID"]=a;b[c+"Name"]=e});c(C,"Display");c("Accept");c("Refuse");c("Ignore","Hide")}})(window,document,"script","callMethod","calleo",ah.wrap,"toLowerCase","Embedded","Chat","Proactive","Launch","Trigger");</script><script type="text/javascript" id="">ah.wrap(function(l){function g(h,b,c){if(b)try{b=l("("+b+")"),d=Object.keys(b).map(function(a){return[a&&new RegExp(a.replace(/\*+/g,"[^:]*")),b[a]]})}catch(a){ah.warn("SessionCam: Invalid selector dictionary\n",a),d=[]}c&&(e="sessioncam"+c,k=new RegExp("(^| )"+e+"( |$)"));if(d)return h=h||location.pathname.replace(/(\/(mosaic|pro|mobile))?(\/\w\w){2}(\/|$)/,"").replace(/\/+/g,":").replace(/(^:|:(d+(:.*)?)?$)/g,""),(c=d.reduce(function(a,b){return b[0]&&!b[0].test(h)?a:a?a+","+b[1]:a+b[1]},""))&&
e&&Array.prototype.forEach.call(document.querySelectorAll(c),function(a){k.test(a.className)||(a.className+=a.className?" "+e:e)}),c}var d,e,k;ah.sessioncam={hide_pii:g,init:function(e,b){function c(){g(b,google_tag_manager["GTM-WJGQVL"].macro(5654),"ignorechanges");g(b,google_tag_manager["GTM-WJGQVL"].macro(5655),"hidetext");var a=document.getElementsByTagName("script")[0],c=document.createElement("script");c.async=!0;c.src="https://d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js";a.parentNode.insertBefore(c,a)}var a=ah.extend({Channel:google_tag_manager["GTM-WJGQVL"].macro(5656),
DeviceType:google_tag_manager["GTM-WJGQVL"].macro(5657),IsMobileSite:0,Landscape:google_tag_manager["GTM-WJGQVL"].macro(5658),LanguageCode:google_tag_manager["GTM-WJGQVL"].macro(5659),PrimaryCategory:google_tag_manager["GTM-WJGQVL"].macro(5660),Technology:google_tag_manager["GTM-WJGQVL"].macro(5661),UserIsLoggedIn:+("true"===google_tag_manager["GTM-WJGQVL"].macro(5662)),UserID:google_tag_manager["GTM-WJGQVL"].macro(5663)},e);b=b||google_tag_manager["GTM-WJGQVL"].macro(5676);sessioncamConfiguration={SessionCamHostname:location.href.replace(/^([^\/]+\/\/[^\/]+)\/.*$/,"$1."+google_tag_manager["GTM-WJGQVL"].macro(5678)),SessionCamPath:a.PrimaryCategory,SessionCamPageName:google_tag_manager["GTM-WJGQVL"].macro(5679)+":"+b,customDataObjects:Object.keys(a).map(function(b){return[{key:b,
value:a[b]}]}),elementsToRemove:g(b,google_tag_manager["GTM-WJGQVL"].macro(5680))};var d=document.readyState;if("complete"===d||"loading"!==d&&!document.documentElement.doScroll)setTimeout(ah.wrap(c));else{var f=ah.wrap(function(){f&&(document.removeEventListener("DOMContentLoaded",f),window.removeEventListener("load",f),f=0,c())});document.addEventListener("DOMContentLoaded",f);window.addEventListener("load",f)}}}})(eval);</script><script type="text/javascript" id="">ah.wrap(function(){ah.sessioncam.init()})();</script><script type="text/javascript" id="">var pageViewDebug=false&&google_tag_manager["GTM-WJGQVL"].macro(5681);var pageTech=google_tag_manager["GTM-WJGQVL"].macro(5684);var pageSub1=google_tag_manager["GTM-WJGQVL"].macro(5687);var pagePath=google_tag_manager["GTM-WJGQVL"].macro(5688);var isMachinePage=pageSub1==="machines";var isCapsulePage=pageSub1==="coffee";var isAccessoryPage=pageSub1==="accessories"||pagePath.indexOf("accessories")!=-1;var isVertuoPage=pagePath.indexOf("vertuo")!==-1||pageTech==="vertuoline";var isOriginalPage=pageTech==="originalline"&&!isVertuoPage||!isVertuoPage;var isComboSubscriptionPage=pageSub1==="combo-subscription";
var isMachineSubscriptionPage=pageSub1==="machinesubscription"||isComboSubscriptionPage||pagePath.indexOf("machine-subscription")!=-1;var isCapsuleSubscriptionPage=pageSub1==="subscription"||isComboSubscriptionPage||pagePath.indexOf("coffee-subscription")!=-1;var isSubscriptionPage=isComboSubscriptionPage||isMachineSubscriptionPage||isCapsuleSubscriptionPage;
if(pageViewDebug)console.log("Pageview types:\nMachine: "+isMachinePage+"\nCapsules:"+isCapsulePage+"\nAccessory:"+isAccessoryPage+"\nVertuo:"+isVertuoPage+"\nOriginal:"+isOriginalPage+"\nCombo:"+isComboSubscriptionPage+"\nMachineSub:"+isMachineSubscriptionPage+"\nCapsuleSub:"+isCapsuleSubscriptionPage);dlPush("pageview");if(isMachinePage&&isOriginalPage)dlPush("pagmaols");if(isMachinePage&&isVertuoPage)dlPush("pagmavls");if(isCapsulePage&&isOriginalPage)dlPush("pagcaols");if(isCapsulePage&&isVertuoPage)dlPush("pagcavls");
if(isMachineSubscriptionPage&&isOriginalPage)dlPush("pagmasol");if(isMachineSubscriptionPage&&isVertuoPage)dlPush("pagmasvl");if(isMachineSubscriptionPage)dlPush("pagmss");if(isComboSubscriptionPage&&isOriginalPage)dlPush("pagccsol");if(isComboSubscriptionPage&&isVertuoPage)dlPush("pagccsvl");if(isComboSubscriptionPage)dlPush("pagccs");if(isCapsuleSubscriptionPage)dlPush("pagcss");if(isCapsuleSubscriptionPage&&isVertuoPage)dlPush("pagcasvl");if(isCapsuleSubscriptionPage&&isOriginalPage)dlPush("pagcasol");
if((isMachinePage||isCapsulePage||isAccessoryPage)&&isOriginalPage)dlPush("pagols");if(!isSubscriptionPage&&isVertuoPage)dlPush("pagvls");if(isMachinePage)dlPush("pagmas");if(isCapsulePage)dlPush("pagcas");function dlPush(groupTagString){gtmDataObject.push({"event":"floodlightPageview","groupTagString":groupTagString})};</script><script type="text/javascript" id="">ah.wrap(function(){var a=google_tag_manager["GTM-WJGQVL"].macro(5690);if(void 0!=a){a=a.replace(/GAX\d*\.\d*\./,"").split("!");for(var c=0;c<a.length;c++){var b=a[c],d=b.split(".")[0];b=b.split(".")[2];d={key:"GoogleOptimize",value:d+"-"+b};window.sessioncamConfiguration.customDataObjects.push(d)}}})();</script><link rel="stylesheet" type="text/css" href="https://www.contact.nespresso.com/apps.php?a=calleo-livechat.css"><link rel="stylesheet" type="text/css" href="https://www.contact.nespresso.com/apps.php?a=calleo-triggers.css"><script type="text/javascript" id="">ah.wrap(function(a){a.trackSingle(google_tag_manager["GTM-WJGQVL"].macro(6750),google_tag_manager["GTM-WJGQVL"].macro(6751),{all_accessor_qty:google_tag_manager["GTM-WJGQVL"].macro(6755),all_accessor_rev:google_tag_manager["GTM-WJGQVL"].macro(6757),all_capsules_qty:google_tag_manager["GTM-WJGQVL"].macro(6761),all_capsules_rev:google_tag_manager["GTM-WJGQVL"].macro(6763),all_machines_qty:google_tag_manager["GTM-WJGQVL"].macro(6767),all_machines_rev:google_tag_manager["GTM-WJGQVL"].macro(6769),content_ids:google_tag_manager["GTM-WJGQVL"].macro(6771),content_name:google_tag_manager["GTM-WJGQVL"].macro(6774),currency:google_tag_manager["GTM-WJGQVL"].macro(6775)||google_tag_manager["GTM-WJGQVL"].macro(6776),is_live:google_tag_manager["GTM-WJGQVL"].macro(6777),landscape:google_tag_manager["GTM-WJGQVL"].macro(6778),
language:google_tag_manager["GTM-WJGQVL"].macro(6779),num_items:google_tag_manager["GTM-WJGQVL"].macro(6781),product_categories:google_tag_manager["GTM-WJGQVL"].macro(6784),product_ranges:google_tag_manager["GTM-WJGQVL"].macro(6787),product_technologies:google_tag_manager["GTM-WJGQVL"].macro(6790),product_types:google_tag_manager["GTM-WJGQVL"].macro(6793),revenue:google_tag_manager["GTM-WJGQVL"].macro(6795),user_id:google_tag_manager["GTM-WJGQVL"].macro(6796),user_owned_machines:a.split(google_tag_manager["GTM-WJGQVL"].macro(6803)),value:+google_tag_manager["GTM-WJGQVL"].macro(6804)||google_tag_manager["GTM-WJGQVL"].macro(6806)},"true"===google_tag_manager["GTM-WJGQVL"].macro(6807)&&{ol_capsules_qty:google_tag_manager["GTM-WJGQVL"].macro(6811),ol_capsules_rev:google_tag_manager["GTM-WJGQVL"].macro(6813),
ol_machines_qty:google_tag_manager["GTM-WJGQVL"].macro(6817),ol_machines_rev:google_tag_manager["GTM-WJGQVL"].macro(6819),vl_capsules_qty:google_tag_manager["GTM-WJGQVL"].macro(6823),vl_capsules_rev:google_tag_manager["GTM-WJGQVL"].macro(6825),vl_machines_qty:google_tag_manager["GTM-WJGQVL"].macro(6829),vl_machines_rev:google_tag_manager["GTM-WJGQVL"].macro(6831)})})(ah.facebook);</script><script type="text/javascript" id="">for(var products=google_tag_manager["GTM-WJGQVL"].macro(6832),PURCHASE_EVENT_NAME="customTransaction",event=google_tag_manager["GTM-WJGQVL"].macro(6833),isTransactionEvent=event===PURCHASE_EVENT_NAME,pushedCategories,pushedGroupTagStrings=[],checkoutStepName=google_tag_manager["GTM-WJGQVL"].macro(6834),checkoutStepLookup={"checkout delivery":"del","shopping bag":"crt","checkout payment":"pay","checkout recap":"sum"},prefixLookup={addToCart:"add",productClick:"clk",detailView:"dtl",impression:"imp",checkout:checkoutStepLookup[checkoutStepName],customTransaction:"sal"},
technologyLookup={original:"ol",vertuo:"vl"},groupTagStringPrefix=prefixLookup[event],standardSuffix=isTransactionEvent?"t":"s",isCartEvent="crt"===groupTagStringPrefix,i=0;i<products.length;i++){var dimension56Technology=products[i].dimension56?products[i].dimension56.toLowerCase().match(/\w+/)[0]:"original",technologySuffix=technologyLookup[dimension56Technology],isSubscription="70000"===products[i].id||-1!=products[i].name.toLowerCase().indexOf("subscription")||"sub"==products[i].id||-1!=google_tag_manager["GTM-WJGQVL"].macro(6835).indexOf("subscription")||
"SUB"===products[i].dimension53||"subscription_range"===products[i].dimension55,productCategory=products[i].category,categorySuffix;!isSubscription||-1==google_tag_manager["GTM-WJGQVL"].macro(6836).indexOf("machine")&&-1==productCategory.indexOf("machine")?isSubscription&&(-1!=google_tag_manager["GTM-WJGQVL"].macro(6837).indexOf("capsule")||-1!=productCategory.indexOf("capsule"))||isSubscription?categorySuffix="cs":isSubscription?google_tag_manager["GTM-WJGQVL"].macro(6838)&&console.error("GTM ERROR: Unidentified subscription product type\n"+JSON.stringify(products[i])):
/machine/g.test(productCategory)?categorySuffix="ma":/capsule/g.test(productCategory)?categorySuffix="ca":/accessor/g.test(productCategory)?categorySuffix="acc":google_tag_manager["GTM-WJGQVL"].macro(6839)&&console.log("Unknown product type:\n"+JSON.stringify(products[i])):categorySuffix="ms";groupTagString="acc"==categorySuffix?groupTagStringPrefix+categorySuffix+standardSuffix:groupTagStringPrefix+categorySuffix+technologySuffix+standardSuffix;var categoryGroupTagString=groupTagStringPrefix+categorySuffix+standardSuffix;
"cs"===categorySuffix&&(isTransactionEvent||isCartEvent)&&(categoryGroupTagString=groupTagStringPrefix+"cc"+standardSuffix);pushedGroupTagStrings.includes(categoryGroupTagString)||(google_tag_manager["GTM-WJGQVL"].macro(6840)&&console.log("Pushing Group tag string: "+categoryGroupTagString+"\nproduct: "+JSON.stringify(products[i])),gtmDataObject.push({event:event+"_floodlightEcommerce",groupTagString:categoryGroupTagString,ecommerce:{checkout:google_tag_manager[google_tag_manager["GTM-WJGQVL"].macro(6841)].dataLayer.get(google_tag_manager["GTM-WJGQVL"].macro(6842))}}),
pushedGroupTagStrings.push(categoryGroupTagString));pushedGroupTagStrings.includes(groupTagString)||(google_tag_manager["GTM-WJGQVL"].macro(6843)&&console.log("Pushing Group tag string: "+groupTagString+"\nproduct: "+JSON.stringify(products[i])),gtmDataObject.push({event:event+"_floodlightEcommerce",groupTagString:groupTagString,ecommerce:{checkout:google_tag_manager[google_tag_manager["GTM-WJGQVL"].macro(6844)].dataLayer.get(google_tag_manager["GTM-WJGQVL"].macro(6845))}}),pushedGroupTagStrings.push(groupTagString))}
var standardEventSuffix=isTransactionEvent?"e":"s";groupTagString=groupTagStringPrefix+standardEventSuffix;pushedGroupTagStrings.includes(groupTagString)||(google_tag_manager["GTM-WJGQVL"].macro(6846)&&console.log("Pushing Group tag string: "+groupTagString+"\nproduct: "+JSON.stringify(products[i])),gtmDataObject.push({event:event+"_floodlightEcommerce",groupTagString:groupTagString,ecommerce:{checkout:google_tag_manager[google_tag_manager["GTM-WJGQVL"].macro(6847)].dataLayer.get(google_tag_manager["GTM-WJGQVL"].macro(6848))}}),pushedGroupTagStrings.push(groupTagString));
isTransactionEvent&&google_tag_manager["GTM-WJGQVL"].macro(6849)&&(groupTagString="salnct",google_tag_manager["GTM-WJGQVL"].macro(6850)&&console.log("Pushing Group tag string: "+groupTagString+"\nproduct: "+JSON.stringify(products[i])),gtmDataObject.push({event:event+"_floodlightEcommerce",groupTagString:groupTagString,newClientTransaction:1,ecommerce:{checkout:google_tag_manager[google_tag_manager["GTM-WJGQVL"].macro(6851)].dataLayer.get(google_tag_manager["GTM-WJGQVL"].macro(6852))}}),pushedGroupTagStrings.push(groupTagString));</script>
 -->
</body>
</html>