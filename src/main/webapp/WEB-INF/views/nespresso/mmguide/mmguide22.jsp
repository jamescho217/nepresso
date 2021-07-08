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
					<div class="vue" style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/Barista/img/bg.jpg&quot;);">
							<div id="aja1" style="display: block;">
							<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								<section class="vue_headerMachine">
									<div class="v_sectionRestrict">
										<div class="v_sectionContent">
											<h1 tabindex="0"> <span>머신 사용 안내</span> 바리스타 </h1>
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
																		<span class="v_visually_hidden">바리스타 레시피 메이커</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10649931153438.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10649931153438.png&quot;);"></div>
																	</button>
																</li>
																
															</ul>
														</div>
														<div class="v_slide">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 바리스타 레시피 메이커
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10649931153438.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/10649931153438.png"
																lazy="loaded">
														</div>
														
													</div>
													<div class="v_manuals"> <h3>사용 안내서</h3> <ul> <li key="[object Object]"> <a target="_blank" class="v_link" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf" key="[object Object]"> <strong>바리스타</strong> <small>918.54KB</small> <em>한국어</em> <span class="v_visually_hidden">PDF 다운로드</span> </a> </li> </ul> </div>
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
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/FEATURE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/FEATURE-B.png&quot;);"></div><div class="v_content"> <h5>페어링하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/pairing/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/first-use/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>초콜릿 레시피 준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/chocolate-recipe/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>따뜻한 레시피 준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/hot-recipe/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>아이스 레시피 준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/cold-recipe/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div><div class="v_content"> <h5>세척 방법</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/shared_res/manuals/barista/UM_BARISTA_Z3_PROD_WEB_2018_11_15(EN-KR).pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Barista/instructions/cleaning-the-aeroccino/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div> </div>
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
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>페어링이 되지 않습니다</h5> <div class="v_wysiwyg"><ul><li>단말기의 블루투스 기능이 활성화 되어 있는지 확인 합니다.</li><li>사용하시는 단말기와 머신이 호환되는지 확인 합니다.</li><li>페어링 하는 동안 연결하고자 하는 단말기와 머신이 떨어져 있지 않도록 확인 합니다. (최대 20cm)</li><li>페어링을 하는 동안 주변에서 전자레인지를 사용하지 않습니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DIGITAL-TOUCH-SCREEN-B.png&quot;);"></div><div class="v_content"> <h5>만약 앱을 통해 페어링을 해지 하시려면</h5> <div class="v_wysiwyg"><ul><li>앱에 접속하여 “Name”으로 들어간 후, Machine Status를 선택 한후 ‘Unpair this
machine’을 선택하여 해지 합니다.</li><li>참고: 페어링을 해지 하면 기존에 입력 했던 설정값이 모두 공장 출하 상태의 초기값으로 설정 됩니다.</li></ul>
</div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>불빛이 들어 오지 않고 메시지가 나오지 않음</h5> <div class="v_wysiwyg"><ul><li>머신에 전원이 연결되어 있는지 확인 합니다, 아무 버튼이나 누릅니다. 반응이 없으면 네스프레소 클럽으로 연락 주십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>우유 거품의 품질이 좋지 않음</h5> <div class="v_wysiwyg"><ul><li>최적의 우유 거품을 만들기 위해서는 차가운 우유 혹은 냉장 상태의(약 4-6° C)의 저지방우유를 사용 하십시오. 위생적인 관리를 위해 고온으로 살균 처리된 우유를 냉장 보관하여 사용하시고, 개봉한지 오래된 우유는 사용하지 마십시오. 냉동되었던 우유는 거품의 품질을 보장할 수 없습니다.</li><li>바리스타 머신과 휘스크는 항상 깨끗하게 관리 합니다.</li><li>성분이 추가된 우유나 분유 혹은 가향된 우유의 사용을 추천 하지 않습니다.</li><li>최적의 조리를 위해 용기는 매우 차가워야 합니다. (뜨거운 음료 조리 후에는 25°C 전후로 식히십시오).</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div><div class="v_content"> <h5>우유 넘침</h5> <div class="v_wysiwyg"><ul><li>거품기 저그가 전원 베이스에 제대로 장착되어 있는지 확인 합니다.</li> <li>뚜껑이 제대로 장착되어 있는지 확인 합니다.</li><li>우유의 용량이 최대와 최소 용량 사이인지 확인 합니다.</li></ul>
</div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: “Call <strong class="v_brand" term="nespresso">Nespresso</strong>” 혹은 에러코드 (E01 to E34)</h5> <div class="v_wysiwyg"><ul><li>머신의 점검이 필요 합니다. 네스프레소 클럽으로 연락하시고 에러 코드를 알려주시기 바랍니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Replace Jug"</h5> <div class="v_wysiwyg"><ul><li>거품기 저그가 제대로 장착 되어 있는지 확인 합니다. 만약 그렇지 않다면 다시 제대로장착 하십시오. </li><li>휘스크가 제대로 장착 되어 있는지 확인 합니다. 만약 그렇지 않다면 다시 제대로 장착 하십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Add milk"</h5> <div class="v_wysiwyg"><ul><li>거품기 저그 안에 우유가 없거나 양이 부족한 상태 입니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Restart recipe"</h5> <div class="v_wysiwyg"><ul><li>레시피를 다시 시작합니다. 문제가 지속되면 플러그를 뽑고 3분간 기다린 후 다시 플러그를 연결합니다. 여전히 문제가 지속되면 <strong class="v_brand" term="nespresso">Nespresso</strong>에 문의하십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Empty and restart"</h5> <div class="v_wysiwyg"><ul><li>휘스크나 모터가 블록된 상태 이거나 음료가 너무 걸쭉한 상태 입니다. 비우고 다시 장착한 후 작동 하십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Replug"</h5> <div class="v_wysiwyg"><ul><li>전원 플러그를 다시 꽂아 주십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Empty and replace whisk"</h5> <div class="v_wysiwyg"><ul><li>휘스크나 모터가 블록된 상태 이거나 음료가 너무 걸쭉한 상태 입니다. 비우고 다시 장착한 후 작동 하십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스플레이 문구: "Cooling down. Please wait."</h5> <div class="v_wysiwyg"><ul><li>머신이 과열되었습니다. 잠시 기다리십시오. 냉각이 완료 되면 다시 시작합니다.</li></ul></div> </div> </div> </div> </div>
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
														<div class="v_tabPanelContainer"> <h4>스펙</h4> <div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><strong>무게</strong><span>~1.7 Kg</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png&quot;);"></div><div class="v_content"> <span><strong>크기 (가로x세로x높이)</strong><span>15.4 X 20.9 X 12.5 cm</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png&quot;);"></div><div class="v_content"> <span><span>3분 후</span>
<strong>자동 절전</strong></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><strong>품질 보증 기간</strong><span>2년</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png&quot;);"></div><div class="v_content"> <span><strong>전압</strong><span>220V 60Hz 480W</span></span> </div> </div> </div> </div>
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