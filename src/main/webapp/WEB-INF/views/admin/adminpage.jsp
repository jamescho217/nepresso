<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String uri = request.getRequestURI();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- head메타 -->
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
<!-- head메타끝 -->
<title>Insert title here</title>

<!-- 헤더링크 -->
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
		
	if(em || pw ==''){
		
		$.ajax({
			
			type : 'post',
			url : '${pageContext.request.contextPath}/login',
			data : {
				
				email : em,
				pwd : pw,
				remember_email : remember_us
			},
			
			success : function(data) {
				
				console.log(data);
				
				if( data == 0) {//로그인 내려오는 거 null이면 /login
					
					
					console.log(data);
					
					location.href='<%=cp%>/login';
					
					$('#loginCheck').text("이메일 주소나 비밀번호가 맞지 않습니다");
					$('#loginCheck').css('color','red'); 
					
				} else if (data == -1) { //인증하지 않았다면?
					console.log(data);
					$('#loginCheck').text('이메일 인증을 해주셔야 합니다!');	
					
					
				}else{//login 성공시 1
					
					console.log(data + "왔냐?");
					location.href = '<%=cp%>/mainPage';
					
				}
				
			}
		});
		
	}else{
		console.log("값없을때");
		location.href = '<%=cp%>/login';
	}
		
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
					$('#overlayDis').fadeOut();
					$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done');
					var count = "${empty totalCount}";
					if(count==true){
						$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
					}else{
						$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
					}
				}
			});
		}
	});
	
	$('#ta-mini-basket__open').click(function(){
		var count = "${empty totalCount}";
		if($('#miniBasketDis').is(':visible')){//닫기
			
			$(".MiniBasketDropdown__dropdown").animate({
			      width: "toggle"
			    });
			$('#overlayDis').fadeOut();
			$('#miniBasketDis').attr('class','MiniBasketDropdown__dropdown MiniBasketDropdown__dropdown--is-open MiniBasketDropdown__open-close-transition-enter-done');
			if(count==true){
				$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
			}else{
				$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
			}
			
		}else{//열기					
			
			$(".MiniBasketDropdown__dropdown").animate({
			      width: "toggle"
			    });					
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
	var count = "${empty totalCount}";
	
	$('#ta-mini-basket__close').click(function(){
		if(count==true){
			$('#ta-mini-basket__open').attr('class','MiniBasketButton');	
		}else{
			$('#ta-mini-basket__open').attr('class','MiniBasketButton MiniBasketButton--not-empty');
		}
		
		$(".MiniBasketDropdown__dropdown").animate({
		      width: "toggle"
		    });
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
<!-- 헤더링크끝 -->


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



</head>
<body>

<!-- 헤더시작 -->
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
	        												<li><a id="ta-dropdown-menu__orders" href="<%=cp %>/login/myPage/orderList" class="AccessibleLink AccountMenu__sections">나의 주문 내역</a></li>
	        												<li><a id="ta-dropdown-menu__addresses" href="<%=cp %>/login/myPage/adress" class="AccessibleLink AccountMenu__sections">나의 주소</a></li>
	        												<li><a id="ta-dropdown-menu__personal_info" href="<%=cp %>/login/myPage/pinfo" class="AccessibleLink AccountMenu__sections">개인 정보</a></li>
	        												<li><a id="ta-dropdown-menu__machines" href="<%=cp %>/login/myPage/myMachine" class="AccessibleLink AccountMenu__sections">나의 머신</a></li>
	        												<li><a id="ta-dropdown-menu__contact_preferences" href="<%=cp %>/login/myPage/infoAlarm" class="AccessibleLink AccountMenu__sections">정보 수신 항목 설정</a></li>
	        											</ul>
	        										</div>
	        										<button id="ta-logout" class="Button LoggedInPanel__logout-button" onclick="location.href='/nespresso/logout.action'">로그아웃</button>
	        										<c:if test="${sessionScope.userSession.email=='yoeumiii@naver.com'}">
	        										<br/>
	        										<button id="ta-logout" class="Button LoggedInPanel__logout-button" onclick="location.href='/nespresso/admin_created.action'">관리자</button>
	        										
	        										</c:if>
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
        							<c:if test="${empty stotalCount }">
        							<button id="ta-mini-basket__open" aria-expanded="false" data-focus-id="minibasketdropdown-open-button-focus-id" class="MiniBasketButton">
        								<i aria-hidden="true" class="Glyph Glyph--basket MiniBasketButton__basketIcon"></i>현재 장바구니에 (<span class="notranslate">0</span>) 개가 있습니다.
        							</button>
        							</c:if>
        							
        							<c:if test="${!empty stotalCount }">
        							<button id="ta-mini-basket__open" aria-expanded="false" data-focus-id="minibasketdropdown-open-button-focus-id" class="MiniBasketButton MiniBasketButton--not-empty">
        								<i aria-hidden="true" class="Glyph Glyph--basket MiniBasketButton__basketIcon"></i>현재 장바구니에 (<span class="notranslate">${stotalCount }</span>) 개가 있습니다.
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
												<c:if test="${empty stotalCount }">
												<div class="MiniBasketDropdown__content-wrapper">
													<div class="MiniBasketDropdown__content-empty">
														<div class="MiniBasketDropdown__content__title">장바구니가 비어있습니다.</div>
														<div class="MiniBasketDropdown__shopLinks">
															<a id="ta-mini-basket__start-shopping" class="AccessibleLink ElementWithChevron CheckoutActionButton MiniBasketDropdown__Link-shopping" href="/kr/ko/order/capsules">쇼핑하기</a>
														</div>
													</div>
												</div>
												</c:if>
												<c:if test="${!empty stotalCount }">
												<div class="MiniBasketDropdown__content-wrapper sessioncammonitorscroll">
													<div class="MiniBasketDropdown__content-filled MiniBasketDropdown__content-filled--no-credit">
														<table class="MiniBasketDropdown__content-categories">
															<tbody>
		
																<c:set var="cotQty" value="0"/>
      														    <c:forEach var="qdto" items="${slistsCo }">      	
															      	<c:set var="cotQty" value="${cotQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 오리지널 커피 LIST -->
															    <c:if test="${!empty slistsCo}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">오리지널 커피<span
																		class="MiniBasketItemCategory__item-count">(${cotQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${slistsCo }">
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
																		class="MiniBasketItem__button-container"><div
																			class="MiniBasketItem__addToBagButton AddToBagButton__container">
																			<div id="AddToBagButton__button-CremaComponentId-17">
																				<button id="qtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="qtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="QuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="qtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="delProduct(${dto.num});">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="type3${dto.num }" name="type3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-1"
																										class="PredefinedQuantityList__quantity-button" onclick="updProduct(${dto.num},${j });">
																										<c:set var="k" value="${k+1 }"/>										
																										<c:choose>
																											<c:when test="${dto.type3 eq 'other' }">
																												<c:set var="o" value="${o+1}"/>
																												<span class="VisuallyHidden">${o} 추가하기</span> 
																												<span aria-hidden="true" class="notranslate">${o}</span>	
																												<input type="hidden" id="oqty${j }" name="qty" value="${o }"/>																
																											</c:when>
																																
																											<c:when test="${dto.type3 eq 'capsule' }">
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
																												<input type="hidden" id="cqty${j }" name="qty" value="${c }"/>										
																											</c:when>
																										</c:choose>
																										
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
																								<button id="inputQtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="updProduct(${dto.num},-1);">OK</button>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div></td>
																</tr>
																</c:forEach>																	
																</c:if>
																
																<c:set var="motQty" value="0"/>
      														    <c:forEach var="qdto" items="${slistsMo }">      	
															      	<c:set var="motQty" value="${motQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 오리지널 머신 LIST -->
															    <c:if test="${!empty slistsMo}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">오리지널 머신<span
																		class="MiniBasketItemCategory__item-count">(${motQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${slistsMo }">
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
																				<button id="qtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="qtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="QuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="qtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="delProduct(${dto.num});">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="type3${dto.num }" name="type3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-1"
																										class="PredefinedQuantityList__quantity-button" onclick="updProduct(${dto.num},${j });">
																										<c:set var="k" value="${k+1 }"/>										
																										<c:choose>
																											<c:when test="${dto.type3 eq 'other' }">
																												<c:set var="o" value="${o+1}"/>
																												<span class="VisuallyHidden">${o} 추가하기</span> 
																												<span aria-hidden="true" class="notranslate">${o}</span>	
																												<input type="hidden" id="oqty${j }" name="qty" value="${o }"/>																
																											</c:when>
																																
																											<c:when test="${dto.type3 eq 'capsule' }">
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
																												<input type="hidden" id="cqty${j }" name="qty" value="${c }"/>										
																											</c:when>
																										</c:choose>
																										
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
																								<button id="inputQtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="updProduct(${dto.num},-1);">OK</button>
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
      														    <c:forEach var="qdto" items="${slistsCv }">      	
															      	<c:set var="cvtQty" value="${cvtQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 커피 LIST -->
															    <c:if test="${!empty slistsCv}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">버츄오 커피<span
																		class="MiniBasketItemCategory__item-count">(${cvtQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${slistsCv }">
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
																				<button id="qtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="qtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="QuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="qtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="delProduct(${dto.num});">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="type3${dto.num }" name="type3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-1"
																										class="PredefinedQuantityList__quantity-button" onclick="updProduct(${dto.num},${j });">
																										<c:set var="k" value="${k+1 }"/>										
																										<c:choose>
																											<c:when test="${dto.type3 eq 'other' }">
																												<c:set var="o" value="${o+1}"/>
																												<span class="VisuallyHidden">${o} 추가하기</span> 
																												<span aria-hidden="true" class="notranslate">${o}</span>	
																												<input type="hidden" id="oqty${j }" name="qty" value="${o }"/>																
																											</c:when>
																																
																											<c:when test="${dto.type3 eq 'capsule' }">
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
																												<input type="hidden" id="cqty${j }" name="qty" value="${c }"/>										
																											</c:when>
																										</c:choose>
																										
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
																								<button id="inputQtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="updProduct(${dto.num},-1);">OK</button>
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
      														    <c:forEach var="qdto" items="${slistsMv }">      	
															      	<c:set var="mvtQty" value="${mvtQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 머신 LIST -->
															    <c:if test="${!empty slistsMv}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">버츄오 머신<span
																		class="MiniBasketItemCategory__item-count">(${mvtQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${slistsMv }">
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
																				<button id="qtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="qtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="QuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="qtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="delProduct(${dto.num});">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="type3${dto.num }" name="type3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-1"
																										class="PredefinedQuantityList__quantity-button" onclick="updProduct(${dto.num},${j });">
																										<c:set var="k" value="${k+1 }"/>										
																										<c:choose>
																											<c:when test="${dto.type3 eq 'other' }">
																												<c:set var="o" value="${o+1}"/>
																												<span class="VisuallyHidden">${o} 추가하기</span> 
																												<span aria-hidden="true" class="notranslate">${o}</span>	
																												<input type="hidden" id="oqty${j }" name="qty" value="${o }"/>																
																											</c:when>
																																
																											<c:when test="${dto.type3 eq 'capsule' }">
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
																												<input type="hidden" id="cqty${j }" name="qty" value="${c }"/>										
																											</c:when>
																										</c:choose>
																										
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
																								<button id="inputQtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="updProduct(${dto.num},-1);">OK</button>
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
      														    <c:forEach var="qdto" items="${slistsAc }">      	
															      	<c:set var="actQty" value="${actQty + qdto.quantity }"/>
															    </c:forEach>        
																	
															    <!-- 버츄오 커피 LIST -->
															    <c:if test="${!empty slistsAc}">
																<tr>
																	<th id="capsules_vertuo" scope="colgroup" colspan="3"
																		class="MiniBasketItemCategory">액세서리<span
																		class="MiniBasketItemCategory__item-count">(${actQty})</span></th>
																</tr>
																
																<c:forEach var="dto" items="${slistsAc }">
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
																				<button id="qtyBtn${dto.num }" class="AddToBagButton AddToBagButtonSmall"
																					data-focus-id="AddToBagButton__button-CremaComponentId-17"
																					type="button" onclick="qtyBtnDis(${dto.num});">
																					<span class="VisuallyHidden">고객님의 장바구니에
																						${dto.modelName1 } 가 ${dto.quantity } 개 있습니다. 주문 수량을
																						변경하시려면, 클릭하세요.</span>
																					<div aria-hidden="true"
																						class="AddToBagButtonSmall__quantity">${dto.quantity }</div>
																				</button>
																				<div class="QuantitySelector" id="QuantitySelector__wrapper${dto.num }" role="dialog" aria-labelledby="QuantitySelector__title" aria-describedby="QuantitySelector__description" style="display: none;">
																					<span class="VisuallyHidden" id="QuantitySelector__title">수량 선택 메뉴</span>
																					<span class="VisuallyHidden" id="QuantitySelector__description">아래 수량 중에서 골라주세요.</span>
																					<div class="QuantitySelector__container">
																					
																						<div id="qtyList${dto.num }" class="QuantitySelector__popin QuantitySelector__popin--left">
																							<ul id="qtyBtnList${dto.num }" class="PredefinedQuantityList">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-0" data-focus-id="PredefinedQuantityList__quantity-focusable" class="PredefinedQuantityList__quantity-button" onclick="delProduct(${dto.num});">
																										<span class="VisuallyHidden">quantityselector.a11y.removeproduct.label</span>
																										<span aria-hidden="true" class="notranslate">0</span>
																									</button>
																								</li>													
																								
																								<input type="hidden" id="type3${dto.num }" name="type3${dto.num }" value="${dto.type3 }"/>
																								<c:forEach var="j" begin="1" end="14">
																								<li class="PredefinedQuantityList__quantity">
																									<button id="ta-quantity-selector__predefined-1"
																										class="PredefinedQuantityList__quantity-button" onclick="updProduct(${dto.num},${j });">
																										<c:set var="k" value="${k+1 }"/>										
																										<c:choose>
																											<c:when test="${dto.type3 eq 'other' }">
																												<c:set var="o" value="${o+1}"/>
																												<span class="VisuallyHidden">${o} 추가하기</span> 
																												<span aria-hidden="true" class="notranslate">${o}</span>	
																												<input type="hidden" id="oqty${j }" name="qty" value="${o }"/>																
																											</c:when>
																																
																											<c:when test="${dto.type3 eq 'capsule' }">
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
																												<input type="hidden" id="cqty${j }" name="qty" value="${c }"/>										
																											</c:when>
																										</c:choose>
																										
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
																								<button id="inputQtyBtn${dto.num}" class="QuantitySelectorCustomField__button-ok" onclick="updProduct(${dto.num},-1);">OK</button>
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
																		<fmt:formatNumber value="${stotalPrice }" pattern="#,###" /></td>
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
        					<a href="/kr/ko/order/capsules" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13828104421406/vertuoicon-sprite-2-.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">커피 등록</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 커피 열기</button>
        					</span>
        				</li>
        				
        				<!-- -----------------머신 메뉴바----------------- -->
        				<li id="menubarDis-2" class="HeaderNavigationBarItem">
        					<a href="/kr/ko/order/machines" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13828104454174/machine-vertuo-next.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">머신 등록</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 머신 열기</button>
        					</span>
        				</li>
        				
        				<!-- -----------------액세서리 / 재활용백 메뉴바----------------- -->
        				<li id="menubarDis-3" class="HeaderNavigationBarItem">
        					<a href="/kr/ko/order/accessories" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068837918/accessory.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">액세서리 / 재활용백 등록</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 액세서리 / 재활용백 열기</button>
        					</span>
        				</li>
        				
        				<!-- -----------------지속가능성 메뉴바----------------- -->
        				<!-- <li id="menubarDis-4" class="HeaderNavigationBarItem">
        					<a href="/kr/ko/our-choices" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13649894244382/Icono-menu-ourchoice.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">지속가능성</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 지속가능성 열기</button>
        					</span>
        				</li> -->
        				
        				<!-- -----------------서비스 메뉴바----------------- -->
        				<!-- <li id="menubarDis-5" class="HeaderNavigationBarItem">
        					<a href="/kr/ko/services" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068903454/ourservices.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">서비스</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 서비스 열기</button>
        					</span>
        				</li> -->
        				
        				<!-- -----------------고객지원 메뉴바----------------- -->        				
        				<li id="menubarDis-6" class="HeaderNavigationBarItem">
        					<a href="javascript:doDisplay4();" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595069100062/contact-FAQ.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">FAQ 등록</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 고객지원 열기</button>
        					</span>
        				</li>
        				<!-- -----------------고객지원 메뉴바----------------- -->
        				<li id="menubarDis-6" class="HeaderNavigationBarItem">
        					<a href="javascript:doDisplay5();" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595069100062/contact-FAQ.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">공지사항 등록</div>
        						</div>
        					</a>
        					<span class="VisuallyHidden">
        						<button tabindex="-1" aria-expanded="false" type="button" class="Button HeaderNavigationBarItem__button">서브 메뉴 고객지원 열기</button>
        					</span>
        				</li>
        				
        				<!-- -----------------뉴스 메뉴바----------------- -->
        				<!-- <li class="HeaderNavigationBarItem">
        					<a href="/kr/ko/news" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13449722789918/NAV-highlight1.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">뉴스</div>
        						</div>
        					</a>
        				</li> -->
        				
        				<!-- -----------------매장 찾기 메뉴바----------------- -->
        				<!-- <li class="HeaderNavigationBarItem">
        					<a href="/kr/ko/storeLocator" class="AccessibleLink HeaderNavigationBarItem__anchor">
        						<div class="HeaderNavigationBarItem__element">
        							<span class="Sprite HeaderNavigationBarItem__icon" style="width: 30px; height: 20px; background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10595068968990/store-locator.png?impolicy=small&amp;imwidth=37&quot;); background-size: 30px 40px;"></span>
        							<div class="HeaderNavigationBarItem__title">매장 찾기</div>
        						</div>
        					</a>
        				</li> -->
        				
        				
        			</ul>
<!-- 탭기능 -->
<script type="text/javascript">

function doDisplay4(){
	
	var con = document.getElementById("faqcreated");
	var con1 = document.getElementById("noticecreated");
	if(con.style.display=='none'){
		con.style.display = 'block';
		con1.style.display = 'none'
	}else{
		con.style.display = 'block'
		con1.style.display = 'none'
	}
	
}

function doDisplay5(){
	
	var con = document.getElementById("noticecreated");
	var con1 = document.getElementById("faqcreated");
	if(con.style.display=='none'){
		con.style.display = 'block';
		con1.style.display = 'none'
	}else{
		con.style.display = 'block'
		con1.style.display = 'none'
	}
	
}

</script>
        		
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
<!-- 헤더끝 -->

<!--  -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<div id="faqcreated" style="display: block;">
	<iframe src="http://localhost:8080/nespresso/faqcreated.action" width="100%" height="680px;"></iframe>
</div>

<div id="noticecreated" style="display: none;">
	<iframe src="http://localhost:8080/nespresso/noticecreated.action" width="100%" height="680px;"></iframe>
</div>
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	

</body>
</html>