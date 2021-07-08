<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
		String uri = request.getRequestURI();
%>

<!DOCTYPE html>
<html lang="ko" style="display: block;" class=""><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="smartbanner:title" content="네스프레소 앱">
<meta name="smartbanner:author" content="Nespresso SA">
<meta name="smartbanner:price" content="무료 앱">
<meta name="smartbanner:price-suffix-apple" content="앱스토어">
<meta name="smartbanner:price-suffix-google" content="구글플레이">
<meta name="smartbanner:icon-apple" content="https://www.nespresso.com/_ui/img/smartBanner/nespresso-picto.png">
<meta name="smartbanner:icon-google" content="https://www.nespresso.com/_ui/img/smartBanner/nespresso-picto.png">
<meta name="smartbanner:button" content="다운받기">
<meta name="smartbanner:button-url-apple" content="https://itunes.apple.com/kr/app/nespresso/id342879434?l=ko&amp;mt=8">
<meta name="smartbanner:button-url-google" content="https://play.google.com/store/apps/details?id=com.nespresso.activities&amp;hl=ko">
<meta name="smartbanner:enabled-platforms" content="android,ios">
<meta name="smartbanner:hide-ttl" content="1296000000">
<meta name="smartbanner:hide-path" content="/">
<meta name="keywords" content="오리지널, 센트리퓨전, 회전추출, 캡슐커피, 버츄오, 캡슐커피머신, 가정용커피머신, 커피머신, 엑세서리, 액세서리, 캡슐보관함, 네스프레소클럽, 네스프레소">
    <meta name="description" content="네스프레소 코리아 공식몰. 네스프레소 클럽 회원 전용 혜택과 함께 버츄오와 오리지널 정품 캡슐 커피 및 커피 머신을 만나보세요. Nespresso와 함께 나만의 프리미엄 홈카페를 완성하세요.">
    <meta property="og:title" content="한국 네스프레소 공식사이트 | 캡슐 커피, 커피 머신 | 네스프레소 코리아">
<meta property="og:url" content="https://localhost:8080/nespresso/">
<meta property="og:description" content="네스프레소 코리아 공식몰. 네스프레소 클럽 회원 전용 혜택과 함께 버츄오와 오리지널 정품 캡슐 커피 및 커피 머신을 만나보세요. Nespresso와 함께 나만의 프리미엄 홈카페를 완성하세요.">
<title>한국 네스프레소 공식사이트 | 캡슐 커피, 커피 머신 | 네스프레소 코리아</title>

<style>
.overlayDis{
	transition: all .4s ease-in-out;
}

</style>  


    <link rel="canonical" href="https://localhost:8080/nespresso/">
 	<link rel="shortcut icon" type="image/x-icon" href="https://www.nespresso.com/_ui/img/favicon.ico">
    <link rel="dns-prefetch" href="https://www.googletagmanager.com">
    <link rel="dns-prefetch" href="https://www.contact.nespresso.com">
    <link rel="dns-prefetch" href="https://collect.analzye.ly">
    <link rel="dns-prefetch" href="https://connect.facebook.com">
    <link rel="dns-prefetch" href="https://ad.doubleclick.net">
    <link rel="dns-prefetch" href="https://analytics.twitter.com"> 

    <link href="https://www.nespresso.com/_ui/generated/responsiveLoadedFirst.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" rel="stylesheet" media="screen">
 <link rel="stylesheet" href="https://www.nespresso.com/_ui/generated/responsiveComponents.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" media="screen" onload="if(media!='screen')media='screen'">

<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script async="" src="https://d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js"></script>
<script async="" src="https://www.contact.nespresso.com/apps.php?a=calleo-triggers"></script>
<script async="" src="https://www.contact.nespresso.com/apps.php?a=calleo-livechat"></script>
<script type="text/javascript" async="" src="https://d16fk4ms6rqz1v.cloudfront.net/capture/nespresso.js"></script>
<script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script src="https://connect.facebook.net/signals/config/522051272523535?v=2.9.41&amp;r=stable" async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-PJM4LSH&amp;l=gtmDataObject"></script>
<script src="https://www.nespresso.com/_ui/generated/legacyCartManager.js"></script>
<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WJGQVL&amp;l=gtmDataObject"></script> 
<script>
        var P = {
            baseUrl: 'https://www.nespresso.com/_ui/generated/frontend-polyfills'
        };
</script>    
<script src="https://www.nespresso.com/_ui/generated/frontend-polyfills/polyfill-loader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
<!-- <script>
var config = {};
config.capsulesThirdLineQuantities = '100,150,200,250,300';
config.resUrl = '/_ui';

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

window[padlNamespace].dataLayer.page = {"page":{"pageInfo":{"language":"ko","breadcrumbUID":"home:::homepage:","pageName":"Home Page","primaryCategory":"","secondaryCategory":[],"segmentBusiness":"B2C","technology":[],"type":"","variant":""}}};

window[padlNamespace].dataLayer.pageInstanceID = {"pageInstanceID":"home:::homepage::NC2-mosaic:true:B2C:KR:ko"};

window[padlNamespace].dataLayer.user = {"isLoggedIn":false};

// Initializing promotions tracking data structure
padlPromotions = {
    promotions: {}
};
</script> -->
<script src="https://www.nespresso.com/_ui/generated/frontend-polyfills/SetFromOf.js?v=f9480793ef095cc9cb8d"></script>

    <script src="https://www.googleoptimize.com/optimize.js?id=GTM-K7F7RGL&amp;l=gtmDataObject"></script><script src="https://www.nespresso.com/_ui/generated/allHeader.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125"></script>
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

    <script src="https://www.nespresso.com/_ui/generated/allHeaderNonBlocking.js?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" defer=""></script>
    <link rel="preload" as="script" href="https://www.nespresso.com/_ui/generated/crema/styles.8a6d6775f09b82fd8045.js">
<link rel="preload" as="style" href="https://www.nespresso.com/_ui/generated/crema/styles.a3c466e43c59e68709ef.css">
<link rel="preload" as="script" href="https://www.nespresso.com/_ui/generated/crema/bundle.40fec13ff5a145beaecc.js">
<link rel="preload" as="script" href="https://www.nespresso.com/_ui/generated/crema/glyphs.44e6ef646bac7a4eb473.js">
<link href="https://www.nespresso.com/_ui/generated/crema/styles.a3c466e43c59e68709ef.css" rel="stylesheet" media="screen">
<script src="https://www.nespresso.com/_ui/generated/crema/styles.8a6d6775f09b82fd8045.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.babel-runtime.8ec927568a1eaa609f03.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.core-js.b06a901d5aafeec5d743.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/bundle.40fec13ff5a145beaecc.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-messageformat.a36a42c150efbc89c5e0.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-messageformat-parser.bff11d8f694b5da67172.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.intl-relativeformat.aeb239dfea6e3145e801.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.react-dom.ea0baf7a5bb715ebefdb.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.react-intl.bdfa21c75ea74053fd57.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.react-redux.7edd6f2c01f29e9041af.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.react-transition-group.af03f37f74cbc6ada82b.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.redux.b1092caa1b7517a1e735.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendor.store2.50d30a659c7b55854c8f.js" defer="defer"></script>
<script src="https://www.nespresso.com/_ui/generated/crema/vendors~bundle.08daf8e3fbe0917ff1d5.js" defer="defer"></script>
<link href="https://www.nespresso.com/_ui/generated/exceptions/asia/locale-related-kr.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" rel="stylesheet" media="screen">
 
<style>html { display:none }</style>


<script type="text/javascript">
    if (self == top){
        document.documentElement.style.display = 'block';
    }else{
        top.location = self.location;
    }
</script>
<script type="text/javascript">
    (function() {
        var initialState = {"config":{"currentLanguage":"ko","currentMarket":"kr","currentPage":{"accessRequirement":"ALLOW_ALL","pk":"8817864442928"},"languages":[{"code":"en","name":"English","url":"/nespresso/en"},{"code":"ko","name":"한국어","url":"/nespresso"}],"storeCountryCodes":["kr"],"translations":{"global.addtobag.button.remove":"장바구니에서 삭제하기","global.addtobag.button.unavailable":"구매 불가","global.limitedproduct.remaining":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.  고객님은 현재 {maxCustomerQuantity} 개 까지 더 주문하실 수 있습니다.","global.addtobag.button.a11y.removeproductfromcart":"고객님의 장바구니에서 삭제된 상품","global.addtobag.button.a11y.unavailable":"{productName} 는 현재 판매되지 않습니다.","global.a11y.spinner.label":"로딩 중 입니다. 잠시 기다려 주세요.","global.addtobag.button.limitedproduct.unavailable":"구매 불가","global.a11y.order.summary.label":"Label","global.addtobag.button.add":"장바구니 담기","global.a11y.order.summary.amount":"Amount","global.addtobag.button.a11y.addproduct.label":"고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.","global.unexpectederror.page.title":"오류가 발생하였습니다. 불편을 드려 죄송합니다.","global.addtobag.button.outofstocklabel":"일시 품절","global.addtobag.button.a11y.updateproduct.label":"고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.","global.a11y.link.target.blank":"이 링크는 새로운 창을 엽니다.","global.unexpectederror.page.phonenumber":"080-734-1111 <small>(수신자 부담)</small>","global.addtobagpromotion.a11y.updatecart":"고객님의 장바구니에 추가된 프로모션 코드","global.addtobag.button.a11y.removeproduct.label":"장바구니에서 {productName} 삭제하기","global.addtobag.button.a11y.unavailable.label":"{productName} 는 현재 판매되지 않습니다.","global.addtobag.button.a11y.updateproduct":"고객님의 장바구니에 {productName} 가 {quantity} 개 있습니다. 주문 수량을 변경하시려면, 클릭하세요.","global.limitedproduct.notavailable":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다. 현재 최대 구매 가능 개수를 초과하였습니다.","global.addtobag.button.a11y.outofstock":"{productName} 는 현재 일시 품절 입니다.","global.limitedproduct.available":"해당 프리미엄 커피의 최대 구매 가능 개수는 {maxPackagingRuleQuantity} 개 입니다.","global.addtobag.button.update":"장바구니 업데이트하기","global.addtobag.button.a11y.addproduct":"고객님의 장바구니에 {productName} 가 없습니다. 구매를 원하시면, 해당 상품을 담으세요.","global.addtobag.button.a11y.outofstock.label":"{productName} 는 현재 일시 품절 입니다.","global.addtobag.button.a11y.REMOVEDproduct.label":"{productName} 가 고객님의 장바구니에서 삭제되었습니다.","global.order.total":"Total","global.addtobag.button.outofstock":"일시 품절"},"loginPage":{"url":"/kr/ko/secure/login","pk":"8817864639536"},"homePage":{"url":"/nespresso"},"marketCurrency":"KRW","storeTechno":{"enabledTechnoIds":["nesclub2.kr.b2c/machineTechno/original","nesclub2.kr.b2c/machineTechno/vertuo"],"preferredTechnoId":"nesclub2.kr.b2c/machineTechno/original","multiTechnoEnabled":true},"application":{"recaptchaSiteKey":"6LcwBCwUAAAAAOVh8lXjOGHk2IR1yTh-BB805z8c"}}};
        if (initialState && initialState.config) {
            window.__INITIAL_CONFIG__ = initialState.config;
        }
    })();
</script>
    <!--
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WJGQVL"
			height="0" width="0" style="display:none;visibility:hidden">
	</iframe>
</noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','gtmDataObject','GTM-WJGQVL');
</script>
 
<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"true","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-b4deb3fb-fe5b-4463-8311-6e19bf9d0941","rua.cook":"true","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
<script>!function(){function o(n,i){if(n&&i)for(var r in i)i.hasOwnProperty(r)&&(void 0===n[r]?n[r]=i[r]:n[r].constructor===Object&&i[r].constructor===Object?o(n[r],i[r]):n[r]=i[r])}try{var n=decodeURIComponent("%7B%0A%22ResourceTiming%22%3A%20%7B%0A%22clearOnBeacon%22%3Atrue%0A%7D%2C%0A%22RT%22%3A%20%7B%0A%22cookie%22%3A%20%22RT%22%0A%7D%0A%7D");if(n.length>0&&window.JSON&&"function"==typeof window.JSON.parse){var i=JSON.parse(n);void 0!==window.BOOMR_config?o(window.BOOMR_config,i):window.BOOMR_config=i}}catch(r){window.console&&"function"==typeof window.console.error&&console.error("mPulse: Could not parse configuration",r)}}();</script>
<script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("True"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="NT4K9-3WWLD-YXPMD-LDFKE-BYKW2",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"NT4K9-3WWLD-YXPMD-LDFKE-BYKW2",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="true"=="true"?1:0,t="cookiepresent",n="byqcbwtijk7q6ygbx4ea-f-108721328-clientnsv4-s.akamaihd.net",i={"ak.v":"31","ak.cp":"19131","ak.ai":parseInt("166517",10),"ak.ol":"0","ak.cr":4,"ak.ipv":4,"ak.proto":"h2","ak.rid":"1462a432","ak.r":23484,"ak.a2":e,"ak.m":"dscx","ak.n":"essl","ak.bpcip":"14.32.32.0","ak.cport":13324,"ak.gh":"23.44.173.68","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1623310088","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==GhiJBDreU1a3X6ENmaEszE+RuRpmsbgXlnBK7fAhk78jfMQUpBil7CNDLkKu4ePeQbGJ8SmE57uT3IQWprV7JAwZJ25qezz/XR/965xL0tdy74WaYBcX/H8GgJMbKvKIqmy7euo9vaZKfi58gekQRingromDxT4/8M+/VBl7DFSu4CqLp/9kcKR5U4m/cRfEkZoumXVL+xAyj+vcLnxClrRRQZvYCQuVZj77TGcijmNDmSzkXaanhe4pm+/Espo88xf3zrjchUcm7oAwcsuN5RRaWM0w29apf/Vmc4PmfQQ1iJXAZk/QCeA6K/1AGMZrP0GQj113JY37BmLv1nADFwRplX4Xsat+f+Lw4ty69+DMQ/bPMjFLOTa2buiMAPHvtsxNohb7f9FZQBa3foRPkDnI/AlUr4+tYx09ocjq+cg=","ak.pv":"744","ak.dpoabenc":""};if(""!==t)i["ak.ruds"]=t;var _={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))i["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(i)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:i,akDNSPreFetchDomain:n,init:function(){if(!_.i){var a=BOOMR.subscribe;a("before_beacon",_.av,null,null),a("onbeacon",_.rv,null,null),_.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" async=""></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css">

<script type="module" charset="UTF-8" src="/nespresso/resources/www.nespresso.com/shared_res/agility/web-components/zone/v1.1/index.es.min.js?v=1.1.1"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/heading/v1.1/index.es.min.js?v=1.1.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/product-column/v1.1/index.es.min.js?v=1.1.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/add-to-cart/v1.1/index.es.min.js?v=1.1.1"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/product-column-item/v1.1/index.es.min.js?v=1.1.1"></script> 
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/tab-header/v1.1/index.es.min.js?v=1.0.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/tab-panel/v1.1/index.es.min.js?v=1.0.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/tabs/v1.1/index.es.min.js?v=1.0.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/hero-range-showcase/v1.1/index.es.min.js?v=1.1.2"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/paragraph/v1.1/index.es.min.js?v=1.1.0"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/cta/v1.1/index.es.min.js?v=1.1.2"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/card-highlight/v1.1/index.es.min.js?v=1.1.1"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/cards-highlight-container/v1.1/index.es.min.js?v=1.1.2"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/card/v1.1/index.es.min.js?v=1.1.1"></script>
<script type="module" charset="UTF-8" src="https://www.nespresso.com/shared_res/agility/web-components/cards-container/v1.1/index.es.min.js?v=1.1.2"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-HeaderCountryMessage.1a0c5c25a79acf9da5f0.js"></script>

 
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-Header.4594af5027d26bcc46d5.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-Footer.4966367ff73f1977d615.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/4.da3a4067f56cc4f8544e.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/5.a93ba4ab07c7bf1ec815.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-QuantitySelector.3a2e36cf9b9dd28b186d.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-Overlay.b8150ec94e6537831c9d.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/comp-AddToBagButton.d293afa0466fd67df8ba.js"></script>


 -->
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/glyphs.44e6ef646bac7a4eb473.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/7.e66cf6ff12175a44d9e5.js"></script>
<script charset="utf-8" src="https://www.nespresso.com/_ui/generated/crema/vendor.style-loader.fc902b8ebe3b94a4fb59.js"></script>
                       
<script type="text/javascript">

//로그인창 확장
var result = 1;

$(document).ready(function(){
	$(document).mousedown(function( e ){
		if( $("#loginDis").is(":visible") ) {
			$("#loginDis").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
					
				} else {
					$('#loginDis').fadeOut();
					$('#overlayDis').fadeOut();	
					$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton');
					$('#ta-login-dropdown--not-logged').attr('aria-expanded',false);
									
				}
			});
		}
	});
	
	$('#ta-login-dropdown--not-logged').click(function(){
			
			if($('#loginDis').is(':visible')) {//닫기
				$('#loginDis').fadeOut();
				$('#overlayDis').fadeOut();
				$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton');
				$('#ta-login-dropdown--not-logged').attr('aria-expanded',false);
				
				
			}else{//열기
				$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton LoginDropdownButton--open');
				$('#ta-login-dropdown--not-logged').attr('aria-expanded',true);
				$('#loginDis').fadeIn();
				
				if($('#overlayDis').css('display')==''){
					$('#overlayDis').fadeout(100);
					$('#overlayDis').fadeIn(100);
				}else{
					$('#overlayDis').fadeIn();
				}
			}
	});
	
	//이메일입력 이벤트
	$('#ta-header-username').focus(function(){
		$('#emailInput').attr('class','TextField TextField--active');
	});
	$('#ta-header-username').blur(function(){
		
		if($('#ta-header-username').val()==""){			
			$('#emailInput').attr('class','TextField');
		}
				
	});
	//비밀번호 이벤트
	$('#ta-header-password').focus(function(){
		$('#pwdInput').attr('class','TextField TextField--active');
	});	
	$('#ta-header-password').blur(function(){
		if($('#ta-header-password').val()==""){			
			$('#pwdInput').attr('class','TextField');
		}
	});	
	
	//쿠키는 아이디 저장 세션은 로그인 유지
	$('#loginBtn').click(function(){
		//쿠키는 아이디 저장 세션은 로그인 유지
		
	
		console.log("loginBTN");
		var em = $('#inputEmail').val();
		var pw = $('#inputPwd').val();
	
		var remember_us = $('#remember_us').is(':checked');
		
	//if(em != '' || pw != ''){
		
		$.ajax({
			
			type : 'post',
			url : '${pageContext.request.contextPath}/',
			data : {
				
				email : em,
				pwd : pw,
				remember_email : remember_us
			},
			
			success : function(data) {
				
				console.log("로그인data: " + data);
				
				if( data == 0) {//로그인 내려오는 거 null이면 /login					
					
					location.href='<%=cp%>/login';
					
					$('#loginCheck').text("이메일 주소나 비밀번호가 맞지 않습니다");
					$('#loginCheck').css('color','red'); 
					return;
				} else if (data == -1) { //인증하지 않았다면?
					
					$('#loginCheck').text('이메일 인증을 해주셔야 합니다!');	
					return;
					
				}else{//login 성공시 1					
					
					location.reload();
					return;
				}
				return;
			}
		});
		
	/* }else{
		alert("null이다");
		console.log("값없을때");
		location.href = 'https://www.naver.com';
		return;
	} */
		
	});	
});



//장바구니 확장
$(document).ready(function(){
	$(document).mousedown(function( e ){
		if( $("#miniBasketDis").is(":visible") ) {
			$("#miniBasketDis").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					
					$(".MiniBasketDropdown__dropdown").animate({
					      width: "toggle"
					    });
					$('html').css("overflow", "scroll");
					$('#overlayDis').fadeOut();
					$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done');
					var count = "${totalLength}";
					if(count==0){
						$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
					}else{
						$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
					}
				}
			});
		}
	});
	
	$('#ta-mini-basket__open').click(function(){
		var count = "${totalLength}";
		
		if($('#miniBasketDis').is(':visible')){//닫기
			$('.MiniBasketDropdown__dropdown').fadeOut();
			/* $(".MiniBasketDropdown__dropdown").animate({
			      width: "toggle"
			    }); */
			$('html').css("overflow", "scroll");
			$('#overlayDis').fadeOut();
			$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done');
			if(count==0){
				$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
			}else{
				$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
			}
			
		}else{//열기					
			
			$(".MiniBasketDropdown__dropdown").animate({
			      width: "toggle"
			    });	
			$('html').css("overflow", "hidden");
			$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open');	
			$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--open');
			$('#ta-mini-basket__open').attr('aria-expanded',true);
			
			if($('#overlayDis').css('display')==''){
				$('#overlayDis').fadeout(100);
				$('#overlayDis').fadeIn(100);
			}else{
				$('#overlayDis').fadeIn();
			}
		}
	});	
});

//장바구니 닫기버튼
$(document).ready(function(){
	var count = "${totalLength}";
	
	$('#ta-mini-basket__close').click(function(){
		if(count==0 || count==""){
			$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
		}else{
			$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
		}
		
		$(".MiniBasketDropdown__dropdown").animate({
		      width: "toggle"
		    });
		$('html').css("overflow", "scroll");
		$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done');
		$('#overlayDis').fadeOut();
	});		
}); 

//메뉴바 확장
$(document).ready(function(){
	
	$('div[id^="menuDis-"]').hide();	
		
	$('#menubarDis-'+1).mouseenter(function(){		
		$('#menuDis-'+1).slideToggle(200);		
	});
	$('#menubarDis-'+1).mouseleave(function(){		
		$('#menuDis-'+1).hide();		
	});
	
	$('#menubarDis-2').mouseenter(function(){		
		$('#menuDis-2').slideToggle(200);		
	});	
	$('#menubarDis-2').mouseleave(function(){		
		$('#menuDis-2').hide();		
	});
	
	$('#menubarDis-3').mouseenter(function(){		
		$('#menuDis-3').slideToggle(200);		
	});	
	$('#menubarDis-3').mouseleave(function(){		
		$('#menuDis-3').hide();		
	});
	
	$('#menubarDis-4').mouseenter(function(){		
		$('#menuDis-4').slideToggle(200);		
	});	
	$('#menubarDis-4').mouseleave(function(){		
		$('#menuDis-4').hide();		
	});
	
	$('#menubarDis-5').mouseenter(function(){		
		$('#menuDis-5').slideToggle(200);		
	});	
	$('#menubarDis-5').mouseleave(function(){		
		$('#menuDis-5').hide();		
	});
	
	$('#menubarDis-6').mouseenter(function(){		
		$('#menuDis-6').slideToggle(200);		
	});
	$('#menubarDis-6').mouseleave(function(){		
		$('#menuDis-6').hide();		
	});	

	$('#menubarDis-7').mouseenter(function(){		
		$('#menuDis-7').slideToggle(200);		
	});
	$('#menubarDis-7').mouseleave(function(){		
		$('#menuDis-7').hide();		
	}); 	
});

</script>

<script type="text/javascript">

//수량 체크창 열기/닫기


function hdelProduct(num,type1,type2,pd_num,name){
	
	var type1 = type1;
	var type2 = type2;
	var pd_num = pd_num;
	var modelName1 = name;
	
	if(type1 == "") {
		type1 = $('#htype1'+num).val();
	}
	if(type2 == "") {
		type2 = $('#htype2'+num).val();
	}
	if(pd_num = -1) {
		pd_num = $('#hpd_num'+num).val();
	}
	if(name == "") {
		modelName1 = $('#hmodelName1'+num).val();
	}
	
	$.ajax({
		
		type : 'post',
		url : '${pageContext.request.contextPath}/basketDel',
		data : {
			type1 : type1,
			type2 : type2,
			pd_num : pd_num,
			modelName1 : modelName1
		},
	
		success : function(data) {
			
			console.log(data);
			
			if( data == 0) {
				
				console.log(data);
				
				
			}else{//login 성공시 1
				
				console.log(data + "왔냐?");
			
				location.reload(true);
			}			
		}
	});
}

function hupdProduct(num,no){
	
	var type3 = $('#htype3' + num).val();
	var oqty = $('#hoqty'+no).val();
	var cqty = $('#hcqty'+no).val();	
	
	var type1 = $('#htype1'+num).val();
	var type2 = $('#htype2'+num).val();
	var pd_num = $('#hpd_num'+num).val();
	var modelName1 = $('#hmodelName1'+num).val();
	
	if(no==-1){
		
		qty = $('#hinputQty'+num).val();		
		
		if(qty=='' || qty==0){
			
			qty = 0;	
			
			$('#hinputQty'+num).val(qty);
			
			alert("선택하신 수량으로는 구매할 수 없습니다.\n"
					 +"상품 갯수를" + qty + "로 변경하였습니다.");
			
			hdelProduct(num,type1,type2,pd_num,modelName1);
			
		
		}else{
			
			if(type3=='capsule'){			

				if(qty%10!=0){
				
					qty = (Math.floor(qty/10) * 10)+10;					
					
					$('#hinputQty'+num).val(qty);
					alert("해당 상품의 최소 구매 단위는 10 입니다.\n"
							+ "상품 개수를  " + qty + "로 변경하였습니다.");
					
				}
			}
		}			
	}else{	
		
		if(type3=='capsule'){
			qty = cqty;
		}else if(type3=='other'){
			qty = oqty;
		}	
		
	}	

	$.ajax({
		
		type : 'post',
		url : '${pageContext.request.contextPath}/basketUpd',
		data : {
			type1 : type1,
			type2 : type2,
			pd_num : pd_num,
			modelName1 : modelName1,
			quantity : qty
		},
	
		success : function(data) {			
			
			if( data == 0) {
				
				console.log(data);				
				
			}else{//login 성공시 1
				
				console.log(data + "왔냐?");
				$('#hqtyBtn'+num).html(qty);
				hqtyBtnDis(num);
				location.reload(true);
			}
		}
	});	
}

/* $(document).ready(function(){
	$(document).mousedown(function( e ){
		for(var i=0;i<100;i++){
			if( $("#hQuantitySelector__wrapper"+i).is(":visible") ) {
				$("#hQuantitySelector__wrapper"+i).each(function(){
					var l_position = $(this).offset();
					l_position.right = parseInt(l_position.left) + ($(this).width());
					l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
	
					if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
						&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
					} else {
						
						$('#hqtyBtn'+i).attr('class','AddToBagButton AddToBagButtonSmall');
						$('#hQuantitySelector__wrapper'+i).css('display','none');
					}
				});
			}
		}
	});
}); */

function hqtyBtnDis(num){
	
	if( $("#hQuantitySelector__wrapper"+num).is(":hidden")){
		
		for(var i=0;i<20;i++){
			if(num!=i){
				$('#hqtyBtn'+i).attr('class','AddToBagButton AddToBagButtonSmall');
				$('#hQuantitySelector__wrapper'+i).css('display','none');
			}
		}
		
		$('#hqtyBtn'+num).attr('class','AddToBagButton AddToBagButtonSmall AddToBagButtonSmall--active');
		$('#hQuantitySelector__wrapper'+num).css('display','');
		
	}else{
		
		$('#hqtyBtn'+num).attr('class','AddToBagButton AddToBagButtonSmall');
		$('#hQuantitySelector__wrapper'+num).css('display','none');
		for(var i=0;i<20;i++){
			if(num!=i){
				$('#hqtyBtn'+i).attr('class','AddToBagButton AddToBagButtonSmall');
				$('#hQuantitySelector__wrapper'+i).css('display','none');
			}
		}		 
	}
}

//esc 수량체크창 닫기
$(document).keyup(function(e) {
    if (e.keyCode == 27) {
    	var len = "${totalLength}";
    	for(var i=0;i<20;i++){
    		$('#hqtyBtn'+i).attr('class','AddToBagButton AddToBagButtonSmall');
    		$('#hQuantitySelector__wrapper'+i).css('display','none');
    	};
	}
});

</script>
</head>

<body class="test-dbp livechat-collapsed">

<c:if test = "${not empty cookie.user_check }">
		<c:set value="checked" var="checked"/>
</c:if>
	
<!-- *************************채팅창************************* -->

<%-- <c:import url="../chat.jsp"></c:import> --%>

<!-- ****************************************************** -->

<!-- *************************상단************************* -->

<header id="top">
    <h2 class="visually-hidden">Header</h2>
    <div id="header" class="clearfix">
        <div id="HeaderRespBlock" class="crema-ui-container ">
        	<div class="Header">
        		<div class="ResponsiveContainer">
        			<div class="Header__top-wrapper">
        				<div class="Header__top">
        					<a href="/nespresso/mainPage" class="AccessibleLink">
        						<img alt="홈으로" src="https://www.nespresso.com/ecom/medias/sys_master/public/10866891554846/logo-white.svg" class="Header__logo">
        					</a>
        					<% if(uri.indexOf("checkoutStep")<0){ %>        						
        					<div class="Header__customer">
        					
        						<!-- 로그인 전 버튼 -->
 						<%-- <% if(uri.indexOf("mainPage")!=-1){ %>	 --%>	
        						<div class="LoginDropdown">
        						
        							<c:if test="${empty sessionScope.userSession.email}">
        							<button id="ta-login-dropdown--not-logged" aria-expanded="false" class="LoginDropdownButton">
        								<i aria-hidden="true" class="Glyph Glyph--user LoginDropdownButton__icon"></i>로그인 하기
        							</button>
        							
        							<!-- 확장 -->        							
        							<div>
        								<div id="loginDis" class="LoginDropdown__dropdown LoginDropdown__maxHeightAndroid LoginDropdown__transition-enter-done" style="display: none">
        								
        									<div>
        										<div class="LoginDropdown__title">로그인</div>
        										<div class="LoginDropdown__description">로그인 하고, 주문하기:</div>
        										<form novalidate="" method="post">
        										<div id="emailInput" class="TextField">
        											<div class="TextField__group TextField__group--compact">
        												
        												<input id="inputEmail" name="email" type="text" placeholder="이메일" aria-required="true" class="TextField__input TextField__input--compact"  value="${cookie.user_check.value }">
        											</div>
        										</div>
        										<div id="pwdInput" class="TextField">
        											<div class="TextField__group TextField__group--compact">
        												
        												<input id="inputPwd" placeholder="비밀번호	" name="pwd" type="password" autocomplete="current-password" aria-required="true" class="TextField__input TextField__input--compact" value="">
        											</div>
        										</div>
        										<a class="AccessibleLink DefaultLink LoginForm__forgotten-password" href="<%=cp %>/login/pwdSearch" target="_blank">비밀번호가 기억나지 않으세요?
        											<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
        										</a>
        										<div class="InputCheckbox LoginForm__remember-me">
        											<div class="InputCheckbox__label-container">
        												<label for="ta-header-remember-me" class="InputCheckbox__label LoginForm__remember-me-label InputCheckbox__label--without-legend">
        													<span class="InputCheckbox__label-value">내 계정 기억하기</span>
        													<input id="remember_us" name="remember_email" ${checked } class="InputCheckbox__input" type="checkbox" checked="">
        												</label>
        											</div>
        										</div>
        										<button id="loginBtn" class="ElementWithChevron DefaultButton LoginForm__submit DefaultButton--regular">로그인
        											<i aria-hidden="true" class="Glyph Glyph--arrow-right DefaultButton__right-chevron"></i>
        										</button>
        										</form>
        										<form action="<%=cp%>/login/createAccount" method="post">
        										<hr class="LoginDropdown__spacer--horizontal" aria-hidden="true">
        										<p class="LoginDropdown__register-description">아직 네스프레소 클럽 회원이 아니신가요?</p>
        										<button type="submit" id="ta-login-dropdown-register" class="ElementWithChevron DefaultButton LoginDropdown__register-link DefaultButton--regular">회원가입
        											<i aria-hidden="true" class="Glyph Glyph--arrow-right DefaultButton__right-chevron"></i>
        										</button>
        										</form>
        									</div> 
        								</div>
        							</div>
        							</c:if>
        							<c:if test="${not empty sessionScope.userSession.email}">
        							<!-- 로그인 후 확장 -->
        							<button id="ta-login-dropdown--not-logged" aria-expanded="false" class="LoginDropdownButton">
        								<i aria-hidden="true" class="Glyph Glyph--user LoginDropdownButton__icon"></i>${sessionScope.userSession.lName} ${sessionScope.userSession.name} 님 환영합니다.
        							</button> 
									<div>     									        									
	        							<div id="loginDis" class="LoginDropdown__dropdown LoginDropdown__maxHeightAndroid LoginDropdown__transition-enter-done" style="display: none">
	        								<div>
	        									<div class="LoggedInPanel">
	        										<div class="LoggedInPanel__title">나의 계정</div>
	        										<div class="AccountMenu">
	        											<ul class="AccountMenu__section-list">
	        												<li><a id="ta-dropdown-menu__orders" href="<%=cp %>/login/myPage/myOrder" class="AccessibleLink AccountMenu__sections">나의 주문 내역</a></li>
	        												<li><a id="ta-dropdown-menu__addresses" href="<%=cp %>/login/myPage/adress" class="AccessibleLink AccountMenu__sections">나의 주소</a></li>
	        												<li><a id="ta-dropdown-menu__personal_info" href="<%=cp %>/login/myPage/pinfo" class="AccessibleLink AccountMenu__sections">개인 정보</a></li>
	        												<li><a id="ta-dropdown-menu__machines" href="<%=cp %>/login/myPage/myMachine" class="AccessibleLink AccountMenu__sections">나의 머신</a></li>
	        												<li><a id="ta-dropdown-menu__contact_preferences" href="<%=cp %>/login/myPage/infoAlarm" class="AccessibleLink AccountMenu__sections">정보 수신 항목 설정</a></li>
	        											</ul>
	        										</div>
	        										<button id="ta-logout" class="Button LoggedInPanel__logout-button" onclick="location.href='/nespresso/logout.action'">로그아웃</button>
	        										
	        									</div>
	        								</div>
	        							</div>
	        						</div>	
        							</c:if>
        					
        						</div>  
        				<%-- 	<% } %>  --%>     						
        							
        						<!-- 장바구니 버튼 -->        						
        						<div class="MiniBasketDropdown">
        							<h3 class="VisuallyHidden">장바구니 펼치기</h3>
        							<c:if test="${empty sessionScope.totalCount }">
        							<button id="ta-mini-basket__open" aria-expanded="false" data-focus-id="minibasketdropdown-open-button-focus-id" class="MiniBasketButton">
        								<i aria-hidden="true" class="Glyph Glyph--basket MiniBasketButton__basketIcon"></i>현재 장바구니에 (<span class="notranslate">0</span>) 개가 있습니다.
        							</button>
        							</c:if>
        							
        							<c:if test="${!empty sessionScope.totalCount }">
        							<button id="ta-mini-basket__open" aria-expanded="false" data-focus-id="minibasketdropdown-open-button-focus-id" class="MiniBasketButton MiniBasketButton--not-empty">
        								<i aria-hidden="true" class="Glyph Glyph--basket MiniBasketButton__basketIcon"></i>현재 장바구니에 (<span class="notranslate">${sessionScope.totalCount }</span>) 개가 있습니다.
        							</button>
        							</c:if>
        							<!-- 장바구니 확장 -->
        							
        							<div>
        								<div id="miniBasketDis" class="MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done" style="display: none">
        									<div class="MiniBasketDropdown__wrapper">
        										<div class="MiniBasketDropdown__header">
        											<button id="ta-mini-basket__close" class="Button ButtonIcon MiniBasketDropdown__close-button">
        												<span class="VisuallyHidden">닫기</span>
        												<i aria-hidden="true" class="Glyph Glyph--cross MiniBasketDropdown__close-img"></i>
        											</button>
        											<div class="MiniBasketDropdown__header__title" id="basket">장바구니</div>
        										</div>
        										<div class="BenefitMessage">
        											<span>바리스타 크리에이션 
        												<strong class="goldcolor">아이스 코코넛</strong><br/>
														<a class="promolink" href="/kr/ko/order/capsules/vertuo?mbid=20210527Barista" target="_self">&nbsp;구매하기&nbsp;</a>
													</span>
<style>
.goldcolor{color:#75a6b8;}
.promolink{background-color:#3D8705;display:inline-block;box-shadow: 0 1px 1px 0 rgba(0,0,0,.3);border-radius: 3px;width:100px;padding:5px;margin:5px 0 10px;}
.minibasket_small{font-size:0.7rem;line-height:1rem;}
</style>
												</div>
												<c:if test="${empty sessionScope.totalCount }">
												<div class="MiniBasketDropdown__content-wrapper">
													<div class="MiniBasketDropdown__content-empty">
														<div class="MiniBasketDropdown__content__title">장바구니가 비어있습니다.</div>
														<div class="MiniBasketDropdown__shopLinks">
															<a id="ta-mini-basket__start-shopping" class="AccessibleLink ElementWithChevron CheckoutActionButton MiniBasketDropdown__Link-shopping" href="/kr/ko/order/capsules">쇼핑하기</a>
														</div>
													</div>
												</div>
												</c:if>
												<c:if test="${!empty sessionScope.totalCount }">
												<div class="MiniBasketDropdown__content-wrapper sessioncammonitorscroll">
													<div class="MiniBasketDropdown__content-filled MiniBasketDropdown__content-filled--no-credit">
														<table class="MiniBasketDropdown__content-categories">
															<tbody>
		
																<c:set var="cotQty" value="0"/>
      														    <c:forEach var="qdto" items="${sessionScope.listsCo }">      	
															      	<c:set var="cotQty" value="${cotQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 오리지널 커피 LIST -->
															    <c:if test="${!empty sessionScope.listsCo}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">오리지널 커피<span
																		class="MiniBasketItemCategory__item-count">(${cotQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${sessionScope.listsCo }">
																<tr class="MiniBasketItem">
																	<th headers="capsules_vertuo"
																		id="vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__image-container" scope="row"><img
																		width="58" height="58"
																		srcset="${dto.imageUrl} 1x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=116 2x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=174 3x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=232 4x"
																		src="${dto.imageUrl}"
																		class="ResponsiveImage MiniBasketItem__image"
																		alt="바리스타 크리에이션 FOR 아이스 버츄오 8 슬리브 팩"></th>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__title">
																		<span aria-hidden="true">${dto.modelName1 }</span>
																		<span aria-hidden="true" class="MiniBasketItemPriceAndName__price">
																			<strong id="pPirce">₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" /></strong>
																			<span id="fPrice" class="MiniBasketItemPriceAndName__price-calc">
																				(${dto.quantity } × ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" />)
																			</span>
																		</span>
																	<td
																						headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																						class="MiniBasketItem__button-container">
																						<div class="AddToBagButton__container">
																							<div
																								id="AddToBagButton__button-CremaComponentId-1">
																								<button id="hqtyBtn${dto.num }"
																									class="AddToBagButton AddToBagButtonSmall"
																									data-focus-id="AddToBagButton__button-CremaComponentId-1"
																									type="button" onclick="hqtyBtnDis(${dto.num});">
																									<span class="VisuallyHidden">고객님의 장바구니에
																										${dto.modelName1 } 가 ${dto.quantity } 개 있습니다.
																										주문 수량을 변경하시려면, 클릭하세요.</span>
																									<div aria-hidden="true"
																										class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																								</button>																								
																								<div class="QuantitySelector"
																									id="hQuantitySelector__wrapper${dto.num }"
																									role="dialog"
																									aria-labelledby="QuantitySelector__title"
																									aria-describedby="QuantitySelector__description"
																									style="display: none;">
																									<span class="VisuallyHidden"
																										id="QuantitySelector__title">수량 선택 메뉴</span><span
																										class="VisuallyHidden"
																										id="QuantitySelector__description">아래
																										수량 중에서 골라주세요.</span>
																									<div class="QuantitySelector__container">
																										<div id="hqtyList${dto.num }"
																											class="QuantitySelector__popin QuantitySelector__popin--left">
																											<ul id="hqtyBtnList${dto.num }"
																												class="PredefinedQuantityList">
																												<li class="PredefinedQuantityList__quantity">
																													<button
																														id="ta-quantity-selector__predefined-0"
																														data-focus-id="PredefinedQuantityList__quantity-focusable"
																														class="PredefinedQuantityList__quantity-button"
																														onclick="hdelProduct(${dto.num},'','',-1,'');">
																														<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																														<span aria-hidden="true"
																															class="notranslate">0</span>
																													</button>
																												</li>
																												<input type="hidden" id="hpd_num${dto.num }" name="hpd_num" value="${dto.pd_num }"/>						
																												<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																												<input type="hidden" id="htype1${dto.num }" name="htype1" value="${dto.type1 }"/>
																												<input type="hidden" id="htype2${dto.num }" name="htype2" value="${dto.type2 }"/>
																												<input type="hidden" id="htype3${dto.num }" name="htype3" value="${dto.type3 }"/>
																												<c:forEach var="j" begin="1" end="14">
																													<li class="PredefinedQuantityList__quantity">
																														<button id="ta-quantity-selector__predefined-1"
																															class="PredefinedQuantityList__quantity-button" onclick="hupdProduct(${dto.num},${j });">
																															<c:set var="k" value="${k+1 }"/>										
																															
																																<c:if test="${dto.type3 eq 'other' }">
																																	<c:set var="o" value="${o+1}"/>
																																	<span class="VisuallyHidden">${o} 추가하기</span> 
																																	<span aria-hidden="true" class="notranslate">${o}</span>	
																																	<input type="hidden" id="hoqty${j }" name="qty" value="${o }"/>																
																																</c:if>
																																					
																																<c:if test="${dto.type3 eq 'capsule' }">
																																	<c:choose>	
																																	<c:when test="${k<=10 }">
																																		<c:set var="c" value="${c+10 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																		
																																	</c:when>	
																																	<c:when test="${k>10 }">
																																		<c:set var="c" value="${c+50 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																	
																																	</c:when>																	
																																	</c:choose>
																																	<input type="hidden" id="hcqty${j }" name="qty" value="${c }"/>										
																																</c:if>
																															
																															
																														</button>
																													</li>
																													</c:forEach>
																												<c:set var="o" value="0" />
																												<c:set var="c" value="0" />
																												<c:set var="k" value="0" />
																											</ul>

																											<form
																												class="QuantitySelectorCustomField__container"
																												novalidate="">
																												<div
																													class="TextField QuantitySelectorCustomField__field">
																													<input id="hinputQty${dto.num}"
																														type="number" min="0" placeholder="수량 입력."
																														class="TextField__input QuantitySelectorCustomField__input TextField__input--compact"
																														value="">
																												</div>
																												<button id="hinputhqtyBtn${dto.num}"
																													class="QuantitySelectorCustomField__button-ok"
																													onclick="hupdProduct(${dto.num},-1);">OK</button>
																											</form>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																					</td>
																				</tr>
																</c:forEach>																	
																</c:if>
																
																<c:set var="motQty" value="0"/>
      														    <c:forEach var="qdto" items="${sessionScope.listsMo }">      	
															      	<c:set var="motQty" value="${motQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 오리지널 머신 LIST -->
															    <c:if test="${!empty sessionScope.listsMo}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">오리지널 머신<span
																		class="MiniBasketItemCategory__item-count">(${motQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${sessionScope.listsMo }">
																<tr class="MiniBasketItem">
																	<th headers="capsules_vertuo"
																		id="vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__image-container" scope="row"><img
																		width="58" height="58"
																		srcset="${dto.imageUrl} 1x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=116 2x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=174 3x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=232 4x"
																		src="${dto.imageUrl}"
																		class="ResponsiveImage MiniBasketItem__image"
																		alt="바리스타 크리에이션 FOR 아이스 버츄오 8 슬리브 팩"></th>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__title"><span
																		aria-hidden="true">${dto.modelName1 }</span><span aria-hidden="true"
																		class="MiniBasketItemPriceAndName__price"><strong>
																			₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</strong><span id="fPrice"
																			class="MiniBasketItemPriceAndName__price-calc">(${dto.quantity }
																				× ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" />)</span></span><span class="VisuallyHidden">전체
																			가격 <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" /> KRW, ${dto.quantity } ${dto.modelName1 } 상품 별
																			가격 <fmt:formatNumber value="${dto.price }" pattern="#,###" /> KRW</span></td>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__button-container"><div
																			class="MiniBasketItem__addToBagButton AddToBagButton__container">
																			<div id="AddToBagButton__button-CremaComponentId-17">
																			<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																				<button id="hqtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="hqtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="hQuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="hqtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="hdelProduct(${dto.num},'','',-1,'');">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="hpd_num${dto.num }" name="hpd_num" value="${dto.pd_num }"/>						
																								<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																								<input type="hidden" id="htype1${dto.num }" name="htype1${dto.num }" value="${dto.type1 }"/>
																								<input type="hidden" id="htype2${dto.num }" name="htype2${dto.num }" value="${dto.type2 }"/>
																								<input type="hidden" id="htype3${dto.num }" name="htype3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																													<li class="PredefinedQuantityList__quantity">
																														<button id="ta-quantity-selector__predefined-1"
																															class="PredefinedQuantityList__quantity-button" onclick="hupdProduct(${dto.num},${j });">
																															<c:set var="k" value="${k+1 }"/>										
																															
																																<c:if test="${dto.type3 eq 'other' }">
																																	<c:set var="o" value="${o+1}"/>
																																	<span class="VisuallyHidden">${o} 추가하기</span> 
																																	<span aria-hidden="true" class="notranslate">${o}</span>	
																																	<input type="hidden" id="hoqty${j }" name="qty" value="${o }"/>																
																																</c:if>
																																					
																																<c:if test="${dto.type3 eq 'capsule' }">
																																	<c:choose>	
																																	<c:when test="${k<=10 }">
																																		<c:set var="c" value="${c+10 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																		
																																	</c:when>	
																																	<c:when test="${k>10 }">
																																		<c:set var="c" value="${c+50 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																	
																																	</c:when>																	
																																	</c:choose>
																																	<input type="hidden" id="hcqty${j }" name="qty" value="${c }"/>										
																																</c:if>
																															
																															
																														</button>
																													</li>
																													</c:forEach>
																								<c:set var="o" value="0" />
																								<c:set var="c" value="0" />
																								<c:set var="k" value="0" />
																							</ul>
																							
																							<form class="QuantitySelectorCustomField__container" novalidate="">
																								<div class="TextField QuantitySelectorCustomField__field">
																									<input id="inputQty${dto.num}" type="number" min="0" placeholder="수량 입력." class="TextField__input QuantitySelectorCustomField__input TextField__input--compact" value="">
																								</div>
																								<button id="inputhqtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="hupdProduct(${dto.num},-1);">OK</button>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div></td>
																</tr>
																</c:forEach>																	
																</c:if>
																
																<c:set var="cvtQty" value="0"/>
      														    <c:forEach var="qdto" items="${sessionScope.listsCv }">      	
															      	<c:set var="cvtQty" value="${cvtQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 커피 LIST -->
															    <c:if test="${!empty sessionScope.listsCv}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">버츄오 커피<span
																		class="MiniBasketItemCategory__item-count">(${cvtQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${sessionScope.listsCv }">
																<tr class="MiniBasketItem">
																	<th headers="capsules_vertuo"
																		id="vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__image-container" scope="row"><img
																		width="58" height="58"
																		srcset="${dto.imageUrl} 1x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=116 2x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=174 3x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=232 4x"
																		src="${dto.imageUrl}"
																		class="ResponsiveImage MiniBasketItem__image"
																		alt="바리스타 크리에이션 FOR 아이스 버츄오 8 슬리브 팩"></th>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__title"><span
																		aria-hidden="true">${dto.modelName1 }</span><span aria-hidden="true"
																		class="MiniBasketItemPriceAndName__price"><strong>
																			₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</strong><span
																			class="MiniBasketItemPriceAndName__price-calc">(${dto.quantity }
																				× ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" />)</span></span><span class="VisuallyHidden">전체
																			가격 <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" /> KRW, ${dto.quantity } ${dto.modelName1 } 상품 별
																			가격 <fmt:formatNumber value="${dto.price }" pattern="#,###" /> KRW</span></td>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__button-container"><div
																			class="MiniBasketItem__addToBagButton AddToBagButton__container">
																			<div id="AddToBagButton__button-CremaComponentId-17">
																			<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																				<button id="hqtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="hqtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="hQuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="hqtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="hdelProduct(${dto.num},'','',-1,'');">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="hpd_num${dto.num }" name="hpd_num" value="${dto.pd_num }"/>						
																								<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																								<input type="hidden" id="htype1${dto.num }" name="htype1${dto.num }" value="${dto.type1 }"/>
																								<input type="hidden" id="htype2${dto.num }" name="htype2${dto.num }" value="${dto.type2 }"/>
																								<input type="hidden" id="htype3${dto.num }" name="htype3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																													<li class="PredefinedQuantityList__quantity">
																														<button id="ta-quantity-selector__predefined-1"
																															class="PredefinedQuantityList__quantity-button" onclick="hupdProduct(${dto.num},${j });">
																															<c:set var="k" value="${k+1 }"/>										
																															
																																<c:if test="${dto.type3 eq 'other' }">
																																	<c:set var="o" value="${o+1}"/>
																																	<span class="VisuallyHidden">${o} 추가하기</span> 
																																	<span aria-hidden="true" class="notranslate">${o}</span>	
																																	<input type="hidden" id="hoqty${j }" name="qty" value="${o }"/>																
																																</c:if>
																																					
																																<c:if test="${dto.type3 eq 'capsule' }">
																																	<c:choose>	
																																	<c:when test="${k<=10 }">
																																		<c:set var="c" value="${c+10 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																		
																																	</c:when>	
																																	<c:when test="${k>10 }">
																																		<c:set var="c" value="${c+50 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																	
																																	</c:when>																	
																																	</c:choose>
																																	<input type="hidden" id="hcqty${j }" name="qty" value="${c }"/>										
																																</c:if>
																															
																															
																														</button>
																													</li>
																													</c:forEach>
																								<c:set var="o" value="0"/>										
																								<c:set var="c" value="0"/>
																								<c:set var="k" value="0"/>
																							</ul>
																							
																							<form class="QuantitySelectorCustomField__container" novalidate="">
																								<div class="TextField QuantitySelectorCustomField__field">
																									<input id="inputQty${dto.num}" type="number" min="0" placeholder="수량 입력." class="TextField__input QuantitySelectorCustomField__input TextField__input--compact" value="">
																								</div>
																								<button id="inputhqtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="hupdProduct(${dto.num},-1);">OK</button>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div></td>
																</tr>
																</c:forEach>																	
																</c:if>
																<c:set var="mvtQty" value="0"/>
      														    <c:forEach var="qdto" items="${sessionScope.listsMv }">      	
															      	<c:set var="mvtQty" value="${mvtQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 머신 LIST -->
															    <c:if test="${!empty sessionScope.listsMv}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">버츄오 머신<span
																		class="MiniBasketItemCategory__item-count">(${mvtQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${sessionScope.listsMv }">
																<tr class="MiniBasketItem">
																	<th headers="capsules_vertuo"
																		id="vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__image-container" scope="row"><img
																		width="58" height="58"
																		srcset="${dto.imageUrl} 1x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=116 2x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=174 3x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=232 4x"
																		src="${dto.imageUrl}"
																		class="ResponsiveImage MiniBasketItem__image"
																		alt="바리스타 크리에이션 FOR 아이스 버츄오 8 슬리브 팩"></th>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__title"><span
																		aria-hidden="true">${dto.modelName1 }</span><span aria-hidden="true"
																		class="MiniBasketItemPriceAndName__price"><strong>
																			₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</strong><span
																			class="MiniBasketItemPriceAndName__price-calc">(${dto.quantity }
																				× ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" />)</span></span><span class="VisuallyHidden">전체
																			가격 <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" /> KRW, ${dto.quantity } ${dto.modelName1 } 상품 별
																			가격 <fmt:formatNumber value="${dto.price }" pattern="#,###" /> KRW</span></td>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__button-container"><div
																			class="MiniBasketItem__addToBagButton AddToBagButton__container">
																			<div id="AddToBagButton__button-CremaComponentId-17">
																			<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																				<button id="hqtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="hqtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="hQuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="hqtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="hdelProduct(${dto.num},'','',-1,'');">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="hpd_num${dto.num }" name="hpd_num" value="${dto.pd_num }"/>						
																								<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																								<input type="hidden" id="htype1${dto.num }" name="htype1${dto.num }" value="${dto.type1 }"/>
																								<input type="hidden" id="htype2${dto.num }" name="htype2${dto.num }" value="${dto.type2 }"/>
																								<input type="hidden" id="htype3${dto.num }" name="htype3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																													<li class="PredefinedQuantityList__quantity">
																														<button id="ta-quantity-selector__predefined-1"
																															class="PredefinedQuantityList__quantity-button" onclick="hupdProduct(${dto.num},${j });">
																															<c:set var="k" value="${k+1 }"/>										
																															
																																<c:if test="${dto.type3 eq 'other' }">
																																	<c:set var="o" value="${o+1}"/>
																																	<span class="VisuallyHidden">${o} 추가하기</span> 
																																	<span aria-hidden="true" class="notranslate">${o}</span>	
																																	<input type="hidden" id="hoqty${j }" name="qty" value="${o }"/>																
																																</c:if>
																																					
																																<c:if test="${dto.type3 eq 'capsule' }">
																																	<c:choose>	
																																	<c:when test="${k<=10 }">
																																		<c:set var="c" value="${c+10 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																		
																																	</c:when>	
																																	<c:when test="${k>10 }">
																																		<c:set var="c" value="${c+50 }"/>
																																		<span class="VisuallyHidden">${c} 추가하기</span> 
																																		<span aria-hidden="true" class="notranslate">${c}</span>																																	
																																	</c:when>																	
																																	</c:choose>
																																	<input type="hidden" id="hcqty${j }" name="qty" value="${c }"/>										
																																</c:if>
																															
																															
																														</button>
																													</li>
																													</c:forEach>	
																								<c:set var="o" value="0"/>										
																								<c:set var="c" value="0"/>
																								<c:set var="k" value="0"/>
																							</ul>
																							
																							<form class="QuantitySelectorCustomField__container" novalidate="">
																								<div class="TextField QuantitySelectorCustomField__field">
																									<input id="inputQty${dto.num}" type="number" min="0" placeholder="수량 입력." class="TextField__input QuantitySelectorCustomField__input TextField__input--compact" value="">
																								</div>
																								<button id="inputhqtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="hupdProduct(${dto.num},-1);">OK</button>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div></td>
																</tr>
																</c:forEach>																	
																</c:if>
																<c:set var="actQty" value="0"/>
      														    <c:forEach var="qdto" items="${sessionScope.listsAc }">      	
															      	<c:set var="actQty" value="${actQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 커피 LIST -->
															    <c:if test="${!empty sessionScope.listsAc}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">액세서리<span
																		class="MiniBasketItemCategory__item-count">(${actQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${sessionScope.listsAc }">
																<tr class="MiniBasketItem">
																	<th headers="capsules_vertuo"
																		id="vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__image-container" scope="row"><img
																		width="58" height="58"
																		srcset="${dto.imageUrl} 1x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=116 2x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=174 3x, /ecom/medias/sys_master/public/14279607222302/8SLV-ICE-VL-Capsules-2000x2000.png?impolicy=product&amp;imwidth=232 4x"
																		src="${dto.imageUrl}"
																		class="ResponsiveImage MiniBasketItem__image"
																		alt="바리스타 크리에이션 FOR 아이스 버츄오 8 슬리브 팩"></th>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__title"><span
																		aria-hidden="true">${dto.modelName1 }</span><span aria-hidden="true"
																		class="MiniBasketItemPriceAndName__price"><strong>
																			₩ <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" />
																		</strong><span
																			class="MiniBasketItemPriceAndName__price-calc">(${dto.quantity }
																				× ₩ <fmt:formatNumber value="${dto.price }" pattern="#,###" />)</span></span><span class="VisuallyHidden">전체
																			가격 <fmt:formatNumber value="${(dto.price * dto.quantity) }" pattern="#,###" /> KRW, ${dto.quantity } ${dto.modelName1 } 상품 별
																			가격 <fmt:formatNumber value="${dto.price }" pattern="#,###" /> KRW</span></td>
																	<td
																		headers="capsules_vertuo vl-barista-creation-ice-8-sleeve-pack"
																		class="MiniBasketItem__button-container"><div
																			class="MiniBasketItem__addToBagButton AddToBagButton__container">
																			<div id="AddToBagButton__button-CremaComponentId-17">
																			<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																				<button id="hqtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="hqtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="hQuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="hqtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="hdelProduct(${dto.num},'','',-1,'');">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="hpd_num${dto.num }" name="hpd_num" value="${dto.pd_num }"/>						
																								<input type="hidden" id="hmodelName1${dto.num }" name="hmodelName1" value="${dto.modelName1 }"/>
																								<input type="hidden" id="htype1${dto.num }" name="htype1${dto.num }" value="${dto.type1 }"/>
																								<input type="hidden" id="htype2${dto.num }" name="htype2${dto.num }" value="${dto.type2 }"/>
																								<input type="hidden" id="htype3${dto.num }" name="htype3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																									<li class="PredefinedQuantityList__quantity">
																										<button id="ta-quantity-selector__predefined-1"
																											class="PredefinedQuantityList__quantity-button" onclick="hupdProduct(${dto.num},${j });">
																											<c:set var="k" value="${k+1 }"/>										
																											
																												<c:if test="${dto.type3 eq 'other' }">
																													<c:set var="o" value="${o+1}"/>
																													<span class="VisuallyHidden">${o} 추가하기</span> 
																													<span aria-hidden="true" class="notranslate">${o}</span>	
																													<input type="hidden" id="hoqty${j }" name="qty" value="${o }"/>																
																												</c:if>
																																		
																												<c:if test="${dto.type3 eq 'capsule' }">
																													<c:choose>	
																													<c:when test="${k<=10 }">
																														<c:set var="c" value="${c+10 }"/>
																														<span class="VisuallyHidden">${c} 추가하기</span> 
																														<span aria-hidden="true" class="notranslate">${c}</span>																																		
																													</c:when>	
																													<c:when test="${k>10 }">
																														<c:set var="c" value="${c+50 }"/>
																														<span class="VisuallyHidden">${c} 추가하기</span> 
																														<span aria-hidden="true" class="notranslate">${c}</span>																																	
																													</c:when>																	
																													</c:choose>
																													<input type="hidden" id="hcqty${j }" name="qty" value="${c }"/>										
																												</c:if>
																													
																															
																										</button>
																									</li>
																									</c:forEach>	
																								<c:set var="o" value="0"/>										
																								<c:set var="c" value="0"/>
																								<c:set var="k" value="0"/>
																							</ul>
																							
																							<form class="QuantitySelectorCustomField__container" novalidate="">
																								<div class="TextField QuantitySelectorCustomField__field">
																									<input id="inputQty${dto.num}" type="number" min="0" placeholder="수량 입력." class="TextField__input QuantitySelectorCustomField__input TextField__input--compact" value="">
																								</div>
																								<button id="inputhqtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="hupdProduct(${dto.num},-1);">OK</button>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div></td>
																</tr>
																</c:forEach>																	
																</c:if>
																
																
																</tbody>
															</table>
														</div>
													</div>
													
													<div class="MiniBasketFooter">
														<table class="MiniBasketTotalTable">
															<caption class="MiniBasketTotalTable__caption">장바구니
																및 크레딧 정보 확인</caption>
															<tbody>
																<tr class="MiniBasketTotalTable__totalPrice">
																	<th scope="row"
																		class="MiniBasketTotalTable__totalPrice-label">합계</th>
																	<td class="MiniBasketTotalTable__totalPrice-value">₩
																		<fmt:formatNumber value="${sessionScope.totalPrice }" pattern="#,###" /></td>
																</tr>
																<tr>
																	<td colspan="2"
																		class="MiniBasketTotalTable__cartDisclamerMessage-label">(배송비
																		불포함 금액)</td>
																</tr>
															</tbody>
														</table>
														<a href="<%=cp %>/checkoutStep1">
														<button id="basketGo" onclick="<%=cp %>/checkoutStep1" class="ElementWithChevron CheckoutActionButton MiniBasketFooter__button-checkout">
															장바구니 바로가기														
														</button>
														</a>
													</div>
													
													</c:if>
											</div>
										</div>        								
									</div>
        						</div>
        						
        					</div>	
        					<% } %>
						</div>
					</div>	
				</div>
			</div>			
		</div>
	


<!-- *************************메뉴바************************* -->
<% if(uri.indexOf("checkoutStep")<0){ %>
<!-- 메뉴바 확장 -->
<style type="text/css">
.HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done{
	display: none;

}
</style>
        <div id="HeaderNavigationBarRespBlock-8797706921744-f9458bcd-e4fb-4ee9-897c-a1a1ea97228c" class="crema-ui-container ">
        	<div class="HeaderNavigationBar">
        		<h3 class="VisuallyHidden">메인 메뉴</h3>
        		<span id="a11y-main-navigation" class="element-visually-hidden" tabindex="-1">현재 네비게이션 메뉴에 계십니다.</span>
        		<span class="VisuallyHidden">서브 메뉴 버튼이 있다면, 해당 메뉴를 열수 있습니다.</span>
        		<button class="Button BurgerSwitch HeaderNavigationBar__switch">
        			<div class="BurgerSwitch__bars"></div>
        			<span class="VisuallyHidden">서브 메뉴 열기</span>
        		</button>
        		<div><nav class="HeaderNavigationBar__nav ResponsiveContainer">
        			<ul class="HeaderNavigationBar__menu"> 
						<!-- -----------------커피 메뉴바----------------- -->
        				<li id="menubarDis-1" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/product/originalcapsule" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13828104421406/vertuoicon-sprite-2-.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">커피</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 커피 열기</button>
        					</span>
        					
        					<!-- ----------커피 하위창------------ -->
		        			<div>
		        				<div id="menuDis-1" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;">
		        					<ul class="HeaderNavigationBarDropdown__list">
		        						<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium-links">
		        							<a href="<%=cp %>/product/vertuocapsule" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
		        								<span class="HeaderNavigationBarDropdown__item-title">버츄오</span>
		        								<div class="HeaderNavigationBarDropdown__item-media">
		        									<img aria-hidden="true" width="100" height="100" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406746142/02-Vertuo.png, https://www.nespresso.com/ecom/medias/sys_master/public/10830406746142/02-Vertuo.png?impolicy=small&amp;imwidth=200 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406746142/02-Vertuo.png?impolicy=small&amp;imwidth=300 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406746142/02-Vertuo.png?impolicy=small&amp;imwidth=400 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406746142/02-Vertuo.png?impolicy=small&amp;imwidth=100" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
		        								</div>
		        							</a>
		        							<ul class="HeaderNavigationBarDropdown__medium-links">
		        								<li class="HeaderNavigationBarDropdown__medium-links-item">
		        									<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/vertuocapsule" style="color: rgb(65, 130, 0);">버츄오 커피 주문하기</a>
		        								</li>
		        								<li class="HeaderNavigationBarDropdown__medium-links-item">
		        									<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/vertuocapsule" style="color: rgb(65, 130, 0);">버츄오 커피 전체보기</a>
		        								</li>
		        							</ul>
		        						</li>
		        						<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium-links">
		        							<a href="<%=cp %>/product/originalcapsule" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
		        								<span class="HeaderNavigationBarDropdown__item-title">오리지널</span>
		        								<div class="HeaderNavigationBarDropdown__item-media">
		        									<img aria-hidden="true" width="100" height="100" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830405992478/01-Original.png?impolicy=small&amp;imwidth=100 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830405992478/01-Original.png?impolicy=small&amp;imwidth=200 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830405992478/01-Original.png?impolicy=small&amp;imwidth=300 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830405992478/01-Original.png?impolicy=small&amp;imwidth=400 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830405992478/01-Original.png?impolicy=small&amp;imwidth=100" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
		        								</div>
		        							</a>
		        							<ul class="HeaderNavigationBarDropdown__medium-links">
		        								<li class="HeaderNavigationBarDropdown__medium-links-item">
		        									<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/originalcapsule" style="color: rgb(65, 130, 0);">오리지널 커피 주문하기</a>
		        								</li>
		        								<li class="HeaderNavigationBarDropdown__medium-links-item">
		        									<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="/kr/ko/original-coffee-capsules" style="color: rgb(65, 130, 0);">오리지널 커피 전체보기</a>
		        								</li>
		        							</ul>
		        						</li>
		        						<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd">
		        							<a href="/kr/ko/coffee-expertise" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
		        								<div class="HeaderNavigationBarDropdown__item-media">
		        									<img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406221854/03-Coffee-story.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406221854/03-Coffee-story.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406221854/03-Coffee-story.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406221854/03-Coffee-story.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406221854/03-Coffee-story.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
		        								</div>
		        								<span class="HeaderNavigationBarDropdown__item-title">네스프레소 커피 이야기</span>
		        							</a>
		        						</li>
		        						<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small">
		        							<a href="/kr/ko/coffee-selector" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
		        								<div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406287390/04-Search-for-my-ideal-coffee.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406287390/04-Search-for-my-ideal-coffee.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406287390/04-Search-for-my-ideal-coffee.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406287390/04-Search-for-my-ideal-coffee.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406287390/04-Search-for-my-ideal-coffee.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">내게 맞는 커피 찾기</span>
		        							</a>
		        						</li>
		        					</ul>
		        					<div class="HeaderNavigationBarDropdown__push-banner">
		        						<div class="Banner">
		        							<a class="AccessibleLink Banner__link" lightbox="[object Object]" href="/kr/ko/2021-barista-creations-for-ice">
		        								<img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14301503914014/Mega-Drop-Down-952x912.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14301503914014/Mega-Drop-Down-952x912.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14301503914014/Mega-Drop-Down-952x912.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14301503914014/Mega-Drop-Down-952x912.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/14301503914014/Mega-Drop-Down-952x912.jpg?impolicy=medium&amp;imwidth=238" role="presentation" class="ResponsiveImage Banner__image" alt="">
		        							</a>
		        						</div>
		        					</div>
		        				</div>
		        			</div>
        				</li>
        				
        				<!-- -----------------머신 메뉴바----------------- -->
        				<li id="menubarDis-2" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/product/vertuomachines" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13828104454174/machine-vertuo-next.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">머신</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 머신 열기</button>
        					</span>
        					
        					<!-- ----------머신 하위창------------ -->
        					<div>
        						<div id="menuDis-2" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;">
        							<ul class="HeaderNavigationBarDropdown__list">
        								<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium-links">
        									<a href="<%=cp %>/product/vertuomachines" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
        										<span class="HeaderNavigationBarDropdown__item-title">버츄오</span>
        										<div class="HeaderNavigationBarDropdown__item-media">
        											<img aria-hidden="true" width="100" height="100" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406811678/02-Vertuo.png?impolicy=small&amp;imwidth=100 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406811678/02-Vertuo.png?impolicy=small&amp;imwidth=200 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406811678/02-Vertuo.png?impolicy=small&amp;imwidth=300 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406811678/02-Vertuo.png?impolicy=small&amp;imwidth=400 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406811678/02-Vertuo.png?impolicy=small&amp;imwidth=100" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
        										</div>
        									</a>
        									<ul class="HeaderNavigationBarDropdown__medium-links">
        										<li class="HeaderNavigationBarDropdown__medium-links-item">
        											<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/vertuomachines" style="color: rgb(65, 130, 0);">버츄오 머신 주문하기</a>
        										</li>
        										<li class="HeaderNavigationBarDropdown__medium-links-item">
        											<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/vertuomachines" style="color: rgb(65, 130, 0);">버츄오 머신 전체보기</a>
        										</li>
        									</ul>
        								</li>
        								<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium-links">
        									<a href="<%=cp %>/product/originalmachines" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
        										<span class="HeaderNavigationBarDropdown__item-title">오리지널</span>
        										<div class="HeaderNavigationBarDropdown__item-media">
        											<img aria-hidden="true" width="100" height="100" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406778910/01-Original.png?impolicy=small&amp;imwidth=100 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406778910/01-Original.png?impolicy=small&amp;imwidth=200 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406778910/01-Original.png?impolicy=small&amp;imwidth=300 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406778910/01-Original.png?impolicy=small&amp;imwidth=400 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406778910/01-Original.png?impolicy=small&amp;imwidth=100" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
        										</div>
        									</a>
        									<ul class="HeaderNavigationBarDropdown__medium-links">
        										<li class="HeaderNavigationBarDropdown__medium-links-item">
        											<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/originalmachines" style="color: rgb(65, 130, 0);">오리지널 머신 주문하기</a>
        										</li>
        										<li class="HeaderNavigationBarDropdown__medium-links-item">
        											<a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="<%=cp %>/product/originalmachines" style="color: rgb(65, 130, 0);">오리지널 머신 전체보기</a>
        										</li>
        									</ul>
        								</li>
        								<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd">
        									<a href="<%=cp %>/mguide.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
        										<div class="HeaderNavigationBarDropdown__item-media">
        											<img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830406844446/03-CompareMachines.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406844446/03-CompareMachines.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406844446/03-CompareMachines.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830406844446/03-CompareMachines.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830406844446/03-CompareMachines.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
        										</div>
        										<span class="HeaderNavigationBarDropdown__item-title">오리지널과 버츄오 머신 비교</span>
        									</a>
        								</li>
        								<li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small">
        									<a href="<%=cp %>/mguide.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]">
        										<div class="HeaderNavigationBarDropdown__item-media">
        											<img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13828101079070/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101079070/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101079070/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101079070/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13828101079070/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt="">
        										</div>
        										<span class="HeaderNavigationBarDropdown__item-title">머신 사용 안내</span>
        									</a>
        								</li>
        							</ul>
        							<div class="HeaderNavigationBarDropdown__push-banner">
        								<div class="Banner">
        									<a class="AccessibleLink Banner__link" data-promotion-item-id="KR_Machines_Vertuo_Dropdown_Imp" lightbox="[object Object]" href="/kr/ko/order/machines/vertuo">
        										<img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14225432805406/210111-VERTUO-Dropdown-Banner-OL-952x912-KR.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14225432805406/210111-VERTUO-Dropdown-Banner-OL-952x912-KR.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14225432805406/210111-VERTUO-Dropdown-Banner-OL-952x912-KR.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14225432805406/210111-VERTUO-Dropdown-Banner-OL-952x912-KR.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/14225432805406/210111-VERTUO-Dropdown-Banner-OL-952x912-KR.jpg?impolicy=medium&amp;imwidth=238" role="presentation" class="ResponsiveImage Banner__image" alt="">
        									</a>
        								</div>
        							</div>
        						</div>
        					</div>
        				</li>
        				
        				<!-- -----------------액세서리 / 재활용백 메뉴바----------------- -->
        				<li id="menubarDis-3" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/product/originalacc" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068837918/accessory.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">액세서리 / 재활용백</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 액세서리 / 재활용백 열기</button>
        					</span>
        					
        					<!-- ----------액세서리 / 재활용백 하위창------------ -->
        					<div><div id="menuDis-3" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;"><ul class="HeaderNavigationBarDropdown__list"><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium">
        					<a href="<%=cp %>/product/originalacc" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">액세서리 주문하기</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830407401502/01-OrderAcc.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407401502/01-OrderAcc.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407401502/01-OrderAcc.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407401502/01-OrderAcc.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830407401502/01-OrderAcc.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd">
        					<a href="<%=cp %>/product/originalacc" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830407663646/03-Aeroccino.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407663646/03-Aeroccino.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407663646/03-Aeroccino.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407663646/03-Aeroccino.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830407663646/03-Aeroccino.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">에어로치노</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small"><a href="/kr/ko/order/accessories/original#collections[0]=스낵%20및%20소품" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830407860254/04-Snack.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407860254/04-Snack.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407860254/04-Snack.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830407860254/04-Snack.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830407860254/04-Snack.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">스낵 및 소품</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd"><a href="/kr/ko/order/accessories/original#collections[0]=같이%20만드는%20그린%20모먼트" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13346098872350/Icon-NewRecyclingBag-400x400.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13346098872350/Icon-NewRecyclingBag-400x400.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13346098872350/Icon-NewRecyclingBag-400x400.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13346098872350/Icon-NewRecyclingBag-400x400.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13346098872350/Icon-NewRecyclingBag-400x400.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">재활용 백 주문 및 수거 요청</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small"><a href="/kr/ko/order-machine-accessories" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14322551685150/93242-400x400.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14322551685150/93242-400x400.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14322551685150/93242-400x400.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14322551685150/93242-400x400.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/14322551685150/93242-400x400.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">머신 부속품 판매</span></a></li></ul><div class="HeaderNavigationBarDropdown__push-banner"><div class="Banner"><a class="AccessibleLink Banner__link" data-promotion-item-id="KR_2019_BaristaMachine_Imp" lightbox="[object Object]" href="/kr/ko/order/machines/vertuo/barista-recipe-maker-vertuo"><img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13006228389918/DMW-BaristaMachine-Responsive-PushBanner-952x912-KO.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13006228389918/DMW-BaristaMachine-Responsive-PushBanner-952x912-KO.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13006228389918/DMW-BaristaMachine-Responsive-PushBanner-952x912-KO.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13006228389918/DMW-BaristaMachine-Responsive-PushBanner-952x912-KO.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13006228389918/DMW-BaristaMachine-Responsive-PushBanner-952x912-KO.jpg?impolicy=medium&amp;imwidth=238" class="ResponsiveImage Banner__image" alt="바리스타 레시피 메이커"></a></div></div></div></div>
        				</li>
        				
        				<!-- -----------------지속가능성 메뉴바----------------- -->
        				<li id="menubarDis-4" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/sustainability/main" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13649894244382/Icono-menu-ourchoice.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">지속가능성</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 지속가능성 열기</button>
        					</span>
        					
        					<!-- ----------지속가능성 하위창------------ -->
        					<div><div id="menuDis-4" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;"><ul class="HeaderNavigationBarDropdown__list"><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/sustainability/green-moments" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">그린 모먼트</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12371072647198/csv.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12371072647198/csv.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12371072647198/csv.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12371072647198/csv.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/12371072647198/csv.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/sustainability/sustainable-coffee-quality" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">지속 가능한 품질</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10867279757342/01-SustainableQuality.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10867279757342/01-SustainableQuality.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10867279757342/01-SustainableQuality.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10867279757342/01-SustainableQuality.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10867279757342/01-SustainableQuality.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="/kr/ko/storeLocator " class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">재활용 캡슐 수거 지점</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13649898831902/03-PickRecycling.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13649898831902/03-PickRecycling.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13649898831902/03-PickRecycling.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13649898831902/03-PickRecycling.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13649898831902/03-PickRecycling.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li></ul><div class="HeaderNavigationBarDropdown__push-banner"><div class="Banner"><a class="AccessibleLink Banner__link" data-promotion-item-id="kr_b2c_home_navigationdropdown_our-choices-green-moments-push_2007_Imp" lightbox="[object Object]" href="/kr/ko/2020-make-green-moments-with-recycling-activity"><img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13486511620126/200720-CSV-MEGA-DROP-DOWN-952x912-KR.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13486511620126/200720-CSV-MEGA-DROP-DOWN-952x912-KR.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13486511620126/200720-CSV-MEGA-DROP-DOWN-952x912-KR.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13486511620126/200720-CSV-MEGA-DROP-DOWN-952x912-KR.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13486511620126/200720-CSV-MEGA-DROP-DOWN-952x912-KR.jpg?impolicy=medium&amp;imwidth=238" class="ResponsiveImage Banner__image" alt="같이 만드는 그린 모먼트"></a></div></div></div></div>
        				</li>
        				
        				<!-- -----------------서비스 메뉴바----------------- -->
        				<li id="menubarDis-5" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/service.action" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068903454/ourservices.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">서비스</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 서비스 열기</button>
        					</span>
        					
        					<!-- ----------서비스 하위창------------ -->
        					<div><div id="menuDis-5" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;"><ul class="HeaderNavigationBarDropdown__list"><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/service.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">제품 주문</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830660304926/01-OrderProduct.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660304926/01-OrderProduct.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660304926/01-OrderProduct.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660304926/01-OrderProduct.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830660304926/01-OrderProduct.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/service.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">배송 서비스</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830660337694/02-DeliveryService.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660337694/02-DeliveryService.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660337694/02-DeliveryService.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660337694/02-DeliveryService.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830660337694/02-DeliveryService.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/recycleservice.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">재활용</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830660370462/03-Recycling.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660370462/03-Recycling.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660370462/03-Recycling.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830660370462/03-Recycling.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830660370462/03-Recycling.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li></ul><div class="HeaderNavigationBarDropdown__push-banner"><div class="Banner"><a class="AccessibleLink Banner__link" data-promotion-item-id="kr_b2c_home_navigationdropdown_our-services-welcome-offer-push_2007_imp" lightbox="[object Object]" href="/kr/ko/WelcomeOfferList"><img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13827678699550/WelcomeOffer-Push-952x912-KO.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13827678699550/WelcomeOffer-Push-952x912-KO.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13827678699550/WelcomeOffer-Push-952x912-KO.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13827678699550/WelcomeOffer-Push-952x912-KO.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13827678699550/WelcomeOffer-Push-952x912-KO.jpg?impolicy=medium&amp;imwidth=238" role="presentation" class="ResponsiveImage Banner__image" alt=""></a></div></div></div></div>
        				</li>
        				
        				<!-- -----------------고객지원 메뉴바----------------- -->        				
        				<li id="menubarDis-6" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/faq.action" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595069100062/contact-FAQ.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">고객지원</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 고객지원 열기</button>
        					</span>
        					
        					<!-- ----------고객지원 하위창------------ -->
        					<div><div id="menuDis-6" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;"><ul class="HeaderNavigationBarDropdown__list"><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/faq.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">자주하는 질문(FAQ)</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10832434429982/01-FAQ.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434429982/01-FAQ.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434429982/01-FAQ.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434429982/01-FAQ.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10832434429982/01-FAQ.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium"><a href="<%=cp %>/login/myPage/myOrder" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">주문/배송 조회</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="120" height="120" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10832434561054/02-TrackMyOrder.png?impolicy=small&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434561054/02-TrackMyOrder.png?impolicy=small&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434561054/02-TrackMyOrder.png?impolicy=small&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10832434561054/02-TrackMyOrder.png?impolicy=small&amp;imwidth=480 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10832434561054/02-TrackMyOrder.png?impolicy=small&amp;imwidth=120" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd"><a href="<%=cp %>/mguide.action" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13828101242910/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101242910/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101242910/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13828101242910/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13828101242910/Machine-Assistance-Icon-400x400.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">머신 사용 안내</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small"><a href="https://www.kcp.co.kr/center.paysearch.do " target="_blank" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13683950911518/CreditCard-Icon-400x400.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13683950911518/CreditCard-Icon-400x400.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13683950911518/CreditCard-Icon-400x400.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13683950911518/CreditCard-Icon-400x400.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/13683950911518/CreditCard-Icon-400x400.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">결제영수증 출력</span></a></li></ul><div class="HeaderNavigationBarDropdown__push-banner"><div class="Banner"><a class="AccessibleLink Banner__link" data-promotion-item-id="kr_b2c_home_navigationdropdown_contact-mobile-btq-push_2007_imp" lightbox="[object Object]" href="/kr/ko/service-order-by-mobile-boutique"><img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14126344765470/07-FAQ2-KR.jpg?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14126344765470/07-FAQ2-KR.jpg?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14126344765470/07-FAQ2-KR.jpg?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14126344765470/07-FAQ2-KR.jpg?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/14126344765470/07-FAQ2-KR.jpg?impolicy=medium&amp;imwidth=238" role="presentation" class="ResponsiveImage Banner__image" alt=""></a></div></div></div></div>
        				</li>
        				
        				<!-- -----------------뉴스 메뉴바----------------- -->
        				<li class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/news/news" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13449722789918/NAV-highlight1.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">뉴스</div>
        						</div>
        					</a>
        				</li>
        				
        				<!-- -----------------매장 찾기 메뉴바----------------- -->
        				<li class="HeaderNavigationBarItem">
        					<a href="/kr/ko/storeLocator" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068968990/store-locator.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">매장 찾기</div>
        						</div>
        					</a>
        				</li>
        				
        				<!-- -----------------프로페셔널 (기업용) 메뉴바----------------- -->
        				<li id="menubarDis-7" class="HeaderNavigationBarItem">
        					<a href="<%=cp %>/board/boardMain?pageUserEmail=${sessionScope.userSession.email }" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595069165598/business.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">SNS</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 프로페셔널 (기업용) 열기</button>
        					</span>
        					
        					<!-- ----------프로페셔널 (기업용) 하위창------------ -->
        					<!-- <div><div id="menuDis-7" class="HeaderNavigationBarDropdown HeaderNavigationBarDropdown__slider-transition-enter-done" style="display: none;"><ul class="HeaderNavigationBarDropdown__list"><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd"><a href="https://www.nespresso.com/pro/kr/ko/order/capsules/pro" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830665842718/01-ProfessionalCoffee.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665842718/01-ProfessionalCoffee.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665842718/01-ProfessionalCoffee.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665842718/01-ProfessionalCoffee.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830665842718/01-ProfessionalCoffee.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">기업용 네스프레소 커피</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small"><a href="https://www.nespresso.com/pro/kr/ko/order/machines/pro" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830665875486/02-ProfessionalMachine.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665875486/02-ProfessionalMachine.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665875486/02-ProfessionalMachine.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830665875486/02-ProfessionalMachine.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10830665875486/02-ProfessionalMachine.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">기업용 커피 머신</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--medium-links"><a href="https://www.nespresso.com/pro/kr/ko" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><span class="HeaderNavigationBarDropdown__item-title">프로페셔널</span><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="100" height="100" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10883698065438/03-OfficeRestaurantCaffee.png?impolicy=small&amp;imwidth=100 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10883698065438/03-OfficeRestaurantCaffee.png?impolicy=small&amp;imwidth=200 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10883698065438/03-OfficeRestaurantCaffee.png?impolicy=small&amp;imwidth=300 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10883698065438/03-OfficeRestaurantCaffee.png?impolicy=small&amp;imwidth=400 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10883698065438/03-OfficeRestaurantCaffee.png?impolicy=small&amp;imwidth=100" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div></a><ul class="HeaderNavigationBarDropdown__medium-links"><li class="HeaderNavigationBarDropdown__medium-links-item"><a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="https://www.nespresso.com/pro/kr/ko/office-coffee-machines" style="color: rgb(65, 130, 0);">오피스</a></li><li class="HeaderNavigationBarDropdown__medium-links-item"><a lightbox="[object Object]" class="AccessibleLink HeaderNavigationBarDropdown__medium-link" href="https://www.nespresso.com/pro/kr/ko/cafe-restaurant-coffee-machines" style="color: rgb(65, 130, 0);">레스토랑 &amp; 카페</a></li></ul></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small HeaderNavigationBarDropdown__item--small-odd"><a href="https://www.nespresso.com/pro/kr/ko/business-coffee-solutions" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10844938240030/04-CoffeeSolution.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938240030/04-CoffeeSolution.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938240030/04-CoffeeSolution.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938240030/04-CoffeeSolution.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10844938240030/04-CoffeeSolution.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">커피 솔루션 찾기</span></a></li><li class="HeaderNavigationBarDropdown__item HeaderNavigationBarDropdown__item--small"><a href="https://www.nespresso.com/pro/kr/ko/professional-contactus" class="AccessibleLink HeaderNavigationBarDropdown__item-heading" lightbox="[object Object]"><div class="HeaderNavigationBarDropdown__item-media"><img aria-hidden="true" width="80" height="80" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10844938305566/05-Question.png?impolicy=small&amp;imwidth=80 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938305566/05-Question.png?impolicy=small&amp;imwidth=160 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938305566/05-Question.png?impolicy=small&amp;imwidth=240 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10844938305566/05-Question.png?impolicy=small&amp;imwidth=320 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10844938305566/05-Question.png?impolicy=small&amp;imwidth=80" role="presentation" class="ResponsiveImage HeaderNavigationBarDropdown__item-media-image" alt=""></div><span class="HeaderNavigationBarDropdown__item-title">문의하기</span></a></li></ul><div class="HeaderNavigationBarDropdown__push-banner"><div class="Banner"><a class="AccessibleLink Banner__link" data-promotion-item-id="KR_2020_ProfessionalMomento_Dropdown_Imp" lightbox="[object Object]" href="https://www.nespresso.com/pro/kr/ko/2021-momento-coffee-machine-experience"><img width="238" height="228" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14336413007902/210525-B2B-B2C-Navigation-Banner-Nespresso-Momento-1-Month-Experience-952x912px-BG1-KR.png?impolicy=medium&amp;imwidth=238 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14336413007902/210525-B2B-B2C-Navigation-Banner-Nespresso-Momento-1-Month-Experience-952x912px-BG1-KR.png?impolicy=medium&amp;imwidth=476 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14336413007902/210525-B2B-B2C-Navigation-Banner-Nespresso-Momento-1-Month-Experience-952x912px-BG1-KR.png?impolicy=medium&amp;imwidth=714 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14336413007902/210525-B2B-B2C-Navigation-Banner-Nespresso-Momento-1-Month-Experience-952x912px-BG1-KR.png?impolicy=medium&amp;imwidth=952 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/14336413007902/210525-B2B-B2C-Navigation-Banner-Nespresso-Momento-1-Month-Experience-952x912px-BG1-KR.png?impolicy=medium&amp;imwidth=238" role="presentation" class="ResponsiveImage Banner__image" alt=""></a></div></div></div></div> -->
        				</li>
        			</ul>
        		
        		</nav></div>
        	</div>
        </div>
<% } %>
        </div>
	<div id="responsive-overlay" class="crema-ui-container " style="">
		<div>
   			<div id="overlayDis" class="Overlay Overlay__transition-enter-done" tabindex="0" style="display: none;"></div>   			
   		</div>   		
   	</div>
   	
<div id="full-page-loader" class="display-none dark-overlay full-page-loader" tabindex="-1">

        <div class="loader-outer">
            <div class="loader-inner">
                <img src="https://www.nespresso.com/_ui/img/ajax-loader-dark-bg.gif" alt="로딩">
            </div>
        </div>
</div>

</header>
</body>
</html>