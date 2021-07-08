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

<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/Tutorial.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/app.css" />
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">

h2, h3, p {
	word-break: keep-all !important;
}


</style>


<script type="text/javascript">

var bDisplay = true;
function doDisplay(){
	
	var con = document.getElementById("aja1");
	var con1 = document.getElementById("aja0");
	if(con.style.display=='none'){
		con.style.display = 'block';
		con1.style.display = 'none'
	}else{
		con.style.display = 'none'
		con1.style.display = 'block'
	}
	
}

</script>

<script>
  $( function() {
    /* $( "#panel" ).tabs(); */
    
    $('.tablist li').on('click', function(e){

    	var idx = $(this).index();
    	
    	if( $(this).hasClass('v-link-active') ){
    		$(this).siblings('li').removeClass('v-link-active'); 
    		$('.v_tabPanel').hide();
        	$('.v_tabPanel').eq(idx).show();
    	} else {
    		$(this).addClass('v-link-active');
    		$(this).siblings('li').removeClass('v-link-active');
    		$('.v_tabPanel').hide();
        	$('.v_tabPanel').eq(idx).show();
    	}
    	
    	//$(this).parent().siblings().removeClass('v-link-active');
    	//$(this).addClass('v-link-active');
    	//$('.v_tabPanel').hide();
    	//$('.v_tabPanel').eq(idx).show();
    });
    

  } );
</script>

<script type="text/javascript">

$( function() {
    /* $( "#panel" ).tabs(); */
    
    $('.v_thumbs ul li').on('click', function(e){

    	var idx = $(this).index();
    	
    	if( $(this).hasClass('v_selected') ){
    		$(this).siblings('li').removeClass('v_selected'); 
    		$('.v_slide').hide();
        	$('.v_slide').eq(idx).show();
    	} else {
    		$(this).addClass('v_selected');
    		$(this).siblings('li').removeClass('v_selected');
    		$('.v_slide').hide();
        	$('.v_slide').eq(idx).show();
    	}

    });
    

  } );

</script>



<style type="text/css">
	#app {
		line-height: 1.4;
		font-size: 14px;
		letter-spacing: -0.5px;
		color: #000;
		word-break: keep-all;
	}
	
	#app .clearfix::before, #app #app .clearfix::after {
		flex-basis: 0;
		order: 1;
	}
	
	#app .table {
		overflow-x: auto;
	}
	
	#app .heading-1 {
		font-size: 30px;
	}
	
	#app .heading-2 {
		font-size: 25px;
	}
	
	#app a {
		text-decoration: none;
	}
	
	#app .container-flex {
		display: flex;
	}
	
	#app .container-flex .col {
		justify-content: center;
		flex: 1 1 auto;
	}
	
	#app .container-flex.col3>.col {
		width: 33.3%;
	}
	
	#app .container-flex.col4>.col {
		width: 25%;
	}
	
	#app .container-flex.col5>.col {
		width: 20%;
	}
	
	#app .wrapper {
		margin: 0 auto;
	}
	
	#app #kv {
		width: 100%;
		max-height: 300px;
		height: 300px;
		background-image:
			url('https://www.nespresso.com/ecom/medias/sys_master/public/11960474861598/kv.png');
		background-size: cover;
		background-position: 50% 0%;
		background-repeat: no-repeat;
		position: relative;
	}
	
	#app #kv h1 {
		line-height: 47px;
		color: #fff;
		display: table;
		position: relative;
		font-size: 45px;
		text-align: center;
		letter-spacing: 10px;
		width: 100%;
		height: 100%;
		font-weight: 600;
	}
	
	#app #navi {
		width: 100%;
		background: #000;
		position: relative;
	}
	
	#app #navi .wrapper .menu1depth {
		color: #fff;
		text-align: center;
	}
	
	#app #navi .wrapper .menu1depth .menu2depth {
		visibility: hidden;
		opacity: 0;
		padding: 10px 0;
		position: absolute;
		width: 100%;
		left: 0px;
	}
	
	#app #navi .wrapper .menu1depth .menu2depth svg {
		fill: #000;
		color: #000;
	}
	
	#app #navi .wrapper .menu1depth.active {
		background: #fff;
		font-weight: 600;
	}
	
	#app #navi .wrapper .menu1depth.active>a {
		color: #986f38;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth {
		visibility: visible;
		opacity: 1;
		position: absolute;
		background: #fff;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth a {
		display: block;
		color: #000;
		cursor: pointer;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth a svg {
		fill: #000;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth a b {
		display: block;
		color: #000;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth .active svg {
		fill: #986f38;
	}
	
	#app #navi .wrapper .menu1depth.active .menu2depth .active b {
		color: #986f38;
	}
	
	#app #navi.fixed {
		position: fixed;
		left: 0;
		right: 0;
		z-index: 11;
	}
	
	#app #navi.fixed .menu1depth>a {
		padding: 10px 0;
	}
	
	#app #navi.fixed .menu1depth>a.active {
		background-color: #fff;
		color: #986f38;
		font-weight: 600;
	}
	
	#app #navi.fixed .menu1depth>a .menu2depth {
		padding: 10px 0;
	}
	
	#app #contents {
		background: #fff;
	}
	
	#app #contents table {
		width: 100%;
	}
	
	#app #contents table thead {
		color: #fff;
		border-top: 2px solid #000;
		background: #b4b4b4;
	}
	
	#app #contents table thead th {
		border-right: 1px solid #c4c4c4;
	}
	
	#app #contents table th, #app #contents table td {
		font-size: 14px;
		padding: 10px 0;
		text-align: center;
		vertical-align: middle;
	}
	
	#app #contents>div {
		display: none;
		padding: 50px 0;
	}
	
	#app #contents>div .section-header .heading-1 {
		display: block;
		border-bottom: 1px solid #707070;
		padding: 0 0 5px;
		margin: 0 0 30px;
	}
	
	#app #contents>div .section-header .heading-2 {
		padding: 0 0 5px;
		margin: 30px 0;
		display: inline-block;
		border-bottom: 1px solid #707070;
	}
	
	#app #contents>div .section-header .heading-3 {
		padding: 0 0 5px;
		margin: 30px 0;
		display: inline-block;
		border-bottom: 1px solid #707070;
		font-size: 21px;
	}
	
	#app #contents>div ul>li {
		letter-spacing: -0.5px;
		position: relative;
	}
	
	#app #contents>div ul>li:before {
		position: absolute;
		content: '-';
		left: 0px;
	}
	
	#app #contents>div ul.depth1 {
		padding: 0px 0 0 20px;
	}
	
	#app #contents>div.active {
		display: block;
	}
	
	#app #contents .download #downloadList {
		margin: 50px auto;
		text-align: center;
		width: 100%;
	}
	
	#app #contents .download #downloadList th, #app #contents .download #downloadList td
		{
		text-align: center;
		vertical-align: middle;
		padding: 10px 0;
	}
	
	#app #contents .download #downloadList th:nth-child(1) {
		width: 20%;
		border-right: 1px solid #c4c4c4;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .download #downloadList th:nth-child(2) {
		width: 30%;
		border-right: 1px solid #c4c4c4;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .download #downloadList th:nth-child(3) {
		width: 30%;
		border-right: 1px solid #c4c4c4;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .download #downloadList th:nth-child(4) {
		width: 20%;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .download #downloadList td a {
		text-decoration: none;
		color: inherit;
	}
	
	#app #contents .download #downloadList td:nth-child(1), #app #contents .download #downloadList td:nth-child(2),
		#app #contents .download #downloadList td:nth-child(3), #app #contents .download #downloadList td:nth-child(4)
		{
		border-right: 1px solid #c4c4c4;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .download #downloadList td:last-child {
		border-right: 0;
	}
	
	#app #contents .clip #suspend {
		margin: 50px auto;
		text-align: center;
		width: 100%;
	}
	
	#app #contents .clip #suspend a {
		color: #000;
	}
	
	#app #contents .clip #suspend th {
		background: #b4b4b4;
	}
	
	#app #contents .clip #suspend th:nth-child(1) {
		width: 30%;
	}
	
	#app #contents .clip #suspend th:nth-child(2) {
		width: 50%;
	}
	
	#app #contents .clip #suspend th:nth-child(3) {
		width: 20%;
	}
	
	#app #contents .clip #suspend td {
		border-right: 1px solid #c4c4c4;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents .clip #suspend td:last-child {
		border-right: none;
		border-bottom: 1px solid #c4c4c4;
	}
	
	#app #contents #compare ul li:before {
		content: '';
	}
	
	@media ( min-width : 320px) and (max-width: 767px) {
		#app {
			font-size: 11px;
			font-size: 11px;
		}
		#app .heading-1 {
			font-size: 25px;
		}
		#app .heading-2 {
			font-size: 20px;
		}
		#app .table {
			overflow-x: auto;
		}
		#app #kv {
			height: 100px !important;
		}
		#app #kv h1 {
			padding: 0;
			display: block !important;
			padding: 20px 0 !important;
			display: block;
			text-align: center;
			font-size: 30px !important;
			letter-spacing: 1px !important;
		}
		#app #navi .menu1depth {
			/*  white-space: nowrap;*/
			overflow: hidden;
			padding: 10px 0;
		}
		#app #navi .menu1depth>a {
			white-space: nowrap;
			font-size: 12px;
			letter-spacing: -1px;
			word-break: keep-all;
			text-align: center;
			text-overflow: ellipsis;
			margin: 0 5px;
			overflow: hidden;
			width: 80%;
		}
		#app #navi .menu1depth>a:hover {
			overflow: visible;
		}
		#app #navi .menu1depth.active .menu2depth {
			top: 40px;
			display: block !important;
		}
		#app #navi .menu2depth {
			max-width: 767px;
			width: auto;
			padding: 30px 0;
			overflow-x: scroll;
			overflow-y: hidden;
			-webkit-overflow-scrolling: touch;
			justify-content: flex-start;
			align-items: center;
			top: 80px;
		}
		#app #navi .menu2depth a {
			flex: 1 0 auto;
			position: relative;
			align-content: center;
			max-width: 130px;
			width: 40%;
			text-align: center;
			align-items: center;
			position: relative;
			padding: 10px;
			color: #000;
			font-size: 11px;
		}
		#app #navi .menu2depth a svg {
			height: 20px;
			font-size: 11px;
			fill: #000;
		}
		#app #contents {
			padding-top: 50px;
		}
		#app #contents .wrapper {
			width: 80vw;
			max-width: 100%;
			margin: 0 auto;
			letter-spacing: 0.5px;
		}
		#app #contents .download #downloadList {
			width: 100%;
			overflow-x: auto;
		}
		#app #contents .clip #suspend {
			width: 100%;
		}
		#app #contents .table {
			font-size: 11px;
		}
		#app #contents .table thead th {
			color: #fff !important;
		}
	}

	@media ( min-width : 768px) and (max-width: 995px) {
		#app .wrapper {
			width: 996px;
		}
		#app .wrapper {
			width: 996px;
		}
		#app #navi .menu1depth {
			padding: 20px 0;
		}
		#app #navi .menu2depth {
			top: 80px;
		}
		#app #navi .menu2depth a {
			position: relative;
		}
		#app #navi .menu2depth svg {
			height: 60px;
		}
		#app #navi .menu2depth.active {
			position: relative;
		}
		#app #navi .menu2depth.active:after {
			position: absolute;
			width: 0;
			height: 0;
			border-left: 20px solid transparent;
			border-right: 20px solid transparent;
			border-top: 20px solid #986f38;
			content: '';
			bottom: 0px;
		}
		#app #navi.fixed {
			top: 80px;
		}
		#app #navi.fixed .menu1depth {
			padding: 10px 0;
		}
		#app #navi.fixed .menu1depth.active>a {
			padding: 10px 0;
		}
		#app #navi.fixed .menu1depth.active>a.active {
			background-color: #fff;
			color: #986f38;
			font-weight: 600;
		}
		#app #navi.fixed .menu1depth .menu2depth {
			top: 39px;
			padding: 5px 0;
			box-shadow: 0 4px 2px -2px #e9e9e9;
		}
		#app #kv .wrapper {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
		#app #contents {
			background: #fff;
			padding: 120px 0 0;
		}
		#app #contents>div {
			padding: 50px 0;
		}
	}
	
	@media ( min-width : 996px) {
		#app .wrapper {
			width: 996px;
		}
		#app #navi .menu1depth {
			padding: 20px 0;
		}
		#app #navi .menu2depth {
			top: 80px;
		}
		#app #navi .menu2depth a {
			position: relative;
		}
		#app #navi .menu2depth svg {
			height: 60px;
		}
		#app #navi .menu2depth.active {
			position: relative;
		}
		#app #navi .menu2depth.active:after {
			position: absolute;
			width: 0;
			height: 0;
			border-left: 20px solid transparent;
			border-right: 20px solid transparent;
			border-top: 20px solid #986f38;
			content: '';
			bottom: 0px;
		}
		#app #navi.fixed {
			top: 80px;
		}
		#app #navi.fixed .menu1depth {
			padding: 10px 0;
		}
		#app #navi.fixed .menu1depth.active>a {
			padding: 10px 0;
		}
		#app #navi.fixed .menu1depth.active>a.active {
			background-color: #fff;
			color: #986f38;
			font-weight: 600;
		}
		#app #navi.fixed .menu1depth .menu2depth {
			top: 39px;
			padding: 5px 0;
			box-shadow: 0 4px 2px -2px #e9e9e9;
		}
		#app #kv .wrapper {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
		#app #contents {
			background: #fff;
			padding: 120px 0 0;
		}
		#app #contents>div {
			padding: 50px 0;
		}
	}
</style>

</head>
<body>
	<main id="main"> <span id="a11y-main-area"
		class="visually-hidden" tabindex="-1">메인 컨텐츠를 보고 계십니다.</span>
	<div id="block-8812318479861" class="free-html" data-label="">
		<div id="app">
			<div id="contents" style="padding: 0 0 0;">
				<div id="machine" class="machine active" style="padding: 0;">
					<div class="vue" style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/Prodigio/img/bg.jpg&quot;);">
							<div id="aja1" style="display: block;">
							<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								<section class="vue_headerMachine">
									<div class="v_sectionRestrict">
										<div class="v_sectionContent">
											<h1 tabindex="0"> <span>머신 사용 안내</span> 프로디지오 </h1>
											<a class="v_link v_iconLeft v-link-active"
												href="http://localhost:8080/nespresso/mguide.action"target="_parent"> <span>다른 머신 선택하기</span>
											</a>
										</div>
									</div>
								</section>
								<section class="vue_mainMachine">
									<div class="v_sectionRestrict">
										<div class="v_sectionContent">
											<div class="v_row">
												<aside class="v_col30">
													<div class="v_carousel">
														<h3 class="v_visually_hidden">머신 종류 캐로젤</h3>
														<div class="v_thumbs">
															<ul>
																<li class="v_selected" key="[object Object]">
																	<button aria-expanded="true">
																		<span class="v_visually_hidden">프로디지오 C70 타이탄</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10299056062494/M-Prodigio-Nespresso-Ttitan-W-200x200.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10299056062494/M-Prodigio-Nespresso-Ttitan-W-200x200.png&quot;);"></div>
																	</button>
																</li>
																<li key="[object Object]">
																	<button aria-expanded="false">
																		<span class="v_visually_hidden">프로디지오 앤 밀크, C75 타이탄</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10299057799198/M-Prodigio-Milk-Nespresso-Titan-W-200x200.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10299057799198/M-Prodigio-Milk-Nespresso-Titan-W-200x200.png&quot;);"></div>
																	</button>
																</li>
															</ul>
														</div>
														<div class="v_slide">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 프로디지오 C70 타이탄
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10299056062494/M-Prodigio-Nespresso-Ttitan-W-200x200.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/10299056062494/M-Prodigio-Nespresso-Ttitan-W-200x200.png"
																lazy="loaded">
														</div>
														<div class="v_slide" style="display: none;">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 프로디지오 앤 밀크, C75 타이탄
																C30 화이트
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10299057799198/M-Prodigio-Milk-Nespresso-Titan-W-200x200.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/10299057799198/M-Prodigio-Milk-Nespresso-Titan-W-200x200.png"
																lazy="loaded">
														</div>
													</div>
													<div class="v_manuals"> <h3>사용 안내서</h3> <ul> <li key="[object Object]"> <a target="_blank" class="v_link" href="https://www.nespresso.com/shared_res/manuals/prodigio/www_PRODIGIO_C_NESPRESSO_Z3(EN_CN_TW_KO_HK).pdf" key="[object Object]"> <strong>프로디지오</strong> <small>6.03MB</small> <em>국문</em> <span class="v_visually_hidden">PDF 다운로드</span> </a> </li><li key="[object Object]"> <a target="_blank" class="v_link" href="https://www.nespresso.com/shared_res/manuals/prodigio/www_PRODIGIO_C_NESPRESSO_Z3(EN_CN_TW_KO_HK).pdf" key="[object Object]"> <strong>프로디지오 앤 밀크</strong> <small>6.03MB</small> <em>국문</em> <span class="v_visually_hidden">PDF 다운로드</span> </a> </li> </ul> </div>
												</aside>

												<div class="v_col70" style="width: 68%!important;">
													<div class="v_tabs">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<h3>온라인 사용 안내서</h3>
															<span>탭에서 원하는 옵션을 선택하여, 아래의 컨텐츠를 확인해보세요</span>
														</div>
														<ul class="tablist">
															<li role="presentation" key="[object Object]"
																class="v-link-active"><a role="tab"
																id="tab_instructions" aria-selected="true"
																>사용법 안내</a>
															</li>
															<li role="presentation" key="[object Object]"><a
																role="tab" id="tab_troubleshooting"
																aria-selected="false"
																>해결법</a></li>
															<li role="presentation" key="[object Object]"><a
																role="tab" id="tab_overview" aria-selected="false"
																>개요</a></li>
														</ul>
													</div>
													<!-- 여기부터 사용법안내!! -->
													<div class="v_tabPanel v_tablelist v_instructions"
														id="panel_instructions"
														arial-labelledby="tab_instructions" role="tabpanel">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>사용법 안내 &amp; 동영상</h4>
														</div>
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>처음 사용시 또는 장기간 미사용 후 사용시</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/first-use/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/first-use/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png&quot;);"></div><div class="v_content"> <h5>에너지 절약 모드</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/energy-saving-concept/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>머신 사용 방법</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/coffee-preparation/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/coffee-preparation/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>에어로치노 사용법</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/milk-froth-preparation/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/milk-froth-preparation/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VOLUME-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VOLUME-B.png&quot;);"></div><div class="v_content"> <h5>물의 양 설정하기</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/programming-water-volume/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/programming-water-volume/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>장기간 미사용 및 동파 방지 또는 수리 보내기 전에 머신에 남아있는 물 비우기</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/EmptyingTheSystem/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png&quot;);"></div><div class="v_content"> <h5>머신 초기화 방법</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/reset-to-factory/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스케일링</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/descaling/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/descaling/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div><div class="v_content"> <h5>머신 세척 방법</h5> <p> <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/cleaning/guide"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Prodigio/instructions/cleaning/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div> </div>
													</div>
													<!-- 여기부터해결법 -->
													<div class="v_tabPanel v_tablelist v_troubleshooting"
														id="panel_troubleshooting" arial-labelledby="tab_troubleshooting" role="tabpanel"
														style="display: none">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>해결법</h4>
														</div>
														<!-- DB해결법 -->
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>패어링을 할 수 없습니다</h5> <div class="v_wysiwyg"><ul><li>스마트폰이나 태블릿의 블루투스 기능이 활성화되었는지 확인합니다.</li>
														<li>스마트폰이나 태블릿과 머신의 호환성을 확인합니다</li>
														<li>패어링하는 동안 스마트폰이나 태블릿을 머신 근처에 위치할 수 있도록 하십시오.</li>
														<li>패어링하는 동안 머신 근처의 전자레인지를 켜지 마십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>네스프레소 앱에서 패어링을 취소하려면:</h5> <div class="v_wysiwyg"><ul><li>네스프레소 앱에서 "Name", "Machine Status" 를 클릭 후 "Unpair this machine"을 클릭합니다.</li><li>"unpair this device" 를 클릭하여 패어링 취소를 확인합니다.</li><li>주: 이 동작은 머신의 블루투스 기능을 비활성화 시킵니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>머신에서 패어링을 취소하려면:</h5> <div class="v_wysiwyg"><ul><li>리스트레토 버튼과 에스프레소 버튼을 동시에 누른 상태에서 전원 플러그를 뺍니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>머신에서 머신의 블루투스 기능을 다시 활성화시키려면:</h5> <div class="v_wysiwyg"><ul><li>"공장 출하 설정 값으로 초기화 하기" 섹션을 참조하여 공장 출하 설정값으로 초기화 합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>커피 버튼들에 불이 들어오지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>머신이 자동으로 꺼졌습니다. "에너지 절약 모드" 섹션을 참조하십시오.</li><li>전원 코드는 잘 꽂혀 있는지, 사용 전압은 맞는지, 멀티탭 전원은 커져있는지 확인합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>커피 또는 물이 나오지 않거나, 커피 추출이 평소와 같지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>물통을 점검하고, 비었으면 음용수로 채워줍니다.</li><li>필요하면 디스케일링을 진행합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-WARMING-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>커피가 충분히 뜨겁지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>컵을 미리 데워놓습니다.</li><li>필요하면 디스케일링을 진행합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/BUTTON-BREWING-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>슬라이더가 완전히 닫히지 않거나 머신이 커피 추출을 시작하지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>캡슐 컨테이너를 비웁니다.</li><li>캡슐이 내부에 끼어 있지는 않은지 확인 하십시오. (주의 : 손가락을 머신 내부로 넣지 마십시오)</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>누수 (머신 바닥에 물이 흥건합니다)</h5> <div class="v_wysiwyg"><ul><li>누수 (머신 바닥에 물이 흥건합니다)</li><li>문제가 계속되는 경우, 네스프레소 클럽으로 연락 주십시오..</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>유지보수 안내표시등이 켜졌습니다.</h5> <div class="v_wysiwyg"><ul><li>캡슐 컨테이너를 비우고, 머신 내부에 캡슐이 걸려있지는 않은지 확인합니다.</li><li>물통을 확인하고, 비었으면 음용수를 채운 후 커피를 추출합니다.</li><li>문제가 계속되는 경우, 네스프레소 클럽으로 연락 주십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>네스프레소 안내표시등이 켜졌습니다.</h5> <div class="v_wysiwyg"><ul><li>네스프레소 캡슐 재고가 모두 소진되었습니다. 앱이나 네스프레소 웹사이트에서 캡슐을 주문하실 수 있습니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>3개의 커피 버튼들이 빠르게 깜빡입니다.</h5> <div class="v_wysiwyg"><ul><li>디스케일링 모드를 종료하려면, 짧은 비프 음이 들릴 때까지 3 개의 커피 버튼들을 약 6초간 동시에 누르고 있습니다.</li><li>문제가 계속되는 경우, 네스프레소 클럽으로 연락 주시거나, 네스프레소 앱에서 추가적인 정보를 확인하십시오</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>아무 커피 버튼을 눌러도 물이나 커피 흐름이 멈추지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>슬라이더를 머신의 뒤쪽으로 살며시 움직여 흐름을 멈춥니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>커피나 물이 추출구가 아닌 드립 트레이로 흐릅니다. (캡슐을 넣었는데도 불구하고)</h5> <div class="v_wysiwyg"><ul><li> 슬라이더를 당겨 확실히 닫혔는지 확인하십시오. </li><li> 문제가 계속되는 경우, 네스프레소 클럽으로 연락 주십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>머신이 꺼집니다.</h5> <div class="v_wysiwyg"><ul><li>에너지 절약을 위해 9분간 사용하지 않을 경우 자동으로 꺼집니다. "에너지 절약 모드" 를 참조하십시오.</li><li>머신을 켜려면, 아무 커피 버튼을 누르거나, 슬라이더를 엽니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>에어로치노가 작동하지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>우유 거품기를 베이스 연결부에 잘 장착했는지 확인하십시오. 휘스크가 우유 거품기에 잘 장착되어 있는지 확인하십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>우유 거품의 품질이 좋지 않거나 우유가 탄 것 같습니다.</h5> <div class="v_wysiwyg"><ul><li>최적의 우유 거품을 얻으시려면, 냉장된 차가운 (약 4~6° C) 생우유 또는 저지방 우유를 사용하십시오. 위생 상태를 확실하게 하시려면, 냉장 보관되고 새로 개봉한 멸균 우유 (저온 살균된)만 사용하십시오. 얼린 우유를 사용하지 마십시오.</li><li> 우유 거품기 내부와 휘스크가 청결한지 확인하십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>4개의 버튼들이 빠르게 깜빡입니다 (우유 거품기 오류).</h5> <div class="v_wysiwyg"><ul><li>우유 거품기가 과열되었습니다. 거품기를 찬 물에 담궈 내부를 잘 세척합니다.</li><li>휘스크가 잘 장착되어 있는지 확인하십시오.</li><li> 우유가 충분하지 않습니다. 우유를 두 개의 “Max” 표시 중의 하나까지 채웁니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loading" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;);"></div><div class="v_content"> <h5>우유가 흘러 넘칩니다.</h5> <div class="v_wysiwyg"><ul><li>용도에 따른 표시에 맞는 양의 우유를 사용했는지 확인하십시오.</li></ul></div> </div> </div> </div> </div>
														<!-- DB해결법끝 -->
													</div>
													<!-- 여기부터 개요 -->
													<div class="v_tabPanel v_tablelist v_overview"
														id="panel_overview" arial-labelledby="tab_overview"
														role="tabpanel" style="display: none">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>개요</h4>
														</div>
														<!-- DB개요 -->
														<div class="v_tabPanelContainer"> <h4>스펙</h4> <div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><strong>무게</strong><span>3 kg</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div><div class="v_content"> <span><strong>물 탱크 용량</strong><span>0.8 리터</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png&quot;);"></div><div class="v_content"> <span><strong>사이즈 (가로x세로x높이)</strong><span>11.9 x 25.3 x 37.4 cm</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png&quot;);"></div><div class="v_content"> <span><span>압력 19 bar</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png&quot;);"></div><div class="v_content"> <span><span>9분간 미사용 시 자동 꺼짐</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><span>보증기간 2 년</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/USED-CAPSULES-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/USED-CAPSULES-CONTAINER-B.png&quot;);"></div><div class="v_content"> <span><strong>캡슐 수거함 용량</strong><span>10</span></span> </div> </div> </div> </div>
													</div>
													<!-- 사용법,해결법,개요끝 -->
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
							</div>
<!-- 						<section class="vue_footer"> <div class="v_sectionRestrict"> <div class="v_sectionContent"> <h2 class="v_visually_hidden">네스프레소 어시스턴스 서비스</h2> <div class="v_footerContent v_tableRow"> <div class="v_col50"> <div class="v_col50"> <h3>네스프레소 어시스턴스</h3> <div class="v_wysiwyg"><p>네스프레소 클럽 080-734-1111으로 전화 해주세요. 전문가의 신속한 기술 진단과 함께 필요한 솔루션을 받으실 수 있습니다.
</p>p><a href="https://www.nespresso.com/kr/ko/flagship"> <span><u>네스프레소 플래그십 부티크</u></span></a>에 방문하시면, '머신 바로 점검 서비스'를 통해 보다 정확하고 상세한 안내를 받으실 수 있습니다.</p</div> </div><div class="v_col50"> <ol class="v_steps"> <li key="[object Object]"> <div class="v_wysiwyg">원하시는 주소로 커피 머신 수거가 가능합니다</div> </li><li key="[object Object]"> <div class="v_wysiwyg">수리 기간 동안 무상 커피 머신 대여 서비스를 제공합니다</div> </li><li key="[object Object]"> <div class="v_wysiwyg">수리된 머신의 배송을 초기에 픽업하였던 주소로 다시 배송해드립니다</div> </li> </ol> </div> </div><div class="v_col25"> <h3>머신 등록</h3> <div class="v_wysiwyg"><p>머신 구매 후 네스프레소 클럽에 처음 연락을 주실 때, 머신의 일련번호를 저희에게 알려주십시오. 주문 및 머신 수리 서비스에 관한 혜택은 물론 사용 주기에 따른 맞춤 서비스를 제공합니다.
</p></div> <a class="v_link v_iconLeft" href="https://www.nespresso.com/mosaic/kr/ko/registration?execution=e1s1"> <i class="fas fa-long-arrow-alt-right"></i> <span>구입하신 네스프레소 머신을 등록해주세요</span> </a> </div> </div> </div> </div> </section> -->
					</div>
				</div>
			</div>
		</div>
		<link rel="preload"
			href="https://www.nespresso.com/shared_res/agility/define/css/Tutorial.css"
			as="style">
		<link
			href="https://www.nespresso.com/shared_res/agility/define/css/Tutorial.css"
			rel="stylesheet">
		<link
			href="https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/css/app.css"
			rel="stylesheet">
		<script type="text/javascript"
			src=" https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/js/manifest.js"></script>
		<script type="text/javascript"
			src="https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/js/vendor.js"></script>
		<script type="text/javascript"
			src="https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/js/app.js"></script>


<script>
    var navi = $("#navi");
    var sticky = $(navi).offset().top;
    
    // navigation
    $('.menu2depth a').click(function(){
      $('.menu2depth a.active').removeClass('active');
      $(this).addClass('active');
      var contents = $(this).attr('id');
      $('#contents > div').removeClass('active');
      console.log($('#'+contents));
      $('.'+contents).addClass('active');
      window.scrollTo(0, sticky-80);
    })
    
    function resizeMenu1(){
      var menu1depth=[], getText = $('.menu1depth > a');
      getText.map(function(ele){
        if(ele > 1) {
          $(this).text(($(this).text().substring(0,6)));
        } else {
          $(this).text(($(this).text().substring(0,8)));
        }
      })
    }
    
    $(document).ready(function(){
  var url = window.location.href;
  var urlAux = url.split('?');
  var page = urlAux[1].split('&')[0];
  if(urlAux.length == 2){
  $('.menu2depth a.active').removeClass('active');
  $('#contents > div').removeClass('active');
  $('#'+page).addClass('active');
  $('.'+page).addClass('active');
      }

    })
        // adjust svg position for vertical
        if(window.innerWidth>767) {
      $('.menu2depth a > svg').map(function(){ var temp = (60 - $(this).height())/2+'px';$(this).css({'margin-top':temp,'margin-bottom':temp});})
    } else {
      resizeMenu1();
    }
    window.onscroll = function() {if($(window).width()>767){fixed();}}
    var navi = $("#navi");
    var sticky = $(navi).offset().top + 94;
    function fixed() {
      if (window.pageYOffset >= sticky) {
        $(navi).addClass("fixed");
      } else {
        $(navi).removeClass("fixed");
      }
    }
    
    $.ajax({
       url:'https://www.nespresso.com/kr/ko/choose-your-system/',
       type:'GET',
       success: function(data){
           $('.compare').html($(data).find('main').html());
       }
    });


  
    $(window).resize(function(){
    if($(window).width()<768){
      resizeMenu1();
    } else {
      $('.menu2depth a > svg').map(function(){ var temp = (60 - $(this).height())/2+'px';$(this).css({'margin-top':temp,'margin-bottom':temp});})
    }})
    



    $('#download td svg').map(function(){
         $(this).click(function(){
     var tagging = "technical_support_user_manual_"+$(this).parents('td').prev().text();
     gtmDataObject.push({
		  event: 'customEvent',
		  eventRaisedBy: 'FreeHTML',
		  eventCategory: 'User Engagement',
		  eventAction: 'Click',
		  eventLabel: tagging,
		  nonInteraction: 1
		});
    })
   })
       
    $('#clip td svg').map(function(){
     $(this).click(function(){
     var tagging = "technical_support_troubleshooting-"+$(this).parents('td').prev().text();
     gtmDataObject.push({
		  event: 'customEvent',
		  eventRaisedBy: 'FreeHTML',
		  eventCategory: 'User Engagement',
		  eventAction: 'Click',
		  eventLabel: tagging,
		  nonInteraction: 1
		});
    })
   })
    </script>
	</div>

	</main>
</body>
</html>