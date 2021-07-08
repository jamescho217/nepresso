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
					<div class="vue" style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/machineAssistance/machineAssistance/Creatista/img/bg.jpg&quot;);">
							<div id="aja1" style="display: block;">
							<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								<section class="vue_headerMachine">
									<div class="v_sectionRestrict">
										<div class="v_sectionContent">
											<h1 tabindex="0"> <span>머신 사용 안내</span> 크리아티스타 플러스 </h1>
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
																		<span class="v_visually_hidden">크리아티스타 플러스 J520 스테인리스 스틸</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/13902839709726.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/13902839709726.png&quot;);"></div>
																	</button>
																</li>
																
															</ul>
														</div>
														<div class="v_slide">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 크리아티스타 플러스 J520 스테인리스 스틸
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/13902839709726.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/13902839709726.png"
																lazy="loaded">
														</div>
														
													</div>
													<div class="v_manuals"> <h3>사용 안내서</h3> <ul> <li key="[object Object]"> <a target="_blank" class="v_link" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf" key="[object Object]"> <strong>크리아티스타 플러스</strong> <small>10.2MB</small> <em>한국어</em> <span class="v_visually_hidden">PDF 다운로드</span> </a> </li> </ul> </div>
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
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>처음 사용 하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/first-use/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>메뉴 탐색</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>커피 추출하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/regular-coffee-preparation/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>우유 레시피 만들기- 한잔 준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/milk-coffee-preparation-single-cup/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>우유 레시피 만들기- 두잔 준비하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/milk-coffee-preparation-single-cup/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>라떼 마키아토 레시피 만들기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/latte-macchiato-preparation/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>커피 설정 조정하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CAPPUCCINO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CAPPUCCINO-B.png&quot;);"></div><div class="v_content"> <h5>우유 레시피 설정 조정하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png&quot;);"></div><div class="v_content"> <h5>공장 출하 설정값으로 초기화 하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>장시간 미사용 및 동파 방지를 위해 머신에 남아 있는 물 비우기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png&quot;);"></div><div class="v_content"> <h5>절전 모드</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div><div class="v_content"> <h5>머신 청소하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/Cleaning/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VELVETY-MILK-FROTH-B.png&quot;);"></div><div class="v_content"> <h5>스팀파이프 청소하기</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/steam-wand-cleaning-procedure/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>디스케일링</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a> 
														<!-- <a class="v_link v_iconLeft" href="#!/Creatista/instructions/descaling/video"> <i class="fas fa-long-arrow-alt-right"></i> <span>동영상</span> </a> --> </p> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div><div class="v_content"> <h5>물 경도 측정</h5> <p> <a class="v_link v_iconLeft" href="https://www.nespresso.com/ecom/medias/sys_master/public/10403736518686/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"> <i class="fas fa-long-arrow-alt-right"></i> <span>가이드</span> </a>  </p> </div> </div> </div> </div>
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
														<div class="v_tabPanelContainer"> <div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>버튼에 불이 들어오지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>머신이 자동으로 꺼집니다 절전 모드 부분을 참조하세요.</li><li>시작/취소 버튼을 누르거나 선택 다이얼을 돌려 머신의 전원을 켭니다.</li><li>전원 플러그, 전압, 퓨즈를 확인합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div><div class="v_content"> <h5>스팀이나 뜨거운 물이 나오지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>시작/취소 버튼을 누르거나 선택 다이얼을 돌려 머신을 켭니다.</li><li>전원 플러그, 전압, 퓨즈를 확인합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div><div class="v_content"> <h5>커피나 물이 나오지 않습니다. 커피 흐림이 이상합니다.</h5> <div class="v_wysiwyg"><ul><li>물통이 제대로 장착 되어 있는지 확인 합니다. 비어 있다면
음용수를 채웁니다.</li><li>필요시 머신을 디스케일링을 합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-WARMING-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-WARMING-B.png&quot;);"></div><div class="v_content"> <h5>커피가 충분히 뜨겁지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>컵을 미리 데워 놓습니다.</li><li>필요시 머신을 디스케일링을 합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div><div class="v_content"> <h5>손잡이가 꽉 닫히지 않습니다.</h5> <div class="v_wysiwyg"><ul><li>캡슐 컨테이너를 확인하고 비웁니다.</li><li>머신 안에 끼어 있는 캡슐이 있는지 확인 합니다 머신 안에 손가락을
넣지 마세요</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>누수 (머신 아래에 물이 샙니다)</h5> <div class="v_wysiwyg"><ul><li>드립 트레이를 비웁니다.</li><li>드립 트레이가 정확히 장착되어 있는지 확인합니다.</li><li>문제가 계속 되는 경우, 네스프레소 클럽으로 연락 주십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>커피가 추출되지 않고 물이 캡슐 컨테이너로 샙니다</h5> <div class="v_wysiwyg"><ul><li>손잡이를 꽉 닫았는지 확인합니다.</li><li>캡슐 컨테이너를 비우고 머신 안에 끼어 있는 캡슐이 있는지
확인합니다. 머신 안에 손가락을 넣지 마세요 문제가 계속 되는
경우, 네스프레소 클럽 (080-734-1111 / 24시간 365일 수신자 부담)으로 연락 주십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>컬러 디스플레이 화면이 어두워 읽기 어렵습니다.</h5> <div class="v_wysiwyg"><ul><li>머신을 2분간 사용하지 않으면 화면이 자동으로 어두워 집니다.</li><li>절전 모드 부분을 참조하세요.</li><li>시작/취소 버튼을 누르거나 선택 다이얼을 돌려 머신의 전원을 켭니다.</li><li>화면 밝기 설정을 조정합니다 설정 메뉴를 탐색합니다 화면 밝기를 선택합니다. 다이얼을 돌려 밝음을 선택합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>버튼들이 깜빡입니다.</h5> <div class="v_wysiwyg"><ul><li>화면에 나타난 가이드를 따라하십시오.</li><li>물통을 확인하세요 만약 비어 있으면 신선한 음용수를 채운 후
커피를 추출합니다.</li><li>스팀 추출구가 막혀 있는지 확인 합니다 물통 아래에 보관되어 있는 핀 클리닝 도구를 사용하여 막혀 있는 부분을 뚫습니다.</li><li>필요시 머신을 디스케일링을 합니다.</li><li>필요시 스팀파이프 청소를 진행합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>물통을 보충하세요 경고가 화면에 나타납니다 (물통은 채워져 있는 상태)</h5> <div class="v_wysiwyg"><ul><li>물통이 제대로 장착 되어 있는지 확인 합니다.</li><li>문제가 계속 되는 경우, 네스프레소 클럽(080-734-1111 / 24시간 365일 수신자 부담)으로 연락 주십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>머신 에러 메시지가 화면에 나타납니다</h5> <div class="v_wysiwyg"><ul><li>머신에 문제가 발생하였습니다.</li><li>네스프레소 클럽(080-734-1111 / 24시간 365일 수신자 부담)으로 연락 주십시오</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div><div class="v_content"> <h5>머신의 전원은 켜져 있으나 작동이 중단 됩니다</h5> <div class="v_wysiwyg"><ul><li>시작/취소 버튼을 누른 상태로 머신의 전원을 끕니다.</li><li>60분을 기다린 후, 시작/취소 버튼을 누르거나 선택 다이얼을
돌려 머신의 전원을 켭니다.</li><li>문제가 계속 되는 경우, 네스프레소 클럽(080-734-1111 / 24시간 365일 수신자 부담)으로 연락 주십시오.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div><div class="v_content"> <h5>머신이 자동으로 꺼집니다</h5> <div class="v_wysiwyg"><ul><li>절전을 위해 10분간 사용이 없으면 전원이 꺼집니다</li><li>시작/취소 버튼을 누르거나 선택 다이얼을 돌려 머신의 전원을
켭니다</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>우유 스팀이 작동하지 않습니다</h5> <div class="v_wysiwyg"><ul><li>물통이 제대로 장착되어 있는지 확인합니다. 만약 비어 있다면 음용수를 채웁니다.</li><li>스팀 추출구가 막혀 있는지 확인하고 스팀 파이프가 아래로 내려온 상태인지 확인합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>거품이 제대로 생성되지 않습니다</h5> <div class="v_wysiwyg"><ul><li>최상의 우유 거품을 만들기 위해 냉장 상태의 멸균 우유나 멸균 저지방 우유를 사용합니다. (약 4~6 ℃ / 39-43 °F ). 최상의 우유 거품을 만들기 위해서 우유는 반드시 새로 개봉된 제품을 사용합니다.</li><li>우유 거품 설정을 확인합니다.</li><li>제품에 포함된 우유 저그를 사용합니다.</li><li>우유 저그와 스팀 파이프를 매 사용 후 청소합니다.</li><li>스팀 파이프를 청소합니다 유지 보수 메뉴를 탐색합니다.</li><li>스팀 파이프 청소 메뉴를 선택한 후, 화면에 표시된 가이드를 따라 하십시오.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>스팀이 제대로 작동하지 않습니다</h5> <div class="v_wysiwyg"><ul><li>차가운 음용수를 사용합니다 고도로 정수된 물이나 미네랄이 제거된 물, 증류수를 사용하지 않습니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>우유가 넘칩니다</h5> <div class="v_wysiwyg"><ul><li>우유 저그에 적당량의 우유를 담습니다.</li><li>저그의 안쪽과 바깥쪽에 표시된 최소 용량을 확인합니다.</li><li>저그의 안쪽과 바깥쪽에 표시된 최대 용량을 확인합니다.</li><li>우유가 넘치는걸 막기 위해 우유량을 줄이거나 거품레벨을
낮춥니다 우유 종류에 따라 달라질 수 있습니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>우유가 너무 뜨겁습니다</h5> <div class="v_wysiwyg"><ul><li>제품에 포함된 우유 저그를 사용합니다.</li><li>우유 저그가 온도 센서에 정확히 위치 되었는지 확인합니다.</li><li>드립 트레이의 온도 센서의 표면이 깨끗한지 확인합니다.</li><li>우유 온도 설정을 낮은 온도로 변경합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>우유가 충분히 뜨겁지 않습니다</h5> <div class="v_wysiwyg"><ul><li>컵을 미리 데워 놓습니다.</li><li>제품에 포함된 우유 저그를 사용합니다.</li><li>우유 저그가 온도 센서에 정확히 위치 되었는지 확인합니다.</li><li>우유 온도 설정을 높은 온도로 변경합니다.</li><li>스팀 추출구가 막혀 있는지 확인합니다.</li></ul></div> </div> </div><div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>스팀 파이프를 낮은 위치로 조정 메시지가 화면에 나타납니다</h5> <div class="v_wysiwyg"><ul><li>스팀 파이프를 낮은 위치로 조정합니다.</li></ul></div> </div> </div> </div><div class="v_itemTable"> <div class="v_item"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MILK-CONTAINER-B.png&quot;);"></div><div class="v_content"> <h5>스팀 파이프 청소 메시지가 화면에 나타납니다</h5> <div class="v_wysiwyg"><ul><li>스팀 파이프를 청소합니다.</li><li>유지 보수 메뉴를 탐색합니다 스팀 파이프 청소 메뉴를 선택한 후, 화면에 표시된 가이드를 따라 하십시오.</li></ul></div> </div> </div> </div> </div>
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
														<div class="v_tabPanelContainer"> <h4>스펙</h4> <div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><strong>무게</strong><span>5.2 kg</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div><div class="v_content"> <span><strong>탈착식 물통</strong><span>1.5 L</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png&quot;);"></div><div class="v_content"> <span><strong>크기 (WxDxH)</strong><span>17.0 x 30.9 x 40.9 cm</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png&quot;);"></div><div class="v_content"> <span><span>19 바 압력</span></span> </div> </div> </div><div class="v_itemTable" key="[object Object],[object Object]"> <div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png&quot;);"></div><div class="v_content"> <span><span>10분 후 자동 절전 기능</span></span> </div> </div><div class="v_item" key="[object Object]"> <div class="v_img" data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png" lazy="loaded" style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div><div class="v_content"> <span><strong>보증 기간</strong><span>2 년</span></span> </div> </div> </div> </div>
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