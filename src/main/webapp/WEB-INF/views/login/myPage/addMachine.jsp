<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	/* .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
	display: none !important;
} */ ng\:form {
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

<meta name="smartbanner:title" content="네스프레소 앱">
<meta name="smartbanner:author" content="Nespresso SA">
<meta name="smartbanner:price" content="무료 앱">
<meta name="smartbanner:price-suffix-apple" content="앱스토어">
<meta name="smartbanner:price-suffix-google" content="구글플레이">
<meta name="smartbanner:icon-apple"
	content="https://www.nespresso.com/_ui/img/smartBanner/nespresso-picto.png">
<meta name="smartbanner:icon-google"
	content="https://www.nespresso.com/_ui/img/smartBanner/nespresso-picto.png">
<meta name="smartbanner:button" content="다운받기">
<meta name="smartbanner:button-url-apple"
	content="https://itunes.apple.com/kr/app/nespresso/id342879434?l=ko&amp;mt=8">
<meta name="smartbanner:button-url-google"
	content="https://play.google.com/store/apps/details?id=com.nespresso.activities&amp;hl=ko">
<meta name="smartbanner:enabled-platforms" content="android,ios">
<meta name="smartbanner:hide-ttl" content="1296000000">
<meta name="smartbanner:hide-path" content="/">
<meta name="keywords" content="네스프레소머신등록, 네스프레소클럽, 네스프레소">
<meta name="description" content="네스프레소 클럽에서 나의 네스프레소머신을 등록하세요,">
<meta property="og:title" content="나의 네스프레소 머신 등록하기 | 네스프레소 클럽 | 네스프레소">
<meta property="og:url"
	content="https://www.nespresso.com:443/kr/ko/myaccount/addNewMachine">
<meta property="og:description" content="네스프레소 클럽에서 나의 네스프레소머신을 등록하세요,">
<title>나의 네스프레소 머신 등록하기 | 네스프레소 클럽 | 네스프레소</title>

<link rel="shortcut icon" type="image/x-icon"
	href="https://www.nespresso.com/_ui/img/favicon.ico">

<link rel="dns-prefetch" href="//www.googletagmanager.com">
<link rel="dns-prefetch" href="//www.contact.nespresso.com">
<link rel="dns-prefetch" href="//collect.analzye.ly">
<link rel="dns-prefetch" href="//connect.facebook.com">
<link rel="dns-prefetch" href="//ad.doubleclick.net">
<link rel="dns-prefetch" href="//analytics.twitter.com">

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
	src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script async=""
	src="//d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js"></script>
<script async=""
	src="//www.contact.nespresso.com/apps.php?a=calleo-triggers"></script>
<script async=""
	src="//www.contact.nespresso.com/apps.php?a=calleo-livechat"></script>
<script type="text/javascript" async=""
	src="https://d16fk4ms6rqz1v.cloudfront.net/capture/nespresso.js"></script>
<script type="text/javascript" async=""
	src="//www.googleadservices.com/pagead/conversion_async.js"></script>
<script
	src="https://connect.facebook.net/signals/config/522051272523535?v=2.9.42&amp;r=stable"
	async=""></script>
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-PJM4LSH&amp;l=gtmDataObject"></script>
<script
	src="https://www.nespresso.com/_ui/generated/legacyCartManager.js"></script>
<script async=""
	src="//www.googletagmanager.com/gtm.js?id=GTM-WJGQVL&amp;l=gtmDataObject"></script>
<script>
        var P = {
            baseUrl: 'https://www.nespresso.com/_ui/generated/frontend-polyfills'
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
    loginPage: '/kr/ko/secure/login',
    loadCrossSells: '/kr/ko/view/PushCrossSellsBlockController',
    saveEditAddress: '/kr/ko/checkout/saveEditDeliveryAddress',
    saveNewAddress: '/kr/ko/checkout/saveNewDeliveryAddress',
    saveEditBillingAddress: '/kr/ko/checkout/saveEditBillingAddress',
    saveNewBillingAddress: '/kr/ko/checkout/saveNewBillingAddress',
    validateSelectedBillingAddress: '/kr/ko/checkout/validateSelectedBillingAddress',
    validateSelectedDeliveryAddress: '/kr/ko/checkout/validateSelectedDeliveryAddress',
    giftCard: '/kr/ko/giftCard',
    myAccountAddressBook: '/kr/ko/myaccount/addressbook.action',
    resendActivationEmailUrl : '/kr/ko/resendActivationEmail',
    errorPage : '/kr/ko/error/unexpected.jsp',
    homePage : '/kr/ko/'
};

    config.labels = {
        authentication: {
            wrongLoginOrPassword: '입력하신 고객명 또는 비밀번호가 유효하지 않습니다. 다시 확인 후 재시도 해주세요.',
            required: '필수 입력 항목 입니다.',
            bruteForce: '{0}회 로그인을 시도하셨습니다. {1} 후 다시 시도해주세요.',
            descLogged: '로그인 해주셔서 감사합니다. 이제 아래 링크를 통해 내 계정의 각 메뉴를 이용하실 수 있습니다.',
            headingLogged: '로그인 창 펼침',
            headingNotLogged: '내 계정 창 펼침'
        },
        addToBagA11yQuantityInCart: '장바구니에 \u003Cspan class=\"quantity\"\u003E{0}\u003C\/span\u003E \/ {1} 를 가지고 있습니다.\u003Cspan class=\"label\"\u003E{2}\u003C\/span\u003E을 위해 클릭해주세요.',
        addToBagAddButtonLabel: '장바구니에 담기',
        addToBagAddButtonMaxQuantityReachedLabel: '최대 가능 수량에 도달하였습니다.',
        addToBagAddButtonProductUnavailableLabel: '일시 품절',
        addToBagTooltipErrorSalesMultipleMessage: '잘못된 주문 단위 입니다.',
        addToBagTooltipErrorMaxNumberPerOrderMessage: '최대 주문 가능 수량에 도달하였습니다.',
        addToBagUpdateButtonLabel: '장바구니 업데이트',
        close: '닫기',
        quantitySelector: {
            description: '확인된 수량을 선택하시거나, 아래 수량 선택란을 조정하여 선택해주세요.',
            addQuantityProductToCart: '{0} 추가',
            removeProductFromCart: '클릭하여 {0}를 장바구니에서 삭제해주세요.',
            warningProductLimit: '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있습니다.',
            warningProductLimitZero: '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있으며, 이미 최대 수량을 구매하셨습니다.',
            warningProductLimitRemaining: '선택하신 프리미엄 커피는 회원당 최대 {0}개 캡슐까지 구매하실 수 있으며, 현재 구매 가능한 수량은 {1}개 입니다.'
        },
        a11yMainNavigationBar: '이 링크를 통해 새창이 열립니다.',
        a11yMainNavigationSubMenu: {
            open: '보조 메뉴 펼치기',
            close: '보조 메뉴 닫기'
        },
        a11yProductListPager: {
            currentPage: '{0}페이지\/전체 {1} 페이지',
            activePage: '현재 페이지',
            sliderMinimumDescription: 'Filter slider minimum price',
            sliderMaximumDescription: 'Filter slider maximum price'
        },
        a11yProductQuantity: {
            update: '업데이트 전체 {1}건 중 {0}건 완료',
            remove: '{0} 제품이 장바구니에서 삭제 되었습니다.'
        },
        a11yActivationCode: {
            submitSuccess: '입력하신 프로모션 코드가 적용 되었습니다, 아래에서 확인 가능 합니다.',
            deleteSuccess: '입력하신 프로모션 코드가 삭제 되었습니다. 아래에서 확인 가능 합니다.'
        },
        machineRegistration: {
            a11ySearchingForStores: 'Searching for stores…',
            a11yNoStoresFound: '판매처를 찾을 수 없습니다. 검색 조건을 변경해주세요.',
            a11yStoresFound: '{0}개의 판매처를 찾았습니다. 원하시는 매장을 찾아서 자세한 정보를 확인해보세요.'
        },
        a11yAddressUpdatedMessage: '상세 주소 정보가 업데이트 되었습니다.',
        checkoutBoutiques: {
            a11yBoutiquesFound: '{0}개의 부티크를 찾았습니다. 리스트의 부티크 중 원하시는 곳을 선택하시면, 더 자세한 정보를 확인 하실 수 있습니다.',
            a11yNoBoutiquesFound: '검색하신 지역에 네스프레소 부티크가 없습니다.',
            a11ySearchingForBoutiques: ' 부티크 검색',
            a11yBoutiqueSelected: '부티크가 선택되었습니다.'
        },
        a11yProductBrowserBlockFilteredList: '{0}개의 조건에 맞는 제품이 검색되었습니다. 커서를 움직여 리스트로 이동할 수 있습니다.',
        machineCompare: {
            a11yFilterChangeNotify: '{0}개의 머신이 검색되었습니다. 커서를 이동하여 리스트의 머신을 확인하실 수 있습니다.'
        },
        a11ySlider: {
            startPlaying: '슬라이딩 배너 멈추기',
            pausePlaying: '슬라이딩 배너 멈추기',
            triggerPlay: '슬라이드가 잠시 정지하였습니다.',
            triggerPause: '슬라이드가 잠시 정지하였습니다.'
        },
        a11yRatingScore: '별점 {0}',
        passwordStrength: {
            weak: '취약',
            medium: '보통',
            strong: '안전',
            a11yReviewPassword: '고객님의 비밀번호는 {0} 입니다. 보안을 위해 더 복잡한 조합의 비밀번호를 입력해주세요.',
            containsCapital: '대문자 포함'
        },
        cart: {
            warning: {
                updated: '장바구니가 업데이트 되었습니다.',
                merged: '장바구니가 업데이트 되었습니다.',
                product: {
                    not: {
                        added: '선택하신 제품 또는 일부가 현재 이용 불가능 하여, 장바구니에 담을 수 없습니다.'
                    }
                },
                tariff: {
                    changed: '고객님의 등급에 따라 장바구니가 업데이트 되었습니다.'
                }
            }
        },
        accountordersblock: {
            myorders: {
                orderdetail: {
                    reorderconfirmation: {
                        message: '계속하여 진행하실 경우, 지난 주문의 제품들이 장바구니에 추가 됩니다.\u003Cbr \/\u003E\u003Cul\u003E\u003Cli\u003E지난 주문 내역의 일부 제품이 품절 또는 프로모션 종료로 인해 현재 장바구니에 추가되지 않을 수 있습니다. \u003C\/li\u003E\u003Cli\u003E지난 주문 내역 중 캡슐 재활용 백이나 수거 요청 주문은 자동으로 삭제됩니다. 고객님의 재활용 캡슐 상황에 맞춰 다시금 장바구니에 담아주시기 부탁 드립니다. \u003C\/li\u003E\u003C\/ul\u003E'
                    }
                }
            }
        },
        order: {
            reorderProduct: {
                contentMessage: '계속하여 진행하실 경우, 지난 주문의 제품들이 장바구니에 추가 됩니다.'
            }
        },
        pickupPoint: {
            close: 'Close',
            a11yErrorOccurred: '작업이 정상적으로 이루어지지 않았습니다. 다시 시도해주세요.',
            a11yPickUpPointsFound: '{0} 개의 픽업 가능 부티크를 찾았습니다. 다음 단계에서 자세한 내용을 확인하실 수 있습니다. 픽업 가능 부티크 리스트에서 최종 선택해 주시기 바랍니다.',
            a11yOnePickUpPointFound: '{0} 개의 픽업 가능 부티크를 찾았습니다. 다음 단계에서 자세한 내용을 확인하실 수 있습니다. 픽업 가능 부티크 리스트에서 최종 선택해 주시기 바랍니다.',
            a11yNoPickUpPointsFound: '요청된 주소에 이용 가능한 제품 수령 장소가 없습니다.',
            a11yAmbiguousResultsFound: '선택하신 지역에는 픽업이 가능한 부티크가 없습니다. 다음 단계에서, 지금 검색하신 지역에서 가장 가까운 픽업 가능 부티크를 선택해 주세요.',
            a11ySearchingForPickUpPoints: '픽업 가능 부티크 검색 중',
            a11yPickUpPointSelected: '픽업 부티크가 선택되었습니다. 저장해 주세요.',
        },
        checkout: {
          shipping: {
            yourTime: {
              a11yNoSlotsFound : '현재 선택하신 배송 방법으로는 예약 가능한 픽업 시간이 없습니다.',
              a11ySlotsFound : '선택하신 배송 방법으로, {0} 개 예약 가능한 픽업 시간이 있습니다.',
              a11yNarrowSlotsFound : '현재 선택하신 배송 방법으로, {0} 개 예약 가능한 픽업 시간이 있습니다.'
            },
            boutiquePickup: {
              a11yOutOfStockMessage: '주문에 포함된 일부 제품은 선택하신 배송 수단으로 이용 불가능 합니다.'
            }
          },
        payment: {
            noneOption: 'None'
          }}
    };

config.einvoiceErrorMessages = {
    'checkout.payment.einvoice.mandatory' : 'Select valid invoice type',
    'checkout.payment.einvoice.incomplete.companydata' : 'Incomplete company info'
};

    config.defaults = {
        addressType: 'private',
        addressCountry: 'kr'
    };

    
    config.padl = {
        namespace : 'padl-' + 'b2c' + '-' + 'kr'
    };

window[config.padl.namespace] = window[config.padl.namespace] || {dataLayer: {}};


var gtmDataObject = [];

        config.liveChat = {
                isLiveChatAnonymousEnabled: true,
                isLiveChatEmbeddedActivated: false,
                isLiveChatProactiveActivated: false
            };

        P.insertPolyfills();
        

var padlNamespace = config.padl.namespace,
    padlPromotions;

window[padlNamespace].dataLayer.app = {"app":{"affiliation":"Nespresso Online Store","brand":"Nespresso","currency":"KRW","landscape":"NC2-mosaic","market":"KR","version":"32.36.41","isEnvironmentProd":true}};

window[padlNamespace].dataLayer.page = {"page":{"pageInfo":{"language":"ko","breadcrumbUID":"account:my-machines::add-machine:","pageName":"Account Add Machine","primaryCategory":"","secondaryCategory":[],"segmentBusiness":"B2C","technology":[],"type":"","variant":""}}};

window[padlNamespace].dataLayer.pageInstanceID = {"pageInstanceID":"account:my-machines::add-machine::NC2-mosaic:true:B2C:KR:ko"};



window[padlNamespace].dataLayer.user = {"isLoggedIn":true};

// Initializing promotions tracking data structure
padlPromotions = {
    promotions: {}
};
</script>
<script
	src="https://www.nespresso.com/_ui/generated/frontend-polyfills/SetFromOf.js?v=f9480793ef095cc9cb8d"></script>

<script
	src="https://www.googleoptimize.com/optimize.js?id=GTM-K7F7RGL&amp;l=gtmDataObject"></script>
<script
	src="https://www.nespresso.com/_ui/generated/allHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
<script>
    napi.staticInit = true;
    napi.initialize(
        'b2c',
        'kr',
        'ko',
        'desktop',
        ''
    );
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
	href="https://www.nespresso.com/_ui/generated/responsiveMyAccount.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	media="screen" onload="if(media!='screen')media='screen'">
<noscript>
	<link rel="stylesheet"
		href="https://www.nespresso.com/_ui/generated/responsiveMyAccount.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125">
</noscript>
<link
	href="https://www.nespresso.com/_ui/generated/exceptions/asia/locale-related-kr.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
	rel="stylesheet" media="screen">

<style>
/* html {
	display: none
} */
</style>



</style>

<script type="text/javascript">
    if (self == top){
        document.documentElement.style.display = 'block';
    }else{
        top.location = self.location;
    }
</script>
<script type="text/javascript">
    (function() {
        var initialState = {"config":{"currentLanguage":"ko","currentMarket":"kr","currentPage":{"accessRequirement":"AUTH","pk":"8817865327664"},"languages":[{"code":"en","name":"English","url":"/kr/en/myaccount/addNewMachine"},{"code":"ko","name":"한국어","url":"/kr/ko/myaccount/addNewMachine"}],"storeCountryCodes":["kr"],"translations":{"global.addtobag.button.remove":"장바구니에서 삭제하기","global.addtobag.button.unavailable":"구매 불가","global.limitedproduct.remaining":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.  고객님은 현재 {maxCustomerQuantity} 개 까지 더 주문하실 수 있습니다.","global.addtobag.button.a11y.removeproductfromcart":"고객님의 장바구니에서 삭제된 상품","global.addtobag.button.a11y.unavailable":"{productName} 는 현재 판매되지 않습니다.","global.a11y.spinner.label":"로딩 중 입니다. 잠시 기다려 주세요.","global.addtobag.button.limitedproduct.unavailable":"구매 불가","global.a11y.order.summary.label":"Label","global.addtobag.button.add":"장바구니 담기","global.a11y.order.summary.amount":"Amount","global.addtobag.button.a11y.addproduct.label":"고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.","global.unexpectederror.page.title":"오류가 발생하였습니다. 불편을 드려 죄송합니다.","global.addtobag.button.outofstocklabel":"일시 품절","global.addtobag.button.a11y.updateproduct.label":"고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.","global.a11y.link.target.blank":"이 링크는 새로운 창을 엽니다.","global.unexpectederror.page.phonenumber":"080-734-1111 <small>(수신자 부담)</small>","global.addtobagpromotion.a11y.updatecart":"고객님의 장바구니에 추가된 프로모션 코드","global.addtobag.button.a11y.removeproduct.label":"장바구니에서 {productName} 삭제하기","global.addtobag.button.a11y.unavailable.label":"{productName} 는 현재 판매되지 않습니다.","global.addtobag.button.a11y.updateproduct":"고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.","global.limitedproduct.notavailable":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다. 현재 최대 구매 가능 개수를 초과하였습니다.","global.addtobag.button.a11y.outofstock":"{productName} 는 현재 일시 품절 입니다.","global.limitedproduct.available":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.","global.addtobag.button.update":"장바구니 업데이트하기","global.addtobag.button.a11y.addproduct":"고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.","global.addtobag.button.a11y.outofstock.label":"{productName} 는 현재 일시 품절 입니다.","global.addtobag.button.a11y.REMOVEDproduct.label":"{productName} 가 고객님의 장바구니에서 삭제되었습니다.","global.order.total":"Total","global.addtobag.button.outofstock":"일시 품절"},"loginPage":{"url":"/kr/ko/secure/login","pk":"8817864639536"},"homePage":{"url":"/kr/ko/home"},"marketCurrency":"KRW","storeTechno":{"enabledTechnoIds":["nesclub2.kr.b2c/machineTechno/original","nesclub2.kr.b2c/machineTechno/vertuo"],"preferredTechnoId":"nesclub2.kr.b2c/machineTechno/original","multiTechnoEnabled":true},"application":{"recaptchaSiteKey":"6LcwBCwUAAAAAOVh8lXjOGHk2IR1yTh-BB805z8c"}}};
        if (initialState && initialState.config) {
            window.__INITIAL_CONFIG__ = initialState.config;
        }
    })();
</script>
<noscript>
	<iframe src="//www.googletagmanager.com/ns.html?id=GTM-WJGQVL"
		height="0" width="0" style="display: none; visibility: hidden"></iframe>
</noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','gtmDataObject','GTM-WJGQVL');</script>

<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"","rua.cook":"false","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
<script>!function(){function o(n,i){if(n&&i)for(var r in i)i.hasOwnProperty(r)&&(void 0===n[r]?n[r]=i[r]:n[r].constructor===Object&&i[r].constructor===Object?o(n[r],i[r]):n[r]=i[r])}try{var n=decodeURIComponent("%7B%0A%22ResourceTiming%22%3A%20%7B%0A%22clearOnBeacon%22%3Atrue%0A%7D%2C%0A%22RT%22%3A%20%7B%0A%22cookie%22%3A%20%22RT%22%0A%7D%0A%7D");if(n.length>0&&window.JSON&&"function"==typeof window.JSON.parse){var i=JSON.parse(n);void 0!==window.BOOMR_config?o(window.BOOMR_config,i):window.BOOMR_config=i}}catch(r){window.console&&"function"==typeof window.console.error&&console.error("mPulse: Could not parse configuration",r)}}();</script>
<script>!function(e){var n="https://s.go-mpulse.net/boomerang/";if("True"=="True")e.BOOMR_config=e.BOOMR_config||{},e.BOOMR_config.PageParams=e.BOOMR_config.PageParams||{},e.BOOMR_config.PageParams.pci=!0,n="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="NT4K9-3WWLD-YXPMD-LDFKE-BYKW2",function(){function e(){if(!o){var e=document.createElement("script");e.id="boomr-scr-as",e.src=window.BOOMR.url,e.async=!0,i.parentNode.appendChild(e),o=!0}}function t(e){o=!0;var n,t,a,r,d=document,O=window;if(window.BOOMR.snippetMethod=e?"if":"i",t=function(e,n){var t=d.createElement("script");t.id=n||"boomr-if-as",t.src=window.BOOMR.url,BOOMR_lstart=(new Date).getTime(),e=e||d.body,e.appendChild(t)},!window.addEventListener&&window.attachEvent&&navigator.userAgent.match(/MSIE [67]\./))return window.BOOMR.snippetMethod="s",void t(i.parentNode,"boomr-async");a=document.createElement("IFRAME"),a.src="about:blank",a.title="",a.role="presentation",a.loading="eager",r=(a.frameElement||a).style,r.width=0,r.height=0,r.border=0,r.display="none",i.parentNode.appendChild(a);try{O=a.contentWindow,d=O.document.open()}catch(c){n=document.domain,a.src="javascript:var d=document.open();d.domain='"+n+"';void(0);",O=a.contentWindow,d=O.document.open()}if(n)d._boomrl=function(){this.domain=n,t()},d.write("<bo"+"dy onload='document._boomrl();'>");else if(O._boomrl=function(){t()},O.addEventListener)O.addEventListener("load",O._boomrl,!1);else if(O.attachEvent)O.attachEvent("onload",O._boomrl);d.close()}function a(e){window.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!window.BOOMR||!window.BOOMR.version&&!window.BOOMR.snippetExecuted){window.BOOMR=window.BOOMR||{},window.BOOMR.snippetStart=(new Date).getTime(),window.BOOMR.snippetExecuted=!0,window.BOOMR.snippetVersion=12,window.BOOMR.url=n+"NT4K9-3WWLD-YXPMD-LDFKE-BYKW2";var i=document.currentScript||document.getElementsByTagName("script")[0],o=!1,r=document.createElement("link");if(r.relList&&"function"==typeof r.relList.supports&&r.relList.supports("preload")&&"as"in r)window.BOOMR.snippetMethod="p",r.href=window.BOOMR.url,r.rel="preload",r.as="script",r.addEventListener("load",e),r.addEventListener("error",function(){t(!0)}),setTimeout(function(){if(!o)t(!0)},3e3),BOOMR_lstart=(new Date).getTime(),i.parentNode.appendChild(r);else t(!1);if(window.addEventListener)window.addEventListener("load",a,!1);else if(window.attachEvent)window.attachEvent("onload",a)}}(),"".length>0)if(e&&"performance"in e&&e.performance&&"function"==typeof e.performance.setResourceTimingBufferSize)e.performance.setResourceTimingBufferSize();!function(){if(BOOMR=e.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var n=""=="true"?1:0,t="cookiepresent",a="ahvnchtijk7q6ygvfxnq-f-be82fa55f-clientnsv4-s.akamaihd.net",i={"ak.v":"31","ak.cp":"19131","ak.ai":parseInt("166517",10),"ak.ol":"0","ak.cr":14,"ak.ipv":4,"ak.proto":"h2","ak.rid":"41974250","ak.r":23484,"ak.a2":n,"ak.m":"dscx","ak.n":"essl","ak.bpcip":"1.234.209.0","ak.cport":60265,"ak.gh":"23.44.173.79","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1624583643","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==cIKjSYkkcUpWnJ3lvZFUSkQOFYRFJGDU/QOAyS9QUJRLcygc+oZQy0zyHWEyD26/gyoWethArmn0oYWlsG+GZrHhcJKuyOWw5wFJkQXEJ31fpz5k+09haj5/AYRHGBSpqj7dXaVaXzS9Q5qKTzPhvCICyqW6kLqzSLsBXJY4SklFSZmnyuhWKqFmy59KZpIAlc7HqrXMSUxALJ5mlM9agnJrOBdDo2hPTqlygyQjdfO5OuWMWYYAvcuJU2eqcVanGtDfyOvIScHLQ6EqGepNIZfijH9IEXjA0N14u/IRl0INlzO6AVagjiHvZpjTtmtPl0t8H5BpygSUviaAkZFSRSDz3o2qHUmLNtQewCYnuWQ6Y/stSizSt6K15S6w8xGpBW3jkAyc9uaNxPWcZIYzs2KfqWxHot3VY7mCXICmbFI=","ak.pv":"749","ak.dpoabenc":""};if(""!==t)i["ak.ruds"]=t;var o={i:!1,av:function(n){var t="http.initiator";if(n&&(!n[t]||"spa_hard"===n[t]))i["ak.feo"]=void 0!==e.aFeoApplied?1:0,BOOMR.addVar(i)},rv:function(){var e=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t"];BOOMR.removeVar(e)}};BOOMR.plugins.AK={akVars:i,akDNSPreFetchDomain:a,init:function(){if(!o.i){var e=BOOMR.subscribe;e("before_beacon",o.av,null,null),e("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script>
<link
	href="https://s2.go-mpulse.net/boomerang/NT4K9-3WWLD-YXPMD-LDFKE-BYKW2"
	rel="preload" as="script">
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
<script id="boomr-scr-as"
	src="https://s2.go-mpulse.net/boomerang/NT4K9-3WWLD-YXPMD-LDFKE-BYKW2"
	async=""></script>
<style type="text/css">
@font-face {
	font-family: Crema Glyphs;
	src:
		url("data:application/font-woff;charset=utf-8;base64,d09GRgABAAAAACTgAAsAAAAAN9gAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAABHU1VCAAABCAAAADsAAABUIIslek9TLzIAAAFEAAAAQgAAAFZHLlYtY21hcAAAAYgAAAFBAAAEZPVvm8FnbHlmAAACzAAAHc0AACsoFKR3u2hlYWQAACCcAAAAMwAAADYgnlUkaGhlYQAAINAAAAAfAAAAJAuxB3hobXR4AAAg8AAAAF4AAADY0oj/8WxvY2EAACFQAAAAbgAAAG74Cu6GbWF4cAAAIcAAAAAfAAAAIAFWATVuYW1lAAAh4AAAATgAAAJDQZrNcnBvc3QAACMYAAABxQAAAtzQx45ieJxjYGRgYOBiMGCwY2BycfMJYeDLSSzJY5BiYGGAAJA8MpsxJzM9kYEDxgPKsYBpDiBmg4gCACY7BUgAeJxjYGR+xjiBgZWBgXkJ0x4GBoYeCM34gMGQkYmBgYmBlZkBKwhIc01hcPjI+NGc+QWQG8X8koEPSDOC5AAczAvvAAB4nO3TWVLCQBhF4QOESUBknlXmGRlll67CVfjklrIC7ZvrMoT6muQ/oUhVByALZIJdEEHqmxR6fYVpKplneEjmER/JNZHm8f3nJ6wpreE8StZ0uDYTjrPkyFOgGL5ZohzeFR6p8kSNOg2atGjToUuPPgOGjHjmhVfGTJgyY86CJSvWbNiGe9hz4I0jJ85cuHILP5fj/1XWkv78O7trRyzZo7Shz4xpr+PIkuOsaQfjnOmZiPOGZgVDs6Kh2YOhWcn0rMRlQ7OK6U7jR0uOq4b6k6FeM9TrhnrDUG8a6i1DvW2odwz1rqHeM9T7hvrAUB8a6iND/dlQfzHUXw31saE+MdSnhvrMUJ8b6gtDfWmorwz1taG+MdS3hvrOUN8b6gfTfz1+M9SPhvrJUD8b6hdD/Wqo3wz1d0P9btx+AeeDiTsAAAB4nI16CZwkVZlnvPfiyIjIyMyIjCPvK/KsrMqqyrOzqjuruqrv6vumG7ppusHu5lCgkUM5XI4BHEa5sQEHYXTkh8uyuoKAKDqOtCKKeM7CjI4jboOO62i7olZGz/cis7q6m3Z3MzNefPHOL973ve/7f+8lgxj4CK+So4zMMKggIgEJVstqFYRXx2Y3zm4cI5/0jKlqVSSfnJ59mOydnv2UZ1pVpz3QzG1LXiZhhmOYHGqJyELHnIHL0V609/LvoB9d7jwMRL8e1yT3Mphh1DTiGt3zyb2zX2KY08pytOxPL+OHNpGpE/2Hycu0/yDtv3Ci1/mBTqsHbwB8kLAzcAjtdR4+hI6hH0IT5+HLT+UXKomoNd/NfIt+vdfwfoaHzoW0kbZa+A+4O4Jfxa/j/WvPW3Md5RbqrCNvMSoTpTNnNyo440OCYQvESreQ3ejgagI4WRD+Hhqa2T4zhL4XNsMkFna+9QuUbCyqJxF+M7R6cNXAwKrB1aFuLRTCb65O1uLxWpKhHEL/b5IdjJ8JMzZTYMowSjrDG6pu1tLVZkOtoKDO2+lMvqGmG+lGvQnZpoGA3VzNsMnHZp+MDwzEydb4AC7rMXP2SSNOnp5dFTfIViM++xBOdv8VP3D55eSsgXj3SGJgIIEXxAe6HzJjMRM9uK9txOOG8+dyudyfjx+TTSfJeZfzuSkk49bUfWjNtPN73Jpm+nOSJmlGZyLAbdUyLVMXeIHPFPKFfL3VbDUtoQD6hY5tWLakWCoVlyx7dI74zAOtzFnPkdQpmS5x5MEFmbNBW8jx45AcBV01YTZGgZfR+Y7nB7NRneamKB2guSlanmvB0DDwBw/uXzgxsXD/wXfmiA+iY0umLz3k/ObQpdNLKIUClHK89yc//8VE+ZS6LoG+cetc1flG2x9KfPHp5P83j0aVZgROZTRI1511Rh7PMOK1hxNfeDZ5Bv7K8y8x3wLbh5PPPpt0RdRfB/8AchpgKsCjy2KAcpSifAQoRyRDU50+u7y6k2oTUC907IaLL+xMTnYuvBgxlxzsLF7cOXjJDVecf1574cL2eef/Eojx8bE957//FfSgc75BSxEz1+K424LcOl9zjnD25ud4+xfgjc5fC7RoZDRzqiTdSSOnzSrvsmwbtlEzao1aw8bCSUzOUTe8f995Y8DbeftgxLFxRMc+L//cc/AjX53nbp7j2avn2Ou9Gm2Or3su//zzlNfjf4DkbbABGWaK2Qm8wvrne19gyUqgWrVJOWx1EOW2UAHbCibB/Qm9uvl+QSHfq2dBXhxZZhLadlCrmR/GKkx7Br0xc8d4PBxUNxmBQj1eWPb5vVs/MV1Mj8ctYsQmMqXpx7bqm+7rCFF+2VhAnqqd/cHp26eao+uayaJHNpLDm6YeHecwwpjD11zDcQhzHPkZ4jwsOcrWBs1w0LjgQ7u+sH4wv3RVu5kqrti+/IGVe9aV0s0xFGcXtoSosP7IgeU31XalNc7UkrU15X31lX+zePd0o3EZ4dBTTxGWQKeEkzFCaA0W5+zyUZgf8C050fUurtklR50WeqnstJ32AHrJaQ6hl9BLQ+ib6KUBp+0mbp7TBtfk9vEHWE8JpgazvJQ5h7mauQc6r+cL9WFUQWABhbwPUbuYROY46llHDvSDljZIvQl5SZxARmsYg4VMoqppgdW06hmQV89+dtAE6iDXfqogAFcew6gnG7XWsFxp4laDzyPTGjXdZ9U2erLDgtEEgZLfBv3+c7W62Z02PJJfswLbfH7Rn8c/CeVnH0eYkG2yJiEW5klc6wtKa0Ic/opW9p4rsGx3TBtkWWKxitDN+IMcSzDr4/FPfDom7Otm1a+VcqKeUuOhQbUWEgvR9TuK4ZbzZnyJm2uVtWo/tzEarpOQFhN03zZ/0McTLdiNGzX/Wl88r3MIkTXygB8fFTAi0kqhFFyxJMhp8jbEaiky+1OWD/rxvxCO5yjVzWBOfFYomEaz6o0NGtmg850HQ0stXyGaYv2swKN1mbPleBkK0Agt8BciKdbHiUEhT8Wmu7bwb0F2GpNnJpjtzNnMucw+Zj9zEfM+5hBzFfNB5gbmVuZO5mHmB8zPmF+DVOlMgsGBBUNlQJ1FsCcOH6ILyqpVKTgh8wIyXPG4SwrkU6A6AM8NVzgV2ktPOhw1DHC14BL+wr0Al6WDRoBDzanpYFqwM3yOLsxxqjOGDZ3ofCa/CJ24u1yUUaOCyigDSzqOoIlBqIs25vw0KGoG1rRuVpuLQGsFY47K8OizzebaW0ZYWcCk9pGNCxeKYxvfU2+sv3sMshDpPLTZ26j7h7Zfo9hefdgwvMFAPBSVeYuN7xzIfE+JDZuy7o+5WVxs50A667PR/WPweXxsbEu7Denmk36Pt9svcc79LLrM+aDjCWGel0TF+Q6SJG9gvZ5An8VPLQ2YgcvhUlUEtoJ9GBWj6y1NVj7JcmGOxUgR0QFRUQ7wougVxS+JisejiOTTRA5snuR4mZ3eEfCS/NLE7GdlhBc2WeSR2PYEUVIzKiJc1GdOxuO+sPfVA0lb8QAaAn0T/t2Xm0j4QsqrBxLZXqYPCz4+8spUbOr41Afgik9NAT019cjUlWC62pudj2L2OuVFf1RSCpHsR0pev99b6qW3YIxJNjOieTNaliPdX7KcFxgW0R2iUhP5NYIoCmt40T9HgJ1iXRszhn8N+MYCTR0DPbQa9bwtWDyVIqgcb2fAltRbhSTiBaqhrh4iCxCeoQtWs0UV0s4AVUOzO6r29YOkmhXFwUSqsDjv//hiZUUmfM6iyWWTC3dnHfGd/FRe2jSVdLPGWp1wFE/uZLM1a0iUslU85C9MFdLJR6aUsW0Te6Ox8J4cRocKU8VoZPOCDZPnxWJGRzrhx9v4BcbDGEwRuM7wVLdAx4DbegcBd7oPEaqYLtNVcDAupxjlarWVtVo2P5HLTczQJLdsctE5YcrRh+cIPEHrrKz9a78KJGhXNHpuZ+LcKHzOnejAfQ6no2+RHwIXDLJV+IIHrnfwODJsColr6HMXv37WWVplXefOtWYC3YJ+40TQL/77gcTyTukpkrFWMh7XVvyYfJlpMyvBSlzKXAF2/jDzHEW9PSfabPQgiAsHhHxhtPdA/ajhwhTrNHhs56BRrQ+6oFozl58DDaNNq2n17LiRR3Mwug+hVRdD0wv8xglDDwvddTcZXhit0m4TKOiaIXzCR1DbY1Cv3xrN8Hae3Om872+XGV4/H/BI0XDCTm6sB1guMLI1l44PsCorqtGV6y52DsUHyjGyMj5ACnHn5tEVyVjRlHlWSb3/Q5JzTFU8XoULKGk1mlw9Knh49hF8I8D55/UEQPlVwaTzY2Q7/9y9BmWdN9Bf+/OZcC2dl3ycHAzwcTk8k9NiKgwWTQWHfhMc9AbsdLiWyskKL+l+MR2eydtJKK7gt0N5WZRlNexV/T6PN7k1rSjpdXlvgPOyqlcNZ0JxtZjsvhIbGIjhWrK4bmVSUWHJW1q6rMfTvMgrmkXfCiElsUrW/Dwb6u7SEzETV4LJuNF9DV0/PT09ow2Xc2tiSL5NUWUlZopRMZzgBdYr2c73+IwWrAzm1kSd/3Obokm+qOlNo3Bc4SgO6MVEb4E/0ZnFzBpmB3MJ1fkzokPQf9du52HR2r3VMI4Emy5XHnTBVZjeAw9K2qAKC8DRyPVcTYJ0kJC3gdJdcfZVr4CO3XpqkECpowvOadUHK007KgWHluZH1w8eGZxMZhJRy6/7tUJyZGAYFYpXXVW82rlZmCiEC5qUGq7l1YIZy08VMwvza7IpwqlSghw9Uxwy+0y8sXxKN6IxLZifXjtdTHknC4mmrpmqbAR80bFybipoop9dfTUdQ6wuxyjZXNzO4GTrpx4UG1kwGktEhgVFC0jGnM1IkRTMYYiJzWH/08ITAl4Vlm3jTHHawWq1euTdQRr66pEjf6pW3e6Pw8eNgXQmzkBW+ozxBTVU1GAFASQ3wMAWYAVSL+2u5TPO9F9Fs9lGzl7tj3tEv+XxPDbBeazIGaOdz2QX5HILsk6aY1ezihxC9obvFs1UQJ+zm+wfgT8C+JLue6TVNKqpNoGL/eNsiBz980cqlVuHhshReLhj9tv4R92b+liUexDwbJppMOPMJKDRVcw6tz2oj1VrNQuNGn2tMqqDWQBcAEbEqEHnFHLCexlpQJxgaUZhJqCR3UgjCN2N1qkJd9j557aqrkcsN8F6POwqQlTLysze7nw9zt7qvCFWDbQMs86TRlX0ml5e7n7N+aOJ4vjfu7vwQ/ypCRLQ8G1tbUWjKHgAabIxa+vF62d/QA76REB3vOgzFFWQZj9Hylb3FtN8xDQPW9YjlnVi/+XreJCuPEDKRrqB77+ge5R8BpdvvPHkeDzGLITZYHIAiubiGcNWzZ5NTGBwl01Ypw2wmn18Bt6oUVPzPbtawbBiQQRkQ/7QxblRn50VkkIVVlBc0tuN8uLIcEnr3h6XhgfHL86JFY9b3khkkjFZH2tBefl/U0Ed9ZVyo1qxJhekb6CbwuV8JRBZvaxRk1WCo4RQCF32Q3Fe/pbzfigeguLljZrkm+3CK8DH777v70gTqCTI9U7mfkCmjzGPMz9lfsW8g1gUQDFU/L/sw/QdiJCmgC8vUAzhknYPAI6jfqNFgHNP4MNmnuv5sHHUMuYocwIZ7849mUqrVM+ovi1C6SAM1rQa70pBvcyaZXao72qYVm2Oms+rjb6rNA0OkGox5V0HxT2VbtR7dO7/WcfQycuzZwV0PUCe8JnE8kie2S0eSfKQJzzSEucDhFUtljhXYi5FIPpJQXh6C+ZMFQLJmwmHidMiXswKrNS7QXB5yvPczbkN2kIP6MoxWCbqyRe62bkNE4h5ecxqcIfIBhThRA5LCAt3FQqwW4KunO2iQQiNsfN9AgHyPM2ylGad70I2OoIGKcOQD+nptEuSRjDQ/Z7P1AOA5vTuU/St8RBN/SyxOc6mtWH8fZhzbqN0m+cbbg9/IOCKIfwTiLARs5jAeyO0sZ9zjntnPTO9EqGM3kfYrRzWnM0cN8NxKs+fw/N+jtvIcZqbOkvLEJZjniOemT4h7JjLWUsI4VkWBkI9IusE0X9hOfiw+1nI8OB9LIzDs996dyZxzaHHtaUmeQ3sqB/sYhkswTJmG7OHYmhOFdIFNdfi0gJd3pYfWX5+mAiFlpDEE6SQs4SCHw9zE7hgjfpRkkxgmsMOs61hZI0atBZmvaLzR8kZlyFFMvqyx9mA/ltIlFAEaVwQGUKWbwKM/+h+XI8FkKqEnK982CcKaz05XgsQATexJ4IanOKPrcG+pwClDHAZwTQ5E3uxmPaqmhYpYfyCfp3jkyT02+v0G0wnjn8U5Dx7PSnOgz1I5rZxJJgfxFs9PBbCe957peohSwgiPj+fFbaLgkW2xBQZTaE3hg0i7OL8iOfZuPAekYjsPpNnvTtdlwMTdvw4XgDGxoB5akI8fBXzCPMVmKkKpsEsONyeeWw1qMN0aTeQpbhTMABx4iCgHXdbqZBvudazB4apVdDdprXqBOpBZWjCAyO263sb9VYfRFM8DDXhxwfzFMzyLnym4QH9UjPVcsNTdzsKeqog0tvTGi3k577QXW9324Toh0fXKEk9EqqkomYqES0O5IJy8AklXCjplmV5kuGN+aAUjCRXjYmCLxvKDXiU9wdbRlSdXpLwmV6isILERvKVFTs6sulRBeIjVl5fVNpZNb0SEfhwVY8FMrlFsQILMBET+az3Nt9TKJhWRls6Vk5KPGgmEXSj2VpqZEiFyx1oG4IACm6XD+RU+nYr9hzcPaMbnIA7vBVOp1aGn9uZKmRCEMOCFL+tZJpt7bndyaSSjqheFmGv1Z1QOIlXPIpP9nIICbD2eCxhxa/wOiup4JXlgCRgqeL3EAEAskRXJ4GFB3VJABEBFic5f20pVxipNbdOlDbX8hOGqcss4aldCVWbI9XNpckt9fOcf1q7s9ZUDCHoWWbvXJvNpvK14cEVhfzKweHaQCwHeqO4fulS0Ju5k4Bhpsa0AIFMMNPMcmamh0H6jsY44WNqvd0HcK01Nw/QBcU57h6prfavFrh1lbp2ClXgS/p5ZFf3WknsCF6vgG8UvJS4ovtMGp4iq7vP4JXd37f7nwdQwvnZydcD/TxyVPa0vcLsA7STttdD3iN4Z7eSShd7vLHVpOLc1V7TRhNt58l2Po9G85/K/zSP/nGsUDiBPbzkdXcP2EeEfAe38oDiLdOHXecFCu5zN1IrqNUhrSaFGT5MoccoWiGGMsNZSY5lvHpmarCpF4Qly/cMqIOTn75zp19oZNePEzK289Ci1R+9fI0kpzZet2GoaqPNtd1bV4RX33LtVQsz564va8bl11+k+C544NGhSWnNPTsrjQntqi3Lr9jWFDzRpRct3/jIdSt5UjCYeaxEXuzjSZvOKcx7mvyjc9FNzkXonpvQPbiM7nUuvNG5EN1Lq0vUHpBvuGcFcSYFch05SaoMGi007IJgG7CK59FGk2vUJ7CBWuDbKeQQAVOATuXUtGUIDVjWub4g577kaxf94trrfrFH4swA2Rkw0eylvDqJtI0b0Nmzn+QF9Bx6XjjgPO18Ht/7vm21BN89F73sNE6+8GOrP7F9+yeWePhA92MB0wzgg77RFMcpg4+gc9vt2ds8HC46r6Ba98dgMPk330Tb304tesQ2ucPqBHwnVXhD5vg75AXyJhOAt6yDl1jCrGY2gafYyexm9jIXMpczH2CuZ25k/op5kHkS4v7vMq8DoqSHNr198lYCDFvB3YirWXSPH3QWQjaL+pgGuJlWjR6BUSifg5mwC41W7bQ7LYNqwf52H71o7Mf1i+3T7tZJ9XLuNiNgWdSy6X4kNdctsLB0a5Ha3dHehmPOBqZs6DNt2DnBNZXAvGUUWpZAD7/AwOZcLFgDs4rv25MygnjL3v3fWO9b/eLXN405B0vj6FbZMFDHmJBlJyw5a2X59rEB/IRTQa85/1WWV8ny9yVpRpJ+4tLOM04bfVoyDjYatzca9zQajv8t/KZbtMqtNuHSE3PF3Uu8MSJhb0kj3oDg53KGlPaWVAgBKA3hOPEivYFeaxjOVw30oJ7ZsPbCiy/buW7sPM2QN5175WXv3bS5+wGUHvo4qtzgP09YgBv+QGtxoFNPNEX89lhpVLoiBR/JuVqWUxJ6QxotjTk3Of92ndRj6aQUXeaMoY2S828N+kEr3nrr+ndXMtzCG3cO2yywLQoAAmVhJCYSL/hioPnRmLizkuHkBRMTkiSdLVyyYX02q/qHkYHOJwurAS2f37RlXSU1OpKuMP29PvwWeYEJMhazALSQodtkIBFXkVwt6qAaRy1lb/sM4rWCAPJLuCcydboDBO620MFBSlBRQh66Mz+Z+wdJ6m6VpFdyk3m0onsQ3+f8j8aOen1Ho7o1GpUWha01gyPrh4fXj5RnRnldaG1awKZa6WPpFnkBWs9I3e2ShD8tzUD7t7sXYW/9rINn1YdL8uqKnC0Nb9i9frgAaG54TRntSrVSMzOQ0Pc5EWtnmSJgL6a/T3VKjFLP1d1NbHDvfBmB3aBxp2WrPdBugLmqnahbdfXcIK8r2jNaJ9L9O4i6o+TCSLb7rFe81uP1eq4VvWiN40XH/n5zNtL9WSS7Ge7oykhOTPHPCAr+fhJaRrKR2Xsi2WwEnxN52aMonldFr1fsPvanPyF/JJeLOP9Bppz/oBTyK8IzfEp0RdM/a6YxJT09LXRQb+9l/jSSHqq5RwRnPGAmR35dGW01d+56fffOZguI3RdPXFH7TaCcRN1vb1g2XYTP9LJHly6hxJKlZ73TvGX5Jbt6VXe9vuvsRiuX/VMgUSbNUq9eoVQqLFn6KLQszfHHZoA/0d3tzMmIQyQH+DBX4IKFXBRxgsVmnLse+zvnbuTpoOVo+YTm/N7v/KL5czR+xx1o/OcEH2yglc4zjeOMc98TT6CDzvc/7LkbLXijgmLOzytvaKeNo542jhr8C2P8xc7xy3P9opP6PanX03s7vROK84//liyEdo8zTzNfZ77JvMK8yvwvpktP4npnIKBLLsIsuEByHHXQov4RGj0Ct+fA4yiIMsP3N1/7m6b029tgdc95TBBpo+lurfooxqQ5FOLadRfcwhDQkQtKex0Y/b6HUUbQzep835ZhZwyi1yy9lm41oG2NLgG7UaVduPuDtGM/ZRNiaHAOViGKcvNnSCcdIVEGcf/Aaf68icgIs/wNubDfo2BeJx6ZzysCx0eiRtgXZnmCwsnwlkVDVgCLGEJaPmAmiiObwwndML26ZgZlq+LxSliE2LYmsVHBw2kSD7EZFoIcZIaMgN+DBUFkVSNgCyGf6Q9w3LBs8HU7YfqDkRUcQF3JpwdMRVPNVLb5lBSC8BPjTc7zPiOpRR/lFO19JKL5CLsszAmcHDESaI9jhtFb7MiIknfuTqeC9GApJpuaPxTZXsqk9COWPRU05GAgOZcZQn+G2JPkU8MBOaiXbCKIXIwA+B1NhBTBg5HEs7KY1UIY3sXrt/w6J7OcIAq8Nxgu8lrBhe6cSNqVlK4WY1rCT+ARCyQeCOestCLJHgSBgG8wnzA9xOMLR0OZpChhiTU1Ozw8kwVMLXhkLZwZjWb1ED8lOdAYTQk4KOi2NdBiuUNqSeZHFisi4WW/2d2L3nayi0NDKON8/XhpIBz3Wd4j+5SEpYcimkJ4Rf6zmN0YiSshNzsUDEM2y82dOf89eYvhQO+9gLoXQqx2CKxRfdSOIuoMQFlyjfmTwTQaJf1VQFWmdxYI2f2zwFxtArs7y+6ZxYkz5Tkleteh8pzS0SqkiUNL9/HbL+saNv6lM4j8vqB1WWIIObN4YjOLCPsSivrs4GWpcEBDzu9YPsvTk/jrMHKe1quB2BLRTARiZsnOBcQ0X7pxoVl3fgW5RkKFXHB5ngxfpLlhvfoKQn/s/tOuKwe34V/pHbPkC7YLne4OfJjDiO1UMpoWVkciHZ7tgqzQPsLvEAp6eqc3MWBkNOcH9w/VNDnLFWIG3SVZDQXxsm5rqHx/uR48USAJAPB5d46P4S8xUabEVAELbmXOob7YTBKAX+4+F0xD2gfOqmCDX0Y8jXxb1KiAv+XmTrro1mvH3V7thav0iLgxjGH6qBuj0NDFcTCf+PDgTHDgIVHZheOh9KISca5gmzMt0lYU/DXT4zObSdWIj3RfiBeL7WIRfaL7hSG+sawuoL/BPG/5EwsH+A0f8wwGFo2namJacX6nKA9/5FdRPodfGC5d1lJ+qOBIWfT5K8lstZZT0I8UZ7PHSLQsRUjrJJSTWdpvu4hud5ZkyuWMIvstUMJi4sstz5XpfDQbP1tV7lEi16wyov35eZZ8xcUpUSYJkd+QOz+GAOCSwJsRu/evLw6UEQUFkrNIgYAnb/URZj2PVwZNhFZsbEvdj0ljG9ByI4i+2B1r4y2Ov6jDK+pF/fqBvZ+Vxf8pkhf1YLE0+5YoEqtUDOpXzf4Of7N7GOELEKK387uH8QWPi3KxKEkn/MiL5JvMFb3/vdBzPnq0QgQf7mvwMKJugIql98u4+Qn3CLICcqTYGVebNdt9pjVO/DvGoqetVKJg8OFnWpTqjwLu32C/rJUsSRd5wdxy9cf32Nt3nV0sr4SgSwtG/Yri1Wx1YMb2FmU9p42tsrT1XrOk1ScjUsSneAlosxgVk+Ug5xMsNRtcfN/meDsO9ohVVlWjij+5clvOXhyLyQMR3icUp5Nke3RYE/2eWHpxct+nbt4Tl/wcL0khP69JMkGIwHKIah5DAYiyZgHBEla9iQOTvJf1YCiWYFVcOq2lfJFgxl9dEeQ9SIn6Aglfc5MpsoRFgynO9PszbZ0XWRSV0BwOutf9b9EgWJ7+DnO9w9WqFJ5V6bTUqgkODAyfydeboBjknt1ruy+t280phl1ZXOTNkei2bVujowZfnBqCJcW+etd37r77O3c9vm7HjnWZqdWLO4MRX0qNxVTgbLCzePVUBi/df9ddr951135mDiuTC8mFYAMNZgDiUgbRfz3QwSiQFHrjQvh5JiAWnP/X2Dx2Q8e8qhpSVW//tnXV8oHBwYHlqz4zR2y9YNuWaq1W3bLtW3MEOqJ6D0MDmhxQw9BSQ6+d0sgluqtPaeUSvXnEZ8M8egAhwzyavWOnoEpTCpCrTfTXi7Yugt/HY/kY/PaX6cMiJOOoHo3q3TeDsdh/AiTB0G8AAAB4nGNgZGBgAOLUAs+keH6brwzczC+AIgx37nAYwej/3/9/Yr/A/BLI5WBgAokCAF3gDbAAeJxjYGRgYH7BAATsF/5//1/IfoGBkQEVmAEAj1AGOAB4nGNgYGBgv8DAwPyCgYHVFIJBbBTshy72/z8Ew/nfwfRHIF6BEGd8DFOL0MfKCLRjFrI5QLqXgYHJBCrGhmTPMSBORfBZFBEYrgYkvw8odgNIT4GKPWdgAAAYUTUZAAAAAAAAAB4AMgBAAE4AYgB2AIoAnADMARIBJgFWAagB+gJIAp4DLgNQBC4FggXeBiIGRAdWB/gIKgh6CJYJDgkeCYYLIAu2DNINTA2kDb4ONA94D+AQSBCYEMwQ+BEUEooTPBPMFBwUzBUOFXAVlAAAeJxjYGRgYDBj1GQQYwABJiDmAkIGhv9gPgMAFBEBjQB4nHWPzWrCQBSFTzRaqqUUCqW7zqqbQvxZdOGuCGbvwq6jTqKSZMJkFFz1MfoEfYxu+wZ9ir6EJ/EuQsEZyHzz3XMvEwB3+IGHanm4qb/VauGKtzO3SffCPvlJuIM+XoS75FfhHu2bcJ+dKSd4/jXNIz6EW7jFp3Cb/kvYJ38Ld/CAX+Eu+U+4h4XnCffx7L1Prc4iFabHYlPOdbJPI9tUTV5oW25NrkbBsNZnG+pc28jptVoeVXlIxs7FKrYmUzOTO52mRhXW7PTKBRvnislgEIsPVibDFBYaGSIohPzdIwpsUGJOm2BPEzFxKXXJL2gtzy0MctZGCDBspJvZkC6v8xEczzXzS1YVawe+YUzrEPMeM2PYrzCr51bplNvQFHVtR7OiDzi56iowwYA7/pcPmOKkE5S6Z9h4nG2ReW+cMBDF9yV7smeatumd3rd7N/04lTEDWAu2NTZB++1rYKWmUv2H+b0RM+/ZHp2MhpWM/r+ucIJTjDHBFDPMsUCCJVZYY4MtdjjDLZzjNu7gLi5wD/fxAA/xCI/xBJd4imd4jhd4iVd4jTd4i3d4jw/4CIFP+Iwv+Ipv+I4f+Ikr/BqdSWbbitSGYGsRSm1WNyubQWRsXWZbsx1krquKMtG4ZNAV5WE5IOuiDPOBGzfpYZpKv6cwVpKziSpJ7df9HkeklVT7c6VZVSRuGm//qUWno661WR7RVY2fqMqq/USx9X6VUaWviQ/C5nlC0kfgjDihA4n4n6esR+vIUDbPpaLU2v260HkQXba+r7C2qKibvdXK/iavKlnLoK0Za5PblTaBjNchDjfLWqp4Y+Qjn8Zkm4iOyXsrKlvYi7/yYBsWQdfUeSwMtcdopi2J++LUSUfsF64ziE1h3GVYOCtMU6fEWybVMGtTDK0zpv678/KauhfpDtbFnHqSrMrEB8mCahcOix5LWeXjjnY+2OjptNo3rrPe+Sb1inXfLlJZLAPHyxl8JpF9OQutDjHXuPHEm1ay6YIMDzE7ytHoD8Ck3+AAAAA=")
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

#tabs {

	width: 184.27; height: 190

}
</style>
<link id="dnsprefetchlink" rel="dns-prefetch"
	href="//ahvnchtijk7q6ygvfxnq-f-be82fa55f-clientnsv4-s.akamaihd.net">
<meta http-equiv="origin-trial"
	content="AwT1b8oq50zre+sKn5NsGOAlmHkKIV1dYwqfiDFRF61tCS1l0Wg/jqJejtPhHcv0uVFTSeLP0QQS4bf1KjGMpgwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ21hbmFnZXIuY29tOjQ0MyIsImZlYXR1cmUiOiJDb252ZXJzaW9uTWVhc3VyZW1lbnQiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/966523418/?random=1624583641186&amp;cv=9&amp;fst=1624583641186&amp;num=1&amp;label=28k8CJ_rulwQ8Yj0zAM&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=592230570%2C2505059650&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=50&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2wg6n0&amp;sendb=1&amp;ig=1&amp;data=ecomm_category%3DMachines%3Becomm_pagetype%3Dcategory%3Becomm_totalvalue%3D0%3Bgoogle_user_id%3D4908990&amp;frm=0&amp;url=https%3A%2F%2Fwww.nespresso.com%2Fkr%2Fko%2Fmyaccount%2FaddNewMachine&amp;ref=https%3A%2F%2Fwww.nespresso.com%2Fkr%2Fko%2Fmyaccount%2Fmachines&amp;tiba=%EB%82%98%EC%9D%98%20%EB%84%A4%EC%8A%A4%ED%94%84%EB%A0%88%EC%86%8C%20%EB%A8%B8%EC%8B%A0%20%EB%93%B1%EB%A1%9D%ED%95%98%EA%B8%B0%20%7C%20%EB%84%A4%EC%8A%A4%ED%94%84%EB%A0%88%EC%86%8C%20%ED%81%B4%EB%9F%BD%20%7C%20%EB%84%A4%EC%8A%A4%ED%94%84%EB%A0%88%EC%86%8C&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<iframe target="_self" title="SaleCycle"
	src="https://s.salecycle.com/receiver.html?sc_frame_id=51c5dc66-6f41-424c-a5ba-f0ac7ef447ab"
	style="display: none; height: 0px; width: 0px;"></iframe>
</head>

<body data-new-gr-c-s-check-loaded="14.1018.0" data-gr-ext-installed=""
	class="livechat-collapsed">
	<section id="nespresso-livechat" class="is-no-animation nlc-collapse">



	</section>
	<h2 id="a11y-main-heading" class="visually-hidden" tabindex="-1">나의
		네스프레소 머신 등록하기 | 네스프레소 클럽 | 네스프레소 | Mosaic Site KR</h2>
	<span tabindex="-1" id="a11y-message-area"
		class="visually-hidden display-none"></span>

	<a class="skip-links visually-hidden" href="#a11y-main-navigation">
		메뉴로 넘어가기 </a>



	<a class="skip-links visually-hidden" href="#a11y-main-area"> 컨텐츠
		영역으로 넘어가기 </a>
	<div id="headercountrymessage" class="crema-ui-container "></div>
	<script>
              //window.ui = window.ui || [];
             // window.ui.push({"id":"headercountrymessage","module":"HeaderCountryMessage","configuration":{"translations":{"wrongcountrynotification.a11y.title":"접속 사이트의 국가 안내","wrongcountrynotification.othercountry.message":"현재 고객님께서 계신 국가로 배송을 원하시면,<br /><a href=\"{correctStoreUrl}\">해당사이트</a>를 방문해 주세요.","wrongcountrynotification.a11y.button.close":"닫기","wrongcountrynotification.currentmarket.message":"현재 대한민국 <em>네스프레소</em> 웹사이트에 접속 중이십니다."},"props":{"activated":true},"eCommerceData":null}});
            </script>



	<%-- <c:import url="../header.jsp"></c:import> --%>

	<main id="main"
		class="content account account-address account-my-order account-my-order-empty site-width wrapper">



		<span id="a11y-main-area" class="visually-hidden" tabindex="-1">메인
			컨텐츠를 보고 계십니다.</span>


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

								<p class="member welcome-box__label sessioncamhidetext">${sessionScope.userSession.lName }${sessionScope.userSession.name }
									님 환영합니다.</p>
							</div>
						</div>
					</div>
					<nav class="myaccount-menu">
						<ul class="nav myaccount-menu__item-list" id="my-account-menu">

							<li class="menu-item myaccount-menu__item"><a
								href="<%=cp%>/login/myPage/myOrder" id="ta-my-account-links-0"
								class=" myaccount-menu__link"> <img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&amp;imwidth=34"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&amp;imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&amp;imwidth=68 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&amp;imwidth=102 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071459358/order.svg?impolicy=medium&amp;imwidth=136 4x"
									alt="Responsive MyAccount My Orders Media"
									class="myaccount-menu__picto" width="34" height="34"> <span
									class="myaccount-menu__label"> 나의 주문 내역</span>
							</a></li>

							<li class="menu-item myaccount-menu__item"><a
								href="<%=cp%>/login/myPage/adress" id="ta-my-account-links-1"
								class=" myaccount-menu__link"> <img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&amp;imwidth=34"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&amp;imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&amp;imwidth=68 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&amp;imwidth=102 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071524894/adress.svg?impolicy=medium&amp;imwidth=136 4x"
									alt="Responsive MyAccount My Addresses Media"
									class="myaccount-menu__picto" width="34" height="34"> <span
									class="myaccount-menu__label"> 나의 주소</span>
							</a></li>

							<li class="menu-item myaccount-menu__item"><a
								href="<%=cp%>/login/myPage/pinfo" id="ta-my-account-links-2"
								class=" myaccount-menu__link"> <img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&amp;imwidth=34"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&amp;imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&amp;imwidth=68 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&amp;imwidth=102 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071590430/personnal.svg?impolicy=medium&amp;imwidth=136 4x"
									alt="Responsive MyAccount My Personal Information media"
									class="myaccount-menu__picto" width="34" height="34"> <span
									class="myaccount-menu__label"> 개인 정보</span>
							</a></li>

							<li class="menu-item myaccount-menu__item"><a
								href="<%=cp%>/login/myPage/myMachine" id="ta-my-account-links-3"
								class="activated myaccount-menu__link"> <img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&amp;imwidth=34"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&amp;imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&amp;imwidth=68 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&amp;imwidth=102 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071655966/machines-ol.svg?impolicy=medium&amp;imwidth=136 4x"
									alt="Responsive MyAccount My Machines media"
									class="myaccount-menu__picto" width="34" height="34"> <span
									class="myaccount-menu__label"> 나의 머신<span
										class="visually-hidden"> selected</span>
								</span>
							</a></li>

							<li class="menu-item myaccount-menu__item"><a
								href="<%=cp%>/login/myPage/infoAlarm" id="ta-my-account-links-4"
								class=" myaccount-menu__link"> <img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&amp;imwidth=34"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&amp;imwidth=34 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&amp;imwidth=68 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&amp;imwidth=102 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595071787038/contact-pref.svg?impolicy=medium&amp;imwidth=136 4x"
									alt="Responsive MyAccount My Contact preferences media"
									class="myaccount-menu__picto" width="34" height="34"> <span
									class="myaccount-menu__label"> 정보 수신 항목 설정</span>
							</a></li>

						</ul>

						<div id="account-menu" class="dropdown">
							<button type="button"
								class="btn-container btn button-primary button-right-icon  account-menu__dropdown-button">
								<span class="button__content"> 나의 머신</span> <i
									class="responsive-icon Glyph Glyph--arrow-bottom"
									aria-hidden="true"></i>
							</button>
							<ul class="menu-items">
								<li><a class="dropdown-link"
									href="<%=cp%>/login/myPage/myOrder"> 나의 주문 내역</a></li>
								<li><a class="dropdown-link"
									href="<%=cp%>/login/myPage/adress"> 나의 주소</a></li>
								<li><a class="dropdown-link"
									href="<%=cp%>/login/myPage/pinfo"> 개인 정보</a></li>
								<li><a class="dropdown-link"
									href="<%=cp%>/login/myPage/myMachine"> 나의 머신<span
										class="visually-hidden"> selected</span>
								</a></li>
								<li><a class="dropdown-link"
									href="<%=cp%>/login/myPage/infoAlarm"> 정보 수신 항목 설정</a></li>
							</ul>
						</div>
					</nav>
				</div>

				<div class="my-account-banners">

					<div class="wrapper-push-banner">

						<a class="push-banner"
							href="https://www.nespresso.com/kr/ko/myaccount/showMySubscriptions">
							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&amp;imwidth=750"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&amp;imwidth=750 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&amp;imwidth=1500 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&amp;imwidth=2250 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10253880918046/312x258-KR.jpg?impolicy=medium&amp;imwidth=3000 4x"
							alt="" class="responsive-localized-banner__with-link" width="750"
							height="719">
						</a>
					</div>

				</div>

			</div>
			<div class="main">
				<script type="text/javascript">
config.machine = {
    urls: {
        goToMyMachinesUrl: '/kr/ko/myaccount/machines'
    },
    texts: {
        errors: {
            missingDate: '*표시 칸은 필수 입력 항목입니다',
            futureDate: '구매 일자는 다시 확인해주세요.',
            inexistingMachine: 'register.machineRegister.inexistingMachine',
            missingStoreId: '*표시 칸은 필수 입력 항목입니다',
            wrongSerialNumber: 'register.machineRegister.wrongSerialNumber',
            emptyPurchaseMethod: '*표시 칸은 필수 입력 항목입니다',
        }
    }
};

</script>
				<script type="text/javascript">
				$(function() {

					$("#tabs").tabs();
				});
			</script>
				<div id="my-account-my-machine-add"
					class="my-machines my-machine ng-clock ng-scope">

					<div class="heading">나의 머신</div>

					<form id="machine-edit-form"
						action="<%=cp %>/login/myPage/myMachine/addMachine_ok" method="post"
						class="ng-pristine ng-valid ng-scope ng-valid-maxlength">


						<!-- ngIf: !isPredefinedMachine -->
						<fieldset id="register-machine-range-list"
							data-ng-if="!isPredefinedMachine" class="ng-scope">

							<div class="select-range-bar">
								<legend
									class="select-range-title registration-machine-grid__legend">
									STEP 1/3: 사용 중인 머신 종류를 선택해 주세요.</legend>
							</div>
							<div id="tabs">
								<ul id="register-machine-product-range-selection"
									class="machine-matrix range unstyled registration-machine-grid__list">
									<!-- ngRepeat: range in ranges track by $index -->
									<li id="li-range-0"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active"
										role="tab" tabindex="0" aria-controls="tabs-1"
										aria-labelledby="item1" aria-selected="true"
						
										aria-expanded="true"><input id="granMa" type="radio"
										name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-granmaestria"> <label
										for="range-0"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">
											<span class="visually-hidden ng-binding">오리지널</span> <a
											href="#tabs-1" id="item1" role="presentation" tabindex="-1"
											class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a> <span class="name registration-machine-grid__text ng-binding">그랑
												마에스트리아</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-1"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-1" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-u"> <label for="range-1"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-2" id="item2" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a> <span class="name registration-machine-grid__text ng-binding">U</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-2"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-2" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-lattissimaPlus"> <label
										for="range-2"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-3" id="item3" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">유
												앤 밀크</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-3"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last">

										<input id="range-3" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-pixie"> <label for="range-3"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-4" id="item4" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">픽시</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-4"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-4" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-pixie-bundle"> <label
										for="range-4"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-5" id="item5" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">픽시
												&amp; 에어로치노</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-5"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-5" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-citiz"> <label for="range-5"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-6" id="item6" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">시티즈</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-6"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-6" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-citizandmilk"> <label
										for="range-6"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-7" id="item7" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">시티즈
												앤 밀크</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-7"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last">

										<input id="range-7" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-inissia"> <label for="range-7"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-8" id="item8" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">이니시아</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-8"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-8" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-inissia-bundle"> <label
										for="range-8"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-9" id="item9" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">이니시아
												&amp; 에어로치노</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-9"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-9" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-prodigio"> <label for="range-9"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-10" id="item10" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">프로디지오</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-10"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-10" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-prodigio-milk"> <label
										for="range-10"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-11" id="item11" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">프로디지오
												앤 밀크</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-11"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last">

										<input id="range-11" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-expert"> <label for="range-11"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-12" id="item12" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">엑스퍼트</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-12"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-12" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-expertandmilk"> <label
										for="range-12"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-13" id="item13" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">엑스퍼트
												앤 밀크</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-13"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-13" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-creatista-plus"> <label
										for="range-13"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-14" id="item14" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">크리아티스타
												플러스</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-14"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-14" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-essenza-mini"> <label
										for="range-14"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-15" id="item15" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">에센자
												미니</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-15"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last">

										<input id="range-15" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-essenza"> <label for="range-15"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-16" id="item16" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">에센자
												미니 &amp; 에어로치노</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-16"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-16" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-lattissimaOne"> <label
										for="range-16"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-17" id="item17" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">라티시마
												원</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-17"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-17" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-barista"> <label for="range-17"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title -line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url() no-repeat 10px center'}">
												<span class="visually-hidden ng-binding"></span>
										</span> <a href="#tabs-18" id="item18" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">바리스타</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-18"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope"><input
										id="range-18" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-GranLattissima"> <label
										for="range-18"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-19" id="item19" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">그랑
												라티시마</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label></li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-19"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last">

										<input id="range-19" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-latissima"> <label for="range-19"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title original-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">오리지널</span>
										</span> <a href="#tabs-20" id="item20" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">라티시마
												터치 리프레쉬</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-20"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last-line">

										<input id="range-20" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-vertuoline"> <label
										for="range-20"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title vertuo-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">버츄오</span>
										</span> <a href="#tabs-21" id="item21" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">버츄오</span>
											<span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
									<li id="li-range-21"
										data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
										class="pic registration-machine-grid__item ng-scope last-line">

										<input id="range-21" type="radio" name="ranges"
										class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="$parent.selectedRangeId"
										data-ng-value="range.id"
										data-ng-change="selectRange(range, $index)"
										value="machine-range-vertuoplus"> <label
										for="range-21"
										class="pic registration-machine-grid__label selectable"
										data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

											<span class="line-title vertuo-line"
											data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png) no-repeat 10px center'}"
											style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png&quot;) 10px center no-repeat;">
												<span class="visually-hidden ng-binding">버츄오</span>
										</span> <a href="#tabs-22" id="item22" role="presentation"
											tabindex="-1" class="ui-tabs-anchor"> <img
												src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												class="registration-machine-grid__image" alt="" width="120"
												height="120"
												data-ng-click="clickOnRangeLabelImage(range, $index)"
												data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
												data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
												srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
										</a><span class="name registration-machine-grid__text ng-binding">버츄오
												플러스</span> <span class="selected ng-hide"
											data-ng-show="isSelectedRange(range)"></span>
									</label>
									</li>
									<!-- end ngRepeat: range in ranges track by $index -->
								</ul>
							</div>
						</fieldset>
						<script type="text/javascript">
				$(document).ready(function() {

					$('#item1').click(function() {

						$('#tabs-1').slideToggle(200);
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item2').click(function() {

						$('#tabs-2').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item3').click(function() {

						$('#tabs-3').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item4').click(function() {

						$('#tabs-4').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item5').click(function() {

						$('#tabs-5').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item6').click(function() {

						$('#tabs-6').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item7').click(function() {

						$('#tabs-7').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item8').click(function() {

						$('#tabs-8').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item9').click(function() {

						$('#tabs-9').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item10').click(function() {

						$('#tabs-10').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item11').click(function() {

						$('#tabs-11').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item12').click(function() {

						$('#tabs-12').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item13').click(function() {

						$('#tabs-13').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item14').click(function() {

						$('#tabs-14').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item15').click(function() {

						$('#tabs-15').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item16').click(function() {

						$('#tabs-16').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item17').click(function() {

						$('#tabs-17').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item18').click(function() {

						$('#tabs-18').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item19').click(function() {

						$('#tabs-19').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item20').click(function() {

						$('#tabs-20').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item21').click(function() {

						$('#tabs-21').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item22').click(function() {

						$('#tabs-22').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-6').slideUp();

					});

				});
			</script>
						<!--  step2/3 item 1 그랑 마에스트리아  -->
						<input type="hidden" id="hidden1" name="fileImage" value=""> 
						<input type="hidden" id="hidden2"name="fileName" value="" >
						<input type="hidden"id="hidden3" name="pName" value="">
						<input type="hidden" name="paramEmail" value="${paramEmail }">
						<fieldset id="tabs-1"
							class="section-slide ui-tabs-panel ui-corner-bottom ui-widget-content"
							style="display: none;" aria-labelledby="ui-id-1" role="tabpanel">



							<div class="registration-machine-grid__legend-step-title">
								STEP 2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">

									<label for="product-0"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										id="showResult1" height="120"> <span
										class="name registration-machine-grid__text"> <span
											id="fileImage">그랑 마에스트리아</span>&nbsp;<span>'C520-KR-TI-NE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name" id="pName">그랑 마에스트리아 티타늄 </span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- step 2/3 item2 -->
						<fieldset id="tabs-2" class="section-slide" style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C50-KR-CW-NE'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										id="showResult2" height="120"> <span
										class="name registration-machine-grid__text"> <span>U</span>&nbsp;<span
											class="ng-binding">'C50-KR-CW-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">U C50 퓨어 크림</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D50-KR-BK-NE'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult3"> <span
										class="name registration-machine-grid__text"> <span>U</span>&nbsp;<span
											class="ng-binding">'D50-KR-BK-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">U D50 퓨어 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-2"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult4"> <span
										class="name registration-machine-grid__text"> <span>U</span>&nbsp;<span
											class="ng-binding">'C50-KR-TP-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">U C50 퓨어 그레이</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-3"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult5"> <span
										class="name registration-machine-grid__text"> <span>U</span>&nbsp;<span
											class="ng-binding">'D50-KR-OR-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">U D50 퓨어 오렌지</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>

						<!-- step 2/3 item3 -->
						<fieldset id="tabs-3" class="section-slide" style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-0"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult6"> <span
										class="name registration-machine-grid__text"> <span>유
												앤 밀크</span>&nbsp;<span class="ng-binding">'C55-KR-CW-NE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">유밀크 C55 퓨어크림</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- step 2/3 item4 -->
						<fieldset id="tabs-4" class="section-slide" style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-0"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult7"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C61-KR-TI-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C61 타이탄 </span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-1"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult8"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C61-KR-RE-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C61 일렉트릭 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-2"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult9"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C60-KR-DB-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C60 다크 브라운</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-3"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult10"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C60-KR-TI-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C60 일렉트릭 타이탄</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>

								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-5" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-5"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult11"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C60-KR-SS-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C60 스틸</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-6" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="product-6"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult12"> <span
										class="name registration-machine-grid__text"> <span>픽시</span>&nbsp;<span
											class="ng-binding">'C60-KR-RE-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C60 일렉트릭 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>

						<!-- step2/3 item 5 pxie and achino -->
						<fieldset id="tabs-5" class="section-slide" style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-0"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult13"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKC61-KR-TI'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C61 타이탄</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-1"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult14"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKC61-KR-TI'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C61 타이탄</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-2"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult15"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKC61-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C61 일렉트릭
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-3"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult16"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKC61-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C61 일렉트릭
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-4" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-4"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult17"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C60P-KR-RE-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C60 일렉트릭
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-5" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-5"
									class="pic registration-machine-grid__label selectable">

										<img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult18"> <span
										class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C60P-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C60 일렉트릭
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-7" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C60P-KR-TI'"> <label for="product-7"
									class="pic registration-machine-grid__label selectable"
									data-name="픽시 C60 에어로치노 팩 (타이탄)"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult19"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>픽시
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C60P-KR-TI'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">픽시 C60 에어로치노 팩 (타이탄)</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- step2/3 item 6 citiz -->
						<fieldset id="tabs-6" class="section-slide" style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-fselection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D113-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 D113 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult20"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'D113-KR-WH-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 D113 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D113-KR-BK-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 D113 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult21"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'D113-KR-BK-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 D113 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C113-KR-CR-KIT'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 C113 체리 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult22"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'C113-KR-CR-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 C113 체리 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C112-KR-CR-KIT'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 C112 체리 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult23"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'C112-KR-CR-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 C112 체리 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-4" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C110-KR-RE-NE'"> <label for="product-4"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 C110 파이어 엔진 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult24"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'C110-KR-RE-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 C110 파이어 엔진 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-8" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D113-KR-WH-KIT2'"> <label for="product-8"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 D113 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult25"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'D113-KR-WH-KIT2'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 D113 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-9" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D113-KR-BK-KIT2'"> <label for="product-9"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 D113 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult26"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'D113-KR-BK-KIT2'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 D113 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-10" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C113-KR-CR-KIT2'"> <label for="product-10"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 C113 체리 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult27"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈</span>&nbsp;<span
											class="ng-binding">'C113-KR-CR-KIT2'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 C113 체리 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- 2/3 item 7 citiz and milk -->
						<fieldset id="tabs-7" class="section-slide" style="display: none;">

							<legend
								class="registration-machine-grid__legend registration-machine-grid__legend--product">
								사용 중인 머신 색상을 선택해주세요.</legend>

							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D123-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 앤 밀크 D123 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult28"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈
												앤 밀크</span>&nbsp;<span class="ng-binding">'D123-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 앤 밀크 D123 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D123-KR-BK-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 앤 밀크 D123 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult29"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈
												앤 밀크</span>&nbsp;<span class="ng-binding">'D123-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 앤 밀크 D123 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D122-KR-BK-KIT'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 앤 밀크 D122 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult30"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈
												앤 밀크</span>&nbsp;<span class="ng-binding">'D122-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 앤 밀크 D122 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-5" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D123-KR-BK-KIT2'"> <label for="product-5"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 앤 밀크 D123 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult31"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈
												앤 밀크</span>&nbsp;<span class="ng-binding">'D123-KR-BK-KIT2'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 앤 밀크 D123 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-6" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D123-KR-WH-KIT2'"> <label for="product-6"
									class="pic registration-machine-grid__label selectable"
									data-name="시티즈 앤 밀크 D123 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult32"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>시티즈
												앤 밀크</span>&nbsp;<span class="ng-binding">'D123-KR-WH-KIT2'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">시티즈 앤 밀크 D123 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- 2/3 item 8 initia -->
						<fieldset id="tabs-8" class="section-slide" style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D40-KR-BK-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 D40 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult33"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아</span>&nbsp;<span
											class="ng-binding">'D40-KR-BK-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 D40 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40-KR-RE-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 C40 루비 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult34"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아</span>&nbsp;<span
											class="ng-binding">'C40-KR-RE-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 C40 루비 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40-KR-WH-NE'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 C40 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult35"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아</span>&nbsp;<span
											class="ng-binding">'C40-KR-WH-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 C40 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40-KR-PO-NE'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 C40 오렌지"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult36"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아</span>&nbsp;<span
											class="ng-binding">'C40-KR-PO-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 C40 오렌지</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- 2/3 item9 initia and achino -->
						<fieldset id="tabs-9" class="section-slide" style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-RE'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 블랙, C40 루비 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult37"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 루비
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-RE-WH'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 화이트, C40 루비 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult38"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-RE-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40 루비
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3NKD40-KR-BK-N'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 블랙, D40 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult39"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKD40-KR-BK-N'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, D40 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3WKD40-KR-BK-N'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 화이트, D40 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult40"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKD40-KR-BK-N'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, D40 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-5" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-LB'"> <label for="product-5"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 C40 에어로치노팩 스카이블루"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult41"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-LB'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 C40 에어로치노팩 스카이블루</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-6" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-PO'"> <label for="product-6"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 블랙, C40 오렌지"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult42"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-PO'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 오렌지</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-7" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D40P-KR-BL'"> <label for="product-7"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아 D40 에어로치노팩 블루베리 블루"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult43"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'D40P-KR-BL'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아 D40 에어로치노팩 블루베리 블루</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-8" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-PO-WH'"> <label for="product-8"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 화이트, C40 오렌지"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult44"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-PO-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40
												오렌지</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-9" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-WH-WH'"> <label for="product-9"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 화이트, C40 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult45"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-WH-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40
												화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-10" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C40P-KR-WH'"> <label for="product-10"
									class="pic registration-machine-grid__label selectable"
									data-name="이니시아&amp;에어로치노 블랙, C40 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult46"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>이니시아
												&amp; 에어로치노</span>&nbsp;<span class="ng-binding">'C40P-KR-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item10 prodigino -->
						<fieldset id="tabs-10" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C70-KR-TI-NE'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="프로디지오 C70 타이탄"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult47"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>프로디지오</span>&nbsp;<span
											class="ng-binding">'C70-KR-TI-NE'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">프로디지오 C70 타이탄</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item11 prodigino and milk -->
						<fieldset id="tabs-11" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C75-KR-TI-NE'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="프로디지오 앤 밀크, C75 타이탄"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult48"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>프로디지오
												앤 밀크</span>&nbsp;<span class="ng-binding">'C75-KR-TI-NE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">프로디지오 앤 밀크, C75 타이탄</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item12 expert -->
						<fieldset id="tabs-12" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C80-KR-BK-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="엑스퍼트 C80 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult49"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>엑스퍼트</span>&nbsp;<span
											class="ng-binding">'C80-KR-BK-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">엑스퍼트 C80 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item13 expert n milk -->
						<fieldset id="tabs-13" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C85-KR-BK-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="엑스퍼트 앤 밀크 C85 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult50"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>엑스퍼트
												앤 밀크</span>&nbsp;<span class="ng-binding">'C85-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">엑스퍼트 앤 밀크 C85 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item14 chrisartista plus -->
						<fieldset id="tabs-14" class="section-slide"
							style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'J520-KR-ME-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="크리아티스타 플러스 J520 스테인리스 스틸"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult51"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>크리아티스타
												플러스</span>&nbsp;<span class="ng-binding">'J520-KR-ME-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">크리아티스타 플러스 J520 스테인리스 스틸</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 15 essenga mini  -->
						<fieldset id="tabs-15" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C30-KR-BK-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니 C30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult52"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니</span>&nbsp;<span class="ng-binding">'C30-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니 C30 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'C30-KR-WH-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니 C30 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult53"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니</span>&nbsp;<span class="ng-binding">'C30-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니 C30 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D30-KR-BK-KIT'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니 D30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult54"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니</span>&nbsp;<span class="ng-binding">'D30-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니 D30 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'D30-KR-RE-KIT'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니 D30 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult55"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니</span>&nbsp;<span class="ng-binding">'D30-KR-RE-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니 D30 레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 16 essenga mini and achino -->
						<fieldset id="tabs-16" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3NKC30-KR-BK'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 블랙, C30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult56"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKC30-KR-BK'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, C30
												블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3WKC30-KR-BK'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 화이트, C30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult57"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKC30-KR-BK'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, C30
												블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3NKC30-KR-WH'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 블랙, C30 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult58"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKC30-KR-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, C30
												화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3WKC30-KR-WH'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 화이트, C30 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult59"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKC30-KR-WH'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, C30
												화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-4" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3NKD30-KR-BK'"> <label for="product-4"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 블랙, D30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult60"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKD30-KR-BK'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, D30
												블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-5" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3WKD30-KR-BK'"> <label for="product-5"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 화이트, D30 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult61"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKD30-KR-BK'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, D30
												블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-6" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3NKD30-KR-RE'"> <label for="product-6"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 블랙, D30 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult62"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3NKD30-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, D30
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-7" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'A3WKD30-KR-RE'"> <label for="product-7"
									class="pic registration-machine-grid__label selectable"
									data-name="에센자 미니&amp;에어로치노 화이트, D30 레드"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult63"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>에센자
												미니 &amp; 에어로치노</span>&nbsp;<span class="ng-binding">'A3WKD30-KR-RE'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, D30
												레드</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 17 essenga lattisia one -->
						<fieldset id="tabs-17" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'F111-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="라티시마 원 F111 실키 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult64"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>라티시마
												원</span>&nbsp;<span class="ng-binding">'F111-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">라티시마 원 F111 실키 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'F111-KR-BK-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="라티시마 원 F111 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult65"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>라티시마
												원</span>&nbsp;<span class="ng-binding">'F111-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">라티시마 원 F111 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->

								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 18 barista -->
						<fieldset id="tabs-18" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3 : 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'4292VL-KR-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="바리스타 레시피 메이커"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult66"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>바리스타</span>&nbsp;<span
											class="ng-binding">'4292VL-KR-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">바리스타 레시피 메이커</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 19 grang latisima -->
						<fieldset id="tabs-19" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'F531-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="그랑 라티시마 F531 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult67"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>그랑
												라티시마</span>&nbsp;<span class="ng-binding">'F531-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">그랑 라티시마 F531 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 20 latisima touch refresh-->
						<fieldset id="tabs-20" class="section-slide"
							style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'F521-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="라티시마 터치 리프레쉬 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult68"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>라티시마
												터치 리프레쉬</span>&nbsp;<span class="ng-binding">'F521-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">라티시마 터치 리프레쉬 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'F521-KR-SI-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="라티시마 터치 리프레쉬 실버"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult69"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>라티시마
												터치 리프레쉬</span>&nbsp;<span class="ng-binding">'F521-KR-SI-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">라티시마 터치 리프레쉬 실버</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!--  item 21 virtuo -->
						<fieldset id="tabs-21" class="section-slide"
							style="display: none;">



							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'GCA1-KR-BK-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult70"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오</span>&nbsp;<span
											class="ng-binding">'GCA1-KR-BK-KIT'</span><br> <span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>
						<!-- item 21 virtuo plus -->
						<fieldset id="tabs-22" class="section-slide"
							style="display: none;">


							<div class="registration-machine-grid__legend-step-title">STEP
								2/3: 사용 중인 머신 색상을 선택해주세요.</div>

							<ul id="register-machine-product-list-selection"
								class="machine-matrix product unstyled registration-machine-grid__list--model">

								<!-- ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
									style=""><input id="product-0" type="radio"
									name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'GCB2-KR-WH-KIT'"> <label for="product-0"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 플러스 화이트"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult71"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오
												플러스</span>&nbsp;<span class="ng-binding">'GCB2-KR-WH-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 플러스 화이트</span>
									</span> <span class="selected ng-hide"></span>
								</label></li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-1" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'GCB2-KR-SI-KIT'"> <label for="product-1"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 플러스 실버"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult72"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오
												플러스</span>&nbsp;<span class="ng-binding">'GCB2-KR-SI-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 플러스 실버</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-2" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'GCB2-KR-BK-KIT'"> <label for="product-2"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 플러스 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult73"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오
												플러스</span>&nbsp;<span class="ng-binding">'GCB2-KR-BK-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 플러스 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-3" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
									value="'GCB2-KR-MB-KIT'"> <label for="product-3"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 플러스 매트 블랙"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult74"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오
												플러스</span>&nbsp;<span class="ng-binding">'GCB2-KR-MB-KIT'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 플러스 매트 블랙</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
								<li
									class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

									<input id="product-4" type="radio" name="products"
									class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty">
									<label for="product-4"
									class="pic registration-machine-grid__label selectable"
									data-name="버츄오 플러스 매트 블랙 &amp; 트래블 머그"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120" id="showResult75"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=480 4x">

										<span class="name registration-machine-grid__text"> <span>버츄오
												플러스</span>&nbsp;<span class="ng-binding">'GCB2-KR-MB-KIT2'</span><br>
											<span
											class="description registration-machine-grid__description ng-binding"
											data-ng-bind="product.name">버츄오 플러스 매트 블랙 &amp; 트래블 머그</span>
									</span> <span class="selected ng-hide"></span>
								</label>
								</li>
								<!-- end ngRepeat: product in products -->
							</ul>
						</fieldset>

						<script type="text/javascript">
			

				$(document).on('click', '#showResult1', function(){

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '그랑 마에스트리아'

													var pName = '그랑 마에스트리아 티타늄 C520-KR-TI-NE';

													$('#ResultStep3').slideToggle(200);
													$('#saveChangesMachine').show();
													$('#hidden1').val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});
				
				$(document).on('click', '#showResult2', function(){
					
					var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120';
					var fileName = 'U'

					var pName = 'U C50 퓨어 크림 C50-KR-CW-NE';

					$('#ResultStep3')
							.slideToggle(200);
					$('#saveChangesMachine')
							.show();
					$('#hidden1')
							.val(fileImage);
					$('#hidden2').val(fileName);
					$('#hidden3').val(pName);

					
				});
				

				$(document).on('click', '#showResult3', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = 'U'

																	var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult4', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = 'U'

																	var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult5', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = 'U'

																	var pName = 'U D50 퓨어 오렌지 D50-KR-OR-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult6', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '유밀크 C55 퓨어크림'

																	var pName = 'U D50 퓨어 오렌지 C55-KR-CW-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult7', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시'

																	var pName = '픽시 C61 타이탄 C61-KR-TI-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);
																});

				$(document).on('click', '#showResult8', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시'

																	var pName = '픽시 C61 일렉트릭 레드 C61-KR-RE-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult9', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시'

																	var pName = '픽시 C60 다크 브라운 C60-KR-DB-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult10', function(){

													var fileImage = '';
													var fileName = '픽시'

													var pName = '픽시 C60 일렉트릭 타이탄 C60-KR-TI-NE';

													$('#ResultStep3').slideToggle(200);
													$('#saveChangesMachine').show();
													$('#hidden1').val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

				$(document).on('click', '#showResult11', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시'

																	var pName = '픽시 C60 스틸 C60-KR-SS-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});
				$(document).on('click', '#showResult12', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시'

																	var pName = '픽시 C60 일렉트릭 레드 C60-KR-RE-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult13', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노'

																	var pName = '픽시 & 에어로치노 블랙, C61 타이탄 A3NKC61-KR-TI';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult14', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노'

																	var pName = '픽시 & 에어로치노 화이트, C61 타이탄 A3WKC61-KR-TI';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult15', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노';

																	var pName = '픽시 & 에어로치노 블랙, C61 일렉트릭 레드 A3NKC61-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});
				
				$(document).on('click', '#showResult16', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노';

																	var pName = '픽시 & 에어로치노 화이트, C61 일렉트릭 레드 A3WKC61-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$$('#hidden1').val(
																			fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult17', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노';

																	var pName = '픽시 & 에어로치노 화이트, C60 일렉트릭 레드 C60P-KR-RE-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult18', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노';

																	var pName = '픽시 & 에어로치노 블랙, C60 일렉트릭 레드 C60P-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult19', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '픽시 & 에어로치노';

																	var pName = '픽시 C60 에어로치노 팩 (타이탄) C60P-KR-TI';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult20', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 D113 화이트 D113-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult21', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 D113 블랙 D113-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult22', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult23', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 C112 체리 레드 C112-KR-CR-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult24', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 C110 파이어 엔진 레드 C110-KR-RE-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult25', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 D113 화이트 D113-KR-WH-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult26', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 D113 블랙 D113-KR-BK-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult27', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈';

																	var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult28', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈 앤 밀크';

																	var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult29', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈 앤 밀크';

																	var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult30', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈 앤 밀크';

																	var pName = '시티즈 앤 밀크 D122 블랙 D122-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult31', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈 앤 밀크';

																	var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult32', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '시티즈 앤 밀크';

																	var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult33', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아';

																	var pName = '이니시아 D40 블랙 D40-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult34', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아';

																	var pName = '이니시아 C40 루비 레드 C40-KR-RE-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult35', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아';

																	var pName = '이니시아 C40 화이트 C40-KR-WH-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult36', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아';

																	var pName = '이니시아 C40 오렌지 C40-KR-PO-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult37', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 블랙, C40 루비 레드 C40P-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult38', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 화이트, C40 루비 레드 C40P-KR-RE-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult39', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 블랙, D40 블랙 A3NKD40-KR-BK-N ';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult40', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 화이트, D40 블랙 A3WKD40-KR-BK-N ';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult41', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 C40 에어로치노팩 스카이블루 C40P-KR-LB';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult42', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 블랙, C40 오렌지 C40P-KR-PO';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult43', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 D40 에어로치노팩 블루베리 블루 D40P-KR-BL';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult44', function(){

																	var fileImage = 'showResult44';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노  화이트, C40 오렌지 C40P-KR-PO-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult45', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 화이트, C40 화이트 C40P-KR-WH-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult46', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '이니시아 & 에어로치노';

																	var pName = '이니시아 & 에어로치노 블랙, C40 화이트 C40P-KR-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult47', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '프로디지오';

																	var pName = '프로디지오 C70 타이탄 C70-KR-TI-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult48', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '프로디지오 앤 밀크';

																	var pName = '프로디지오 앤 밀크, C75 타이탄 C75-KR-TI-NE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult49', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '엑스퍼트';

																	var pName = '엑스퍼트 C80 블랙 C80-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult50', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '엑스퍼트 앤 밀크';

																	var pName = '엑스퍼트 앤 밀크 C85 블랙 C85-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult51', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '크리아티스타 플러스';

																	var pName = '크리아티스타 플러스 J520 스테인리스 스틸 J520-KR-ME-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult52', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니';

																	var pName = '에센자 미니 C30 블랙 C30-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult53', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니';

																	var pName = '에센자 미니 C30 화이트 C30-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult54', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니';

																	var pName = '에센자 미니 D30 블랙 D30-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult55', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니';

																	var pName = '에센자 미니 D30 레드 D30-KR-RE-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult56', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 블랙, C30 블랙 A3NKC30-KR-BK';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult57', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 화이트, C30 A3WKC30-KR-BK';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult58', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 블랙, C30 화이트 A3NKC30-KR-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult59', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 화이트, C30 화이트 A3WKC30-KR-WH';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult60', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 블랙, D30 블랙 A3NKD30-KR-BK';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult61', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 화이트, D30 블랙 A3WKD30-KR-BK';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult62', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 블랙, D30 레드 A3NKD30-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult63', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '에센자 미니 & 에어로치노';

																	var pName = '에센자 미니 & 에어로치노 화이트, D30 레드 A3WKD30-KR-RE';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult64', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '라티시마 원';

																	var pName = '라티시마 원 F111 실키 화이트 F111-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult65', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '라티시마 원';

																	var pName = '라티시마 원 F111 블랙 F111-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult66', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120';
																	var fileName = '바리스타';

																	var pName = '바리스타 레시피 메이커 4292VL-KR-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult67', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '그랑 라티시마';

																	var pName = '그랑 라티시마 F531 화이트 F531-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult68', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '라티시마 터치 리프레쉬';

																	var pName = '라티시마 터치 리프레쉬 화이트 F521-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult69', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '라티시마 터치 리프레쉬';

																	var pName = '라티시마 터치 리프레쉬 실버 F521-KR-SI-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult70', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오';

																	var pName = '버츄오 블랙 GCA1-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult71', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오 플러스';

																	var pName = '버츄오 플러스 화이트 GCB2-KR-WH-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult72', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오 플러스';

																	var pName = '버츄오 플러스 실버 GCB2-KR-SI-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult73', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오 플러스';

																	var pName = '버츄오 플러스 블랙 GCB2-KR-BK-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult74', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오 플러스';

																	var pName = '버츄오 플러스 매트 블랙 GCB2-KR-MB-KIT';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

				$(document).on('click', '#showResult75', function(){

																	var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120';
																	var fileName = '버츄오 플러스';

																	var pName = '버츄오 플러스 매트 블랙 & 트래블 머그 GCB2-KR-MB-KIT2';

																	$('#ResultStep3')
																			.slideToggle(200);
																	$('#saveChangesMachine')
																			.show();
																	$('#hidden1')
																			.val(fileImage);
																	$('#hidden2').val(fileName);
																	$('#hidden3').val(pName);

																});

							</script>
						<!-- end ngIf: !isPredefinedMachine -->

						<!-- ngIf: !isPredefinedMachine && !!selectedRangeId -->

						<div>

							<fieldset id="ResultStep3"
								style="display: none; background-color: white;">

								<div class="registration-machine-grid__legend-step-title">STEP
									3/3: 사용 중인 머신 정보를 입력해주세요.</div>

								<div class="ng-scope">
									<div class="machine-form-container my-machine__container">
										<div class="machine-form-wrapper clearfix">
											<div class="title">

												<div class="my-machine__title">
													<font style="color: black;">고객님의 네스프레소 머신</font>

												</div>
											</div>

											<div
												class="machine-info-img my-machine__img my-machine__img--narrow">

											</div>

											<div class="machine-info-form pull-left my-machine__info">
												<div class="input-group ">
													<div class="input-row">
														<label for="machineRegistrationmachineNumbervalue"
															id="machineSerialLabel"
															class="input-label my-machine__serial-number-label"
															aria-invalid="false" aria-describedby="">머신 시리얼
															번호 : </label><input id="machineRegistrationmachineNumbervalue"
															name="machineRegistration.machineNumber"
															class="'my-machine__serial-number-input ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength"
															data-ng-model="machineRegistration.machineNumber.value"
															type="text" value="" maxlength="20" aria-invalid="false"
															aria-describedby="">
														<button
															class="my-machine__find-machine-number-button popin-trigger"
															data-popin-id="serialHelp" type="button">시리얼 번호는
															어디서 찾을 수 있나요?</button>

													</div>
												</div>
												<fieldset
													class="field-holder large my-machine__purchase-date input-group">
													<legend id="purchaseDate" class="w190 legend-label"
														aria-invalid="false" aria-describedby="">머신 구매일*
														:</legend>
													<div class="my-machine__purchase-date-container">
														<div class="first my-machine__purchase-date-field">
															<label for="machineRegistrationdayvalue"
																class="visually-hidden"> 일</label> <select
																id="machineRegistrationdayvalue" name="pDate"
																class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
																data-ng-model="machineRegistration.day.value"
																aria-required="true"
																data-ng-class="{error: !machineRegistration.year.valid}"
																aria-invalid="false" aria-describedby=""><option
																	value="01">01</option>
																<option value="02">02</option>
																<option value="03">03</option>
																<option value="04">04</option>
																<option value="05">05</option>
																<option value="06">06</option>
																<option value="07">07</option>
																<option value="08">08</option>
																<option value="09">09</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13" selected="selected">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option></select>
														</div>
														<div class="my-machine__purchase-date-field">
															<label for="machineRegistrationmonthvalue"
																class="visually-hidden"> 월</label> <select
																id="machineRegistrationmonthvalue" name="pMonth"
																class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
																data-ng-model="machineRegistration.month.value"
																aria-required="true"
																data-ng-class="{error: !machineRegistration.year.valid}"
																aria-invalid="false" aria-describedby=""><option
																	value="01">1월</option>
																<option value="02">2월</option>
																<option value="03">3월</option>
																<option value="04">4월</option>
																<option value="05">5월</option>
																<option value="06" selected="selected">6월</option>
																<option value="07">7월</option>
																<option value="08">8월</option>
																<option value="09">9월</option>
																<option value="10">10월</option>
																<option value="11">11월</option>
																<option value="12">12월</option></select>
														</div>
														<div class="my-machine__purchase-date-field">
															<label for="machineRegistrationyearvalue"
																class="visually-hidden"> 연도</label> <select
																id="machineRegistrationyearvalue" name="pYear"
																class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
																data-ng-model="machineRegistration.year.value"
																aria-required="true"
																data-ng-class="{error: !machineRegistration.year.valid}"
																aria-invalid="false" aria-describedby=""><option
																	value="2021" selected="selected">2021</option>
																<option value="2020">2020</option>
																<option value="2019">2019</option>
																<option value="2018">2018</option>
																<option value="2017">2017</option>
																<option value="2016">2016</option>
																<option value="2015">2015</option>
																<option value="2014">2014</option>
																<option value="2013">2013</option>
																<option value="2012">2012</option>
																<option value="2011">2011</option>
																<option value="2010">2010</option>
																<option value="2009">2009</option>
																<option value="2008">2008</option>
																<option value="2007">2007</option>
																<option value="2006">2006</option>
																<option value="2005">2005</option>
																<option value="2004">2004</option>
																<option value="2003">2003</option>
																<option value="2002">2002</option>
																<option value="2001">2001</option>
																<option value="2000">2000</option>
																<option value="1999">1999</option>
																<option value="1998">1998</option>
																<option value="1997">1997</option>
																<option value="1996">1996</option>
																<option value="1995">1995</option>
																<option value="1994">1994</option>
																<option value="1993">1993</option>
																<option value="1992">1992</option>
																<option value="1991">1991</option>
																<option value="1990">1990</option></select>
														</div>
													</div>


													<!-- ngIf: !machineRegistration.year.valid -->

												</fieldset>

												<div class="pull-left first input-group">

													<div class="input-row">
														<label for="machineRegistrationstoreTypevalue"
															id="storeTypeLegend"
															class="w190 pull-left multi-line machineSelection-how-label my-machine__dropdown-label"
															aria-invalid="false" aria-describedby=""> 머신 구입처*</label>
														<select id="machineRegistrationstoreTypevalue"
															name="machineRegistration.storeType"
															class="selectmenu regular my-machine__location-dropdown select--separate-label ng-pristine ng-untouched ng-valid ng-empty"
															aria-invalid="false" aria-describedby=""><option
																value="" selected="selected">선택해주세요</option>
															<option value="onInternet">온라인으로 구매</option>
															<option value="isGift">선물 받음</option>
															<option value="other">기타</option></select>
													</div>
													<!-- ngIf: !machineRegistration.storeType.valid -->

												</div>

												<input type="hidden" name="_eventId"
													data-ng-value="registerType" style="" autocomplete="off"
													value="haveMachine"> <input
													id="machineRegistrationmachineIdvalue"
													name="machineRegistration.machineId"
													data-ng-value="machineRegistration.machineId.value"
													type="hidden" style="" autocomplete="off"
													aria-invalid="false" aria-describedby=""
													value="C520-KR-TI-NE"><input
													id="machineRegistrationstoreIdvalue"
													name="machineRegistration.storeId"
													data-ng-value="machineRegistration.storeId.value"
													type="hidden" style="" autocomplete="off" disabled="">
												<div id="serialHelp"
													class="popin-page learnmore display-none my-machine__serial-helper responsive-popin">

													<div class="content">
														<div id="block-8807213651445" class="free-html"
															data-label="">
															<div style="padding: 0 80px 40px 80px; color: #000;">
																<div
																	style="background: url('/mosaic/_ui/img/popin-title-sep.png') bottom no-repeat; line-height: 22px; margin: 0 0 15px 0; padding: 0 0 25px 0; text-align: center;">
																	<p style="font-size: 20px; font-weight: bold;">머신
																		시리얼 번호를 어디서 찾을 수 있나요?</p>
																</div>
																<div class="popin-vscroll">
																	<p style="font-size: 13px;">머신 시리얼 번호는 19자리의 숫자와
																		알파벳으로 조합되어 있습니다. 컵 받침대 또는 머신 뒷면에 제거 가능한 스티커 형태로 부착 되어
																		있습니다.</p>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
											<div class="machine-info-img pull-right my-machine__img"></div>
										</div>

									</div>
								</div>



							</fieldset>
							
							<div class="my-machine__buttons-container"
								id="saveChangesMachine" style="display: none;">
								<button type="submit"
									class="btn-container btn button-primary   my-machine-save my-machine__save-button"
									data-track-click="{&quot;category&quot;: &quot;account_machine_add&quot;, &quot;machineName&quot;: &quot;&quot;}"
									data-ng-disabled="machineRegistration.validating" style="">
									<span class="button__content"> 변경 사항 저장하기</span>
								</button>
								<a href="/kr/ko/myaccount/machines"
									class="btn-container my-machine__back-button"> <span
									class="btn button-primary  "> <span> 내 머신 메뉴로
											돌아가기</span>
								</span>
								</a>
							</div>
						</div>

					</form>
				</div>

			</div>
		</div>

	</main>

	<footer role="contentinfo">
		<div id="footer" class="footer-block">
			<h2 class="visually-hidden">웹사이트 하단</h2>
			<div
				id="CompanyFooterRespBlock-8797707806480-85ca6489-3243-4a81-b27f-07f9e5361326"
				class="crema-ui-container ">
				<div class="Footer ResponsiveContainer">
					<div class="Footer__bar">
						<div class="Footer__intl">
							<h3 class="VisuallyHidden">언어 및 국가 선택</h3>
							<a href="/kr/ko/country"
								class="AccessibleLink Footer__countries-page-link"><span
								class="VisuallyHidden">현재 대한민국 웹사이트에 접속 중이십니다. 국가 변경을
									원하시면, 여기를 클릭하세요.</span><span class="CountryFlag Footer__country-flag"><svg
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
										role="presentation" aria-label="" width="24" height="25"
										class="ResponsiveImage CountryFlag__image">
										<path d=""></path></svg></span></a>
							<div class="LanguageSwitcher Footer__language-switcher">
								<button class="LanguageSwitcher__button" aria-expanded="false">
									한국어<i aria-hidden="true"
										class="Glyph Glyph--arrow-bottom LanguageSwitcher__button-icon"></i>
								</button>
								<ul
									class="Footer__language-switcher-dropdown LanguageSwitcher__dropdown">
									<li class="LanguageSwitcher__item"><a
										class="AccessibleLink LanguageSwitcher__link"
										href="/kr/en/myaccount/addNewMachine">English</a></li>
									<li class="LanguageSwitcher__item"><a
										class="AccessibleLink LanguageSwitcher__link"
										href="/kr/ko/myaccount/addNewMachine">한국어</a></li>
								</ul>
							</div>
						</div>
						<div class="Footer__links">
							<h3 class="VisuallyHidden">웹사이트 링크</h3>
							<ul class="FooterLine FooterLine--primary">
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/terms-and-condition" target="_blank">판매이용약관<span
										class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span></a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/privacy-policy">개인정보 처리방침</a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/cookies">쿠키</a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/service-customer-care">고객지원</a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="http://www.nespresso.com/pro/kr/ko/home" target="_blank">네스프레소
										프로페셔널<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
								</a></li>
							</ul>
							<ul class="FooterLine">
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="https://www.nespresso.com/recipes/kr/ko/coffee-recipes.html"
									target="_blank">커피 레시피<span class="VisuallyHidden">이
											링크는 새로운 창을 엽니다.</span></a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/glossary" target="_blank">용어찾기<span
										class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span></a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="http://www.nestle-nespresso.com/" target="_blank">회사소개<span
										class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span></a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="https://www.nespresso.com/careers/?m=KR&amp;l=KO#/">채용</a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/sitemap" target="_blank">사이트맵<span
										class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span></a></li>
								<li class="FooterLine__item"><a
									class="AccessibleLink FooterLine__item-link"
									href="/kr/ko/accessibility">웹 접근성</a></li>
							</ul>
						</div>
					</div>
					<div class="Footer__bottom">
						<div class="SocialLink">
							<h3 class="VisuallyHidden">소셜미디어 링크</h3>
							<span class="SocialLink__label">네스프레소 계정을 팔로우 하세요</span>
							<ul class="SocialLink__list">
								<li class="SocialLink__item"><a
									class="AccessibleLink SocialLink__item-link"
									href="https://www.instagram.com/nespresso.kr/" target="_blank"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
											role="img" aria-label="Nespresso Instagram" width="30"
											height="30" class="ResponsiveImage SocialLink__item-img">
											<path d=""></path></svg><span class="VisuallyHidden">이 링크는
											새로운 창을 엽니다.</span></a></li>
								<li class="SocialLink__item"><a
									class="AccessibleLink SocialLink__item-link"
									href="https://www.facebook.com/nespresso" target="_blank"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
											role="img" aria-label="페이스북" width="30" height="30"
											class="ResponsiveImage SocialLink__item-img">
											<path d=""></path></svg><span class="VisuallyHidden">이 링크는
											새로운 창을 엽니다.</span></a></li>
								<li class="SocialLink__item"><a
									class="AccessibleLink SocialLink__item-link"
									href="https://www.youtube.com/user/nespresso" target="_blank"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
											role="img" aria-label="YouTube" width="30" height="30"
											class="ResponsiveImage SocialLink__item-img">
											<path d=""></path></svg><span class="VisuallyHidden">이 링크는
											새로운 창을 엽니다.</span></a></li>
								<li class="SocialLink__item"><a
									class="AccessibleLink SocialLink__item-link"
									href="https://twitter.com/nespresso" target="_blank"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
											role="img" aria-label="Twitter" width="30" height="30"
											class="ResponsiveImage SocialLink__item-img">
											<path d=""></path></svg><span class="VisuallyHidden">이 링크는
											새로운 창을 엽니다.</span></a></li>
								<li class="SocialLink__item"><a
									class="AccessibleLink SocialLink__item-link"
									href="https://www.pinterest.com/nespresso/" target="_blank"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"
											role="img" aria-label="Pinterest" width="30" height="30"
											class="ResponsiveImage SocialLink__item-img">
											<path d=""></path></svg><span class="VisuallyHidden">이 링크는
											새로운 창을 엽니다.</span></a></li>
							</ul>
						</div>
						<a class="Footer__top-page-link" href="#top">맨 위로 가기<span
							class="Footer__top-page-link-icon" aria-hidden="true">^</span></a>
						<div class="FooterCopyright">
							<a class="AccessibleLink FooterLink" href="/kr/ko/"
								target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 1024 1024" role="img"
									aria-label="Nespresso KR Homepage" width="55"
									class="ResponsiveImage FooterCopyright__picture">
									<path d=""></path></svg><span class="VisuallyHidden">이 링크는 새로운
									창을 엽니다.</span></a><span><em>Nespresso</em> S.A. 2021</span>
						</div>
					</div>
				</div>
			</div>
			<script>
              //window.ui = window.ui || [];
              //window.ui.push({"id":"CompanyFooterRespBlock-8797707806480-85ca6489-3243-4a81-b27f-07f9e5361326","module":"Footer","configuration":{"translations":{"companyfooterrespblock.a11y.sociallinks.title":"소셜미디어 링크","companyfooterrespblock.a11y.link.target.blank":"새 창에서 링크가 열립니다.","companyfooterrespblock.a11y.languageandcountry.title":"언어 및 국가 선택","companyfooterrespblock.a11y.currentcountries.label":"현재 대한민국 웹사이트에 접속 중이십니다. 국가 변경을 원하시면, 여기를 클릭하세요.","companyfooterrespblock.a11y.websitelinks.title":"웹사이트 링크"},"props":{"meta":{"uid":"CompanyFooterRespBlock-8797707806480-e124b69c-68e7-4238-be54-681a4b418302","restrictions":[],"tracking":null},"copyrightLabel":"<em>Nespresso</em> S.A. 2021","topPageLinkLabel":"맨 위로 가기","logoLink":{"meta":{"uid":"respFooterLogoImageLink-8831166448700-403a7c94-5c72-40ff-a7ff-96173c50de23","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterLogoLink-8810260157939-8f7b2f3c-606d-45a2-ab97-21065f5c49ff","restrictions":[],"tracking":null},"name":"Nespresso KR Homepage","url":"/kr/ko/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg","altText":"Nespresso Logo"}},"line1Links":[{"meta":{"uid":"respFooterL1LegalLink-8810259961331-8197190c-8385-45b4-97c4-15d3fac1336a","restrictions":[],"tracking":null},"name":"판매이용약관","url":"/kr/ko/terms-and-condition","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1PrivacyPolicyLink-9046867432947-ce21ce8a-7b3b-4482-b40e-4ae3bb88c478","restrictions":[],"tracking":null},"name":"개인정보 처리방침","url":"/kr/ko/privacy-policy","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooter1CookieLink-9046966588915-5969d9f4-fb74-4ba2-890c-79dd94e0e7cb","restrictions":[],"tracking":null},"name":"쿠키","url":"/kr/ko/cookies","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1ContactLink-8810259994099-95e453c1-638c-41b2-979e-e7d9b5f4f801","restrictions":[],"tracking":null},"name":"고객지원","url":"/kr/ko/service-customer-care","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1BusinessSolutionsLink-8810260059635-a7fa083f-81f6-49e5-b000-45b31211a9b4","restrictions":[],"tracking":null},"name":"네스프레소 프로페셔널","url":"http://www.nespresso.com/pro/kr/ko/home","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"line2Links":[{"meta":{"uid":"respFooterL2RecipeLink-8811103966707-9f61bc70-ce31-471c-ae0c-183c40c90d78","restrictions":[],"tracking":null},"name":"커피 레시피","url":"https://www.nespresso.com/recipes/kr/ko/coffee-recipes.html","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2GlossaryLink-8810260026867-75213215-edd5-4817-8ccb-1e1ab8c19433","restrictions":[],"tracking":null},"name":"용어찾기","url":"/kr/ko/glossary","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AboutUsLink-8810260125171-74a190f6-21c3-4608-9161-c1746de18a42","restrictions":[],"tracking":null},"name":"회사소개","url":"http://www.nestle-nespresso.com/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2careerLink-8812190324211-d1f9d0b9-c3a2-4b27-bb29-f44f66c67a58","restrictions":[],"tracking":null},"name":"채용","url":"https://www.nespresso.com/careers/?m=KR&l=KO#/","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2SitemapLink-8810260092403-59ca277c-d238-4882-8326-743a1245bca7","restrictions":[],"tracking":null},"name":"사이트맵","url":"/kr/ko/sitemap","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AccessibilityLink-8811823191539-ded89d16-9a95-458c-8a52-7e726f5be347","restrictions":[],"tracking":null},"name":"웹 접근성","url":"/kr/ko/accessibility","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"countriesPageLink":{"meta":{"uid":"respCMSSiteCountriesLink-8810918696435-4a26f0d0-3df3-4c1c-a590-5deba59deeac","restrictions":[],"tracking":null},"name":"국가 및 언어 선택","url":"/kr/ko/country","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"followLabel":"네스프레소 계정을 팔로우 하세요","socialLinks":[{"meta":{"uid":"respFooterSocialInstaImageLink-8832763692092-af8d7b51-2343-48cf-a40a-3f2cd0d37898","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialInstaLink-8811724953075-ae659ad6-9145-4fc5-ad90-f8108cea48b8","restrictions":[],"tracking":null},"name":"Nespresso Instagram","url":"https://www.instagram.com/nespresso.kr/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg","altText":"Nespresso Instagram"}},{"meta":{"uid":"respFooterSocialFacebookImageLink-8831166481468-9dad323d-2247-4b29-b686-defee0f85d0d","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialFacebookLink-8810260190707-7d02b13b-e5c7-4827-93bd-5eb375fed16a","restrictions":[],"tracking":null},"name":"페이스북","url":"https://www.facebook.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg","altText":"Nespresso Facebook"}},{"meta":{"uid":"respFooterSocialYoutubeImageLink-8831166514236-e5a5c2fc-2cd8-40ba-8b84-473dc61faea6","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialYoutubeLink-8810260256243-4b89ff6c-7989-4349-9f1a-f75690c94bb9","restrictions":[],"tracking":null},"name":"YouTube","url":"https://www.youtube.com/user/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg","altText":"Nespresso Youtube"}},{"meta":{"uid":"respFooterSocialTwitterImageLink-8831166547004-4dd1c03a-ebbc-4be0-9853-a959557a1d30","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialTwitterLink-8810260223475-82632270-f673-42dc-a76d-c53f79b4a9ec","restrictions":[],"tracking":null},"name":"Twitter","url":"https://twitter.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg","altText":"Nespresso Twitter"}},{"meta":{"uid":"respFooterSocialPinterestImageLink-8831166579772-a82ad821-4ff3-491d-92c0-b368fd1b4b71","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialPinterestLink-8810260289011-02a1cf09-aabf-4bf2-98be-c000db4fda7d","restrictions":[],"tracking":null},"name":"Pinterest","url":"https://www.pinterest.com/nespresso/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg","altText":"Nespresso Pinterest"}}]},"eCommerceData":null}});
            </script>
			<div id="block-8811141060085" class="free-html" data-label="">
				<style>
#truste-consent-track {
	position: relative !important;
	top: 75px !important
}

@media screen and (max-width:995px) {
	#truste-consent-track {
		position: relative !important;
		top: 50px !important
	}
}
</style>
			</div>

			<div id="block-8811141518837" class="free-html" data-label="">
				<div class="footer-local ResponsiveContainer">
					<div id="local-elements">
						<h3 class="visually-hidden">Website links</h3>
						<ul>
							<li>상호 : 네슬레코리아 유한책임회사</li>
							<li>대표자 : 카스텐 퀴메</li>
							<li>사업자등록번호 : 110-86-10100</li>
							<li><a
								href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1108610100"
								target="_blank">통신판매업신고 : 2014-서울서대문-0247</a></li>
						</ul>
						<ul>
							<li><a
								href="https://www.nespresso.com/kr/DebtGuaranteeInsurancePop
"
								target="_blank">채무지급보증안내</a></li>
							<li><a href="tel:0807341111">대표번호 : 080-734-1111</a></li>
							<li>
								<!--a href="https://www.nespresso.com/kr/en/contactus?icid=B2C_KRko_Homepage_AssistanceBand_contactus" target="_blank"-->이메일
								: club.korea@nespresso.com<!--/a-->
							</li>
							<li>주소 : 서울시 서대문구 충정로70 웨스트게이트타워 16층</li>
						</ul>
					</div>
				</div>
				<style>
body {
	word-break: keep-all !important;
}

.footer-local {
	display: flex;
}

.footer-local {
	padding: 0 0 15px;
}

.footer-local a {
	color: #986f38;
}

@media screen and (min-width: 768px) {
	#local-elements {
		flex-basis: auto;
		flex: 1;
		padding: 0 12px;
	}
	#local-elements>ul {
		display: flex;
		justify-content: center;
		text-align: center;
		padding: 0 0 2px;
		font-size: 0.7rem;
	}
	#local-elements>ul>li {
		padding: 0 0 0 10px;
	}
}

@media screen and (max-width: 767px) {
	#local-elements {
		flex-basis: auto;
		flex: 1;
		padding: 0 12px;
	}
	#local-elements>ul {
		display: inherit;
		justify-content: center;
		text-align: center;
		padding: 0 0 2px;
		font-size: 0.7rem;
	}
	#local-elements>ul>li {
		padding: 0;
	}
}
</style>
			</div>

			<div id="block-8813165827573" class="free-html" data-label="">
				<div id="jusopop" class="ko">
					<div class="wrapper">
						<div id="addressclose">×</div>
						<form name="form" id="juso" method="post">
							<input type="hidden" name="currentPage" value="1" style="">
							<input type="hidden" name="countPerPage" value="10" style="">
							<input type="hidden" name="resultType" value="json" style="">
							<input type="hidden" name="confmKey"
								value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk=" style="">
							<!--  <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk="/>  // kr -->
							<!-- 	<input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MTIyMDA5NTU0OTEwODM5Mjg="/> // eng -->
							<input type="text" name="keyword" value=""> <input
								type="button" id="searchbtn" onclick="enterSearch();"
								value="주소 검색">
							<div class="getAddrInfor">
								<p class="caution">아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
								<div class="container-flex col2">
									<div class="col">
										<div class="example">
											<p class="sample-1">1. 도로명 + 건물번호</p>
											<p class="sample-2">예) 충정로 70</p>
										</div>
										<div class="example">
											<p class="sample-1">2. 지역명(동/리) + 번지</p>
											<p class="sample-2">예) 미근동 332</p>
										</div>
									</div>
									<div class="col">
										<div class="example">
											<p class="sample-1">3. 지역명(동/리) + 건물명(아파트명)</p>
											<p class="sample-2">예) 미근동 웨스트게이트타워</p>
										</div>
										<div class="example">
											<p class="sample-1">4. 사서함명 + 번호</p>
											<p class="sample-2">예) 서대문우체국사서함 1~100</p>
										</div>
									</div>
								</div>
							</div>
							<div id="list"></div>
							<div class="paginate" id="pageApi"></div>
						</form>
					</div>
				</div>
				<style>
/* .displaynone {
	display: none !important;
} */
/*.registration-machine__intro {
 display:none !important;
 }
 #register-machine-selection {
 display:none !important;
 }
 #select-technology {
 display:block !important;
 }*/
/*#ta-continue-bottom {
 opacity:.5;
 }*/
#kr-private.addressDetailsDTO.line1,
	#ta-registration-address-shipping-line1 {
	display: inline;
}

.input-group .input-label {
	white-space: unset !important;
}

/* .input-row__secondPhone {
	display: none !important;
} */
#addressclose {
	position: absolute;
	top: 20px;
	right: 20px;
	display: block;
	color: #000;
	font-size: 40px;
}

.addressbtn {
	margin: 0 0 0 5px;
	height: 47px;
	border: 1px solid #d5d5d5;
	border-radius: 3px;
	width: calc(20% - 5px);
	background-color: #fff;
	color: #000;
	display: block;
	position: absolute;
	right: 0px;
	top: 0px;
}

.addressbtn svg {
	width: 40px;
	height: 40px;
}

#jusopop {
	z-index: 99999;
	display: none;
	position: fixed;
	background: rgba(0, 0, 0, 0.6);
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
}

#jusopop .wrapper {
	transform: translate(-50%, -50%);
	background: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	overflow-y: scroll;
	overflow-x: hidden;
	height: auto;
}

#jusopop .wrapper #searchbtn {
	background: #fff;
	border: 1px solid #d5d5d5;
	padding: 10px;
}

#jusopop .wrapper input[name='keyword'] {
	padding: 10px;
	border: 1px solid #ccc;
}

#jusopop .wrapper #list {
	color: #000;
}

#jusopop .wrapper #list dl {
	margin: 15px 0;
	display: flex;
	flex: 0 0 auto;
}

#jusopop .wrapper #list dl dd button {
	background: #c4c4c4;
	border-radius: 3px;
	color: #000;
	border: none;
}

#jusopop .wrapper #list dl dd button:hover {
	color: #fff;
	background: #000;
}

#jusopop .wrapper #list dl dd:nth-child(1) {
	font-weight: bold;
	width: 20%;
}

#jusopop .wrapper #list dl dd:nth-child(2) {
	width: 60%;
	margin: 0 5%;
}

#jusopop .wrapper #list dl dd:nth-child(3) {
	width: 10%;
}

#jusopop .wrapper .paginate {
	text-align: center;
}

#jusopop .wrapper #juso {
	position: relative;
}

#jusopop .wrapper .container-flex {
	display: flex;
	flex: 1 1 auto;
	padding: 10px 0;
}

#jusopop .wrapper .container-flex .col {
	width: 40%;
	padding: 0px 5%;
	flex: 1;
}

#jusopop .wrapper .container-flex .col:nth-child(2) {
	border-left: 1px solid #858585;
}

#jusopop .wrapper .container-flex .col .example {
	padding: 15px 10px 10px;
}

#jusopop .wrapper .container-flex .col .sample-1 {
	color: #000;
}

#jusopop .wrapper .container-flex .col .sample-2 {
	color: #858585;
}

#jusopop .wrapper .caution {
	font-size: 14px;
	color: #858585;
	padding: 30px 5% 15px;
	text-align: left;
}

@media ( min-width : 320px) and (max-width: 767px) {
	.ng-pristine {
		position: relative;
	}
	#jusopop {
		overflow-y: scroll;
	}
	#jusopop .wrapper {
		width: 100%;
		min-height: 100%;
		padding: 50px 15px;
		transform: unset !important;
		background: #fff;
		top: 0;
		left: 0;
	}
	#searchbtn {
		position: absolute;
		font-size: 11px;
		top: 0px;
		right: 0px;
		height: 40px;
	}
	.paginate {
		font-size: 12px;
	}
	#list dd:nth-child(1) {
		font-size: 14px;
	}
	#list dd:nth-child(2) {
		font-size: 11px;
	}
	#list dd:nth-child(3) {
		width: 20%;
	}
	#list dd button {
		padding: 5px;
		width: 100%;
		display: block;
	}
	.container-flex {
		font-size: 11px;
	}
}

@media ( min-width : 768px) and (max-width: 995px) {
	#jusopop .wrapper {
		width: 80%;
		min-height: 80%;
		padding: 30px;
	}
	#kr-private.addressDetailsDTO.line1,
		#ta-registration-address-shipping-line1 {
		width: 70%;
	}
	.input-group input[type=email], .input-group input[type=password],
		.input-group input[type=tel], .input-group input[type=text] {
		color: #000 !important;
	}
	.mixin__input {
		color: #000 !important;
	}
	#searchbtn {
		background: #fff;
		border: 1px solid #d5d5d5;
		padding: 10px;
	}
	.paginate {
		font-size: 20px;
	}
	#list dd:nth-child(1) {
		font-size: 24px;
	}
	#list dd:nth-child(2) {
		font-size: 14px;
	}
	#list dd button {
		padding: 10px;
	}
	.container-flex {
		font-size: 13px;
	}
}

@media ( min-width : 996px) {
	#jusopop .wrapper {
		width: 50%;
		min-height: 50%;
		padding: 50px;
	}
	#jusopop input[name='keyword'] {
		width: 74%;
	}
	#kr-private.addressDetailsDTO.line1,
		#ta-registration-address-shipping-line1 {
		display: inline;
	}
	#searchbtn {
		width: 25%;
	}
	.paginate {
		font-size: 20px;
	}
	#list dd:nth-child(1) {
		font-size: 30px;
		font-weight: bold;
		width: 20%;
	}
	#list dd:nth-child(2) {
		font-size: 16px;
		width: 60%;
		margin: 0 5%;
	}
	#list dd:nth-child(3) {
		width: 10%;
	}
	#list dd button {
		padding: 10px;
	}
	.container-flex {
		font-size: 14px;
	}
}
</style>
				<script>
// checkout delivery, enter registration confirmation, checkout confirmation, account checkout, account save checkout, account save address, account edit address
var lang  = {
  "ko": {
    "caution":"아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.",
    "placeholder":"주소를 넣어주세요",
    "key":"U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk=",
    "btn":"주소 검색",
    "example":[
      {"type":"1. 도로명 + 건물번호","ex":"예) 충정로 70"},
      {"type":"2. 지역명(동/리) + 번지","ex":"예) 미근동 332"},
      {"type":"3. 지역명(동/리) + 건물명(아파트명)","ex":"예) 미근동 웨스트게이트타워"},
      {"type":"4. 사서함명 + 번호","ex":"예) 서대문우체국사서함 1~100"}
    ],
    "apply":"적용",
    "ajax":"https://www.juso.go.kr/addrlink/addrLinkApiJsonp.do"
  },
  "en": {
    "caution":"Please fill in the form below.",
    "placeholder":"Input Road Name Address",
    "key":"U01TX0FVVEgyMDE4MTIyMDA5NTU0OTEwODM5Mjg=",
    "btn":"Search",
    "example":[
      {"type":"1. Road Name + Building No.","ex":"Ex) 209, Sejong-daero"},
      {"type":"2. Districts Dong/Ri + Bungi","ex":"Ex) Migeun-dong 332"},
      {"type":"3. Districts Dong/Ri + Building(APT) No.","ex":"Ex) Migeun-dong Westgate Tower"},
      {"type":"4. Mailbox + No.","ex":"Ex) Seodaemun Post Office Mailbox 1~100"}
    ],
    "apply":"APPLY",
    "ajax":"https://www.juso.go.kr/addrlink/addrEngApiJsonp.do"
  }
};
 var type, addr;
// set Language
var langset = $('html').attr('lang');
// var langset = "ko";
$('#jusopop').addClass(langset);
$('.caution').text(lang[langset].caution);
$('#juso > input[name="confmKey"]').val(lang[langset].key);
$('#searchbtn').val(lang[langset].btn);
$('.example').each(function(i){
  $(this).children("p").eq(0).text(lang[langset].example[i].type);
  $(this).children("p").eq(1).text(lang[langset].example[i].ex);
})

function getAddr(){
		$.ajax({
			 url :lang[langset].ajax  //인터넷망
			,type:"post"
			,data:$("#juso").serialize()
			,dataType:"jsonp"
			,crossDomain:true
			,success:function(jsonStr){
				$("#list").html("");
				var errCode = jsonStr.results.common.errorCode;
				var errDesc = jsonStr.results.common.errorMessage;
				if(errCode != "0"){
					$("#pageApi").html("");
    				if(errCode ==  "E0001"){ alert("승인되지 않은 KEY입니다."); }
    				else if(errCode ==  "E0005"){ alert("검색어를 입력해주세요."); }
            else if(errCode ==  "E0006"){ alert("시도명으로는 검색이 불가합니다."); }
            else { alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요."); }
				}else{
					if(jsonStr != null){
						makeListJson(jsonStr);
						pageMake(jsonStr);
						actBtn(jsonStr);
					}
				}
			}
			,error: function(xhr,status, error){
				alert("error");
			}
		});
	}
	var $target, target;
	
	function goPage(pageNum){
		document.form.currentPage.value=pageNum;
		getAddr();
	}
	
	function pageMake(jsonStr){ 
		var total = jsonStr.results.common.totalCount; // 총건수 
    console.log("총건수:"+total);
		var pageNum = document.form.currentPage.value;// 현재페이지
		var paggingStr = "";
		if(total < 1){
      var htmlStr = "<div class='result'><p>검색결과가 없습니다.</p></div>";
  		$("#list").html(htmlStr);
	  	$("#pageApi").html("");
		} else {
      if(total > 1000){
        total=1000;
      }
			// var PAGEBLOCK= document.form.countPerPage.value;
			// var pageSize= document.form.countPerPage.value;
      var PAGEBLOCK=10; 
  		var pageSize=10; 
			var totalPages = Math.floor((total-1)/pageSize) + 1;
			var firstPage = Math.floor((pageNum-1)/PAGEBLOCK) * PAGEBLOCK + 1;		
			if( firstPage <= 0 ) firstPage = 1;		
			var lastPage = firstPage-1 + PAGEBLOCK;
			if( lastPage > totalPages ) lastPage = totalPages;		
			var nextPage = lastPage+1 ;
			var prePage = firstPage-5 ;		
			if( firstPage > PAGEBLOCK ){
				paggingStr +=  "<a href='javascript:goPage("+prePage+");' style='font-weight:normal;color:#121212;'>◁</a>  " ;
			}		
			for( i=firstPage; i<=lastPage; i++ ){
				if( pageNum == i )
					paggingStr += "<a style='font-weight:bold;color:black' href='javascript:goPage("+i+");'>" + i + "</a>  ";
				else
					paggingStr += "<a href='javascript:goPage("+i+");' style='font-weight:normal;color:#666;'>" + i + "</a>  ";
			}		
			if( lastPage < totalPages ){
				paggingStr +=  "<a href='javascript:goPage("+nextPage+");' style='font-weight:normal;color:#121212;'>▷</a>";
			}		
			$("#pageApi").html(paggingStr);
		}	
	}
	
	function goPopup(index) {
		//$('.address-form-popin').addClass('displaynone');
		$("#juso input[name='keyword']").val('');
		$("#list, #pageApi").html('')
		$('.getAddrInfor').show();
		$('#jusopop').show();
    if(index == 0) {
      var wt = "shipping";
    } else { wt = "billing";}
    type = "#ta-registration-address-"+wt+"-";  
    $('.address-form-popin').hide();
    
    // console.log(type);
	}
	function makeListJson(jsonStr){
		var htmlStr = "";
		htmlStr += "<div id='result'>";
		$(jsonStr.results.juso).each(function(i){
			htmlStr += "<dl data-seq='"+i+"'>";
			htmlStr += "<dd>"+this.zipNo+"</dd>";
			htmlStr += "<dd><p><b>"+this.roadAddr+"</b></p><p>"+this.jibunAddr+"</p></dd>";
			htmlStr += "<dd><button id='insert' data-seq='"+i+"' type='button'>"+lang[langset].apply+"</button></dd>";
			htmlStr += "</dl>";
		});
		htmlStr += "</div>";
		$("#list").html(htmlStr);
	}
	
	function enterSearch() {
	  $('.getAddrInfor').hide();        
    getAddr(); //jsonp사용시 enter검색 
	}

	function searchbtn(){
		if($('#address-form-container').length > 0) { // address-form-container
			console.log("#address-form-container");
			$btn = [$("input[id*='addressDetailsDTO.line1']")];
      $("[id$='line1'],[id$='zip'],[id$='city']").prop('readonly', true);
		} else if($('#rgstr-form-3-shipping-address').length > 0){ // enter registeration confirmation 
			console.log("#rgstr-form-3-shipping-address");
			$btn = [$('input[id$="line1"]')];
      $("[name$='line1'],[name$='zip'],[name$='city']").prop('readonly', true);
		} 
    $('#addressclose').on('click',function(){$('#jusopop').hide();$('.address-form-popin').show();}) 
		$btn.forEach(function(ele,index){
      $btn[index].after('<button class="addressbtn addressbtn'+index+'" data-seq="'+index+'" type="button" onclick="goPopup('+index+')"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 24"><g id="Icons" style="opacity:0.75;"><path id="search" d="M16.021,15.96l-2.374-2.375c-0.048-0.047-0.105-0.079-0.169-0.099c0.403-0.566,0.643-1.26,0.643-2.009  C14.12,9.557,12.563,8,10.644,8c-1.921,0-3.478,1.557-3.478,3.478c0,1.92,1.557,3.477,3.478,3.477c0.749,0,1.442-0.239,2.01-0.643 c0.019,0.063,0.051,0.121,0.098,0.169l2.375,2.374c0.19,0.189,0.543,0.143,0.79-0.104S16.21,16.15,16.021,15.96z M10.644,13.69	 c-1.221,0-2.213-0.991-2.213-2.213c0-1.221,0.992-2.213,2.213-2.213c1.222,0,2.213,0.992,2.213,2.213 C12.856,12.699,11.865,13.69,10.644,13.69z"/></g></svg></button>');
    })
	}

 

	function actBtn(jsonStr){
		var target;
		$("#list button, #list dl").each(function(index) {
		$(this).on("click", function(){
			let seqid = $(this).data('seq'), juso = $(jsonStr.results.juso).eq(seqid);
			let zipcode = juso[0].zipNo,
			siNm  = juso[0].siNm;
		  if($('#address-form-container').length > 0){
		  	target = 1;
			} else if($('#rgstr-form-3-shipping-address')){
				target = 0;
			} 
      if(langset == "ko") {
          addr = juso[0].roadAddrPart1;
      } else {
        addr = juso[0].buldMnnm+', '+juso[0].rn+', '+juso[0].sggNm;
      }
		  $('.address-form-popin').removeClass('displaynone');
			switch(target){
				case 0:  // enter registeration
					$(type+"zip").val(zipcode).trigger('input').focusin();
					$(type+"line1").val(addr).trigger('input').focusin();;
					$(type+"city").val(siNm).trigger('input').focusin();;
					$(type+"line2").val(juso[0].roadAddrPart2).val(juso[0].roadAddrPart2).attr("placeholder",juso[0].roadAddrPart2);
					break;
				case 1: // Account Edit Address / 
					$('input[id*="zipCode"]').val(zipcode);
					$('input[id*="line1"]').val(addr);
					$('input[id*="city"]').val(siNm);
					$('input[id*="line2"]').val(juso[0].roadAddrPart2).attr("placeholder",juso[0].roadAddrPart2);
					$('input[id*="zipCode"], input[id*="line1"], input[id*="city"]').trigger('input').focusin();
					break;
				default:
					break;
			}
			$('#jusopop').hide();
      $('.address-form-popin').show();

		});
	});
	}

$(window).on('load', function(){ 
  if($('#address-form-container').length > 0) {
      searchbtn();
    $('[for^="addressaddressType"]').on("click change", function(){
        searchbtn();
        console.log("add searchbtn");
    })
  } else if($('#rgstr-form-3-shipping-address').length > 0) {
    searchbtn();
  } 
  $(document).on('keyup keydown keypress', 'form input[type="text"]', function(e) {
  if(e.which == 13) {
  	e.preventDefault();
  	return false;
  }
  });

  $('.addressbtn').prev().click(function(){
      var seqid = $(this).data('seq');
      goPopup(seqid);
    })

  $('#juso input[name="keyword"]').on('keyup keypress', function(e) {
	    var keyCode = e.keyCode || e.which;
      console.log(keyCode);
	    if (keyCode === 13) { 
        enterSearch(); //jsonp사용시 enter검색 
    } 
  });
})
</script>

			</div>

			<div id="block-8813433968117" class="free-html" data-label="">

			</div>

			<script defer="">
    (function() {
      'use strict';

      var popinConfiguration = {
        modal: true,
        closeText: '',
        dialogClass: 'popin-dialog-open dark ui-popin',
        title: '',
        width: 838,
        resizable: false,
        closeOnEscape: true,
        draggable: false,

        close: function () {},
        create: function() {
            var jThis = $(this);
            jThis.find('.vscroll').jScrollPane();
            // Update jquery dialog
            jThis.on( 'dialogopen', function() {
                var closeIcon = $('<i class="Glyph Glyph--cross lightbox__close-icon" aria-hidden="true" />');
                // Add responsive close glyph if doesn't exist
                if(jThis.parent().find('.lightbox__close-icon').length === 0) {
                    jThis
                        .parent()
                        .find('.ui-dialog-titlebar-close')
                        .prepend(closeIcon);
                }
            });
        },
        
      };

      if (/account-not-activated/.test(location.search)) {
        var execEmail = /email=([^&#]*)/.exec(location.search);

        if (execEmail) {
          console.log('not-activated', execEmail[1], config.urls.resendActivationEmailUrl);
          var resendActivationEmailUrl = config.urls.resendActivationEmailUrl + '?email=' +
          encodeURIComponent(decodeURIComponent(execEmail[1]));
          setTimeout(function() {
            var jLightbox = $("#account-not-activated-lightbox");
            jLightbox.on("click", ".dialog__ok-button", function(e) {
                location.href = resendActivationEmailUrl;
                return false;
              });
            jLightbox.dialog(popinConfiguration);
          },0);
        }
      }
    })()
    </script>
			<div id="account-not-activated-lightbox"
				class="confirm-info-dialog display-none responsive-popin"
				data-nes-lightbox="account-not-activated-lightbox"
				data-dlg-attributes="
    {
        &quot;autoOpen&quot;: false,
        &quot;width&quot;: 838,&quot;dialogClass&quot;: &quot;popin-dialog-open dark popin-page&quot;,&quot;closeText&quot;: &quot;&quot;
    }
    ">
				<div>
					<div>
						<div class="art-title popin-title">가입 절차가 완료되지 않았습니다.</div>
						<div class="text-center popin-content">
							<p class="subtitle">발송된 이메일에 제공된 링크를 클릭해주세요. 메일을 받지 못하신 경우 아래
								버튼을 클릭하여 재발송 해주시기 바랍니다.</p>
							<a
								class="btn button-grey button-primary button-grey-shadow dialog__ok-button"
								title="이메일 다시 보내기"> 이메일 다시 보내기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<div id="full-page-loader"
		class="display-none dark-overlay full-page-loader" tabindex="-1">

		<div class="loader-outer">
			<div class="loader-inner">
				<img src="https://www.nespresso.com/_ui/img/ajax-loader-dark-bg.gif"
					alt="로딩">
			</div>
		</div>
	</div>

	<div id="full-page-loader-discreet"
		class="display-none overlay full-page-loader"></div>

	<span id="a11y-notification-area" class="visually-hidden"
		aria-live="assertive" aria-relevant="text" role="alert"></span>

	<script
		src="https://www.nespresso.com/_ui/generated/responsiveHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
		defer=""></script>
	<script
		src="https://www.nespresso.com/_ui/generated/angular.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>


	<script
		src="https://www.nespresso.com/_ui/generated/myAccount.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
		defer=""></script>
	<script
		src="https://www.nespresso.com/_ui/generated/allFooter.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
		defer=""></script>
	<script
		src="https://www.nespresso.com/_ui/generated/smartBanner.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"
		defer=""></script>
	<div id="gdpr-consent-lightbox" class="gdpr-consent-lightbox"
		style="display: none;">
		<div class="popin">
			<main id="gdpr-consent-lightbox__content"
				class="gdpr-consent-lightbox__content"
				data-content-url="/kr/ko/view/FreeHtmlContentBlockController?componentUid=gdprConsentLightboxContent">
			</main>
			<footer class="gdpr-consent-lightbox__controls">
				<div class="gdpr-consent-lightbox__controls-container">
					<button class="gdpr-consent-lightbox__change-preferences"
						data-my-account-url="/kr/ko/myaccount/showMySubscriptions ">
						<span aria-hidden="true"> 네스프로세소 소식 수신 - 설정 변경</span> <span
							class="visually-hidden"> 이 버튼을 누르시면 현재 페이지가 닫히고, 정보 수신 항목
							설정 메뉴로 이동하게 됩니다.</span>
					</button>
					<button class="gdpr-consent-lightbox__keep-preferences">
						<span aria-hidden="true"> 네스프로세소 소식 수신 - 설정 유지</span> <span
							class="visually-hidden"> 이 버튼을 누르시면, 네스프레소 소식 수신 동의와 관련하여
							고객님이 기존 셋팅하신 내용대로 저장되고, 현재 페이지가 닫힙니다.</span>
					</button>
				</div>
			</footer>
		</div>
	</div>
	<div id="simplelightbox" class="crema-ui-container "></div>
	<script>
             // window.ui = window.ui || [];
             // window.ui.push({"id":"simplelightbox","module":"SimpleLightbox","configuration":{"translations":{"lightboxmodule.a11y.button.close":"닫기"},"props":{},"eCommerceData":null}});
            </script>
	<div id="quantityselector" class="crema-ui-container "></div>
	<script>
             // window.ui = window.ui || [];
             // window.ui.push({"id":"quantityselector","module":"QuantitySelector","configuration":{"translations":{"quantityselector.customquantity.rounding.message":"상품 개수를  {productQuantity}로 변경하였습니다.","quantityselector.a11y.addproduct.label":"{quantity} 추가하기","quantityselector.a11y.dialog.description":"아래 수량 중에서 골라주세요.","quantityselector.a11y.REMOVEDproduct.label":"{productName} 이(가) 고객님의 장바구니에서 삭제되었습니다.","quantityselector.okbutton.label":"OK","quantityselector.choosehint.label":"수량을 선택해 주세요.","quantityselector.customquantity.error.salesMultiple":"해당 상품의 최소 구매 단위는 {salesMultiple} 입니다.","quantityselector.a11y.updateproduct.label":"{quantity} 개로 업데이트 하기","quantityselector.customquantity.error.maximumAmount":"해당 상품의 최대 구매 가능 개수는 {maxQuantity} 입니다.","quantityselector.customquantity.error.invalidQuantity":"선택하신 수량으로는 구매할 수 없습니다.","quantityselector.a11y.dialog.title":"수량 선택 메뉴"},"props":{"thirdLine":[100,150,200,250,300]},"eCommerceData":null}});
            </script>
	<div id="a11yNotification" class="visually-hidden"
		aria-live="assertive" role="alert"></div>

	<div id="responsive-overlay" class="crema-ui-container ">
		<div></div>
	</div>
	<script>
              //window.ui = window.ui || [];
             // window.ui.push({id: 'responsive-overlay', module: 'Overlay', configuration: {}});
            </script>






	<!--[if lt IE 8]>
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

<![endif]-->
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
	<script type="text/javascript"
		src="/oupE-O-W2rBuZCRetQ/aEYhL8b4EkEi/WDcTJw/PRAvA2E/_Hzs"></script>

	<script type="text/javascript" id="">_mpulsePageGroup=function(c){var a=c.page.pageInfo.breadcrumbUID.split(":"),b=function(){if("customEvent"===google_tag_manager["GTM-WJGQVL"].macro(263)&&"other"!==google_tag_manager["GTM-WJGQVL"].macro(264))return google_tag_manager["GTM-WJGQVL"].macro(265);switch(a[0]){case "account":return a[0]+"-"+(a[1]||"other");case "checkister":return a[0]+"-"+a[3];case "cart":case "shopping bag":return"checkout-shopping-bag";case "multi-step-checkout-summary-page":return"checkout-multi-step-checkout-summary-page";case "checkout":return"shopping bag"===a[3]?"checkout-shopping-bag":
a[0]+"-"+a[3];case "shop":a[0]="catalog";case "catalog":return/plp|pdp/.test(a[3])?/_plp/.test(c.page.pageInfo.pageName)?a[0]+"-plp":a[0]+"-pdp":a[0]+"-other";case "guest-checkout":return a[0]+"-"+a[3];case "login":return a[0]+"-"+a[3];case "registration-personal-info-page":return"registration";case "store-locator":return"locator";case "services-site-internet-nespresso":return"services";case "personal-info-page":case "brand":case "content":case "country-language":case "home":case "legal":case "locator":case "local-page":case "club":case "maintenance":case "registration":case "landing-page":case "services":case "standalone":case "support":return a[0];
case "page":return"unsubscribe"===a[3]?"page-unsubscribe":a[0]+"-"+a[1]}return"other"}();b=b.replace(/[^0-9a-z-]/g,"-").replace(/-+/g,"-");b=b.split("-");b[0]==b[1]&&(b=b.slice(1));return b.join("-")};mpulsePageGroup=function(){try{return _mpulsePageGroup(padl)}catch(c){}};mpulseBreadcrumbUIDGetter=function(c){return function(){try{return padl.page.pageInfo.breadcrumbUID.split(":")[c]}catch(a){}}};mpulseBreadcrumbUIDType=mpulseBreadcrumbUIDGetter(0);mpulseBreadcrumbUIDCategory=mpulseBreadcrumbUIDGetter(1);
mpulseBreadcrumbUIDSubCategory=mpulseBreadcrumbUIDGetter(2);mpulseBreadcrumbUIDName=mpulseBreadcrumbUIDGetter(3);mpulseBreadcrumbUIDTechnology=mpulseBreadcrumbUIDGetter(4);</script>
	<script type="text/javascript" id="">!function(n,p,F,x,G,k){try{ah={version:G=56};var R="length",H="script",t="cookie",y="analytics",I="ah_console_output";k=[];var S=k.map,J=k.reduce,z=k.slice,u=p.console||{},e=document,K=decodeURIComponent,v=encodeURIComponent;k=["Testing","Production"];var L=e.getElementsByTagName(H)[0],T=L.parentNode,f=location.hostname,M="true"===google_tag_manager["GTM-WJGQVL"].macro(266),N=/\.nespresso\.com$/,A=n.keys,q=ah.options={},w=p.localStorage;["debug","log","info","warn","error"].forEach(function(a,b,c){b=u[a]||u.log;c=["[ah"+
(u[a]?"":":"+a)+"]"];ah[a]=function(){var d=arguments;b&&q.output&&b.apply(0,c.concat(z.call(d)));return d[d[R]-1]}},{});!function(a,b){b=ah.output=function(c){c=null==c?!q.output:c;q.output=1;ah.info("Output:",c?"enabled":"disabled");q.output=c;w&&(w[I]=c)};a&&(q.output=1,ah.info("Analytics Helpers",G),b("true"===a))}(w&&w[I]);if(N.test(f)){f=f.replace(N,"");var O="www"===f;O!==M&&ah.error(k[+M],"container running on",k[+O],"environment")}var U=ah.extend=n.assign||function(a){a&&z.call(arguments,
1).forEach(function(b){b&&A(b).forEach(function(c){a[c]=b[c]})});return a},V=ah.entries=n.entries||function(a){return A(a).map(function(b){return[b,a[b]]})};ah.join=function(a,b){return a.join.call(a,b)};ah.map=function(a,b){return S.call(a,b)};ah.reduce=function(a,b,c){return J.call(a,b,c)};var P=ah.wrap=function(a,b,c){c=a instanceof Function?a:b&&b[a];c instanceof Function||ah.error("Wrap:","Invalid function",[a,b,c]);return function(){try{return c.apply(b||this,arguments)}catch(d){ah.error(d)}}};
ah.unique=function(a,b){return A(a.reduce(function(c,d){if(d||b)c[d]=1;return c},{}))};var W=ah.params=function(){return[].concat.apply([],arguments).reduce(function(a,b){if(b&&"0"!==b)try{U(a,b instanceof n?b:F("("+b+")"))}catch(c){ah.error(c,"\nParams: Failed to merge",b)}return a},{})},B=ah.url=function(a){return a+X(W(z.call(arguments,1)),/(\?|&)$/.test(a)?"":/\?/.test(a)?"\x26":"?")},l=/^((\/(mobile|pro|mosaic|myoffice))?\/[a-z]{2})(\/|$)/i.exec(location.pathname);ah.path=l=ah[l?"log":"warn"]("Website path:",
(l&&l[1]||"")+"/");ah[t]=function(a,b,c,d,g){a=v(a);if(null===b)e[t]=a+"\x3d; expires\x3dThu, 01 Jan 1970 00:00:00 UTC; path\x3d"+(c||d||l);else{if(null==b)return(a=e[t].match("(^|;) *"+a+"\x3d([^;]*)(;|$)"))&&a[2]&&K(a[2]);g=new Date;g.setTime(g.getTime()+(c?864E5*c:31536E6));e[t]=a+"\x3d"+v(b)+";expires\x3d"+g.toUTCString()+";path\x3d"+(d||l);return b}};f=function(a,b){this.storage=b;this.keyName=a;this.init(this.keyName)};f.prototype.init=function(){var a=this.storage.getItem(this.keyName);this.data=
a=a?JSON.parse(a):{}};f.prototype.get=function(a,b){void 0===b&&(b="");return void 0===this.data[a]?this.data[a]=b:this.data[a]};f.prototype.set=function(a){for(var b in a)this.data[b]=a[b]};f.prototype.save=function(){this.storage.setItem(this.keyName,JSON.stringify(this.data))};ah.sessStorage=new f("_gtm",sessionStorage);ah.locStorage=new f("_gtm",localStorage);var X=ah.query=function(a,b){if(a instanceof n)a=V(a).reduce(function(c,d){null!=d[1]&&c.push(d.map(v).join("\x3d"));return c},[]),a=a.length?
"?"+a.join("\x26"):"";else if(null==b&&(b=location.search),a=b.match("(\\?|\x26)"+v(a)+"\x3d([^\x26]*)(\x26|$)"))a=a[2]&&K(a[2]);return a};ah["try"]=function(a,b){try{return F(2>arguments.length?a:"arguments[0]"+b)}catch(c){}};x=J.call(x,function(a,b,c,d){c%2&&(a[d[c-1]]=b);return a},{});ah.sane_uid=function(a){return null==a?"":a.toString().replace(/[\u0300-\u036f]/g,"").replace(/[\u0301\u0060]/gi,"").replace(/[^\u0000-\u007E]/g,function(b){return x[b]||b}).replace(/([a-z])([A-Z])|(\D)(\d)|(\d)(\D)/g,
function(b,c,d,g,m,C,D){return(c||g||C)+"-"+(d||m||D)}).toLowerCase().replace(/b-2(b|c)/g,"b2$1").replace(/[^a-z0-9]+/g,"-").replace(/^-+|-+$/g,"")};ah.load=function(){var a=e.createElement(H);a.async=!0;a.className=y;a.src=B.apply(0,arguments);T.insertBefore(a,L);return a};ah.pixel=function(){var a=e.createElement("img");a.src=B.apply(0,arguments);a.height=1;a.width=1;a.style.display="none";a.className=y;e.body.appendChild(a)};ah.container=function(){var a=e.createElement("iframe");a.src=B.apply(0,
arguments);a.height=1;a.width=1;a.frameBorder=0;a.style.display="none";a.className=y+" dtmiframe";e.body.appendChild(a)};ah.clickListener=function(a,b){var c=null,d="MutationObserver"in window,g=function(){var m=!1,C=document.body,D={childList:!0,subtree:!0},Y=function(E){m=!1;for(var Q=0;Q<E.length&&!(m=document.body.querySelector(a));Q++);m&&(E=m,c&&c.disconnect(),b(E))};c=new MutationObserver(Y);c.observe(C,D)};document.body.querySelector(a)?b(document.body.querySelector(a)):d&&g()};ah.optOut=
function(){try{p.evidon.notice.showOptions()}catch(a){}};var h=ah.ready=function(a){a=P(a);h.wait?h.wait.push(a):a()},r=P(function(){this!==h&&(e.removeEventListener("DOMContentLoaded",r),p.removeEventListener("load",r));h.wait&&(ah.log("DOM: ready"),h.wait.forEach(function(a){a()}),delete h.wait)});"complete"===e.readyState||"loading"!==e.readyState&&!e.documentElement.doScroll?(ah.log("DOM: previously ready"),setTimeout(r.bind(h))):(ah.log("DOM: waiting"),h.wait=[],e.addEventListener("DOMContentLoaded",
r),p.addEventListener("load",r))}catch(a){ah.fatal=a,(f=window.console&&u.error)&&f("[ah] Fatal error:",a)}}(Object,window,eval,"\u24b6A\uff21A\u00c0A\u00c1A\u00c2A\u1ea6A\u1ea4A\u1eaaA\u1ea8A\u00c3A\u0100A\u0102A\u1eb0A\u1eaeA\u1eb4A\u1eb2A\u0226A\u01e0A\u00c4A\u01deA\u1ea2A\u00c5A\u01faA\u01cdA\u0200A\u0202A\u1ea0A\u1eacA\u1eb6A\u1e00A\u0104A\u023aA\u2c6fA\ua732AA\u00c6AE\u01fcAE\u01e2AE\ua734AO\ua736AU\ua738AV\ua73aAV\ua73cAY\u24b7B\uff22B\u1e02B\u1e04B\u1e06B\u0243B\u0182B\u0181B\u24b8C\uff23C\u0106C\u0108C\u010aC\u010cC\u00c7C\u1e08C\u0187C\u023bC\ua73eC\u24b9D\uff24D\u1e0aD\u010eD\u1e0cD\u1e10D\u1e12D\u1e0eD\u0110D\u018bD\u018aD\u0189D\ua779D\u00d0D\u01f1DZ\u01c4DZ\u01f2Dz\u01c5Dz\u24baE\uff25E\u00c8E\u00c9E\u00caE\u1ec0E\u1ebeE\u1ec4E\u1ec2E\u1ebcE\u0112E\u1e14E\u1e16E\u0114E\u0116E\u00cbE\u1ebaE\u011aE\u0204E\u0206E\u1eb8E\u1ec6E\u0228E\u1e1cE\u0118E\u1e18E\u1e1aE\u0190E\u018eE\u24bbF\uff26F\u1e1eF\u0191F\ua77bF\u24bcG\uff27G\u01f4G\u011cG\u1e20G\u011eG\u0120G\u01e6G\u0122G\u01e4G\u0193G\ua7a0G\ua77dG\ua77eG\u24bdH\uff28H\u0124H\u1e22H\u1e26H\u021eH\u1e24H\u1e28H\u1e2aH\u0126H\u2c67H\u2c75H\ua78dH\u24beI\uff29I\u00ccI\u00cdI\u00ceI\u0128I\u012aI\u012cI\u0130I\u00cfI\u1e2eI\u1ec8I\u01cfI\u0208I\u020aI\u1ecaI\u012eI\u1e2cI\u0197I\u24bfJ\uff2aJ\u0134J\u0248J\u24c0K\uff2bK\u1e30K\u01e8K\u1e32K\u0136K\u1e34K\u0198K\u2c69K\ua740K\ua742K\ua744K\ua7a2K\u24c1L\uff2cL\u013fL\u0139L\u013dL\u1e36L\u1e38L\u013bL\u1e3cL\u1e3aL\u0141L\u023dL\u2c62L\u2c60L\ua748L\ua746L\ua780L\u01c7LJ\u01c8Lj\u24c2M\uff2dM\u1e3eM\u1e40M\u1e42M\u2c6eM\u019cM\u24c3N\uff2eN\u01f8N\u0143N\u00d1N\u1e44N\u0147N\u1e46N\u0145N\u1e4aN\u1e48N\u0220N\u019dN\ua790N\ua7a4N\u01caNJ\u01cbNj\u24c4O\uff2fO\u00d2O\u00d3O\u00d4O\u1ed2O\u1ed0O\u1ed6O\u1ed4O\u00d5O\u1e4cO\u022cO\u1e4eO\u014cO\u1e50O\u1e52O\u014eO\u022eO\u0230O\u00d6O\u022aO\u1eceO\u0150O\u01d1O\u020cO\u020eO\u01a0O\u1edcO\u1edaO\u1ee0O\u1edeO\u1ee2O\u1eccO\u1ed8O\u01eaO\u01ecO\u00d8O\u01feO\u0186O\u019fO\ua74aO\ua74cO\u01a2OI\ua74eOO\u0222OU\u008cOE\u0152OE\u009coe\u0153oe\u24c5P\uff30P\u1e54P\u1e56P\u01a4P\u2c63P\ua750P\ua752P\ua754P\u24c6Q\uff31Q\ua756Q\ua758Q\u024aQ\u24c7R\uff32R\u0154R\u1e58R\u0158R\u0210R\u0212R\u1e5aR\u1e5cR\u0156R\u1e5eR\u024cR\u2c64R\ua75aR\ua7a6R\ua782R\u24c8S\uff33S\u1e9eS\u015aS\u1e64S\u015cS\u1e60S\u0160S\u1e66S\u1e62S\u1e68S\u0218S\u015eS\u2c7eS\ua7a8S\ua784S\u24c9T\uff34T\u1e6aT\u0164T\u1e6cT\u021aT\u0162T\u1e70T\u1e6eT\u0166T\u01acT\u01aeT\u023eT\ua786T\ua728TZ\u24caU\uff35U\u00d9U\u00daU\u00dbU\u0168U\u1e78U\u016aU\u1e7aU\u016cU\u00dcU\u01dbU\u01d7U\u01d5U\u01d9U\u1ee6U\u016eU\u0170U\u01d3U\u0214U\u0216U\u01afU\u1eeaU\u1ee8U\u1eeeU\u1eecU\u1ef0U\u1ee4U\u1e72U\u0172U\u1e76U\u1e74U\u0244U\u24cbV\uff36V\u1e7cV\u1e7eV\u01b2V\ua75eV\u0245V\ua760VY\u24ccW\uff37W\u1e80W\u1e82W\u0174W\u1e86W\u1e84W\u1e88W\u2c72W\u24cdX\uff38X\u1e8aX\u1e8cX\u24ceY\uff39Y\u1ef2Y\u00ddY\u0176Y\u1ef8Y\u0232Y\u1e8eY\u0178Y\u1ef6Y\u1ef4Y\u01b3Y\u024eY\u1efeY\u24cfZ\uff3aZ\u0179Z\u1e90Z\u017bZ\u017dZ\u1e92Z\u1e94Z\u01b5Z\u0224Z\u2c7fZ\u2c6bZ\ua762Z\u24d0a\uff41a\u1e9aa\u00e0a\u00e1a\u00e2a\u1ea7a\u1ea5a\u1eaba\u1ea9a\u00e3a\u0101a\u0103a\u1eb1a\u1eafa\u1eb5a\u1eb3a\u0227a\u01e1a\u00e4a\u01dfa\u1ea3a\u00e5a\u01fba\u01cea\u0201a\u0203a\u1ea1a\u1eada\u1eb7a\u1e01a\u0105a\u2c65a\u0250a\ua733aa\u00e6ae\u01fdae\u01e3ae\ua735ao\ua737au\ua739av\ua73bav\ua73day\u24d1b\uff42b\u1e03b\u1e05b\u1e07b\u0180b\u0183b\u0253b\u24d2c\uff43c\u0107c\u0109c\u010bc\u010dc\u00e7c\u1e09c\u0188c\u023cc\ua73fc\u2184c\u24d3d\uff44d\u1e0bd\u010fd\u1e0dd\u1e11d\u1e13d\u1e0fd\u0111d\u018cd\u0256d\u0257d\ua77ad\u01f3dz\u01c6dz\u24d4e\uff45e\u00e8e\u00e9e\u00eae\u1ec1e\u1ebfe\u1ec5e\u1ec3e\u1ebde\u0113e\u1e15e\u1e17e\u0115e\u0117e\u00ebe\u1ebbe\u011be\u0205e\u0207e\u1eb9e\u1ec7e\u0229e\u1e1de\u0119e\u1e19e\u1e1be\u0247e\u025be\u01dde\u24d5f\uff46f\u1e1ff\u0192f\ua77cf\u24d6g\uff47g\u01f5g\u011dg\u1e21g\u011fg\u0121g\u01e7g\u0123g\u01e5g\u0260g\ua7a1g\u1d79g\ua77fg\u24d7h\uff48h\u0125h\u1e23h\u1e27h\u021fh\u1e25h\u1e29h\u1e2bh\u1e96h\u0127h\u2c68h\u2c76h\u0265h\u0195hv\u24d8i\uff49i\u00eci\u00edi\u00eei\u0129i\u012bi\u012di\u00efi\u1e2fi\u1ec9i\u01d0i\u0209i\u020bi\u1ecbi\u012fi\u1e2di\u0268i\u0131i\u24d9j\uff4aj\u0135j\u01f0j\u0249j\u24dak\uff4bk\u1e31k\u01e9k\u1e33k\u0137k\u1e35k\u0199k\u2c6ak\ua741k\ua743k\ua745k\ua7a3k\u24dbl\uff4cl\u0140l\u013al\u013el\u1e37l\u1e39l\u013cl\u1e3dl\u1e3bl\u017fl\u0142l\u019al\u026bl\u2c61l\ua749l\ua781l\ua747l\u01c9lj\u24dcm\uff4dm\u1e3fm\u1e41m\u1e43m\u0271m\u026fm\u24ddn\uff4en\u01f9n\u0144n\u00f1n\u1e45n\u0148n\u1e47n\u0146n\u1e4bn\u1e49n\u019en\u0272n\u0149n\ua791n\ua7a5n\u01ccnj\u24deo\uff4fo\u00f2o\u00f3o\u00f4o\u1ed3o\u1ed1o\u1ed7o\u1ed5o\u00f5o\u1e4do\u022do\u1e4fo\u014do\u1e51o\u1e53o\u014fo\u022fo\u0231o\u00f6o\u022bo\u1ecfo\u0151o\u01d2o\u020do\u020fo\u01a1o\u1eddo\u1edbo\u1ee1o\u1edfo\u1ee3o\u1ecdo\u1ed9o\u01ebo\u01edo\u00f8o\u01ffo\u0254o\ua74bo\ua74do\u0275o\u01a3oi\u0223ou\ua74foo\u24dfp\uff50p\u1e55p\u1e57p\u01a5p\u1d7dp\ua751p\ua753p\ua755p\u24e0q\uff51q\u024bq\ua757q\ua759q\u24e1r\uff52r\u0155r\u1e59r\u0159r\u0211r\u0213r\u1e5br\u1e5dr\u0157r\u1e5fr\u024dr\u027dr\ua75br\ua7a7r\ua783r\u24e2s\uff53s\u00dfss\u015bs\u1e65s\u015ds\u1e61s\u0161s\u1e67s\u1e63s\u1e69s\u0219s\u015fs\u023fs\ua7a9s\ua785s\u1e9bs\u24e3t\uff54t\u1e6bt\u1e97t\u0165t\u1e6dt\u021bt\u0163t\u1e71t\u1e6ft\u0167t\u01adt\u0288t\u2c66t\ua787t\ua729tz\u24e4u\uff55u\u00f9u\u00fau\u00fbu\u0169u\u1e79u\u016bu\u1e7bu\u016du\u00fcu\u01dcu\u01d8u\u01d6u\u01dau\u1ee7u\u016fu\u0171u\u01d4u\u0215u\u0217u\u01b0u\u1eebu\u1ee9u\u1eefu\u1eedu\u1ef1u\u1ee5u\u1e73u\u0173u\u1e77u\u1e75u\u0289u\u24e5v\uff56v\u1e7dv\u1e7fv\u028bv\ua75fv\u028cv\ua761vy\u24e6w\uff57w\u1e81w\u1e83w\u0175w\u1e87w\u1e85w\u1e98w\u1e89w\u2c73w\u24e7x\uff58x\u1e8bx\u1e8dx\u24e8y\uff59y\u1ef3y\u00fdy\u0177y\u1ef9y\u0233y\u1e8fy\u00ffy\u1ef7y\u1e99y\u1ef5y\u01b4y\u024fy\u1effy\u24e9z\uff5az\u017az\u1e91z\u017cz\u017ez\u1e93z\u1e95z\u01b6z\u0225z\u0240z\u2c6cz\ua763z");</script>
	<script type="text/javascript" id="">ah.wrap(function(){ah.ga={customTask:ah.wrap(function(p,u,v){return ah.wrap(function(c){var w=c.get("sendHitTask"),e=new Date;c.set("dimension50",c.get("clientId"));c.set("dimension163",60*e.getTimezoneOffset()+e/1E3);c.set("sendHitTask",ah.wrap(function(l){function f(d,b){var a=g?"gaLastNotice":"gaNotice",h=d.name?""+d.name:0,f="GA Notice L"+(e?5:g?4:3-b);h=h?h[0].toUpperCase()+h.substr(1,23):"Misc";a={event:a,eventRaisedBy:"GTM",eventCategory:"GTM Monitoring",eventAction:"GA Notice",eventLabel:f+
" - "+h,gaEvent:p,gaEventUID:u,gaException:d,gaModel:c,gaOrderID:v,gaSendModel:l,gaOverload1:r,gaOverload2:q,gaOverload3:t,gaPayLoad1:m,gaPayLoad2:k,gaPayLoad3:n,nonInteraction:1};(g?ah.error:ah.warn)("GA: Request error",a);ah.ga.errors.push(a);e||gtmDataObject.push(a)}var g=/^gaError(Fatal)?$/.test(p),e="gaLastNotice"===p,b=l.get("hitPayload"),m=g?b.replace(/(^|&)(c(d|g|m)\d+)=[^&]*/g,function(d,b,a){return"cd73"===a?d:""}):g?b.replace(/(^|&)cd(\d+)\d+=[^&]*/g,function(b,c,a){return 29>a||50==a||
73==a||74==a||139==a?b:""}):b,r=8192<m.length,k=m.replace(/(^|&)pr\d+cd(75|78|79|80|81|87|89|130)=[^&]*/g,""),q=8192<k.length,n=q?k.replace(/(^|&)pr\d+cd\d+=[^&]*/g,""):k,t=8192<n.length;b=m.length+"-"+k.length+"-"+n.length+"-8192";if(t)f({message:b,name:"len"},0);else{r&&f({message:b,name:"len"},2-q);try{l.set("hitPayload",n,!0),w(l)}catch(d){f(d,0)}}}))})}),errors:[]}})();</script>
	<script type="text/javascript" id="">ah.wrap(function(d,c,e){function f(a){return(a=d.cookie.match("(^|;)\\s*"+e+a+"\x3d([^;]+)"))&&decodeURIComponent(a[2])}function b(a,b,c){d.cookie=e+a+"\x3d"+encodeURIComponent(b||"")+";path\x3d/;expires\x3d"+(new Date(c?Date.now()+c:0)).toUTCString()}f(0)&&b(1,b(0));ah.affiliation=function(a){return 0===a?b(0,1,c):a?b(1,a,c):f(1)}})(document,2592E6,"gtm_aff_");</script>
	<script type="text/javascript" id="">ah.wrap(function(e){ah.sanitize=ah.wrap(function(a,b,c){var d=a&&a.map;b=b||0;a?!0===b?b="|":d||b.trim||(a=a.toString().trim().replace(/[\u0300-\u036f]/g,"").replace(/[\u0301\u0060]/gi,"").replace(/[^\u0000-\u007E]/g,function(a){return e[a]||a}).replace(/[^a-z0-9]+/gi,"-").replace(/^-+|-+$/g,""),!0===c?a=a.toUpperCase():!1!==c&&(a=a.toLowerCase()),b=0):a="";if(a&&b||d)d||(a=a.split(/\|+/)),a=a.reduce(function(a,b){(b=b&&ah.sanitize(b,0,c))&&a.push(b);return a},[]),b&&(a=a.join(b));return a})})({"\u24b6":"A",
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
"\u01b6":"z","\u0225":"z","\u0240":"z","\u2c6c":"z","\ua763":"z"});</script>
	<script type="text/javascript" id=""
		src="//d22xmn10vbouk4.cloudfront.net/b924dea2389e11e6bf0212f5c79d2169.js"></script>
	<script type="text/javascript" id="">ah.wrap(function(){function b(a,c){return(a=location.search.match("(\\?|\x26)("+a+")\x3d([^\x26]+)"))&&(c?a[2]+":":"")+a[3]}ah.affiliation(b("aff")||b("utm_id|gclid|dclid",1)||b("utm_source"))})();</script>
	<script type="text/javascript" id="">ah.wrap(function(b,f,e,m,d,c,n,g,p,k){c=b.fbq=b.fbq||function(){b=arguments;c[m]?c[m].apply(c,b):n.push(b)};b._fbq=b._fbq||c;c.push=c;c.version="2.0";n=c.queue=[];b=f.getElementsByTagName(e)[0];e=f.createElement(e);c.loaded=e.async=!0;e.src="//connect.facebook.net/en_US/fbevents.js";b.parentNode.insertBefore(e,b);ah.facebook={split:function(a){return a?a.split(/\|+/):[]},track:function(a){google_tag_manager["GTM-WJGQVL"].macro(5413)&&console.log("FB Deprecated Track Fired");if(a){a=a.split(";");d="product"!==a[3]?{page_type:d=
a[3],content_category:a[4]||d}:{content_type:d=a[3],content_category:a[4]||d};b=arguments;for(e=b.length+1;--e;)if(f=b[e])for(g in f)d[g]=f[g];c(a[2],a[1],d)}},trackSingle:function(a,h){if(a&&h){a=a.split(";");h=h.split(",");google_tag_manager["GTM-WJGQVL"].macro(5414)&&console.log("FB Data: "+a);google_tag_manager["GTM-WJGQVL"].macro(5415)&&console.log("FB Pixels: "+h);d="product"!==a[3]?{page_type:d=a[3],content_category:a[4]||d}:{content_type:d=a[3],content_category:a[4]||d};b=arguments;for(e=b.length+1;--e;)if(f=b[e])for(g in f)d[g]=f[g];
for(var q="track"==a[2]?"trackSingle":"trackSingleCustom",l=0;l<h.length;l++)c(q,h[l],a[1],d)}}};g=google_tag_manager["GTM-WJGQVL"].macro(5416).split(",");for(p=0;k=+g[p++];)c("set","autoConfig",!1,k),c("init",k);0!=google_tag_manager["GTM-WJGQVL"].macro(5417)&&(c("set","autoConfig",!1,google_tag_manager["GTM-WJGQVL"].macro(5418)),c("init",google_tag_manager["GTM-WJGQVL"].macro(5419)))})(window,document,"script","callMethod");</script>
	<script type="text/javascript" id="">ah.wrap(function(a){a.trackSingle(google_tag_manager["GTM-WJGQVL"].macro(5424),google_tag_manager["GTM-WJGQVL"].macro(5425),{content_name:google_tag_manager["GTM-WJGQVL"].macro(5428),content_subsection:google_tag_manager["GTM-WJGQVL"].macro(5431),content_technology:google_tag_manager["GTM-WJGQVL"].macro(5434),is_live:google_tag_manager["GTM-WJGQVL"].macro(5435),landscape:google_tag_manager["GTM-WJGQVL"].macro(5436),language:google_tag_manager["GTM-WJGQVL"].macro(5437),user_id:google_tag_manager["GTM-WJGQVL"].macro(5438),user_owned_machines:a.split(google_tag_manager["GTM-WJGQVL"].macro(5445))})})(ah.facebook);</script>
	<script type="text/javascript" id="">ah.wrap(function(f,g,Z,w,aa,H,ba,ca,da,ea,I,J,P,fa,ha,ia,ja,K,ka,la,Q,ma,z,R,na,x,A,S,y){function L(){x&&(g[x="remove"+x](na,L),f[x](R,L),x=0,S())}S=w(function(M,B,T,N,oa,wa,U,C,D,E,F,e,h,r,k,pa,qa,n,V){function O(a,l,b){clearTimeout(a);return Z(l,b)}function ra(){e=f.pageXOffset;e<C&&(C=e);e>E&&(E=e);h=f.pageYOffset;h<D&&(D=h);h>F&&(F=h);pa=O(pa,qa,1E3)}function ua(a,l,b,m,v,c,p,t,q,u,d,G,W,sa,X){b=this;a=a||"Click";a=b.p[a]||(b.p[a]=[]);0!==l&&(e=h=0,r=g[da]||f[I]||y[I],k=g[ea]||f[J]||y[J]);m=(l||
M).querySelectorAll(b.$);for(p=m[P];c=m[--p];)if(c[ba]&&!c[ma]&&(!b.f||c[H](b.f)==b.v)&&(u=t=c[H](b.i))&&(b.o&&(u+="|"+c[H](b.o)),!b.d[u]&&(d=c.getBoundingClientRect(),d.left>=e&&d.left<r&&d.top>=h&&d.top<k))){G=c[ma]=b.d[u]=1;W={};for(sa=0;X=b.K[sa++];)B[ha]=c[H](X[0]),W[X[1]]=B[ia];a.push([t,W])}G&&b.S()}function va(a,l,b,m,v,c,p,t,q){a=this;if(l=f[a.k])for(b in a.p){if(m=a.p[b],m[0]){for(v=[];c=m.pop();)if(t=l[c[0]]){p=c[1];for(q in t)B[ha]=p[q]||t[q],p[q]=B[ia];v.push(p)}else ah.warn("Impressions:",
c[0],"missing from",a.k);for(;v[0];)gtmDataObject.push({event:ka,eventRaisedBy:"GTM",eventAction:a.a+b,ecommerce:a.F(v.splice(0,10))})}}else a.t=O(a.t,a.S,1E3)}function ta(a){return{impressions:a}}function Y(a,l,b,m,v,c,p,t,q,u,d,G){q="data-"+a+"-";for(u=-1;d=c[++u];)c[u]=[q+d[0],d[1]||d[0]];d=V[a+l]={k:b,i:G=q+"item-id",a:m+" Impression - On ",F:v,f:p?q+p:0,v:t,$:"["+G+"]",d:{},p:{},K:c,o:c&&c[0][0]};d.S=w(va,d);return d.detect=w(ua,d)}V=ah[U=ka+"s"]={display:function(a,l,b){l.forEach(function(m){setTimeout(function(){V[m].detect(a,
b)},16)})}};M=g.body;B=g.createElement("DIV");C=D=1E9;E=F=0;qa=w(function(){n=f.pageXOffset;e=C-n;r=E-n+(g[da]||f[I]||y[I]);C=E=n;n=f.pageYOffset;h=D-n;k=F-n+(g[ea]||f[J]||y[J]);D=F=n;T(z,0);oa(z,0);N(z,0);z=Q});T=Y(ja,"s",ja+"sOn"+Q,"Promo",function(a){return{promoView:{promotions:a}}},[["creative"],["name"],[la]]);N=Y("p"+K,"s",U+="On"+Q,"P"+K,ta,[["section","list"],[la]],"so");oa=Y("p"+K,"s_so",U+"SO","P"+K,ta,0,"so","true");ra();f[A]("scroll",w(ra));N(z,0);if(e=g[ca+"ById"]("filter-form"))e[A](fa,
function(a){"INPUT"===a.target.tagName&&O(0,n=function(){N()})});$(M).on(fa,".navbar-link",function(){O(0,n)});if(e=f.MutationObserver)for(e=new e(w(function(a){for(r=a[P];k=a[--r];)"style"===k.attributeName&&(k=k.target,k[ba]&&(T("Menu Dropdown",k),r=0))})),h=M[ca+"sByClassName"]("submenu"),r=h[P];k=h[--r];)e.observe(k,{attributes:!0})});y=g.documentElement;A="add"+x;"complete"===g[aa]||g[aa]!==R+"ing"&&!y.doScroll?Z(S,3E3):(g[A](na,L),f[A](R,L))})(window,document,setTimeout,ah.wrap,"readyState",
"getAttribute","offsetParent","getElement","innerWidth","innerHeight","clientWidth","clientHeight","length","click","innerHTML","innerText","promotion","roduct","impression","position","Scroll","gtmTracked","Load","load","DOMContentLoaded","EventListener");</script>
	<script type="text/javascript" id="">ah.wrap(function(g,t,w,x,n,y,z,A,u,B,C,p,h,D,l,c){function E(b,d){var a=g[b]=g[b]||function(){e=arguments;a[x]?a[x].apply(a,e):a.queue.push(e)},e=t.getElementsByTagName(w)[0],f=t.createElement(w);g[b="_"+b]=g[b]||a;a.push=a;a.loaded=!0;a.version="1.0";a.queue=[];a.market=google_tag_manager["GTM-WJGQVL"].macro(5486);a.language=google_tag_manager["GTM-WJGQVL"].macro(5487);a.channel=google_tag_manager["GTM-WJGQVL"].macro(5488);f.async=!0;f.src="//www."+("true"===google_tag_manager["GTM-WJGQVL"].macro(5489)?"":"vst.")+"contact.nespresso.com/apps.php?a\x3dcalleo-"+d+(/(msie [1-9]|Trident\/7\.0)/i.test(navigator.userAgent)?
"\x26v\x3die":"");e.parentNode.insertBefore(f,e)}function F(b,d,a,e){a&&a(l);c=function(f,G,q,m,r){m&&m(l);m=m||a;q=q||f.replace(/e?$/,"ed");g[n+b]("add"+b+"Listener",f[z](),D[r=d+q]=y(function(I,J,H,k,v){k=G||"Click";k={eventAction:"Source:"+H+";Action:"+k,eventLabel:q,calleoChatType:d,nonInteraction:+!!G};for(v in l)k[v]=l[v];k[r]=1;m&&m(k,H,I,J);gtmDataObject.push(k)}));l[r=h+r]=e}}l={event:h=n+u,eventRaisedBy:"GTM"};D=ah[h]={};"true"===google_tag_manager["GTM-WJGQVL"].macro(5490)+""&&(E(h,"livechat"),F(u,A),c(C),c("Start"),
c("End"),c("Cancel"),c("Rating",0,"Reviewed",function(b,d){function a(e,f){b[h+A+"Review"+e]=d&&(f||["","Very good","Good","Fairly good","Not acceptable"])[+d[e[z]()]]}a("Delay");a("Quality");a("Satisfaction",["No","Yes"])}),t.addEventListener("click",y(function(b,d){d=b.target;/(^|\s)open-live-chat(\s|$)/.test(d.id+" "+d.className)&&(b.preventDefault(),g[h]("start"+u))})));if("true"===google_tag_manager["GTM-WJGQVL"].macro(5491)+""){E(n+p,"triggers");if(c=google_tag_manager["GTM-WJGQVL"].macro(5492))g[n+p]("NessclubId",c);F(p,B,function(b,d,
a,e){c=h+B;b[c+p+"Category"]=d;b[c+"ID"]=a;b[c+"Name"]=e});c(C,"Display");c("Accept");c("Refuse");c("Ignore","Hide")}})(window,document,"script","callMethod","calleo",ah.wrap,"toLowerCase","Embedded","Chat","Proactive","Launch","Trigger");</script>
	<script type="text/javascript" id="">ah.wrap(function(l){function g(h,b,c){if(b)try{b=l("("+b+")"),d=Object.keys(b).map(function(a){return[a&&new RegExp(a.replace(/\*+/g,"[^:]*")),b[a]]})}catch(a){ah.warn("SessionCam: Invalid selector dictionary\n",a),d=[]}c&&(e="sessioncam"+c,k=new RegExp("(^| )"+e+"( |$)"));if(d)return h=h||location.pathname.replace(/(\/(mosaic|pro|mobile))?(\/\w\w){2}(\/|$)/,"").replace(/\/+/g,":").replace(/(^:|:(d+(:.*)?)?$)/g,""),(c=d.reduce(function(a,b){return b[0]&&!b[0].test(h)?a:a?a+","+b[1]:a+b[1]},""))&&
e&&Array.prototype.forEach.call(document.querySelectorAll(c),function(a){k.test(a.className)||(a.className+=a.className?" "+e:e)}),c}var d,e,k;ah.sessioncam={hide_pii:g,init:function(e,b){function c(){g(b,google_tag_manager["GTM-WJGQVL"].macro(5493),"ignorechanges");g(b,google_tag_manager["GTM-WJGQVL"].macro(5494),"hidetext");var a=document.getElementsByTagName("script")[0],c=document.createElement("script");c.async=!0;c.src="//d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js";a.parentNode.insertBefore(c,a)}var a=ah.extend({Channel:google_tag_manager["GTM-WJGQVL"].macro(5495),
DeviceType:google_tag_manager["GTM-WJGQVL"].macro(5496),IsMobileSite:0,Landscape:google_tag_manager["GTM-WJGQVL"].macro(5497),LanguageCode:google_tag_manager["GTM-WJGQVL"].macro(5498),PrimaryCategory:google_tag_manager["GTM-WJGQVL"].macro(5499),Technology:google_tag_manager["GTM-WJGQVL"].macro(5500),UserIsLoggedIn:+("true"===google_tag_manager["GTM-WJGQVL"].macro(5501)),UserID:google_tag_manager["GTM-WJGQVL"].macro(5502)},e);b=b||google_tag_manager["GTM-WJGQVL"].macro(5515);sessioncamConfiguration={SessionCamHostname:location.href.replace(/^([^\/]+\/\/[^\/]+)\/.*$/,"$1."+google_tag_manager["GTM-WJGQVL"].macro(5517)),SessionCamPath:a.PrimaryCategory,SessionCamPageName:google_tag_manager["GTM-WJGQVL"].macro(5518)+":"+b,customDataObjects:Object.keys(a).map(function(b){return[{key:b,
value:a[b]}]}),elementsToRemove:g(b,google_tag_manager["GTM-WJGQVL"].macro(5519))};var d=document.readyState;if("complete"===d||"loading"!==d&&!document.documentElement.doScroll)setTimeout(ah.wrap(c));else{var f=ah.wrap(function(){f&&(document.removeEventListener("DOMContentLoaded",f),window.removeEventListener("load",f),f=0,c())});document.addEventListener("DOMContentLoaded",f);window.addEventListener("load",f)}}}})(eval);</script>
	<script type="text/javascript" id="">ah.wrap(function(){ah.sessioncam.init()})();</script>
	<script type="text/javascript" id="">var pageViewDebug=false&&google_tag_manager["GTM-WJGQVL"].macro(5520);var pageTech=google_tag_manager["GTM-WJGQVL"].macro(5523);var pageSub1=google_tag_manager["GTM-WJGQVL"].macro(5526);var pagePath=google_tag_manager["GTM-WJGQVL"].macro(5527);var isMachinePage=pageSub1==="machines";var isCapsulePage=pageSub1==="coffee";var isAccessoryPage=pageSub1==="accessories"||pagePath.indexOf("accessories")!=-1;var isVertuoPage=pagePath.indexOf("vertuo")!==-1||pageTech==="vertuoline";var isOriginalPage=pageTech==="originalline"&&!isVertuoPage||!isVertuoPage;var isComboSubscriptionPage=pageSub1==="combo-subscription";
var isMachineSubscriptionPage=pageSub1==="machinesubscription"||isComboSubscriptionPage||pagePath.indexOf("machine-subscription")!=-1;var isCapsuleSubscriptionPage=pageSub1==="subscription"||isComboSubscriptionPage||pagePath.indexOf("coffee-subscription")!=-1;var isSubscriptionPage=isComboSubscriptionPage||isMachineSubscriptionPage||isCapsuleSubscriptionPage;
if(pageViewDebug)console.log("Pageview types:\nMachine: "+isMachinePage+"\nCapsules:"+isCapsulePage+"\nAccessory:"+isAccessoryPage+"\nVertuo:"+isVertuoPage+"\nOriginal:"+isOriginalPage+"\nCombo:"+isComboSubscriptionPage+"\nMachineSub:"+isMachineSubscriptionPage+"\nCapsuleSub:"+isCapsuleSubscriptionPage);dlPush("pageview");if(isMachinePage&&isOriginalPage)dlPush("pagmaols");if(isMachinePage&&isVertuoPage)dlPush("pagmavls");if(isCapsulePage&&isOriginalPage)dlPush("pagcaols");if(isCapsulePage&&isVertuoPage)dlPush("pagcavls");
if(isMachineSubscriptionPage&&isOriginalPage)dlPush("pagmasol");if(isMachineSubscriptionPage&&isVertuoPage)dlPush("pagmasvl");if(isMachineSubscriptionPage)dlPush("pagmss");if(isComboSubscriptionPage&&isOriginalPage)dlPush("pagccsol");if(isComboSubscriptionPage&&isVertuoPage)dlPush("pagccsvl");if(isComboSubscriptionPage)dlPush("pagccs");if(isCapsuleSubscriptionPage)dlPush("pagcss");if(isCapsuleSubscriptionPage&&isVertuoPage)dlPush("pagcasvl");if(isCapsuleSubscriptionPage&&isOriginalPage)dlPush("pagcasol");
if((isMachinePage||isCapsulePage||isAccessoryPage)&&isOriginalPage)dlPush("pagols");if(!isSubscriptionPage&&isVertuoPage)dlPush("pagvls");if(isMachinePage)dlPush("pagmas");if(isCapsulePage)dlPush("pagcas");function dlPush(groupTagString){gtmDataObject.push({"event":"floodlightPageview","groupTagString":groupTagString})};</script>
	<script type="text/javascript" id="">ah.wrap(function(){var a=google_tag_manager["GTM-WJGQVL"].macro(5529);if(void 0!=a){a=a.replace(/GAX\d*\.\d*\./,"").split("!");for(var c=0;c<a.length;c++){var b=a[c],d=b.split(".")[0];b=b.split(".")[2];d={key:"GoogleOptimize",value:d+"-"+b};window.sessioncamConfiguration.customDataObjects.push(d)}}})();</script>
	<link rel="stylesheet" type="text/css"
		href="https://www.contact.nespresso.com/apps.php?a=calleo-livechat.css">
	<link rel="stylesheet" type="text/css"
		href="https://www.contact.nespresso.com/apps.php?a=calleo-triggers.css">
</body>
</html>
