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
			con1.style.display = 'none';
		}else{
			con.style.display = 'none';
			con1.style.display = 'block';
		}
	}
	
	function doDisplay2(){ var con = document.getElementById("aja2"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay3(){ var con = document.getElementById("aja3"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay4(){ var con = document.getElementById("aja4"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay5(){ var con = document.getElementById("aja5"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay6(){ var con = document.getElementById("aja6"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay7(){ var con = document.getElementById("aja7"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay8(){ var con = document.getElementById("aja8"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay9(){ var con = document.getElementById("aja9"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay10(){ var con = document.getElementById("aja10"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay11(){ var con = document.getElementById("aja11"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay12(){ var con = document.getElementById("aja12"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay13(){ var con = document.getElementById("aja13"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay14(){ var con = document.getElementById("aja14"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay15(){ var con = document.getElementById("aja15"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay16(){ var con = document.getElementById("aja16"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay17(){ var con = document.getElementById("aja17"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay18(){ var con = document.getElementById("aja18"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay19(){ var con = document.getElementById("aja19"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay20(){ var con = document.getElementById("aja20"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay21(){ var con = document.getElementById("aja21"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	function doDisplay22(){ var con = document.getElementById("aja22"); var con1 = document.getElementById("aja0");
		if(con.style.display=='none'){ con.style.display = 'block'; con1.style.display = 'none';
		}else{ con.style.display = 'none'; con1.style.display = 'block'; } }
	

</script>

<script>
  $( function() {

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

<!-- ------------------------------------------상단 시작---------------------------------------------------- -->
<c:import url="../header.jsp"></c:import>
<!-- ------------------------------------------상단 끝---------------------------------------------------- -->

	<main id="main"> <span id="a11y-main-area"
		class="visually-hidden" tabindex="-1">메인 컨텐츠를 보고 계십니다.</span>
	<div id="block-8812318479861" class="free-html" data-label="">
		<div id="app">
			<div id="kv">
				<div class="wrapper">
					<h1>기술 지원 서비스</h1>
				</div>
			</div>
			<div id="navi" class="">
				<div class="wrapper container-flex col4">
					<div class="menu1depth col">
						<a href="<%=cp%>/guide.action">요금 및 보증 기간 안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col3">
									<a id="warranty" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 61 55"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M59.000,54.227 L2.000,54.227 C1.172,54.227 0.500,53.549 0.500,52.713 L0.500,7.284 C0.500,6.448 1.172,5.770 2.000,5.770 L10.250,5.770 L10.250,2.287 C10.250,1.451 10.922,0.773 11.750,0.773 L17.000,0.773 C17.829,0.773 18.500,1.451 18.500,2.287 L18.500,5.770 L42.500,5.770 L42.500,2.287 C42.500,1.451 43.171,0.773 44.000,0.773 L49.250,0.773 C50.078,0.773 50.750,1.451 50.750,2.287 L50.750,5.770 L59.000,5.770 C59.828,5.770 60.500,6.448 60.500,7.284 L60.500,52.713 C60.500,53.549 59.828,54.227 59.000,54.227 ZM17.000,3.499 C17.000,2.830 16.463,2.287 15.800,2.287 L12.950,2.287 C12.287,2.287 11.750,2.830 11.750,3.499 L11.750,5.770 L17.000,5.770 L17.000,3.499 ZM49.250,3.499 C49.250,2.830 48.712,2.287 48.050,2.287 L45.200,2.287 C44.537,2.287 44.000,2.830 44.000,3.499 L44.000,5.770 L49.250,5.770 L49.250,3.499 ZM59.000,8.496 C59.000,7.827 58.462,7.284 57.800,7.284 L3.200,7.284 C2.537,7.284 2.000,7.827 2.000,8.496 L2.000,51.501 C2.000,52.170 2.537,52.713 3.200,52.713 L57.800,52.713 C58.462,52.713 59.000,52.170 59.000,51.501 L59.000,8.496 ZM55.309,15.159 L5.691,15.159 C5.309,15.159 5.000,14.850 5.000,14.469 L5.000,14.350 C5.000,13.968 5.309,13.659 5.691,13.659 L55.309,13.659 C55.691,13.659 56.000,13.968 56.000,14.350 L56.000,14.469 C56.000,14.850 55.691,15.159 55.309,15.159 ZM25.752,39.010 C26.389,38.534 26.707,37.777 26.707,36.738 C26.707,35.787 26.428,35.051 25.870,34.532 C25.311,34.012 24.500,33.752 23.436,33.752 C22.441,33.752 21.604,34.008 20.923,34.518 L20.688,34.307 L24.823,27.543 L19.144,27.543 L19.144,25.007 L29.481,25.007 L29.481,25.271 L25.425,31.903 C26.175,31.938 26.877,32.132 27.532,32.484 C28.186,32.837 28.718,33.374 29.128,34.096 C29.538,34.818 29.743,35.716 29.743,36.791 C29.743,38.623 29.171,40.014 28.029,40.965 C26.886,41.916 25.364,42.392 23.462,42.392 C22.502,42.392 21.617,42.295 20.806,42.101 C19.994,41.908 19.379,41.670 18.961,41.388 L18.961,38.402 C20.199,39.283 21.595,39.723 23.148,39.723 C24.247,39.723 25.115,39.486 25.752,39.010 ZM41.991,24.743 L41.991,42.128 L39.086,42.128 L39.086,28.468 L35.291,30.265 L35.291,27.676 L41.729,24.743 L41.991,24.743 Z"></path>
										</svg><b>보증 기간 안내</b></a> <a id="charge" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 60"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M30.000,60.000 C13.431,60.000 -0.000,46.568 -0.000,30.000 C-0.000,13.431 13.431,-0.000 30.000,-0.000 C46.569,-0.000 60.000,13.431 60.000,30.000 C60.000,46.568 46.569,60.000 30.000,60.000 ZM30.000,1.500 C14.260,1.500 1.500,14.260 1.500,30.000 C1.500,45.740 14.260,58.500 30.000,58.500 C45.740,58.500 58.500,45.740 58.500,30.000 C58.500,14.260 45.740,1.500 30.000,1.500 ZM36.705,42.255 L36.255,42.255 L32.911,33.600 L27.257,33.600 L23.790,42.255 L23.340,42.255 L19.810,33.600 L15.000,33.600 L15.000,32.100 L19.198,32.100 L18.341,30.000 L15.000,30.000 L15.000,28.500 L17.729,28.500 L14.970,21.735 L17.625,21.735 L20.203,28.500 L27.196,28.500 L29.910,21.735 L30.360,21.735 L32.977,28.500 L39.791,28.500 L42.330,21.735 L44.895,21.735 L42.195,28.500 L45.000,28.500 L45.000,30.000 L41.596,30.000 L40.758,32.100 L45.000,32.100 L45.000,33.600 L40.159,33.600 L36.705,42.255 ZM23.610,37.440 L25.150,33.600 L22.147,33.600 L23.610,37.440 ZM20.775,30.000 L21.575,32.100 L25.752,32.100 L26.594,30.000 L20.775,30.000 ZM30.135,26.415 L29.300,28.500 L30.941,28.500 L30.135,26.415 ZM31.520,30.000 L28.699,30.000 L27.858,32.100 L32.331,32.100 L31.520,30.000 ZM36.435,37.440 L37.876,33.600 L34.950,33.600 L36.435,37.440 ZM33.557,30.000 L34.369,32.100 L38.439,32.100 L39.228,30.000 L33.557,30.000 Z"></path>
										</svg><b>서비스 요금 안내</b></a> <a id="dispute" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 42"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M58.500,42.000 L1.500,42.000 C0.671,42.000 -0.000,41.328 -0.000,40.500 L-0.000,1.500 C-0.000,0.672 0.671,-0.000 1.500,-0.000 L58.500,-0.000 C59.328,-0.000 60.000,0.672 60.000,1.500 L60.000,40.500 C60.000,41.328 59.328,42.000 58.500,42.000 ZM58.500,2.700 C58.500,2.037 57.963,1.500 57.300,1.500 L2.700,1.500 C2.037,1.500 1.500,2.037 1.500,2.700 L1.500,39.300 C1.500,39.963 2.037,40.500 2.700,40.500 L57.300,40.500 C57.963,40.500 58.500,39.963 58.500,39.300 L58.500,2.700 ZM54.450,36.750 L33.450,36.750 C32.621,36.750 31.950,36.078 31.950,35.250 L31.950,31.853 C31.449,31.741 30.860,31.650 30.272,31.650 C29.702,31.650 29.135,31.738 28.650,31.846 L28.650,35.250 C28.650,36.078 27.978,36.750 27.150,36.750 L6.150,36.750 C5.321,36.750 4.650,36.078 4.650,35.250 L4.650,6.750 C4.650,5.921 5.321,5.250 6.150,5.250 L27.150,5.250 C27.978,5.250 28.650,5.921 28.650,6.750 L28.650,8.448 C29.138,8.338 29.711,8.250 30.285,8.250 C30.869,8.250 31.453,8.340 31.950,8.451 L31.950,6.750 C31.950,5.921 32.621,5.250 33.450,5.250 L54.450,5.250 C55.278,5.250 55.950,5.921 55.950,6.750 L55.950,35.250 C55.950,36.078 55.278,36.750 54.450,36.750 ZM28.650,30.348 C29.138,30.239 29.711,30.150 30.285,30.150 C30.869,30.150 31.453,30.241 31.950,30.351 L31.950,26.453 C31.449,26.341 30.860,26.250 30.272,26.250 C29.702,26.250 29.135,26.338 28.650,26.446 L28.650,30.348 ZM28.650,24.948 C29.138,24.839 29.711,24.750 30.285,24.750 C30.869,24.750 31.453,24.841 31.950,24.951 L31.950,20.903 C31.449,20.791 30.860,20.700 30.272,20.700 C29.702,20.700 29.135,20.788 28.650,20.896 L28.650,24.948 ZM30.285,19.200 C30.869,19.200 31.453,19.291 31.950,19.401 L31.950,15.503 C31.449,15.391 30.860,15.300 30.272,15.300 C29.702,15.300 29.135,15.388 28.650,15.496 L28.650,19.398 C29.138,19.289 29.711,19.200 30.285,19.200 ZM27.150,8.865 L27.150,7.950 C27.150,7.287 26.613,6.750 25.950,6.750 L7.350,6.750 C6.687,6.750 6.150,7.287 6.150,7.950 L6.150,34.050 C6.150,34.713 6.687,35.250 7.350,35.250 L25.950,35.250 C26.613,35.250 27.150,34.713 27.150,34.050 L27.150,32.235 C26.808,32.165 26.550,31.863 26.550,31.500 C26.550,31.137 26.808,30.835 27.150,30.765 L27.150,26.835 C26.808,26.765 26.550,26.463 26.550,26.100 C26.550,25.737 26.808,25.435 27.150,25.365 L27.150,21.285 C26.808,21.215 26.550,20.913 26.550,20.550 C26.550,20.187 26.808,19.885 27.150,19.815 L27.150,15.885 C26.808,15.815 26.550,15.513 26.550,15.150 C26.550,14.787 26.808,14.484 27.150,14.415 L27.150,10.335 C26.808,10.265 26.550,9.963 26.550,9.600 C26.550,9.237 26.808,8.934 27.150,8.865 ZM30.272,9.750 C29.702,9.750 29.135,9.838 28.650,9.946 L28.650,13.998 C29.138,13.888 29.711,13.800 30.285,13.800 C30.869,13.800 31.453,13.890 31.950,14.001 L31.950,9.953 C31.449,9.841 30.860,9.750 30.272,9.750 ZM54.450,7.950 C54.450,7.287 53.913,6.750 53.250,6.750 L34.650,6.750 C33.987,6.750 33.450,7.287 33.450,7.950 L33.450,8.865 C33.792,8.934 34.050,9.237 34.050,9.600 C34.050,9.963 33.792,10.265 33.450,10.335 L33.450,14.415 C33.792,14.484 34.050,14.787 34.050,15.150 C34.050,15.513 33.792,15.815 33.450,15.885 L33.450,19.815 C33.792,19.885 34.050,20.187 34.050,20.550 C34.050,20.913 33.792,21.215 33.450,21.285 L33.450,25.365 C33.792,25.435 34.050,25.737 34.050,26.100 C34.050,26.463 33.792,26.765 33.450,26.835 L33.450,30.765 C33.792,30.835 34.050,31.137 34.050,31.500 C34.050,31.863 33.792,32.165 33.450,32.235 L33.450,34.050 C33.450,34.713 33.987,35.250 34.650,35.250 L53.250,35.250 C53.913,35.250 54.450,34.713 54.450,34.050 L54.450,7.950 ZM52.350,25.050 L35.850,25.050 C35.436,25.050 35.100,24.714 35.100,24.300 C35.100,23.886 35.436,23.550 35.850,23.550 L52.350,23.550 C52.764,23.550 53.100,23.886 53.100,24.300 C53.100,24.714 52.764,25.050 52.350,25.050 ZM52.350,19.050 L35.850,19.050 C35.436,19.050 35.100,18.714 35.100,18.300 C35.100,17.886 35.436,17.550 35.850,17.550 L52.350,17.550 C52.764,17.550 53.100,17.886 53.100,18.300 C53.100,18.714 52.764,19.050 52.350,19.050 ZM52.350,12.900 L35.850,12.900 C35.436,12.900 35.100,12.564 35.100,12.150 C35.100,11.736 35.436,11.400 35.850,11.400 L52.350,11.400 C52.764,11.400 53.100,11.736 53.100,12.150 C53.100,12.564 52.764,12.900 52.350,12.900 ZM24.900,25.050 L8.400,25.050 C7.986,25.050 7.650,24.714 7.650,24.300 C7.650,23.886 7.986,23.550 8.400,23.550 L24.900,23.550 C25.314,23.550 25.650,23.886 25.650,24.300 C25.650,24.714 25.314,25.050 24.900,25.050 ZM24.900,19.050 L8.400,19.050 C7.986,19.050 7.650,18.714 7.650,18.300 C7.650,17.886 7.986,17.550 8.400,17.550 L24.900,17.550 C25.314,17.550 25.650,17.886 25.650,18.300 C25.650,18.714 25.314,19.050 24.900,19.050 ZM24.900,12.900 L8.400,12.900 C7.986,12.900 7.650,12.564 7.650,12.150 C7.650,11.736 7.986,11.400 8.400,11.400 L24.900,11.400 C25.314,11.400 25.650,11.736 25.650,12.150 C25.650,12.564 25.314,12.900 24.900,12.900 Z"></path>
										</svg><b>소비자 분쟁 해결 기준</b></a>
								</div>
							</div>
						</div>
					</div>
					<div class="menu1depth col active">
						<a href="<%=cp%>/mguide.action">머신 사용 안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col5 owl-carousel">
									<a id="machine" class="col active"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 61 42"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M58.002,7.612 L55.271,7.612 C55.536,8.917 55.664,10.244 55.653,11.573 C55.653,12.635 55.598,13.695 55.488,14.751 L55.441,15.179 L52.262,15.179 L51.500,12.949 L50.682,12.951 L50.692,18.473 L48.340,18.473 L48.340,30.784 L60.484,30.777 L50.011,41.511 L47.858,41.514 L47.636,41.514 L14.252,41.527 L14.063,41.530 L1.555,41.534 L1.541,8.314 L0.460,8.316 L0.457,5.029 L13.555,5.022 L13.552,0.629 L48.333,0.613 L48.333,0.629 L50.682,0.626 L50.682,4.131 L52.174,4.131 C52.896,4.125 53.585,4.426 54.064,4.955 C54.496,5.450 54.819,6.027 55.012,6.650 L58.002,6.648 C58.274,6.648 58.493,6.864 58.493,7.130 C58.494,7.396 58.274,7.612 58.002,7.612 ZM13.608,5.986 L1.440,5.990 L1.440,7.352 L2.522,7.350 L2.538,40.570 L13.622,40.565 L13.608,5.986 ZM54.392,8.158 C54.360,7.969 54.313,7.790 54.269,7.615 L41.248,7.622 C40.187,7.983 39.098,8.263 37.992,8.458 C37.251,8.457 36.651,7.868 36.650,7.142 C36.649,6.414 37.250,5.824 37.992,5.824 C39.098,6.017 40.187,6.296 41.248,6.657 L53.973,6.650 C53.828,6.269 53.615,5.916 53.343,5.609 C53.051,5.275 52.622,5.086 52.174,5.095 L49.698,5.095 L49.698,1.590 L47.349,1.590 L47.349,1.574 L14.536,1.590 L14.536,5.986 L14.468,5.986 L14.484,40.563 L47.636,40.552 L47.857,40.552 L49.593,40.550 L58.184,31.741 L47.857,31.748 L47.366,31.748 L47.359,17.511 L49.708,17.508 L49.699,11.989 L52.206,11.987 L52.966,14.214 L54.551,14.214 C54.565,14.084 54.579,13.936 54.588,13.755 C54.627,13.200 54.670,12.428 54.670,11.573 C54.683,10.429 54.590,9.286 54.392,8.158 ZM16.340,24.713 L44.604,24.713 L44.604,25.450 L16.340,25.450 L16.340,24.713 ZM16.340,11.850 L44.604,11.850 L44.604,12.589 L16.340,12.589 L16.340,11.850 ZM44.601,19.018 L16.340,19.018 L16.340,18.278 L44.601,18.278 L44.601,19.018 ZM44.601,31.880 L16.340,31.880 L16.340,31.143 L44.601,31.143 L44.601,31.880 Z"></path>
										</svg><b>머신 사용법</b></a> <a id="download" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 24 20"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M20.000,20.000 L-0.000,20.000 L-0.000,-0.000 L8.000,-0.000 L11.000,3.000 L21.000,3.000 L21.000,7.000 L24.000,7.000 L20.000,20.000 ZM20.000,4.000 L10.586,4.000 L7.586,1.000 L1.000,1.000 L1.000,16.750 L4.000,7.000 L20.000,7.000 L20.000,4.000 ZM4.739,8.000 L1.354,19.000 L19.261,19.000 L22.646,8.000 L4.739,8.000 Z"></path>
										</svg> <b>머신 설명서 다운로드</b></a> <a id="clip" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 60"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M30.000,60.000 C13.431,60.000 -0.000,46.568 -0.000,30.000 C-0.000,13.431 13.431,-0.000 30.000,-0.000 C46.568,-0.000 60.000,13.431 60.000,30.000 C60.000,46.568 46.568,60.000 30.000,60.000 ZM30.000,1.500 C14.260,1.500 1.500,14.260 1.500,30.000 C1.500,45.740 14.260,58.500 30.000,58.500 C45.740,58.500 58.500,45.740 58.500,30.000 C58.500,14.260 45.740,1.500 30.000,1.500 ZM22.500,16.898 L43.800,30.025 L22.500,43.152 L22.500,16.898 Z"></path>
										</svg> <b>문제 해결 영상</b></a> <a id="compare" class="col"> <svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 61 39"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M60.848,30.116 C60.847,30.093 60.844,30.072 60.840,30.050 L60.790,29.915 L50.684,2.944 L50.682,2.941 L50.679,2.938 C50.595,2.718 50.388,2.573 50.157,2.573 L33.405,2.573 C33.108,1.140 31.731,0.225 30.329,0.529 C29.326,0.746 28.542,1.547 28.329,2.573 L11.608,2.573 L11.608,2.574 C11.557,2.581 11.508,2.597 11.463,2.620 C11.402,2.630 11.343,2.648 11.287,2.676 C11.197,2.742 11.127,2.833 11.086,2.938 L11.086,2.939 L11.081,2.941 L11.083,2.941 L11.081,2.944 L0.975,29.915 L0.923,30.050 C0.919,30.072 0.917,30.093 0.917,30.116 C0.912,30.144 0.892,30.167 0.892,30.198 C0.892,30.223 0.896,30.247 0.896,30.274 C0.897,30.301 0.901,30.328 0.904,30.356 C1.013,34.851 5.769,38.483 11.608,38.483 C17.446,38.483 22.202,34.851 22.312,30.356 C22.312,30.328 22.316,30.301 22.318,30.274 C22.318,30.247 22.321,30.223 22.321,30.198 C22.316,30.170 22.309,30.142 22.299,30.116 C22.298,30.093 22.295,30.071 22.289,30.050 L22.239,29.915 L12.426,3.726 L28.311,3.726 C28.564,5.168 29.913,6.128 31.324,5.869 C32.393,5.673 33.230,4.818 33.421,3.726 L49.337,3.726 L39.524,29.915 L39.472,30.050 C39.469,30.072 39.467,30.093 39.466,30.116 C39.461,30.144 39.442,30.167 39.442,30.198 C39.442,30.223 39.447,30.247 39.447,30.274 L39.453,30.356 C39.563,34.851 44.319,38.483 50.157,38.483 C55.995,38.483 60.751,34.851 60.861,30.356 C60.861,30.328 60.866,30.301 60.867,30.274 C60.867,30.247 60.871,30.223 60.871,30.198 C60.866,30.170 60.858,30.142 60.848,30.116 ZM11.608,37.330 C6.610,37.330 2.497,34.469 2.061,30.833 L21.153,30.833 C20.717,34.469 16.605,37.330 11.608,37.330 ZM20.921,29.621 L2.293,29.621 L11.608,4.763 L20.921,29.621 ZM50.157,4.763 L59.472,29.621 L40.842,29.621 L50.157,4.763 ZM50.157,37.330 C45.160,37.330 41.046,34.469 40.611,30.833 L59.704,30.833 C59.267,34.469 55.154,37.330 50.157,37.330 Z"></path>
										</svg><b>오리지널과 버츄오 머신 비교</b></a> <a id="faq" class="col"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 60"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M30.000,60.000 C13.431,60.000 -0.000,46.568 -0.000,30.000 C-0.000,13.431 13.431,-0.000 30.000,-0.000 C46.568,-0.000 60.000,13.431 60.000,30.000 C60.000,46.568 46.568,60.000 30.000,60.000 ZM30.000,1.500 C14.260,1.500 1.500,14.260 1.500,30.000 C1.500,45.740 14.260,58.500 30.000,58.500 C45.740,58.500 58.500,45.740 58.500,30.000 C58.500,14.260 45.740,1.500 30.000,1.500 ZM30.945,31.455 L30.945,37.530 L28.560,37.530 L28.560,29.835 C30.930,29.775 32.857,29.243 34.342,28.237 C35.827,27.233 36.570,25.635 36.570,23.445 C36.570,21.465 35.940,19.995 34.680,19.035 C33.420,18.075 31.815,17.595 29.865,17.595 C28.454,17.595 27.120,17.828 25.860,18.292 C24.600,18.758 23.670,19.290 23.070,19.890 L23.070,17.280 C23.670,16.830 24.584,16.402 25.815,15.997 C27.045,15.592 28.440,15.390 30.000,15.390 C32.700,15.390 34.882,16.080 36.547,17.460 C38.212,18.840 39.045,20.820 39.045,23.400 C39.045,25.950 38.272,27.893 36.727,29.227 C35.182,30.563 33.255,31.305 30.945,31.455 ZM29.775,41.760 C30.285,41.760 30.705,41.933 31.035,42.277 C31.365,42.623 31.530,43.065 31.530,43.605 C31.530,44.115 31.365,44.543 31.035,44.887 C30.705,45.232 30.285,45.405 29.775,45.405 C29.235,45.405 28.800,45.232 28.470,44.887 C28.139,44.543 27.975,44.115 27.975,43.605 C27.975,43.065 28.147,42.623 28.492,42.277 C28.837,41.933 29.264,41.760 29.775,41.760 Z"></path>
										</svg><b>자주 묻는 질문</b></a>
								</div>
							</div>
						</div>
					</div>
					<div class="menu1depth col">
						<a href="<%=cp%>/rguide.action">수리 서비스 신청 안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col3">
									<a id="pickup" class="col"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 42 60"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M41.011,55.769 C41.009,55.774 41.006,55.779 41.003,55.784 C40.985,55.817 40.964,55.848 40.940,55.878 C40.937,55.881 40.934,55.884 40.932,55.887 C40.910,55.912 40.886,55.935 40.861,55.957 C40.856,55.960 40.853,55.965 40.848,55.969 L36.008,59.852 C35.999,59.859 35.989,59.864 35.980,59.871 C35.966,59.881 35.952,59.891 35.937,59.899 C35.919,59.911 35.899,59.920 35.879,59.930 C35.865,59.936 35.852,59.943 35.837,59.948 C35.814,59.957 35.791,59.963 35.767,59.969 C35.754,59.972 35.742,59.977 35.730,59.979 C35.692,59.986 35.654,59.990 35.616,59.990 C35.616,59.990 35.616,59.990 35.616,59.990 L35.616,59.990 L5.394,59.990 C5.222,59.990 5.059,59.920 4.941,59.796 C4.822,59.672 4.760,59.505 4.768,59.334 L6.199,29.103 C6.215,28.769 6.490,28.506 6.824,28.506 L17.162,28.506 L17.162,26.284 C17.153,25.823 17.203,25.355 17.308,24.902 C10.411,24.090 8.381,20.045 6.631,15.247 C4.980,10.723 1.493,9.500 1.345,9.450 C1.019,9.340 0.841,8.985 0.951,8.658 C1.060,8.330 1.413,8.153 1.740,8.261 C1.911,8.317 5.941,9.700 7.808,14.818 C9.509,19.481 11.342,23.102 17.931,23.708 C17.955,23.492 17.987,23.298 18.028,23.126 C17.528,22.918 16.662,22.526 15.771,21.973 C13.865,20.789 12.820,19.486 12.664,18.101 C12.432,16.039 13.999,13.923 15.667,12.898 C16.710,12.257 17.672,12.129 18.306,12.545 C20.518,13.999 22.864,16.563 21.480,20.523 C21.000,21.895 20.346,22.310 19.869,22.614 C19.502,22.847 19.252,23.006 19.168,23.875 C19.642,23.749 20.293,23.531 20.957,23.169 C22.609,22.270 23.579,20.931 23.839,19.189 C24.305,16.064 23.469,14.824 22.203,12.948 C22.052,12.724 21.897,12.495 21.739,12.254 C21.550,11.965 21.630,11.577 21.919,11.387 C22.208,11.197 22.597,11.278 22.786,11.567 C22.941,11.802 23.093,12.028 23.241,12.247 C24.568,14.214 25.616,15.768 25.078,19.374 C25.076,19.385 25.073,19.396 25.072,19.408 C25.072,19.431 25.075,19.455 25.073,19.479 C25.041,19.850 25.014,20.191 24.990,20.492 C25.699,19.839 26.560,18.784 26.797,17.364 C27.113,15.481 26.280,13.400 24.324,11.179 C24.066,10.999 23.977,10.652 24.130,10.369 C24.294,10.065 24.675,9.952 24.978,10.117 C25.244,10.260 25.461,10.373 25.649,10.470 C26.763,11.048 27.021,11.209 29.593,13.482 C30.587,14.361 31.205,14.733 31.561,14.890 C28.768,9.617 26.361,8.921 24.586,8.407 C24.219,8.301 23.872,8.201 23.551,8.068 C21.826,7.358 20.536,7.083 14.118,6.363 C7.928,5.667 5.108,1.764 4.605,0.989 C4.411,0.703 4.485,0.311 4.771,0.117 C5.057,-0.077 5.446,-0.003 5.640,0.283 L5.656,0.307 C5.931,0.732 8.509,4.472 14.258,5.118 C20.523,5.821 22.075,6.106 24.028,6.910 C24.286,7.016 24.586,7.103 24.934,7.204 C26.887,7.769 29.838,8.622 33.022,14.992 C33.080,15.108 33.101,15.239 33.081,15.367 C33.038,15.643 32.832,16.023 32.390,16.183 C32.257,16.231 32.114,16.255 31.961,16.255 C31.198,16.255 30.165,15.660 28.764,14.421 C28.068,13.806 27.551,13.354 27.146,13.010 C27.982,14.588 28.279,16.119 28.030,17.586 C27.720,19.409 26.630,20.712 25.758,21.492 C27.776,21.685 29.400,23.755 29.440,26.274 L29.440,28.506 L37.047,28.506 C37.218,28.506 37.382,28.576 37.500,28.700 C37.508,28.709 37.513,28.719 37.521,28.728 C37.662,28.826 37.764,28.979 37.787,29.163 L41.079,55.401 C41.095,55.530 41.069,55.658 41.011,55.769 ZM19.197,21.557 C19.590,21.307 19.961,21.071 20.297,20.109 C21.207,17.507 20.331,15.375 17.618,13.592 C17.583,13.569 17.521,13.554 17.435,13.554 C17.213,13.554 16.829,13.654 16.322,13.966 C15.024,14.763 13.737,16.435 13.909,17.961 C14.121,19.854 17.144,21.430 18.606,22.012 C18.780,21.835 18.980,21.695 19.197,21.557 ZM28.188,26.284 C28.157,24.361 26.904,22.729 25.450,22.729 L23.525,22.729 C22.982,23.338 22.311,23.864 21.516,24.291 C20.031,25.089 18.645,25.266 18.587,25.274 C18.561,25.277 18.536,25.278 18.511,25.278 C18.510,25.278 18.509,25.278 18.508,25.278 C18.441,25.603 18.408,25.938 18.414,26.272 L18.414,28.506 L28.188,28.506 L28.188,26.284 ZM7.421,29.759 L6.050,58.737 L35.019,58.737 L36.390,29.759 L7.421,29.759 ZM36.307,58.006 L39.301,55.604 L36.487,54.208 L36.307,58.006 ZM37.358,35.801 L36.551,52.842 L39.691,54.399 L37.358,35.801 ZM22.655,50.581 C22.334,50.309 21.196,49.074 20.754,48.546 C19.755,47.366 18.419,45.504 17.280,44.047 L17.280,49.996 L15.657,49.996 L15.657,38.205 C17.472,39.689 19.307,42.640 20.679,44.413 C20.679,44.413 23.345,48.009 24.460,49.285 C25.319,50.348 26.813,51.508 27.856,51.897 C29.252,52.454 30.668,52.542 31.766,52.306 L31.766,52.416 C28.570,53.535 24.742,52.621 22.655,50.581 ZM17.980,39.210 C17.121,38.150 15.626,36.989 14.582,36.600 C13.187,36.042 11.771,35.956 10.674,36.191 L10.674,36.079 C13.868,34.962 17.696,35.875 19.785,37.915 C20.106,38.187 21.244,39.423 21.683,39.951 C22.684,41.130 24.020,42.993 25.161,44.452 L25.161,38.500 L26.782,38.500 L26.782,50.290 C24.966,48.806 23.133,45.858 21.760,44.083 C21.760,44.083 19.095,40.486 17.980,39.210 Z"></path>
										</svg><b>픽업 서비스</b></a> <a id="repair" class="col"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 61 42"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M58.096,7.205 L55.333,7.206 C55.541,8.140 55.662,9.257 55.696,10.554 C55.751,12.666 55.551,14.458 55.542,14.533 L55.496,14.940 L52.369,14.940 L51.608,12.662 L50.734,12.663 L50.737,18.307 L48.383,18.308 L48.390,30.960 L60.499,30.954 L50.081,41.861 L47.717,41.863 L14.281,41.878 L14.096,41.879 L1.602,41.885 L1.586,7.922 L0.503,7.923 L0.501,4.631 L13.618,4.624 L13.616,0.132 L48.375,0.115 L48.375,0.132 L50.729,0.131 L50.731,3.713 C51.151,3.713 51.653,3.713 52.260,3.713 C53.006,3.713 53.647,4.007 54.164,4.587 C54.538,5.006 54.844,5.575 55.082,6.290 L58.096,6.288 L58.096,6.288 C58.349,6.288 58.554,6.493 58.554,6.746 C58.554,6.999 58.349,7.205 58.096,7.205 ZM13.636,5.541 L1.418,5.547 L1.419,7.006 L2.502,7.005 L2.518,40.968 L13.653,40.962 L13.636,5.541 ZM54.388,7.207 L41.426,7.214 C40.182,7.604 38.508,8.101 38.056,8.101 C37.315,8.101 36.712,7.499 36.712,6.756 C36.712,6.014 37.313,5.411 38.056,5.411 C38.508,5.411 40.183,5.908 41.428,6.297 L54.106,6.290 C53.938,5.854 53.732,5.480 53.481,5.198 C53.140,4.815 52.741,4.629 52.261,4.629 C51.415,4.629 50.774,4.629 50.274,4.631 L49.815,4.632 L49.813,1.048 L47.458,1.049 L47.458,1.032 L14.533,1.048 L14.534,5.541 L14.498,5.541 L14.516,40.961 L47.936,40.946 L49.689,40.944 L58.355,31.872 L47.474,31.878 L47.466,17.392 L49.821,17.391 L49.818,11.747 L52.268,11.745 L53.029,14.023 L54.673,14.023 C54.820,12.414 54.915,9.391 54.388,7.207 ZM43.655,29.507 C43.598,29.916 43.510,30.316 43.398,30.705 L44.969,32.797 L44.890,32.965 C44.612,33.550 44.283,34.110 43.910,34.631 L43.801,34.783 L41.206,34.414 C40.919,34.700 40.611,34.969 40.281,35.217 C39.951,35.465 39.608,35.685 39.253,35.881 L38.886,38.477 L38.710,38.540 C38.110,38.752 37.479,38.912 36.836,39.017 L36.653,39.047 L35.082,36.954 C34.247,36.954 33.433,36.837 32.658,36.613 L30.572,38.182 L30.404,38.102 C29.811,37.819 29.251,37.489 28.740,37.119 L28.589,37.010 L28.957,34.419 C28.672,34.131 28.403,33.822 28.155,33.491 C27.906,33.159 27.685,32.815 27.490,32.461 L24.896,32.093 L24.834,31.917 C24.623,31.316 24.462,30.686 24.358,30.044 L24.328,29.860 L26.423,28.286 C26.424,27.469 26.539,26.656 26.765,25.871 L25.191,23.775 L25.271,23.607 C25.549,23.022 25.879,22.462 26.251,21.941 L26.360,21.789 L28.955,22.158 C29.239,21.873 29.547,21.605 29.879,21.356 C30.209,21.108 30.553,20.887 30.908,20.691 L31.275,18.097 L31.450,18.034 C32.047,17.823 32.678,17.662 33.324,17.555 L33.508,17.525 L35.078,19.619 C35.914,19.619 36.727,19.736 37.503,19.960 L39.589,18.391 L39.757,18.470 C40.341,18.748 40.901,19.079 41.422,19.454 L41.573,19.563 L41.205,22.156 C41.490,22.443 41.758,22.752 42.006,23.083 C42.253,23.412 42.475,23.756 42.671,24.111 L45.265,24.480 L45.327,24.656 C45.538,25.253 45.699,25.883 45.804,26.529 L45.834,26.713 L43.743,28.284 C43.742,28.690 43.714,29.098 43.655,29.507 ZM39.533,24.942 C38.471,23.528 36.846,22.716 35.076,22.716 C33.864,22.716 32.709,23.103 31.738,23.833 C29.284,25.676 28.787,29.175 30.630,31.632 C31.691,33.045 33.315,33.856 35.085,33.856 C36.297,33.856 37.451,33.470 38.423,32.740 C40.877,30.897 41.375,27.399 39.533,24.942 ZM30.893,13.181 L32.596,14.103 L32.593,14.290 C32.585,14.763 32.533,15.251 32.438,15.741 L32.403,15.924 L30.545,16.476 C30.331,17.044 30.041,17.580 29.682,18.069 L30.233,19.927 L30.100,20.057 C29.747,20.400 29.366,20.710 28.967,20.979 L28.812,21.083 L27.111,20.159 C26.839,20.283 26.555,20.391 26.260,20.479 C25.968,20.566 25.672,20.631 25.373,20.677 L24.447,22.379 L24.261,22.376 C23.778,22.369 23.290,22.317 22.812,22.223 L22.629,22.187 L22.079,20.332 C21.512,20.120 20.973,19.830 20.484,19.470 C20.482,19.469 20.481,19.468 20.480,19.467 L18.628,20.016 L18.498,19.883 C18.155,19.531 17.845,19.149 17.578,18.750 L17.474,18.596 L18.396,16.897 C18.271,16.621 18.163,16.336 18.075,16.040 C17.988,15.744 17.924,15.447 17.879,15.150 L16.178,14.228 L16.180,14.042 C16.186,13.573 16.238,13.085 16.333,12.590 L16.368,12.407 L18.226,11.855 C18.440,11.287 18.730,10.751 19.089,10.262 L18.539,8.405 L18.671,8.275 C19.018,7.936 19.399,7.625 19.802,7.352 L19.956,7.248 L21.659,8.172 C21.932,8.047 22.216,7.939 22.512,7.851 C22.805,7.764 23.103,7.698 23.403,7.653 L24.323,5.952 L24.509,5.954 C24.990,5.961 25.479,6.013 25.960,6.108 L26.142,6.144 L26.695,8.003 C27.262,8.218 27.795,8.510 28.281,8.868 L30.143,8.315 L30.273,8.448 C30.613,8.796 30.923,9.177 31.193,9.579 L31.298,9.734 L30.375,11.437 C30.500,11.712 30.609,11.996 30.696,12.290 C30.784,12.586 30.848,12.884 30.893,13.181 ZM27.940,13.108 C27.477,11.544 26.016,10.452 24.387,10.452 C24.031,10.452 23.675,10.504 23.330,10.607 C21.370,11.190 20.248,13.261 20.830,15.222 C21.294,16.786 22.756,17.878 24.385,17.878 C24.741,17.878 25.096,17.826 25.442,17.724 C27.402,17.141 28.522,15.070 27.940,13.108 Z"></path>
										</svg><b>바로 점검 서비스</b></a> <a id="maintenance" class="col"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 60"
											style="margin-top: 0px; margin-bottom: 0px;"> <path
											fill-rule="evenodd"
											d="M52.129,59.148 C50.271,59.148 48.413,58.440 46.996,57.025 L23.370,33.422 C21.894,31.948 19.895,31.127 17.824,31.127 C17.625,31.127 17.424,31.134 17.224,31.150 C16.827,31.180 16.428,31.196 16.030,31.196 C12.098,31.196 8.165,29.699 5.167,26.702 C2.177,23.713 0.693,19.804 0.693,15.890 C0.693,14.415 0.904,12.940 1.324,11.512 L10.544,20.724 C10.865,20.793 11.194,20.827 11.530,20.827 C16.101,20.827 21.850,14.660 20.918,10.361 L11.698,1.149 C13.126,0.730 14.602,0.520 16.076,0.520 C19.995,0.520 23.908,2.002 26.903,4.991 C30.203,8.290 31.688,12.719 31.354,17.034 C31.179,19.313 32.010,21.560 33.628,23.175 L57.256,46.779 C58.631,48.153 59.340,49.944 59.378,51.745 C59.467,55.815 56.188,59.148 52.129,59.148 ZM56.216,47.817 L32.589,24.213 C30.665,22.293 29.681,19.635 29.888,16.922 C30.202,12.870 28.735,8.900 25.863,6.029 C23.253,3.424 19.777,1.989 16.076,1.989 C15.611,1.989 15.147,2.012 14.686,2.057 L21.957,9.322 L22.263,9.628 L22.355,10.050 C22.843,12.302 21.966,15.027 19.949,17.525 C17.609,20.423 14.305,22.295 11.530,22.295 C11.085,22.295 10.647,22.249 10.231,22.158 L9.810,22.066 L9.505,21.762 L2.232,14.495 C2.186,14.958 2.163,15.424 2.163,15.890 C2.163,19.586 3.599,23.057 6.206,25.664 C8.828,28.284 12.317,29.727 16.030,29.727 C16.389,29.727 16.753,29.713 17.110,29.686 C17.347,29.668 17.587,29.658 17.824,29.658 C20.275,29.658 22.675,30.652 24.410,32.384 L48.036,55.987 C49.129,57.078 50.582,57.680 52.129,57.680 C53.697,57.680 55.165,57.063 56.262,55.943 C57.358,54.823 57.943,53.344 57.909,51.777 C57.877,50.282 57.276,48.876 56.216,47.817 ZM52.047,54.265 C50.696,54.262 49.602,53.170 49.602,51.822 C49.602,50.472 50.696,49.379 52.047,49.379 C53.396,49.379 54.493,50.469 54.493,51.819 C54.493,53.170 53.396,54.265 52.047,54.265 ZM52.047,50.848 C51.509,50.848 51.072,51.285 51.072,51.822 C51.072,52.358 51.511,52.795 52.050,52.796 C52.585,52.796 53.023,52.358 53.023,51.819 C53.023,51.284 52.585,50.848 52.047,50.848 Z"></path>
										</svg><b>유지 보수 및 세척</b></a>
								</div>
							</div>
						</div>
					</div>
					<div class="menu1depth col">
						<a href="<%=cp%>/notice.action">공지사항</a>
					</div>
				</div>
			</div>
			
			<div id="contents">
				<div id="machine" class="machine active">
					<div class="vue" style="background-image: url(&quot;&quot;);">
						<div id="aja0">
							<section class="vue_headerIntro"
								data-src="/nespresso/resources/img/machine/bg-intro.jpg"
								lazy="loaded"
								style="background-image: url(&quot;/shared_res/agility/machineAssistance/machineAssistance/img/bg-intro.jpg&quot;);">
								<div class="v_sectionRestrict">
									<div class="v_sectionContent">
										<h1>
											<span aria-hidden="true">머신 사용 안내</span> <span
												class="v_visually_hidden"></span>
										</h1>
										<div class="v_wysiwyg">
											<p>
												네스프레소 클럽은 네스프레소 머신과 에어로치노의 쉬운 사용법과<br>간단한 문제 해결법을
												안내해드립니다.<br>아래에서 머신 종류를 선택하시고 머신에 관한 모든 정보를 알아보세요.
											</p>
										</div>
										<!-- 
										<form>
											<fieldset>
												<legend></legend>
												<label for="codeMachine" class="v_visually_hidden"></label> <input
													maxlength="19" id="codeMachine" type="text" placeholder="">
												<button class="v_btn v_btnDefaultSimple">
													<span class="fn_arrowRight"></span> <span
														class="v_visually_hidden" style="color: #000000">시리얼
														넘버를 제출하세요</span>
												</button>
											</fieldset>
										</form>
										 -->
									</div>
								</div>
							</section>
							<section class="vue_machinesList">
								<div class="v_sectionRestrict">
									<div class="v_sectionContent">
										<h2>
											<span aria-hidden="true">머신 선택하기</span> <span
												class="v_visually_hidden"></span>
										</h2>
											<ul class="v_row4">
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay();"
													data-src="/nespresso/resources/machineimage/Essenza-Mini_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Essenza-Mini_M.jpg&quot;);">
														<span>에센자 미니</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay2();"
													data-src="/nespresso/resources/machineimage/Inissia_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Inissia_M.jpg&quot;);">
														<span>이니시아</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay3();"
													data-src="/nespresso/resources/machineimage/U-machine_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/U-machine_M.jpg&quot;);">
														<span>유</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay4();"
													data-src="/nespresso/resources/machineimage/Pixie_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Pixie_M.jpg&quot;);">
														<span>픽시</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay5();"
													data-src="/nespresso/resources/machineimage/Pixie-Clips_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Pixie-Clips_M.jpg&quot;);">
														<span>픽시 클립</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay6();"
													data-src="/nespresso/resources/machineimage/Citiz_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Citiz_M.jpg&quot;);">
														<span>시티즈</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay7();"
													data-src="/nespresso/resources/machineimage/Prodigio_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Prodigio_M.jpg&quot;);">
														<span>프로디지오</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay8();"
													data-src="/nespresso/resources/machineimage/Lattissima-Plus_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Lattissima-Plus_M.jpg&quot;);">
														<span>라티시마</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay9();"
													data-src="/nespresso/resources/machineimage/Lattissima-Touch_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Lattissima-Touch_M.jpg&quot;);">
														<span>라티시마 터치</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay10();"
													data-src="/nespresso/resources/machineimage/Lattissima-One_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Lattissima-One_M.jpg&quot;);">
														<span>라티시마 원</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay11();"
													data-src="/nespresso/resources/machineimage/Gran-Lattissima_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Gran-Lattissima_M.jpg&quot;);">
														<span>그랑 라티시마</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay12();"
													data-src="/nespresso/resources/machineimage/Expert_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Expert_M.jpg&quot;);">
														<span>엑스퍼트</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay13();"
													data-src="/nespresso/resources/machineimage/Aeroccino-plus_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Aeroccino-plus_M.jpg&quot;);">
														<span>에어로치노+</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay14();"
													data-src="/nespresso/resources/machineimage/Aeroccino-3_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Aeroccino-3_M.jpg&quot;);">
														<span>에어로치노 3</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay15();"
													data-src="/nespresso/resources/machineimage/Aeroccino-4_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Aeroccino-4_M.jpg&quot;);">
														<span>에어로치노 4</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay16();"
													data-src="/nespresso/resources/machineimage/Essenza_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Essenza_M.jpg&quot;);">
														<span>에센자</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay17();"
													data-src="/nespresso/resources/machineimage/Maestria_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Maestria_M.jpg&quot;);">
														<span>마에스트리아</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay18();"
													data-src="/nespresso/resources/machineimage/Gran-Maestria_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Gran-Maestria_M.jpg&quot;);">
														<span>그랑 마에스트리아</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay19();"
													data-src="/nespresso/resources/machineimage/Creatista_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Creatista_M.jpg&quot;);">
														<span>크리아티스타 플러스</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay20();"
													data-src="/nespresso/resources/machineimage/Vertuoline_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Vertuoline_M.jpg&quot;);">
														<span>버츄오</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay21();"
													data-src="/nespresso/resources/machineimage/VertuoPlus_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/VertuoPlus_M.jpg&quot;);">
														<span>버츄오 플러스</span>
												</a></li>
												<li key="[object Object]" style="min-width: 24%;"><a
													href="javascript:doDisplay22();"
													data-src="/nespresso/resources/machineimage/Barista_M.jpg"
													lazy="loaded"
													style="background-image: url(&quot;/nespresso/resources/machineimage/Barista_M.jpg&quot;);">
														<span>바리스타</span>
												</a></li>
											</ul>
										</div>
								</div>
							</section>
						</div>
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
							<div id="aja1" style="display: none;">
							
							<iframe src="http://localhost:8080/nespresso/mmguide01.action"
							width="100%" scrolling="no" height="4300" frameborder="0"
							id="iFrameResizer0" style="overflow: hidden; height: 120vh;"
							data-gtm-yt-inspected-2212881_381="true"
							data-gtm-yt-inspected-2212881_756="true"></iframe>
							
								<!-- <section class="vue_headerMachine">
									<div class="v_sectionRestrict">
										<div class="v_sectionContent">
											<h1 tabindex="0">
												<span>머신 사용 안내</span> 에센자 미니
											</h1>
											<a class="v_link v_iconLeft v_arrowLink v-link-active"
												href="javascript:doDisplay();"> <span>다른 머신 선택하기</span>
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
																		<span class="v_visually_hidden">에센자 미니 C30 블랙</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11781122752542.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/11781122752542.png&quot;);"></div>
																	</button>
																</li>
																<li key="[object Object]">
																	<button aria-expanded="false">
																		<span class="v_visually_hidden">에센자 미니 C30 화이트</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11784668971038.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/11784668971038.png&quot;);"></div>
																	</button>
																</li>
																<li key="[object Object]">
																	<button aria-expanded="false">
																		<span class="v_visually_hidden">에센자 미니 D30 화이트</span>
																		<div class="v_image"
																			data-src="	https://www.nespresso.com/ecom/medias/sys_master/public/11781125734430.png"
																			lazy="loaded"
																			style="background-image: url(&quot;	https://www.nespresso.com/ecom/medias/sys_master/public/11781125734430.png&quot;);"></div>
																	</button>
																</li>
																<li key="[object Object]">
																	<button aria-expanded="false">
																		<span class="v_visually_hidden">에센자 미니 D30 레드</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11784666316830.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/11784666316830.png&quot;);"></div>
																	</button>
																</li>
																<li key="[object Object]">
																	<button aria-expanded="false">
																		<span class="v_visually_hidden">에센자 미니 D30 그린</span>
																		<div class="v_image"
																			data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10877444194334.png"
																			lazy="loaded"
																			style="background-image: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10877444194334.png&quot;);"></div>
																	</button>
																</li>
															</ul>
														</div>
														<div class="v_slide">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 에센자 미니
																C30 블랙
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11781122752542.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/11781122752542.png"
																lazy="loaded">
														</div>
														<div class="v_slide" style="display: none;">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 에센자 미니
																C30 화이트
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11784668971038.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/11784668971038.png"
																lazy="loaded">
														</div>
														<div class="v_slide" style="display: none;">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 에센자 미니
																D30 화이트
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11781125734430.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/11781125734430.png"
																lazy="loaded">
														</div>
														<div class="v_slide" style="display: none;">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 에센자 미니
																D30 레드
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/11784666316830.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/11784666316830.png"
																lazy="loaded">
														</div>
														<div class="v_slide" style="display: none;">
															<h4>
																<span class="v_visually_hidden">지금 보고있는 머신</span> 에센자 미니
																D30 그린
															</h4>
															<img alt=""
																data-src="https://www.nespresso.com/ecom/medias/sys_master/public/10877444194334.png"
																src="https://www.nespresso.com/ecom/medias/sys_master/public/10877444194334.png"
																lazy="loaded">
														</div>
														
													</div>
													<div class="v_manuals">
														<h3>사용 안내서</h3>
														<ul>
															<li key="[object Object]"><a target="_blank"
																class="v_link"
																href="http://localhost:8080/nespresso/resources/pdf/UM-NESPRESSO-ESSENZA-MINI-Z3-C-PROD-2017-02-20.pdf"
																key="[object Object]"> <strong>에센자 미니 C라인</strong> <small>4.20MB</small>
																	<em>한국어</em> <span class="v_visually_hidden">PDF
																		다운로드</span>
															</a></li>
															<li key="[object Object]"><a target="_blank"
																class="v_link"
																href="http://localhost:8080/nespresso/resources/pdf/UM-NESPRESSO-ESSENZA-MINI-Z3-D-PROD-2017-02-20.pdf"
																key="[object Object]"> <strong>에센자 미니 D라인</strong> <small>4.10MB</small>
																	<em>한국어</em> <span class="v_visually_hidden">PDF
																		다운로드</span>
															</a></li>
														</ul>
													</div>
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
													여기부터 사용법안내!!
													<div class="v_tabPanel v_tablelist v_instructions"
														id="panel_instructions"
														arial-labelledby="tab_instructions" role="tabpanel">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>사용법 안내 &amp; 동영상</h4>
														</div>
														<div class="v_tabPanelContainer">
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>처음 사용시 또는 장기간 미사용 후 사용시</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/first-use/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/first-use/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/ENERGY-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>에너지 절약 모드</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/energy-saving-concept/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>커피 추출하기</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/coffee-preparation/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/coffee-preparation/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/VOLUME-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/VOLUME-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>물의 양 설정하기</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/programming-water-volume/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/programming-water-volume/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/FEATURE-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/FEATURE-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>오랫동안 사용하지 않거나 수리를 보낼 경우</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/emptying-the-system/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/emptying-the-system/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/footer/step3.png&quot;);"></div>
																	<div class="v_content">
																		<h5>공장 출하 설정으로 초기화</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/reset-to-factory/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/DESCLAING-ALERT-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>디스케일링</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/%C2%A8descaling/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/%C2%A8descaling/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CLEAN-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>머신 청소하기</h5>
																		<p>
																			<a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/%EB%A8%B8%EC%8B%A0%20%EC%B2%AD%EC%86%8C%ED%95%98%EA%B8%B0/guide">
																				<span class="fn_arrowLink"></span> <span>가이드</span>
																			</a> <a class="v_link v_iconLeft"
																				href="#!/Essenza-Mini/instructions/%EB%A8%B8%EC%8B%A0%20%EC%B2%AD%EC%86%8C%ED%95%98%EA%B8%B0/video">
																				<span class="fn_arrowLink"></span> <span>동영상</span>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
													여기부터해결법
													<div class="v_tabPanel v_tablelist v_troubleshooting"
														id="panel_troubleshooting" arial-labelledby="tab_troubleshooting" role="tabpanel"
														style="display: none">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>해결법</h4>
														</div>
														DB해결법
														<div class="v_tabPanelContainer">
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>불빛이 들어오지 않습니다.</h5>
																		<div class="v_wysiwyg">전원, 플러그, 전압, 퓨즈를 확인합니다.
																			문제가 계속되면 네스프레소 클럽 080-734-1111 (24시간, 365일)으로 연락
																			주십시오.</div>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-ESPRESSO-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>커피나 물이 나오지 않습니다.</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>첫 사용시 : 물통에 따뜻한 물을 채우고 (최대 55°C) 머신을
																					작동시킵니다.</li>
																				<li>물통이 비었습니다. 물통을 채웁니다.</li>
																				<li>필요하면 디스케일링을 진행합니다. 디스케일링 방법 참조.</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>커피가 매우 천천히 나옵니다.</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>캡슐 종류에 따라 흐름 속도가 다릅니다.</li>
																				<li>필요하면 디스케일링을 진행합니다. 디스케일링 방법 참조.</li>
																			</ul>
																		</div>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-WARMING-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/CUP-WARMING-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>커피가 충분히 뜨겁지 않습니다.</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>물만 추출하여 컵을 미리 데워놓습니다.</li>
																				<li>필요하면 디스케일링을 진행합니다.</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>캡슐부에서 물이 샙니다 (캡슐 컨테이너에 물이 많습니다).</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>캡슐을 정확한 위치에 넣습니다. 문제가 계속 되면 네스프레소 클럽으로
																					연락주십시오. 080-734-1111 (24시간, 365일 수신자 부담)</li>
																			</ul>
																		</div>
																	</div>
																</div>
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/LIGHT-ALERT-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>불빛이 불규칙적으로 깜빡입니다.</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>네스프레소 클럽으로 연락주십시오. 080-734-1111 (24시간, 365일
																					수신자 부담) Club.</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															<div class="v_itemTable">
																<div class="v_item">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div>
																	<div class="v_content">
																		<h5>캡슐을 넣었지만 커피는 나오지 않고 물만 나옵니다.</h5>
																		<div class="v_wysiwyg">
																			<ul>
																				<li>네스프레소 클럽으로 연락주십시오. 080-734-1111 (24시간, 365일
																					수신자 부담)</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														DB해결법끝
													</div>
													여기부터 개요
													<div class="v_tabPanel v_tablelist v_overview"
														id="panel_overview" arial-labelledby="tab_overview"
														role="tabpanel" style="display: none">
														<div class="v_focusable v_visually_hidden" tabindex="0">
															<span>접속하였습니다</span>
															<h4>개요</h4>
														</div>
														DB개요
														<div class="v_tabPanelContainer">
															<h4>스펙</h4>
															<div class="v_itemTable"
																key="[object Object],[object Object]">
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div>
																	<div class="v_content">
																		<span><strong>무게</strong><span>2.3 kg</span></span>
																	</div>
																</div>
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/WATER-TANK-B.png&quot;);"></div>
																	<div class="v_content">
																		<span><strong>물통</strong><span>0.6 L</span></span>
																	</div>
																</div>
															</div>
															<div class="v_itemTable"
																key="[object Object],[object Object]">
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/COMPACT-B.png&quot;);"></div>
																	<div class="v_content">
																		<span>길이<span>8.4 X 33 X 20.4 cm</span></span>
																	</div>
																</div>
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/PRESSURE-B.png&quot;);"></div>
																	<div class="v_content">
																		<span><span>19 bar 압력</span></span>
																	</div>
																</div>
															</div>
															<div class="v_itemTable"
																key="[object Object],[object Object]">
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/AUTO-OFF-MODE-B.png&quot;);"></div>
																	<div class="v_content">
																		<span><strong>자동꺼짐 모드 : 9분</strong></span>
																	</div>
																</div>
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/USED-CAPSULES-CONTAINER-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/USED-CAPSULES-CONTAINER-B.png&quot;);"></div>
																	<div class="v_content">
																		<span><strong>캡슐 컨테이너 용량</strong><span>5-6</span></span>
																	</div>
																</div>
															</div>
															<div class="v_itemTable" key="[object Object]">
																<div class="v_item" key="[object Object]">
																	<div class="v_img"
																		data-src="https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png"
																		lazy="loaded"
																		style="background-image: url(&quot;https://www.nespresso.com/shared_res/machineassistance/images/icon/MACHINES-B.png&quot;);"></div>
																	<div class="v_content">
																		<span>보증 기간: 2년</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													사용법,해결법,개요끝
												</div>
											</div>
										</div>
									</div>
								</section> -->
							</div>
							
							<div id="aja2" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide02.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 140vh;;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja3" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide03.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 120vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja4" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide04.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 144vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja5" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide05.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 156vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja6" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide06.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 201vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja7" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide07.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 328vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja8" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide08.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 177vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja9" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide09.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 159vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja10" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide10.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 294vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja11" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide11.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 315vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja12" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide12.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 120vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja13" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide13.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 77vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja14" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide14.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 120vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja15" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide15.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 166vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja16" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide16.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 130vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja17" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide17.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 120vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja18" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide18.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 134vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja19" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide19.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 290vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja20" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide20.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 290vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja21" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide21.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 290vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							<div id="aja22" style="display: none;">
								<iframe src="http://localhost:8080/nespresso/mmguide22.action" width="100%" scrolling="no" height="4300" frameborder="0"
								id="iFrameResizer0" style="overflow: hidden; height: 220vh;" data-gtm-yt-inspected-2212881_381="true"
								data-gtm-yt-inspected-2212881_756="true"></iframe>
							</div>
							
							
							
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->						
						<section class="vue_footer">
						<div class="v_sectionRestrict">
							<div class="v_sectionContent">
								<h2 class="v_visually_hidden">네스프레소 어시스턴스 서비스</h2>
								<div class="v_footerContent v_tableRow">
									<div class="v_col50">
										<div class="v_col50">
											<h3>네스프레소 어시스턴스</h3>
											<div class="v_wysiwyg">
												<p>네스프레소 클럽 080-734-1111으로 전화 해주세요. 전문가의 신속한 기술 진단과 함께
													필요한 솔루션을 받으실 수 있습니다.</p>
												<!--p><a href="https://www.nespresso.com/kr/ko/flagship"> <span><u>네스프레소 플래그십 부티크</u></span></a>에 방문하시면, '머신 바로 점검 서비스'를 통해 보다 정확하고 상세한 안내를 받으실 수 있습니다.</p-->
											</div>
										</div>
										<div class="v_col50">
											<ol class="v_steps">
												<li key="[object Object]">
													<div class="v_wysiwyg">원하시는 주소로 커피 머신 수거가 가능합니다</div>
												</li>
												<li key="[object Object]">
													<div class="v_wysiwyg">수리 기간 동안 무상 커피 머신 대여 서비스를
														제공합니다</div>
												</li>
												<li key="[object Object]">
													<div class="v_wysiwyg">수리된 머신의 배송을 초기에 픽업하였던 주소로 다시
														배송해드립니다</div>
												</li>
											</ol>
										</div>
									</div>
									<div class="v_col25">
										<h3>머신 등록</h3>
										<div class="v_wysiwyg">
											<p>머신 구매 후 네스프레소 클럽에 처음 연락을 주실 때, 머신의 일련번호를 저희에게 알려주십시오.
												주문 및 머신 수리 서비스에 관한 혜택은 물론 사용 주기에 따른 맞춤 서비스를 제공합니다.</p>
										</div>
										<a class="v_link v_iconLeft"
											href="https://www.nespresso.com/mosaic/kr/ko/registration?execution=e1s1">
											<span class="fn_arrowLink"></span> <span>구입하신 네스프레소
												머신을 등록해주세요</span>
										</a>
									</div>
								</div>
							</div>
						</div>
						</section>
					</div>
				</div>
				<div id="faq" class="faq">
					<div class="wrapper">
						<iframe src="http://localhost:8080/nespresso/faqlist.action"
							width="100%" scrolling="no" height="4300" frameborder="0"
							id="iFrameResizer0" style="overflow: hidden; height: 4268px;"
							data-gtm-yt-inspected-2212881_381="true"
							data-gtm-yt-inspected-2212881_756="true"></iframe>
					</div>
				</div>
				<div id="download" class="download">
					<div class="wrapper">
						<div id="downloadList">
							<table cellspacing="0" cellpadding="0">
								<thead>
									<tr>
										<th>구분</th>
										<th>머신명</th>
										<th>Code</th>
										<th>사용 설명서</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="20">오리지널 머신</td>
										<td rowspan="2">에센자 미니</td>
										<td>C30</td>
										<td><a
											href="/nespresso/resources/pdf/UM-NESPRESSO-ESSENZA-MINI-Z3-C-PROD-2017-02-20.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>D30</td>
										<td><a
											href="/nespresso/resources/pdf/UM-NESPRESSO-ESSENZA-MINI-Z3-D-PROD-2017-02-20.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>이니시아</td>
										<td>C40/D40</td>
										<td><a
											href="/nespresso/resources/pdf/inissia_C_zone3A.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">유, 유밀크</td>
										<td>C50/D50</td>
										<td><a
											href="/nespresso/resources/pdf/www_U_Z3_NESPRESSO_ND(EN_KO_TW_CN_HK).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>C55</td>
										<td><a
											href="/nespresso/resources/pdf/www_UMilk_3C_NESPRESSO(EN_KO_HK_CN_TW).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>픽시</td>
										<td>C60</td>
										<td><a
											href="/nespresso/resources/pdf/www_Pixie_Z3_NESPRESSO(EN_CN_HK_TW_KO).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="3">시티즈</td>
										<td>C110/D110/C120</td>
										<td><a
											href="/nespresso/resources/pdf/www_CitiZ_C110_Z3_NESPRESSO(EN_KO).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>C112/D112/D122</td>
										<td><a
											href="/nespresso/resources/pdf/www_CitiZ_C112_Z3_NESPRESSO(EN_CN_HK_KR).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>C113/D113</td>
										<td><a
											href="/nespresso/resources/pdf/UM_NEW_QUICK_START_GUIDE_Z3.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>프로디지오, 프로디지오 앤 밀크</td>
										<td>C70/C75</td>
										<td><a
											href="/nespresso/resources/pdf/www_PRODIGIO_C_NESPRESSO_Z3(EN_CN_TW_KO_HK).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">엑스퍼트, 엑스퍼트 앤 밀크</td>
										<td>C80</td>
										<td><a
											href="/nespresso/resources/pdf/www_Expert_Z3_C_NESPRESSO(EN_CN_HK_KR_TW).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>C85</td>
										<td><a
											href="/nespresso/resources/pdf/www_Expert&Milk_Z3_C_NESPRESSO(EN_CN_HK_KR_TW).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>라티시마 스탠다드</td>
										<td>F316</td>
										<td></td>
									</tr>
									<tr>
										<td>라티시마 프리미엄</td>
										<td>F356</td>
										<td></td>
									</tr>
									<tr>
										<td>라티시마 플러스</td>
										<td>F411/416/F421</td>
										<td><a
											href="/nespresso/resources/pdf/www_Lattissima+_Z3B_DELONGHI(EN_TW_KR_CN).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>라티시마 터치</td>
										<td>F511</td>
										<td><a
											href="/nespresso/resources/pdf/www_LattissimaTouch_Z3C(EN_TW_KO_CN).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>라티시마 원</td>
										<td>F111</td>
										<td><a
											href="/nespresso/resources/pdf/UM_LATTISSIMA_ONE-SERVE_Z3C_PROD_WEB_2018_02_14.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>크리아티스타 플러스</td>
										<td>J520</td>
										<td><a
											href="/nespresso/resources/pdf/BNE800-J520-CREATISTAPLUS-UM-ASIA-IL-F17-LowRes.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>마에스트리아</td>
										<td>C500</td>
										<td><a
											href="/nespresso/resources/pdf/www_Maestria_Z3A_NESPRESSO(EN_KO_HK_TW_CN).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>그랑 마에스트리아</td>
										<td>C520</td>
										<td><a
											href="/nespresso/resources/pdf/www_GranMaestria_Z3_NESPRESSO(EN_KO_HK_TW_CN).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">버츄오 머신</td>
										<td>버츄오플러스</td>
										<td>GCB2</td>
										<td><a
											href="/nespresso/resources/pdf/UM_NEW_LAYOUT_VERTUO_2_WEB_2021_03_31.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>버츄오</td>
										<td>GCA1</td>
										<td><a
											href="/nespresso/resources/pdf/UM_EVOLUO_Z2_PROD_2017_05_01.pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="3">에어로치노</td>
										<td>에어로치노 4</td>
										<td>Aero4</td>
										<td><a
											href="/nespresso/resources/pdf/www_Aeroccino4_Z3(EN_KR_CN_HK_TW).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>에어로치노 3 리프레쉬</td>
										<td>Aero3 refresh</td>
										<td><a
											href="/nespresso/resources/pdf/www_Aeroccino3_Z3(EN_CN_KO_TW_HK).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>에어로치노 플러스</td>
										<td>Aero +</td>
										<td><a
											href="/nespresso/resources/pdf/www_Aeroccino+_Z2(EN_DE_FR_IT_ES_PT_NL_SV_DA_FI_NO_GR_RU_CZ_PL_HU).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="6">B2B 기업용 머신</td>
										<td>제니우스</td>
										<td>ZN 100</td>
										<td></td>
									</tr>
									<tr>
										<td rowspan="2">제미니</td>
										<td>CS100</td>
										<td></td>
									</tr>
									<tr>
										<td>CS220/223</td>
										<td><a
											href="/nespresso/resources/pdf/www_Gemini_CS200_CS220_Nespresso_SAFETY(EN_FR_DE_IT_ES_PT_NL_DA_SE_NO_FI_RU_PL_CZ_SI_BG_HU_RO_GR_TR_CN_TW_KR_MY_TH_AR).pdf"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="26px"
													height="30px"> <path fill-rule="evenodd"
													fill="rgb(0, 0, 0)"
													d="M6.452,15.196 L7.325,15.196 C7.702,15.196 8.072,15.242 8.247,15.567 C8.355,15.768 8.355,16.165 8.247,16.366 C8.072,16.691 7.702,16.736 7.325,16.736 L6.452,16.736 L6.452,15.196 ZM7.669,14.000 L5.000,14.000 L5.000,20.017 L6.452,20.017 L6.452,17.932 L7.669,17.932 C8.659,17.932 9.372,17.479 9.627,16.687 C9.778,16.211 9.778,15.712 9.627,15.242 C9.372,14.453 8.658,14.000 7.669,14.000 ZM12.053,15.279 L12.847,15.279 C13.603,15.279 14.130,15.561 14.311,16.329 C14.414,16.765 14.434,17.437 14.278,17.878 C14.073,18.450 13.669,18.740 13.072,18.740 L12.053,18.740 L12.053,15.279 ZM13.159,14.000 L10.602,14.000 L10.602,20.017 L13.159,20.017 C14.019,20.017 14.697,19.722 15.178,19.143 C16.066,18.069 16.117,15.822 15.078,14.748 C14.603,14.260 13.941,14.000 13.159,14.000 ZM21.000,14.000 L16.795,14.000 L16.795,20.017 L18.247,20.017 L18.247,17.614 L20.631,17.614 L20.631,16.419 L18.247,16.419 L18.247,15.279 L21.000,15.279 L21.000,14.000 ZM13.237,-0.000 L0.500,-0.000 L0.500,30.000 L25.500,30.000 L25.500,12.018 C25.500,9.028 17.189,-0.000 13.237,-0.000 ZM12.204,1.500 C17.397,1.500 16.500,9.000 16.500,9.000 C16.500,9.000 24.000,7.937 24.000,13.071 C24.000,15.382 24.000,28.500 24.000,28.500 L2.000,28.500 L2.000,1.500 C10.618,1.500 9.870,1.500 12.204,1.500 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">아길라</td>
										<td>AG220</td>
										<td></td>
									</tr>
									<tr>
										<td>AG420</td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<div id="clip" class="clip">
					<div class="wrapper">
						<div id="suspend">
							<table>
								<thead>
									<tr>
										<th>머신 그룹</th>
										<th>고장 의심 증상&nbsp;</th>
										<th>Youtube link</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="2">에센자 미니, 이니시아, 시티즈 FL등 버튼이 2개 있는 머신</td>
										<td>커피 추출량이 달라 졌어요 (초기화 방법 안내)</td>
										<td><a href="https://youtu.be/40VwjlalOEc"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>물이 계속 나와요 (디스케일링 해제 방법 안내)</td>
										<td><a href="https://youtu.be/sMzOwtHzSxo"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">픽시, 시티즈, 에센자 등 전원 버튼이 있는 머신</td>
										<td>커피 추출량이 달라 졌어요 (초기화 방법 안내)</td>
										<td><a href="https://youtu.be/2Rxf_39srGw"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>물이 계속 나와요 (디스케일링 해제 방법 안내)</td>
										<td><a href="https://youtu.be/VynUk_f2FwY"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="4">유</td>
										<td>커피 추출량이 달라 졌어요 (초기화 방법 안내)</td>
										<td><a href="https://youtu.be/IB-D-BduAZQ"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>물이 계속 나와요 (디스케일링 해제 방법 안내)<br> = 버튼 깜박임에 따른 조치법
											(리스트레토, 에스프레소, 룽고 동시 깜빡)
										</td>
										<td><a href="https://youtu.be/FqVdil3FxLM"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>버튼 깜빡임에 따른 조치법 (룽고 → 에스프레소 → 리스트레토)&nbsp;</td>
										<td><a href="https://youtu.be/FqVdil3FxLM"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>버튼 깜빡임에 따른 조치법 (리스트레토 → 에스프레소 → 룽고 )&nbsp;</td>
										<td><a href="https://youtu.be/FqVdil3FxLM"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="4">엑스퍼트</td>
										<td rowspan="2">블루투스 페어링이 되지 않아요 (페어링 방법 안내)</td>
										<td>안드로이드<br>
										<a href="https://youtu.be/bsRp---LaDY" target="_blank"><svg
													xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a>
										</td>
									</tr>
									<tr>
										<td style="display: none;">블루투스 페어링이 되지 않아요(아이폰) (페어링 방법
											안내)</td>
										<td>아이폰<br>
										<a href="https://youtu.be/f38Op2zoVX8" target="_blank"><svg
													xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>유지 보수 표시 안내등 (50 Sec)</td>
										<td><a href="https://youtu.be/DBONJk5HKr0"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>머신 초기화 방법</td>
										<td><a href="https://youtu.be/LyM2b-Emq1s"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td rowspan="2">버츄오</td>
										<td>버튼 깜빡임에 따른 조치법 (5가지)_Full version</td>
										<td><a href="https://youtu.be/7uT3gqC2Uh0"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>버튼 깜빡임에 따른 조치법 (5가지)_요약본</td>
										<td><a href="https://youtu.be/j5AhZPBQz84"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>모든 머신</td>
										<td>머신에서 물이 새요</td>
										<td><a href="https://youtu.be/1CM56qPe_YI"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
									<tr>
										<td>라티시마 터치</td>
										<td>커피 추출량이 달라 졌어요 (초기화 방법 안내)</td>
										<td><a href="https://youtu.be/nocUT6tK-aY"
											target="_blank"><svg xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="30px"
													height="24px"> <path fill-rule="evenodd"
													fill="rgb(255, 0, 0)"
													d="M11.250,17.000 L11.250,7.000 L21.250,11.991 L11.250,17.000 ZM24.519,0.980 C20.013,0.673 9.980,0.674 5.481,0.980 C0.610,1.313 0.037,4.255 -0.000,12.000 C0.037,19.731 0.605,22.687 5.481,23.020 C9.980,23.326 20.013,23.327 24.519,23.020 C29.390,22.687 29.963,19.745 30.000,12.000 C29.963,4.269 29.395,1.313 24.519,0.980 Z"></path>
												</svg></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="compare" class="compare">
					<span id="a11y-main-area" class="visually-hidden" tabindex="-1">메인
						컨텐츠를 보고 계십니다.</span>
					<div id="block-8810057520629" class="free-html" data-label="">
						<div class="g g_tutorial">
							<div class="g_breadcrumb">
								<!-- <nav class="g_nav g_fixed">
								<div class="g_restrict">
									<div class="g_fil">
										<ol>
											<li><a href="./choose-your-system" class=""><span
													class="">선택하기</span></a></li>
											
										</ol>
									</div>
									<div class="g_mobileMenu">
										<button class="g_btnMenu g_txt_S">
											<span class="">선택하기</span><i class="fn_angleDown"></i>
										</button>
										<div class="g_mobileMenuList">
											<ul>
												<li><a href="./discover-original-coffee-machines "
													class=""><span class="">오리지널 머신</span></a></li>
												<li><a href="./vertuo-coffee-machines-ranges " class=""><span
														class="">버츄오 머신</span></a></li>
												<li><a href="./choose-your-system" class="g_selected"><span
														class="">선택하기</span></a></li>
												<li><a href="./machine-assistance" class=""><span
														class="">머신 사용 안내</span></a></li>
												<li><button class="">
														<span class="">구매하기</span>
													</button></li>
											</ul>
										</div>
									</div>
									<div class="g_menu">
										<ul>
											<li><a href="./discover-original-coffee-machines "
												class="g_btn"><span class="">오리지널 머신</span></a></li>
											<li><a href="./vertuo-coffee-machines-ranges "
												class="g_btn"><span class="">버츄오 머신</span></a></li>
											<li><a href="./choose-your-system"
												class="g_btn g_selected"><span class="">선택하기</span></a></li>
											<li><a href="./machine-assistance" class="g_btn"><span
													class="">머신 사용 안내</span></a></li>
											<li><button class="g_btn g_btnBuy">
													<span class="">구매하기</span>
												</button></li>
										</ul>
									</div>
								</div>
								</nav> -->
								<div tabindex="-1" aria-hidden="true"></div>
								<!---->
							</div>
							<section id="banner" data-label=""
								class="g_section g_hero g_autoHeight" constrast="dark">
							<div class="g_bg g_imgSrc g_imgSrc_loaded"
								style="background-image: url(&quot;/nespresso/resources/img/machine/coffee_beans_L.jpg&quot;);"></div>
							<div class="g_restrict">
								<div class="g_content">
									<div class="g_text">
										<!---->
										<p class="g_h1">두 가지의 특별한 커피 경험</p>
										<!---->
										<!---->
									</div>
								</div>
							</div>
							</section>
							<div class="g_bothOverflow"
								style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
								<div class="g_both">
									<div id="original" class="g_sectionCell" style="width: 50%;">
										<div class="g_debugIECell">
											<button class="g_sideSwitcher" slot="columnLeft">
												<img aria-hidden="true"
													class="g_visual g_logo g_imgSrc g_imgSrc_loaded"
													src="/nespresso/resources/img/machine/ol_capsule_side_L.png">
												<div class="g_title">오리지널 자세히 보기</div>
											</button>
											<div class="g_foreground g_text"
												style="transform: translate(0%, 0px);">
												<img class="g_visual g_imgSrc g_imgSrc_loaded"
													src="/nespresso/resources/img/machine/ol_split_cup_L.png">
												<h2 class="g_h2">
													<strong>ORIGINAL</strong> <span>The<br>classic
														espresso experience
													</span>
												</h2>
												<div class="g_wysiwyg g_txt_M">
													<p>
														<b>클래식한 에스프레소 고압 추출 :</b><br>오리지널은 클래식한 에스프레소 고압 추출
														방식의 커피 시스템으로 에스프레소와 룽고는 물론, 에스프레소에 물을 추가해 아메리카노를 즐길 수
														있습니다.
													</p>
												</div>
												<button class="g_link g_iconRight" onclick="location.href='http://localhost:8080/nespresso/m_original.action';">
													<span class="">오리지널 자세히 보기</a></span><!-- <i class="fn_angleLink"></i> -->
													<i class="fas fa-angle-right" aria-hidden="true"></i>
												</button>
											</div>
											<section id="originalFull" data-label=""
												class="g_section g_full g_ol">
											<div class="g_bg g_imgSrc g_imgSrc_loaded"
												style="background-color: rgb(24, 24, 24); background-image: url(&quot;/shared_res/agility/define/tutorial/img/backgrounds/ol_cups_capsules_black_L.jpg&quot;);"></div>
											<div class="g_restrict">
												<div class="g_content">
													<div class="g_text">
														<div class="g_text g_trueText">
															<h2 class="g_h2" aria-hidden="true">
																<strong>ORIGINAL</strong> <span>THE CLASSIC
																	ESPRESSO EXPERIENCE</span>
															</h2>
															<div class="g_wysiwyg g_txt_XL">
																<p>시간을 초월한 클래식한 에스프레소 커피 경험</p>
															</div>
															<ul class="g_center g_features g_row">
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">고압 추출</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">다양한 아로마</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">완벽한 커피</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">밀크 커피</p>
																</li>
															</ul>
															<div>
																<a href="./original-classic-espresso-experience"
																	class="g_btn g_btnBuy"><span class="">오리지널
																		자세히 보기</span></a>
															</div>
															<!---->
														</div>
														<!---->
													</div>
												</div>
											</div>
											</section>
											<img class="g_visual g_product g_imgSrc g_imgSrc_loaded"
												src="/nespresso/resources/img/machine/ol_machine_side_cut_L.png">
										</div>
									</div>
									<!-- <div aria-hidden="true" class="g_rangeSliderCell">
										<div class="g_rangeSlider">
											<div class="g_rangeSliderDrag">
												<button class="g_btnLeft"></button>
												<button class="g_btnRight" style="width: 26px;"></button>
											</div>
										</div>
									</div> -->
									<div id="vertuo" class="g_sectionCell g_light"
										style="width: 50%;">
										<div class="g_debugIECell">
											<button class="g_sideSwitcher" slot="columnRight">
												<img aria-hidden="true"
													class="g_visual g_logo g_imgSrc g_imgSrc_loaded"
													src="/nespresso/resources/img/machine/vl_capsule_side_L.png">
												<div class="g_title">버츄오 자세히 보기</div>
											</button>
											<div class="g_foreground g_text"
												style="transform: translate(0%, 0px);">
												<img class="g_visual g_imgSrc g_imgSrc_loaded"
													src="/nespresso/resources/img/machine/vl_split_cup_L.png">
												<h2 class="g_h2">
													<strong>VERTUO</strong> <span>The full range<br>of
														coffee styles
													</span>
												</h2>
												<div class="g_wysiwyg g_txt_M">
													<p>
														<b>혁신적인 센트리퓨전 회전 추출 :</b><br>버츄오는
														센트리퓨전(Centrifusion™) 회전 추출 방식의 커피 시스템으로 풍성한 크레마와 깊은 바디감의
														커피를 에스프레소부터 머그 이상의 큰 컵까지 5가지 커피 스타일로 즐길 수 있습니다.
													</p>
													
												</div>
												<button class="g_link g_iconRight" onclick="location.href='https://www.nespresso.com/kr/ko/vertuo-coffee-redefined';">
													<span class="">버츄오 자세히 보기</span><!-- <i class="fn_angleLink"></i> -->
													<i class="fas fa-angle-right" aria-hidden="true"></i>
												</button>
											</div>
											<section id="vertuoFull" data-label=""
												class="g_section g_full g_vl" slot="bgRight">
											<div class="g_bg g_imgSrc g_imgSrc_loaded"
												style="background-color: white; background-image: url(&quot;/nespresso/resources/img/machine/vl_cups_capsules_white_L.jpg&quot;);"></div>
											<div class="g_restrict">
												<div class="g_content">
													<div class="g_text">
														<div class="g_text g_trueText">
															<h2 class="g_h2" aria-hidden="true">
																<strong>VERTUO</strong> <span>YOUR FULL RANGE OF
																	COFFEE STYLES</span>
															</h2>
															<div class="g_wysiwyg g_txt_XL">
																<p>혁신적인 회전 추출로 탄생한 풍성한 크레마와 깊은 바디감의 커피</p>
															</div>
															<ul class="g_center g_features g_row">
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">혁신적인 센트리퓨전(Centrifusion)™ 회전 추출</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">
																		풍성한 크레마와<br>깊은 바디감
																	</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">
																		최적의 커피를 위한<br>원터치 바코드 테크놀로지
																	</p>
																</li>
																<li class="g_feature">
																	<!---->
																	<p class="g_h4">다양한 5가지 커피 스타일</p>
																</li>
															</ul>
															<div>
																<a href="./vertuo-coffee-redefined"
																	class="g_btn g_btnBuy"><span class="">버츄오
																		자세히 보기</span></a>
															</div>
															<!---->
														</div>
														<!---->
													</div>
												</div>
											</div>
											</section>
											<img class="g_visual g_product g_imgSrc g_imgSrc_loaded"
												src="/nespresso/resources/img/machine/vl_machine_side_cut_L.png">
										</div>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript"
							src="https://www.nespresso.com/shared_res/agility/define/js/manifest.js"></script>
						<script type="text/javascript"
							src="https://www.nespresso.com/shared_res/agility/define/js/vendor.js"></script>
						<script type="text/javascript"
							src="https://www.nespresso.com/shared_res/agility/define/js/Tutorial.js"></script>
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


<!-- footer 하단 -->

<footer role="contentinfo">
  <div id="footer" class="footer-block">
   <h2 class="visually-hidden">웹사이트 하단</h2>
    <div id="CompanyFooterRespBlock-8797707806480-c69290b8-4a6a-48d1-95d1-4c6d16782755" class="crema-ui-container ">
    	<div class="Footer ResponsiveContainer">
    		<div class="Footer__bar">
    			<div class="Footer__intl">
    				<h3 class="VisuallyHidden">언어 및 국가 선택</h3>
    				<a href="/kr/ko/country" class="AccessibleLink Footer__countries-page-link">
    					<span class="VisuallyHidden">현재 대한민국 웹사이트에 접속 중이십니다. 국가 변경을 원하시면, 여기를 클릭하세요.</span>
    					<span class="CountryFlag Footer__country-flag">
    						<img width="24" height="25" srcset="https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=24 1x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=48 2x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=72 3x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=96 4x" src="https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=24" role="presentation" class="ResponsiveImage CountryFlag__image" alt="">
    					</span>
    				</a>
<script type="text/javascript">

$(function(){
	$(document).mousedown(function( e ){
		if( $("#lang_dropdown").is(":visible") ) {
			$("#lang_dropdown").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					$(this).hide();
					$('#lang_btn').removeClass('LanguageSwitcher__button active');
					$('#lang_btn').addClass('LanguageSwitcher__button');
					$('#lang_dropdown').css('display','none');
					$('#lang_btn').attr('aria-expanded','false');
				}
			});
		}
	});
});	

$(document).ready(function(){
	
	$('#lang_dropdown').css('display','none');
	
	$('#lang_btn').click(function(){
		
		if($('#lang_dropdown').is(':visible')==false) {
			
			$('#lang_btn').removeClass('LanguageSwitcher__button');
			$('#lang_btn').addClass('LanguageSwitcher__button active');
			$('#lang_dropdown').css('display','block');
			
			$('#lang_btn').attr('aria-expanded','true');
			
		}else{
			
			$('#lang_btn').removeClass('LanguageSwitcher__button active');
			$('#lang_btn').addClass('LanguageSwitcher__button');
			$('#lang_dropdown').css('display','none');
			
			$('#lang_btn').attr('aria-expanded','false');
		}
	});
}); 



</script>    				
    				<div class="LanguageSwitcher Footer__language-switcher">
	    				<button id="lang_btn" class="LanguageSwitcher__button" aria-expanded="false">한국어
	    					<i aria-hidden="true" class="Glyph Glyph--arrow-bottom LanguageSwitcher__button-icon"></i>
	    				</button>
	    				<ul id="lang_dropdown" class="Footer__language-switcher-dropdown LanguageSwitcher__dropdown">
	    					<li class="LanguageSwitcher__item">
	    						<a class="AccessibleLink LanguageSwitcher__link" href="/nespresso/en">English</a>
	    					</li>
	    					<li class="LanguageSwitcher__item">
	    						<a class="AccessibleLink LanguageSwitcher__link" href="/nespresso/home">한국어</a>
	    					</li>
	    				</ul>
    				</div>
    			</div>
    			<div class="Footer__links">
    				<h3 class="VisuallyHidden">웹사이트 링크</h3>
    				<ul class="FooterLine FooterLine--primary">
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/terms-and-condition" target="_blank">판매이용약관
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/privacy-policy" target="_blank">개인정보 처리방침</a>
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/cookies">쿠키
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    						
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/service-customer-care">고객지원
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/pro/kr/ko/" target="_blank">네스프레소 프로페셔널
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    				</ul>
    				<ul class="FooterLine">
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/recipes/kr/ko/coffe0e-recipes.html" target="_blank">커피 레시피
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/glossary" target="_blank">용어찾기
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="http://www.nestle-nespresso.com/" target="_blank">회사소개
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/careers/?m=KR&amp;l=KO#/">채용</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/sitemap" target="_blank">사이트맵
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/accessibility">웹 접근성</a>
    					</li>
    				</ul>
    			</div>
    		</div>
    		<div class="Footer__bottom">
    			<div class="SocialLink">
    				<h3 class="VisuallyHidden">소셜미디어 링크</h3>
    				<span class="SocialLink__label">네스프레소 계정을 팔로우 하세요</span>
    				<ul class="SocialLink__list">
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.instagram.com/nespresso.kr/" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Nespresso Instagram">
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
	    						<a class="AccessibleLink SocialLink__item-link" href="https://www.facebook.com/nespresso" target="_blank">
	    						<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="페이스북">
	    						<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.youtube.com/user/nespresso" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="YouTube">
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://twitter.com/nespresso" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Twitter">
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.pinterest.co.kr/nespresso/" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Pinterest">
    							<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    						</a>
    					</li>
    				</ul>
    			</div>
    			<a class="Footer__top-page-link" href="#top">맨 위로 가기<span class="Footer__top-page-link-icon" aria-hidden="true">^</span></a>
    			<div class="FooterCopyright">
    				<a class="AccessibleLink FooterLink" href="http://localhost:8080/nespresso/home" target="_blank">
    					<img width="55" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=55 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=110 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=165 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=220 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=55" class="ResponsiveImage FooterCopyright__picture" alt="Nespresso KR Homepage">
    					<span class="VisuallyHidden">이 링크는 새로운 창을 엽니다.</span>
    				</a>
    				<span><em>Nespresso</em> S.A. 2021</span>
    			</div>
    		</div>
    	</div>
    </div>
<script>
              window.ui = window.ui || [];
              window.ui.push({"id":"CompanyFooterRespBlock-8797707806480-f034d0cc-fa27-49c2-af24-4611392d490b","module":"Footer","configuration":{"translations":{"companyfooterrespblock.a11y.sociallinks.title":"소셜미디어 링크","companyfooterrespblock.a11y.link.target.blank":"새 창에서 링크가 열립니다.","companyfooterrespblock.a11y.languageandcountry.title":"언어 및 국가 선택","companyfooterrespblock.a11y.currentcountries.label":"현재 대한민국 웹사이트에 접속 중이십니다. 국가 변경을 원하시면, 여기를 클릭하세요.","companyfooterrespblock.a11y.websitelinks.title":"웹사이트 링크"},"props":{"meta":{"uid":"CompanyFooterRespBlock-8797707806480-33848249-bb43-4642-a6a1-04371a857eb7","restrictions":[],"tracking":null},"copyrightLabel":"<em>Nespresso</em> S.A. 2021","topPageLinkLabel":"맨 위로 가기","logoLink":{"meta":{"uid":"respFooterLogoImageLink-8831166448700-8c40b4ad-519c-4740-ac15-21ea4c4322f8","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterLogoLink-8810260157939-b5ca70d5-6157-4fd4-b7fe-df22dcf3f6e5","restrictions":[],"tracking":null},"name":"Nespresso KR Homepage","url":"/kr/ko/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg","altText":"Nespresso Logo"}},"line1Links":[{"meta":{"uid":"respFooterL1LegalLink-8810259961331-c31c00ca-ecb9-4cf3-912f-f2a57035d1fd","restrictions":[],"tracking":null},"name":"판매이용약관","url":"/kr/ko/terms-and-condition","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1PrivacyPolicyLink-9046867432947-9273100e-5f87-4805-ba5f-1f96a56032f8","restrictions":[],"tracking":null},"name":"개인정보 처리방침","url":"/kr/ko/privacy-policy","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooter1CookieLink-9046966588915-38b25389-022c-4a20-8766-9be06e98cd7f","restrictions":[],"tracking":null},"name":"쿠키","url":"/kr/ko/cookies","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1ContactLink-8810259994099-b5e70dac-746e-45ba-b3f9-21305f2ced9b","restrictions":[],"tracking":null},"name":"고객지원","url":"/kr/ko/service-customer-care","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1BusinessSolutionsLink-8810260059635-40976511-99ea-42b9-baa5-847d5b91a14f","restrictions":[],"tracking":null},"name":"네스프레소 프로페셔널","url":"http://www.nespresso.com/pro/kr/ko/home","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"line2Links":[{"meta":{"uid":"respFooterL2RecipeLink-8811103966707-b8631883-a2bf-401c-b8ff-5bddb73ba556","restrictions":[],"tracking":null},"name":"커피 레시피","url":"https://www.nespresso.com/recipes/kr/ko/coffee-recipes.html","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2GlossaryLink-8810260026867-b52ab26e-7af1-46df-9203-7721904166f4","restrictions":[],"tracking":null},"name":"용어찾기","url":"/kr/ko/glossary","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AboutUsLink-8810260125171-3365b7ac-588a-4ba5-b0a8-f7285079e924","restrictions":[],"tracking":null},"name":"회사소개","url":"http://www.nestle-nespresso.com/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2careerLink-8812190324211-4cf26868-d7d5-49b4-80c0-9cdac3313229","restrictions":[],"tracking":null},"name":"채용","url":"https://www.nespresso.com/careers/?m=KR&l=KO#/","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2SitemapLink-8810260092403-1e00f17f-7353-48ec-817b-08aa5c9cc3c0","restrictions":[],"tracking":null},"name":"사이트맵","url":"/kr/ko/sitemap","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AccessibilityLink-8811823191539-72af4533-ddeb-47d2-b03b-6c595f2a0eac","restrictions":[],"tracking":null},"name":"웹 접근성","url":"/kr/ko/accessibility","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"countriesPageLink":{"meta":{"uid":"respCMSSiteCountriesLink-8810918696435-15ac9b42-d7e2-44d4-9188-3f121d8c97d4","restrictions":[],"tracking":null},"name":"국가 및 언어 선택","url":"/kr/ko/country","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"followLabel":"네스프레소 계정을 팔로우 하세요","socialLinks":[{"meta":{"uid":"respFooterSocialInstaImageLink-8832763692092-cb7aa160-81e6-413a-95f3-e2ae595c52fe","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialInstaLink-8811724953075-b569df9f-3fff-4f29-96f9-bd32ad5fb7c3","restrictions":[],"tracking":null},"name":"Nespresso Instagram","url":"https://www.instagram.com/nespresso.kr/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg","altText":"Nespresso Instagram"}},{"meta":{"uid":"respFooterSocialFacebookImageLink-8831166481468-271660cf-e3a8-4fec-8da5-f9bebad4bd9c","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialFacebookLink-8810260190707-6a8cc139-536a-4f5e-94d4-4309dc12ddd3","restrictions":[],"tracking":null},"name":"페이스북","url":"https://www.facebook.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg","altText":"Nespresso Facebook"}},{"meta":{"uid":"respFooterSocialYoutubeImageLink-8831166514236-91f8fece-a81a-46a4-b293-c75ab719e0dc","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialYoutubeLink-8810260256243-6b174715-af9c-422a-a57a-f00a9498cafa","restrictions":[],"tracking":null},"name":"YouTube","url":"https://www.youtube.com/user/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg","altText":"Nespresso Youtube"}},{"meta":{"uid":"respFooterSocialTwitterImageLink-8831166547004-b7c45472-27fb-41d9-bf78-1dbfdf37a586","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialTwitterLink-8810260223475-eef7596f-18fe-4fa1-ac1a-f03b2145d77b","restrictions":[],"tracking":null},"name":"Twitter","url":"https://twitter.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg","altText":"Nespresso Twitter"}},{"meta":{"uid":"respFooterSocialPinterestImageLink-8831166579772-54ecfb83-e05b-48d3-9bf6-1704f2836f50","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialPinterestLink-8810260289011-43369abd-4bae-446a-8318-8ba2ea523b95","restrictions":[],"tracking":null},"name":"Pinterest","url":"https://www.pinterest.com/nespresso/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg","altText":"Nespresso Pinterest"}}]},"eCommerceData":null}});
            </script>
        <div id="block-8811141060085" class="free-html" data-label="">
    <style>
#truste-consent-track{position:relative!important;top:75px!important}
@media screen and (max-width:995px){#truste-consent-track{position:relative!important;top:50px!important}}
</style></div>

<div id="block-8811141518837" class="free-html" data-label="">
    <div class="footer-local ResponsiveContainer">		
	<div id="local-elements">
		<h3 class="visually-hidden">Website links</h3>
		<ul>
			<li>상호 : 네슬레코리아 유한책임회사</li>
			<li>대표자 : 카스텐 퀴메</li>
			<li>사업자등록번호 : 110-86-10100</li>
			<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1108610100" target="_blank">통신판매업신고 : 2014-서울서대문-0247</a></li>
        </ul>
		<ul>
<li><a href="https://www.nespresso.com/kr/DebtGuaranteeInsurancePop
" target="_blank">채무지급보증안내</a></li>
			<li><a href="tel:0807341111">대표번호 : 080-734-1111</a></li>
           <li><!--a href="https://www.nespresso.com/kr/en/contactus?icid=B2C_KRko_Homepage_AssistanceBand_contactus" target="_blank"-->이메일 : club.korea@nespresso.com<!--/a--></li>
            <li>주소 : 서울시 서대문구 충정로70 웨스트게이트타워 16층</li>
		</ul>
    </div>
</div>
<style>
body {word-break:keep-all !important;}
.footer-local {display:flex;}
.footer-local {padding:0 0 15px;}
.footer-local a {color:#986f38;}
@media screen and (min-width: 768px) {
#local-elements {flex-basis: auto;flex: 1;padding:0 12px;}
#local-elements > ul {display:flex;justify-content: center;text-align:center;padding: 0 0 2px;font-size: 0.7rem;}
#local-elements > ul  > li {padding:0 0 0 10px;}
}
@media screen and (max-width: 767px) {
#local-elements {flex-basis: auto;flex: 1;padding:0 12px;}
#local-elements > ul {display: inherit;justify-content: center;text-align:center;padding: 0 0 2px;font-size: 0.7rem;}
#local-elements > ul  > li {padding:0;}
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
    <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk=" style="">
    <!--  <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk="/>  // kr -->
    <!-- 	<input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MTIyMDA5NTU0OTEwODM5Mjg="/> // eng -->
		<input type="text" name="keyword" value="">
		<input type="button" id="searchbtn" onclick="enterSearch();" value="주소 검색">
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
.displaynone {
  display: none !important;
}
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
#kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
  display: inline;
}
.input-group .input-label {
  white-space: unset !important;
}
.input-row__secondPhone {
  display: none !important;
}
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
@media (min-width: 320px) and (max-width: 767px) {
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
@media (min-width: 768px) and (max-width: 995px) {
  #jusopop .wrapper {
    width: 80%;
    min-height: 80%;
    padding: 30px;
  }
  #kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
    width: 70%;
  }
  .input-group input[type=email], .input-group input[type=password], .input-group input[type=tel], .input-group input[type=text] {
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
@media (min-width: 996px) {
  #jusopop .wrapper {
    width: 50%;
    min-height: 50%;
    padding: 50px;
  }
  #jusopop input[name='keyword'] {
    width: 74%;
  }
  #kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
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
    <div id="account-not-activated-lightbox" class="confirm-info-dialog display-none responsive-popin" data-nes-lightbox="account-not-activated-lightbox" data-dlg-attributes="
    {
        &quot;autoOpen&quot;: false,
        &quot;width&quot;: 838,&quot;dialogClass&quot;: &quot;popin-dialog-open dark popin-page&quot;,&quot;closeText&quot;: &quot;&quot;
    }
    ">
    <div>
        <div>
            <div class="art-title popin-title">
        가입 절차가 완료되지 않았습니다.</div>
      <div class="text-center popin-content">
        <p class="subtitle">
          발송된 이메일에 제공된 링크를 클릭해주세요. 메일을 받지 못하신 경우 아래 버튼을 클릭하여 재발송 해주시기 바랍니다.</p>
        <a class="btn button-grey button-primary button-grey-shadow dialog__ok-button" title="이메일 다시 보내기">
          이메일 다시 보내기</a>
      </div>
    </div>
    </div>
</div></div></footer>

</body>
</html>