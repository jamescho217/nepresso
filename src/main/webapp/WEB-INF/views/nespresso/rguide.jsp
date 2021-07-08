<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String uri = request.getRequestURI();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

#app {
	line-height: 1.4;
	font-size: 14px;
	letter-spacing: -0.5px;
	color: #000;
}

#app .clearfix::before, #app #app .clearfix::after {
	flex-basis: 0;
	order: 1;
}

#app .heading-1 {
	font-size: 30px;
}

#app .heading-2 {
	font-size: 25px;
}

#app a {
	text-decoration: none;
	color: inherit;
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
	color: #986f38;
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

#app #contents>div dl>dd {
	letter-spacing: -0.5px;
	position: relative;
}

#app #contents>div dl>dd label {
	font-weight: 600;
	text-transform: uppercase;
}

#app #contents>div.active {
	display: block;
}

@media ( min-width : 320px) and (max-width: 767px) {
	#app {
		font-size: 11px;
	}
	#app .heading-1 {
		font-size: 25px;
	}
	#app .heading-2 {
		font-size: 18px;
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
		white-space: nowrap;
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
		display: none;
	}
	#app #navi .menu2depth a {
		color: #000;
		font-size: 11px;
	}
	#app #navi .menu2depth a svg {
		height: 20px;
		fill: #000;
	}
	#app #contents .container-flex {
		display: unset;
	}
	#app #contents .wrapper {
		width: 80vw;
		max-width: 100%;
		margin: 0 auto;
		letter-spacing: -0.5px;
	}
	#app #contents .table {
		font-size: 11px;
	}
	#app #contents .table thead th {
		color: #fff !important;
	}
	#app #contents .pickup label, #app #contents .repair label, #app #contents .maintenance label
		{
		width: 100%;
	}
	#app #contents .pickup h2, #app #contents .repair h2, #app #contents .maintenance h2
		{
		font-size: 18px;
	}
	#app #contents .pickup dl dd, #app #contents .repair dl dd, #app #contents .maintenance dl dd
		{
		display: flex;
		flex: 0 1 auto;
		flex-wrap: wrap;
		margin: 20px 0;
		padding: 20px 20px 10px;
		border: 1px solid #bcbcbc;
		border-radius: 10px;
		justify-content: space-between;
	}
	#app #contents .pickup dl dd svg, #app #contents .repair dl dd svg, #app #contents .maintenance dl dd svg
		{
		height: 20px;
		justify-content: end;
	}
	#app #contents .pickup dl dd p, #app #contents .repair dl dd p, #app #contents .maintenance dl dd p
		{
		margin: 20px 0 10px;
		width: 100%;
	}
}

@media ( min-width : 768px) and (max-width: 995px) {
	#app .wrapper {
		width: 90vw;
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
	#app #contents>div .heading-1 {
		display: block;
		border-bottom: 1px solid #707070;
		padding: 0 0 5px;
		margin: 0 0 10px;
	}
	#app #contents .pickup dl.container-flex, #app #contents .maintenance dl.container-flex
		{
		flex-wrap: wrap;
		margin: 30px 0;
	}
	#app #contents .pickup dl.container-flex dd, #app #contents .maintenance dl.container-flex dd
		{
		box-sizing: content-box;
		border: 1px solid #bcbcbc;
		border-radius: 10px;
		text-align: center;
		width: calc(32.33% - 32px);
		height: 300px;
		margin: 0 1% 5px 0;
		padding: 15px;
	}
	#app #contents .pickup dl.container-flex dd:nth-child(3n), #app #contents .maintenance dl.container-flex dd:nth-child(3n)
		{
		margin-right: 0;
	}
	#app #contents .pickup dl.container-flex dd label, #app #contents .maintenance dl.container-flex dd label
		{
		text-transform: uppercase;
		margin: 10px 0 0;
		display: block;
	}
	#app #contents .pickup dl.container-flex dd .heading-2, #app #contents .maintenance dl.container-flex dd .heading-2
		{
		font-size: 20px;
	}
	#app #contents .pickup dl.container-flex dd .text, #app #contents .maintenance dl.container-flex dd .text
		{
		color: #707070;
		font-size: 13px;
		margin: 0px 0 10px;
		line-height: 1.6;
	}
	#app #contents .pickup dl.container-flex dd svg, #app #contents .maintenance dl.container-flex dd svg
		{
		height: 50px;
		margin: 30px 0;
	}
	#app #contents .pickup dl.container-flex dd .ref, #app #contents .maintenance dl.container-flex dd .ref
		{
		font-size: 11px;
	}
	#app #contents #pickup dl.container-flex dd svg {
		height: 50px;
		margin: 30px 0;
	}
	#app #contents #repair dl.container-flex {
		margin: 30px 0;
	}
	#app #contents #repair dl.container-flex dd {
		width: calc(49% - 32px);
		text-align: center;
		border: 1px solid #bcbcbc;
		border-radius: 10px;
		padding: 15px;
	}
	#app #contents #repair dl.container-flex dd:first-child {
		margin-right: 1%;
	}
	#app #contents #repair dl.container-flex dd:first-child svg {
		height: 50px;
		margin: 20px 0;
	}
	#app #contents #repair dl.container-flex dd:last-child {
		margin-left: 1%;
	}
	#app #contents #repair dl.container-flex dd:last-child svg {
		height: 60px;
		margin: 15px 0;
	}
	#app #contents #repair dl.container-flex dd label {
		display: block;
		margin: 10px 0 20px;
	}
	#app #contents #repair dl.container-flex dd svg {
		height: 50px;
		margin: 15px 0;
	}
	#app #contents #maintenance dl.container-flex dd svg {
		height: 50px;
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
	#app #contents>div .heading-1 {
		display: block;
		border-bottom: 1px solid #707070;
		padding: 0 0 5px;
		margin: 0 0 10px;
	}
	#app #contents #pickup dl.container-flex, #app #contents #maintenance dl.container-flex
		{
		flex-wrap: wrap;
		margin: 30px 0;
	}
	#app #contents #pickup dl.container-flex dd, #app #contents #maintenance dl.container-flex dd
		{
		box-sizing: content-box;
		border: 1px solid #bcbcbc;
		border-radius: 10px;
		text-align: center;
		width: calc(24% - 32px);
		height: 300px;
		margin: 0 1% 5px 0;
		padding: 15px;
	}
	#app #contents #pickup dl.container-flex dd:nth-child(4n), #app #contents #maintenance dl.container-flex dd:nth-child(4n)
		{
		margin-right: 0;
	}
	#app #contents #pickup dl.container-flex dd label, #app #contents #maintenance dl.container-flex dd label
		{
		text-transform: uppercase;
		margin: 10px 0 0;
		display: block;
	}
	#app #contents #pickup dl.container-flex dd .heading-2, #app #contents #maintenance dl.container-flex dd .heading-2
		{
		font-size: 20px;
	}
	#app #contents #pickup dl.container-flex dd .text, #app #contents #maintenance dl.container-flex dd .text
		{
		color: #707070;
		font-size: 13px;
		margin: 0px 0 10px;
		line-height: 1.6;
	}
	#app #contents #pickup dl.container-flex dd svg, #app #contents #maintenance dl.container-flex dd svg
		{
		height: 50px;
		margin: 30px 0;
	}
	#app #contents #pickup dl.container-flex dd .ref, #app #contents #maintenance dl.container-flex dd .ref
		{
		font-size: 11px;
	}
	#app #contents #repair dl.container-flex {
		margin: 30px 0;
	}
	#app #contents #repair dl.container-flex dd {
		width: calc(49% - 32px);
		text-align: center;
		border: 1px solid #bcbcbc;
		border-radius: 10px;
		padding: 15px;
	}
	#app #contents #repair dl.container-flex dd:first-child {
		margin-right: 1%;
	}
	#app #contents #repair dl.container-flex dd:first-child svg {
		height: 50px;
		margin: 20px 0;
	}
	#app #contents #repair dl.container-flex dd:last-child {
		margin-left: 1%;
	}
	#app #contents #repair dl.container-flex dd:last-child svg {
		height: 60px;
		margin: 15px 0;
	}
	#app #contents #repair dl.container-flex dd label {
		display: block;
		margin: 10px 0 20px;
	}
	#app #contents #repair dl.container-flex dd svg {
		height: 50px;
		margin: 30px 0;
	}
	#app #contents #maintenance dl.container-flex dd svg {
		height: 50px;
	}
}
</style>
<style type="text/css">
.a {
	fill-rule: evenodd;
}
</style>

</head>
<body>

<!-- ------------------------------------------상단 시작---------------------------------------------------- -->
<c:import url="../header.jsp"></c:import>
<!-- ------------------------------------------상단 끝---------------------------------------------------- -->

	<main id="main"> <span id="a11y-main-area"
		class="visually-hidden" tabindex="-1">메인 컨텐츠를 보고 계십니다.</span>
	<div id="block-8812320740853" class="free-html" data-label="">
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
									<a id="warranty" class="col active"> <svg
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
					<div class="menu1depth col">
						<a href="<%=cp%>/mguide.action">머신 사용 안내</a>
					</div>
					<div class="menu1depth col active">
						<a href="<%=cp%>/rguide.action">수리 서비스 신청/안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col3">
									<a id="pickup" class="col active">
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 42 60" style="margin-top: 0px; margin-bottom: 0px;"> 
											<path fill-rule="evenodd"
											d="M41.011,55.769 C41.009,55.774 41.006,55.779 41.003,55.784 C40.985,55.817 40.964,55.848 40.940,55.878 C40.937,55.881 40.934,55.884 40.932,55.887 C40.910,55.912 40.886,55.935 40.861,55.957 C40.856,55.960 40.853,55.965 40.848,55.969 L36.008,59.852 C35.999,59.859 35.989,59.864 35.980,59.871 C35.966,59.881 35.952,59.891 35.937,59.899 C35.919,59.911 35.899,59.920 35.879,59.930 C35.865,59.936 35.852,59.943 35.837,59.948 C35.814,59.957 35.791,59.963 35.767,59.969 C35.754,59.972 35.742,59.977 35.730,59.979 C35.692,59.986 35.654,59.990 35.616,59.990 C35.616,59.990 35.616,59.990 35.616,59.990 L35.616,59.990 L5.394,59.990 C5.222,59.990 5.059,59.920 4.941,59.796 C4.822,59.672 4.760,59.505 4.768,59.334 L6.199,29.103 C6.215,28.769 6.490,28.506 6.824,28.506 L17.162,28.506 L17.162,26.284 C17.153,25.823 17.203,25.355 17.308,24.902 C10.411,24.090 8.381,20.045 6.631,15.247 C4.980,10.723 1.493,9.500 1.345,9.450 C1.019,9.340 0.841,8.985 0.951,8.658 C1.060,8.330 1.413,8.153 1.740,8.261 C1.911,8.317 5.941,9.700 7.808,14.818 C9.509,19.481 11.342,23.102 17.931,23.708 C17.955,23.492 17.987,23.298 18.028,23.126 C17.528,22.918 16.662,22.526 15.771,21.973 C13.865,20.789 12.820,19.486 12.664,18.101 C12.432,16.039 13.999,13.923 15.667,12.898 C16.710,12.257 17.672,12.129 18.306,12.545 C20.518,13.999 22.864,16.563 21.480,20.523 C21.000,21.895 20.346,22.310 19.869,22.614 C19.502,22.847 19.252,23.006 19.168,23.875 C19.642,23.749 20.293,23.531 20.957,23.169 C22.609,22.270 23.579,20.931 23.839,19.189 C24.305,16.064 23.469,14.824 22.203,12.948 C22.052,12.724 21.897,12.495 21.739,12.254 C21.550,11.965 21.630,11.577 21.919,11.387 C22.208,11.197 22.597,11.278 22.786,11.567 C22.941,11.802 23.093,12.028 23.241,12.247 C24.568,14.214 25.616,15.768 25.078,19.374 C25.076,19.385 25.073,19.396 25.072,19.408 C25.072,19.431 25.075,19.455 25.073,19.479 C25.041,19.850 25.014,20.191 24.990,20.492 C25.699,19.839 26.560,18.784 26.797,17.364 C27.113,15.481 26.280,13.400 24.324,11.179 C24.066,10.999 23.977,10.652 24.130,10.369 C24.294,10.065 24.675,9.952 24.978,10.117 C25.244,10.260 25.461,10.373 25.649,10.470 C26.763,11.048 27.021,11.209 29.593,13.482 C30.587,14.361 31.205,14.733 31.561,14.890 C28.768,9.617 26.361,8.921 24.586,8.407 C24.219,8.301 23.872,8.201 23.551,8.068 C21.826,7.358 20.536,7.083 14.118,6.363 C7.928,5.667 5.108,1.764 4.605,0.989 C4.411,0.703 4.485,0.311 4.771,0.117 C5.057,-0.077 5.446,-0.003 5.640,0.283 L5.656,0.307 C5.931,0.732 8.509,4.472 14.258,5.118 C20.523,5.821 22.075,6.106 24.028,6.910 C24.286,7.016 24.586,7.103 24.934,7.204 C26.887,7.769 29.838,8.622 33.022,14.992 C33.080,15.108 33.101,15.239 33.081,15.367 C33.038,15.643 32.832,16.023 32.390,16.183 C32.257,16.231 32.114,16.255 31.961,16.255 C31.198,16.255 30.165,15.660 28.764,14.421 C28.068,13.806 27.551,13.354 27.146,13.010 C27.982,14.588 28.279,16.119 28.030,17.586 C27.720,19.409 26.630,20.712 25.758,21.492 C27.776,21.685 29.400,23.755 29.440,26.274 L29.440,28.506 L37.047,28.506 C37.218,28.506 37.382,28.576 37.500,28.700 C37.508,28.709 37.513,28.719 37.521,28.728 C37.662,28.826 37.764,28.979 37.787,29.163 L41.079,55.401 C41.095,55.530 41.069,55.658 41.011,55.769 ZM19.197,21.557 C19.590,21.307 19.961,21.071 20.297,20.109 C21.207,17.507 20.331,15.375 17.618,13.592 C17.583,13.569 17.521,13.554 17.435,13.554 C17.213,13.554 16.829,13.654 16.322,13.966 C15.024,14.763 13.737,16.435 13.909,17.961 C14.121,19.854 17.144,21.430 18.606,22.012 C18.780,21.835 18.980,21.695 19.197,21.557 ZM28.188,26.284 C28.157,24.361 26.904,22.729 25.450,22.729 L23.525,22.729 C22.982,23.338 22.311,23.864 21.516,24.291 C20.031,25.089 18.645,25.266 18.587,25.274 C18.561,25.277 18.536,25.278 18.511,25.278 C18.510,25.278 18.509,25.278 18.508,25.278 C18.441,25.603 18.408,25.938 18.414,26.272 L18.414,28.506 L28.188,28.506 L28.188,26.284 ZM7.421,29.759 L6.050,58.737 L35.019,58.737 L36.390,29.759 L7.421,29.759 ZM36.307,58.006 L39.301,55.604 L36.487,54.208 L36.307,58.006 ZM37.358,35.801 L36.551,52.842 L39.691,54.399 L37.358,35.801 ZM22.655,50.581 C22.334,50.309 21.196,49.074 20.754,48.546 C19.755,47.366 18.419,45.504 17.280,44.047 L17.280,49.996 L15.657,49.996 L15.657,38.205 C17.472,39.689 19.307,42.640 20.679,44.413 C20.679,44.413 23.345,48.009 24.460,49.285 C25.319,50.348 26.813,51.508 27.856,51.897 C29.252,52.454 30.668,52.542 31.766,52.306 L31.766,52.416 C28.570,53.535 24.742,52.621 22.655,50.581 ZM17.980,39.210 C17.121,38.150 15.626,36.989 14.582,36.600 C13.187,36.042 11.771,35.956 10.674,36.191 L10.674,36.079 C13.868,34.962 17.696,35.875 19.785,37.915 C20.106,38.187 21.244,39.423 21.683,39.951 C22.684,41.130 24.020,42.993 25.161,44.452 L25.161,38.500 L26.782,38.500 L26.782,50.290 C24.966,48.806 23.133,45.858 21.760,44.083 C21.760,44.083 19.095,40.486 17.980,39.210 Z"></path>
										</svg><b>픽업 서비스</b>
									</a>
									<a id="maintenance" class="col"><svg
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
				<div id="pickup" class="pickup active">
					<div class="wrapper">
						<div class="section-header">
							<h2 class="heading-2">픽업 서비스</h2>
						</div>
						<p>
							네스프레소 클럽(080-734-1111)을 통한 간편한 신청으로 회원님의 제품을 수거해 드리고,<br> 수리
							완료 후 안전하게 고객님께서 지정하신 장소에 배송해 드리는 네스프레소의 특별 서비스 입니다.
						</p>
						<dl class="container-flex">
							<dd>
								<label>Step 1</label>
								<h2 class="heading-2">유선상 머신 점검</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.229 50">
								<defs>
<style>
.a {
	fill: #505050;
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M13.108,2.685,9.85,4.294c-12.069,6.292,5.829,43.633,19.4,43.633a6.519,6.519,0,0,0,2.744-.592L35.2,45.763,29.164,34.108l-3.208,1.571a2.864,2.864,0,0,1-1.244.279c-5.335,0-14.252-17.092-8.835-19.992l3.221-1.59L13.108,2.685ZM29.245,50C17.412,50,3.785,26.846,3.785,12.85c0-5.04,1.735-8.638,5.119-10.4L13.866,0,21.9,15.306l-5.077,2.5c-3,1.608,5.019,17.55,8.242,16l5-2.456,7.95,15.333s-4.917,2.421-5.158,2.531a8.585,8.585,0,0,1-3.61.783"
									transform="translate(-3.785)"></path></svg>
								<p class="text">네스프레소 클럽 (080-734-1111)으로 연락하여 머신의 증상을 바탕으로
									유선상으로 머신을 점검합니다.</p>
							</dd>
							<dd>
								<label>Step 2</label>
								<h2 class="heading-2">픽업서비스 등록</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 41.667 50">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M43.667,50H2V0H31.167l12.5,12.5ZM29.083,2.083h-25V47.917h37.5V14.583h-12.5Zm6.25,31.25v2.083h-25V33.333Zm0-6.25v2.083h-25V27.083Zm0-6.25v2.083h-25V20.833ZM31.167,12.5h9.554L31.167,2.946Z"
									transform="translate(-2)"></path></svg>
								<p class="text">머신의 수리가 필요 시, 전문 상담사를 통해 픽업 서비스를 등록 합니다. 임대
									머신과 점검이 필요한 머신의 운반에 필요한 박스를 수령하실 날짜를 협의 합니다. 임대머신은 유상 수리 진행 시
									별도의 요금이 부과 됩니다.</p>
							</dd>
							<dd>
								<label>Step 3</label>
								<h2 class="heading-2">머신 수리 접수</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M17.07,47.786,1,51,4.214,34.93,38.143,1,51,13.857Zm-1.12-2.093L6.307,36.05,3.9,48.1ZM38.143,4.214,7.916,34.443l9.641,9.641,30.23-30.227L38.143,4.214Z"
									transform="translate(-1 -1)"></path></svg>
								<p class="text">유상 수리일 경우, 안내된 수리 비용을 결제 합니다. 수리점에 수리 서비스가
									접수되면 문자를 통해 방문 일자 및 배송 조회 링크가 포함된 정보가 발송 됩니다.</p>
							</dd>
							<dd>
								<label>Step 4</label>
								<h2 class="heading-2">머신 픽업 준비</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink"
									viewBox="0 0 270 342"> <path fill-rule="evenodd"
									d="M257.937,190.519 L245.740,190.519 C246.924,196.343 247.496,202.270 247.447,208.208 C247.447,212.948 247.199,217.684 246.709,222.399 L246.500,224.307 L232.305,224.307 L228.903,214.350 L225.250,214.360 L225.292,239.019 L214.791,239.019 L214.791,293.996 L269.019,293.964 L222.253,341.903 L212.638,341.913 L211.648,341.913 L62.577,341.974 L61.734,341.984 L5.882,342.005 L5.820,193.650 L0.991,193.661 L0.981,178.981 L59.465,178.950 L59.455,159.332 L96.059,159.315 C71.846,147.883 61.873,126.532 52.973,102.323 C41.806,71.943 18.213,63.733 17.213,63.399 C15.002,62.659 13.803,60.279 14.542,58.080 C15.281,55.883 17.667,54.690 19.883,55.416 C21.038,55.795 48.302,65.080 60.933,99.440 C72.443,130.745 84.846,155.058 129.424,159.130 C129.586,157.675 129.804,156.374 130.082,155.218 C126.696,153.823 120.839,151.191 114.811,147.476 C101.915,139.525 94.842,130.778 93.790,121.479 C92.220,107.639 102.822,93.430 114.106,86.551 C121.163,82.247 127.671,81.383 131.961,84.181 C146.926,93.941 162.796,111.156 153.431,137.741 C150.186,146.954 145.764,149.743 142.535,151.780 C140.202,153.252 138.583,154.335 137.921,159.296 L141.000,159.294 C143.673,158.422 146.758,157.205 149.898,155.509 C161.075,149.472 167.633,140.480 169.392,128.785 C172.550,107.808 166.890,99.483 158.323,86.882 C157.304,85.384 156.256,83.841 155.188,82.229 C153.905,80.286 154.449,77.679 156.405,76.405 C158.361,75.131 160.989,75.671 162.272,77.612 C163.318,79.194 164.347,80.706 165.346,82.176 C174.325,95.384 181.417,105.816 177.773,130.028 C177.762,130.104 177.745,130.178 177.733,130.255 C177.737,130.413 177.755,130.569 177.740,130.730 C177.529,133.222 177.341,135.511 177.182,137.535 C181.980,133.150 187.801,126.064 189.409,116.536 C191.544,103.889 185.912,89.918 172.678,75.006 C170.930,73.799 170.324,71.472 171.360,69.571 C172.476,67.529 175.049,66.769 177.103,67.875 C178.900,68.840 180.366,69.595 181.642,70.251 C189.176,74.130 190.920,75.207 208.323,90.470 C215.048,96.369 219.228,98.869 221.638,99.923 C202.739,64.521 186.460,59.845 174.449,56.397 C171.964,55.685 169.618,55.011 167.445,54.123 C155.775,49.354 147.045,47.510 103.628,42.673 C61.746,38.002 42.666,11.798 39.266,6.591 C37.953,4.670 38.453,2.044 40.389,0.741 C42.326,-0.562 44.955,-0.070 46.267,1.851 L46.375,2.016 C48.237,4.865 65.678,29.977 104.574,34.315 C146.957,39.036 157.459,40.947 170.671,46.345 C172.416,47.059 174.449,47.642 176.802,48.317 C190.015,52.111 209.981,57.842 231.521,100.608 C231.915,101.388 232.054,102.267 231.920,103.128 C231.632,104.981 230.236,107.529 227.243,108.603 C226.348,108.925 225.382,109.088 224.342,109.088 C219.182,109.088 212.192,105.089 202.713,96.772 C198.006,92.645 194.509,89.611 191.765,87.303 C197.422,97.897 199.436,108.178 197.750,118.022 C195.651,130.266 188.279,139.014 182.377,144.251 C175.202,151.029 167.450,155.857 160.039,159.286 L214.760,159.261 L214.760,159.332 L225.250,159.321 L225.250,174.971 L231.910,174.971 C235.134,174.945 238.211,176.287 240.350,178.653 C242.281,180.862 243.723,183.439 244.585,186.223 L257.937,186.214 C259.148,186.215 260.129,187.177 260.130,188.365 C260.131,189.553 259.150,190.518 257.937,190.519 ZM59.703,185.886 L8.011,185.906 L8.011,188.040 L12.839,188.031 L12.914,335.068 L59.767,335.048 L59.703,185.886 ZM145.433,134.966 C151.588,117.492 145.659,103.180 127.308,91.211 C127.067,91.052 126.648,90.952 126.068,90.952 C124.563,90.952 121.970,91.627 118.541,93.717 C109.757,99.073 101.048,110.294 102.210,120.539 C103.649,133.252 124.101,143.834 133.991,147.737 C135.170,146.549 136.519,145.610 137.989,144.683 C140.649,143.006 143.159,141.421 145.433,134.966 ZM239.177,192.957 C239.031,192.110 238.823,191.314 238.624,190.530 L183.124,190.560 C178.385,192.173 173.524,193.422 168.586,194.293 C165.278,194.290 162.597,191.661 162.593,188.418 C162.590,185.169 165.273,182.534 168.586,182.531 C173.525,183.395 178.385,184.640 183.124,186.255 L238.623,186.223 C237.979,184.520 238.348,184.259 237.133,182.887 C235.830,181.395 233.913,180.552 231.909,180.592 L218.218,180.592 L218.218,166.257 L210.368,166.257 L210.368,166.185 L138.085,166.221 C130.115,167.658 124.919,167.432 125.206,167.146 C123.038,166.893 120.964,166.577 118.935,166.231 L66.484,166.257 L66.484,183.255 L66.183,183.255 L66.255,335.038 L211.647,334.987 L212.637,334.987 L219.069,334.978 L253.468,300.900 L209.997,300.931 L207.801,300.931 L207.770,232.092 L218.261,232.082 L218.219,207.435 L232.056,207.424 L235.448,217.371 L239.885,217.371 C239.946,216.790 240.010,216.126 240.050,215.321 C240.227,212.841 240.415,212.024 240.415,208.208 C240.474,203.098 240.060,197.994 239.177,192.957 ZM71.900,266.884 L198.109,266.884 L198.109,270.179 L71.900,270.179 L71.900,266.884 ZM71.900,209.443 L198.109,209.443 L198.109,212.743 L71.900,212.743 L71.900,209.443 ZM198.098,241.456 L71.900,241.456 L71.900,238.150 L198.098,238.150 L198.098,241.456 ZM198.098,298.892 L71.900,298.892 L71.900,295.601 L198.098,295.601 L198.098,298.892 Z"></path>
								</svg>
								<p class="text">머신 픽업을 준비 합니다. 운반 중 파손과 분실의 위험이 있는 물통, 컵받침,
									캡슐 컨테이너는 분리한 후, 수리 요청시 주의 사항*을 참고하여 머신 본체만 일반 랩으로 포장 합니다.</p>
							</dd>
							<dd>
								<label>Step 5</label>
								<h2 class="heading-2">머신 전달</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 64.229 40.593">
								<defs>

								</defs>
								<g transform="translate(0.001 -0.314)">
								<g transform="translate(-0.001 0.314)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0)">
								<g transform="translate(46.27)">
								<path class="a"
									d="M3.281,3.485A5.22,5.22,0,0,1,6.964,1.969h0a5.186,5.186,0,0,1,5.2,5.135,5.084,5.084,0,0,1-1.522,3.641,5.212,5.212,0,0,1-3.685,1.515H6.959a5.222,5.222,0,0,1-3.686-1.513,5.059,5.059,0,0,1,.009-7.262m3.66,10.439H6.96A6.782,6.782,0,0,0,11.938,2.412,6.92,6.92,0,0,0,6.964.314,6.824,6.824,0,0,0,2.1,2.293,6.717,6.717,0,0,0,.055,7.128a6.884,6.884,0,0,0,6.886,6.8"
									transform="translate(-0.055 -0.314)"></path></g>
								<g transform="translate(0 14.213)">
								<path class="a"
									d="M51.607,18.648c.053,0,.081,0,.088-.008a.484.484,0,0,1,.036.071c.353.857.718,1.708,1.084,2.56l.383.9H39.246a3.492,3.492,0,0,1,2.589-2.482c.755-.143,1.546-.214,2.31-.286.276-.025.552-.05.827-.078q1.317-.136,2.635-.266,2-.2,4-.409ZM11.039,22.153l.111-.26c.468-1.092.928-2.17,1.4-3.244q3.218.314,6.435.643l1.4.143.023,2.713ZM63.374.8A13.274,13.274,0,0,0,59.31.595a12.891,12.891,0,0,0-6.916,2.682,8.7,8.7,0,0,0-3.035,9.756c.323.954.735,1.888,1.132,2.792q.27.613.533,1.229l-7.211.725V3.977h-23.4v13.8l-7.2-.726,1.41-3.314a8.452,8.452,0,0,0,.7-2.908A8.638,8.638,0,0,0,11.84,3.307,13.2,13.2,0,0,0,.818.807,1,1,0,0,0,.132,1.2a.777.777,0,0,0-.112.614c.076.368.42.75,1.142.608A12.234,12.234,0,0,1,9.1,3.479,7.435,7.435,0,0,1,12.9,13.556c-1.239,2.705-2.405,5.5-3.532,8.191q-.745,1.785-1.5,3.562a1.071,1.071,0,0,0-.061.851.757.757,0,0,0,.443.4c.236.09.82.211,1.167-.6l.232-.54c.214-.493.428-.986.623-1.486a.237.237,0,0,1,.047-.087s.015-.034.135-.014q3.963.011,7.924.006h2.06V26.9H43.829V23.839h1.965c2.7.006,5.4,0,8.11-.022a.327.327,0,0,1,.032.065c.291.708.59,1.414.891,2.117A.869.869,0,0,0,56,26.557a.826.826,0,0,0,.39-1.187l-.12-.291c-.29-.7-.578-1.4-.875-2.09l-4.212-9.867a6.635,6.635,0,0,1-.48-4.141,7.749,7.749,0,0,1,3.737-5.1,11.933,11.933,0,0,1,8.617-1.468,1.115,1.115,0,0,0,.842-.115.756.756,0,0,0,.318-.508c.043-.238.047-.814-.841-.994Z"
									transform="translate(0.001 -0.524)"></path></g>
								<path class="a"
									d="M17.725,7.528a4.835,4.835,0,0,1-1.842,4.006,5.32,5.32,0,0,1-5.733.7A4.941,4.941,0,0,1,7.194,7.9Zm-5.277,6.843h.019a7.076,7.076,0,0,0,5-2.026,6.483,6.483,0,0,0,1.949-4.884h0c.67-.013,1.34-.038,2.011-.062l.413-.015a.822.822,0,0,0,.889-.835.758.758,0,0,0-.253-.557.967.967,0,0,0-.694-.223l-.246.007c-.752.024-1.5.047-2.256.09h-.071c-.054,0-.071-.006-.071,0a.325.325,0,0,1-.051-.111,6.954,6.954,0,0,0-7.859-4.562A6.736,6.736,0,0,0,5.514,8.268a6.879,6.879,0,0,0,6.935,6.1Z"
									transform="translate(-1.573 -0.531)"></path></g></g></g></g></g></g></g></svg>
								<p class="text">네스프레소 지정 택배 기사님이 방문 하시면 임대머신을 수령하시고(신청하신
									경우만), 점검이 필요한 머신을 기사님께 전달 해 주십시오</p>
							</dd>
							<dd>
								<label>Step 6</label>
								<h2 class="heading-2">제품 수리</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 60 60">
								<path fill-rule="evenodd" fill="rgb(0, 0, 0)"
									d="M52.129,59.148 C50.271,59.148 48.413,58.440 46.996,57.025 L23.370,33.422 C21.894,31.948 19.895,31.127 17.824,31.127 C17.625,31.127 17.424,31.134 17.224,31.150 C16.827,31.180 16.428,31.196 16.030,31.196 C12.098,31.196 8.165,29.699 5.167,26.702 C2.177,23.713 0.693,19.804 0.693,15.890 C0.693,14.415 0.904,12.940 1.324,11.512 L10.544,20.724 C10.865,20.793 11.194,20.827 11.530,20.827 C16.101,20.827 21.850,14.660 20.918,10.361 L11.698,1.149 C13.126,0.730 14.602,0.520 16.076,0.520 C19.995,0.520 23.908,2.002 26.903,4.991 C30.203,8.290 31.688,12.719 31.354,17.034 C31.179,19.313 32.010,21.560 33.628,23.175 L57.256,46.779 C58.631,48.153 59.340,49.944 59.378,51.745 C59.467,55.815 56.188,59.148 52.129,59.148 ZM56.216,47.817 L32.589,24.213 C30.665,22.293 29.681,19.635 29.888,16.922 C30.202,12.870 28.735,8.900 25.863,6.029 C23.253,3.424 19.777,1.989 16.076,1.989 C15.611,1.989 15.147,2.012 14.686,2.057 L21.957,9.322 L22.263,9.628 L22.355,10.050 C22.843,12.302 21.966,15.027 19.949,17.525 C17.609,20.423 14.305,22.295 11.530,22.295 C11.085,22.295 10.647,22.249 10.231,22.158 L9.810,22.066 L9.505,21.762 L2.232,14.495 C2.186,14.958 2.163,15.424 2.163,15.890 C2.163,19.586 3.599,23.057 6.206,25.664 C8.828,28.284 12.317,29.727 16.030,29.727 C16.389,29.727 16.753,29.713 17.110,29.686 C17.347,29.668 17.587,29.658 17.824,29.658 C20.275,29.658 22.675,30.652 24.410,32.384 L48.036,55.987 C49.129,57.078 50.582,57.680 52.129,57.680 C53.697,57.680 55.165,57.063 56.262,55.943 C57.358,54.823 57.943,53.344 57.909,51.777 C57.877,50.282 57.276,48.876 56.216,47.817 ZM52.047,54.265 C50.696,54.262 49.602,53.170 49.602,51.822 C49.602,50.472 50.696,49.379 52.047,49.379 C53.396,49.379 54.493,50.469 54.493,51.819 C54.493,53.170 53.396,54.265 52.047,54.265 ZM52.047,50.848 C51.509,50.848 51.072,51.285 51.072,51.822 C51.072,52.358 51.511,52.795 52.050,52.796 C52.585,52.796 53.023,52.358 53.023,51.819 C53.023,51.284 52.585,50.848 52.047,50.848 Z"></path>
								</svg>
								<p class="text">수리점에 머신이 입고 되면 입고 완료 문자가 발송되며, 수리가 시작 됩니다.</p>
							</dd>
							<dd>
								<label>Step 7</label>
								<h2 class="heading-2">처리 완료</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 41.667">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M19.758,30.533l-1.481-1.45L12.96,34.515,9.754,31.49,8.3,32.967l4.688,4.45,6.771-6.883Zm0-10.417-1.481-1.45L12.96,24.1,9.754,21.073,8.3,22.55,12.987,27l6.771-6.883Zm0-10.417L18.277,8.25,12.96,13.681,9.754,10.656,8.3,12.133l4.688,4.45L19.758,9.7ZM41.667,33.25H25v2.083H41.667Zm0-10.417H25v2.083H41.667Zm0-10.417H25V14.5H41.667ZM50,2H0V43.667H50ZM47.917,41.583H2.083V4.083H47.917Z"
									transform="translate(0 -2)"></path></svg>
								<p class="text">머신 수리가 완료 되면, 수리 완료 및 머신 출고에 대한 안내 문자가 발송
									됩니다.</p>
							</dd>
						</dl>
						<h3>수리 요청시 주의 사항*</h3>
						<p class="ref">* 포장 시, 매직랩을 사용할 경우 머신 외부에 매직랩 흔적이 남게 되오니 반드시
							일반랩으로 포장해 주시기 바랍니다.</p>
						<p class="ref">* 누수 증상으로 수리 요청 시, 물통 점검이 필요 할 수 있으며 이는 머신 수리
							접수시 안내해 드립니다.</p>
					</div>
				</div>
				<!--div id="repair" class="repair">
  <div class="wrapper">
   <div class="section-header">
      <h2 class="heading-2">바로 점검 서비스</h2>
    </div>
	<p>청담 플래그십 부티크의 특화 서비스로, 회원께서 방문시 전문 수리기사를 통한 바로 점검 및 수리가 가능합니다.</p>
	<dl class="container-flex">
    <dd><label>Step 1</label><h2 class="heading-2">유선상 머신 점검</h2><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.229 50"><defs><style>.a{fill:#505050;fill-rule:evenodd;}</style></defs><path class="a" d="M13.108,2.685,9.85,4.294c-12.069,6.292,5.829,43.633,19.4,43.633a6.519,6.519,0,0,0,2.744-.592L35.2,45.763,29.164,34.108l-3.208,1.571a2.864,2.864,0,0,1-1.244.279c-5.335,0-14.252-17.092-8.835-19.992l3.221-1.59L13.108,2.685ZM29.245,50C17.412,50,3.785,26.846,3.785,12.85c0-5.04,1.735-8.638,5.119-10.4L13.866,0,21.9,15.306l-5.077,2.5c-3,1.608,5.019,17.55,8.242,16l5-2.456,7.95,15.333s-4.917,2.421-5.158,2.531a8.585,8.585,0,0,1-3.61.783" transform="translate(-3.785)"/></svg><p class="text">네스프레소 클럽 (080-734-1111)으로 연락하여 머신의 증상을 바탕으로 유선상으로 머신을 점검합니다.</p></dd>
		<dd><label>Step 2</label><h2 class="heading-2">플래그십 부티크 방문</h2><svg 
 xmlns="http://www.w3.org/2000/svg"
 xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 269 399" >
<image  x="0px" y="0px"  xlink:href="data:img/png;base64,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" />
</svg><p class="text">머신의 수리가 필요할 경우, 청담 플래그십 부티크 방문 합니다.<br>- 운영 시간: 월~금, 오전 11시~오후 6시 30분<br> 
                 (점심 시간: 2시 30분~3시 30분, 접수 마감: 오후 6시)<br>주말은 수리 접수만 가능하며, 수리는 월요일부터 순차적으로 진행됩니다. 
</p></dd>
    </dl>
		<p class="ref">* 바로 점검 서비스는 기본 30분~1시간 소요 되며, 대기 회원과 증상에 따라 추가 될 수 있습니다. </p>
		<p class="ref">* 바로 점검 서비스의 예약 서비스는 제공되지 않으며, 먼저 도착하신 분 순서대로 처리 됩니다.</p>
		<p class="ref">* 바로 점검 서비스로 접수 되었으나, 추가적인 점검이 필요한 경우 수리점으로 입고하여 수리되며, 수리 완료 후 추가 비용없이 택배로 배송 해드립니다.</p>
		<p class="ref">* 일부 단종된지 오래된 머신 혹은 해외 머신의 경우 수리가 불가할 수 있으니, 방문 전 네스프레소 클럽 (080-734-1111)을 통해 수리 가능 여부를 확인하시기 바랍니다.</p>
  </div>
    </div-->
				<div id="maintenance" class="maintenance">
					<div class="wrapper">
						<div class="section-header">
							<h2 class="heading-2">머신 관리 및 분해 세척 (유상)</h2>
						</div>
						<p>- 머신의 분해 세척과 디스케일링을 유상으로 신청 가능합니다. 디스케일링은 머신 내부에 형성된 스케일을
							제거하는 작업이며, 머신 사용안내 메뉴의 머신 사용법을 통해 가이드 및 동영상 확인 가능합니다.</p>
						<p>- 머신의 장기간 사용으로 인한 커피 착색과 변색 등은 분해 세척 및 디스케일링으로 해결되지 않으며,
							네스프레소 클럽(080-734-1111, 24시간, 365일/수신자 부담)을 통해 별도로 구매 가능합니다.</p>

						<dl class="container-flex">
							<dd>
								<label>Step 1</label>
								<h2 class="heading-2">세척 및 디스케일링 접수</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.229 50">
								<defs>
								<style>
.a {
	fill: #505050;
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M13.108,2.685,9.85,4.294c-12.069,6.292,5.829,43.633,19.4,43.633a6.519,6.519,0,0,0,2.744-.592L35.2,45.763,29.164,34.108l-3.208,1.571a2.864,2.864,0,0,1-1.244.279c-5.335,0-14.252-17.092-8.835-19.992l3.221-1.59L13.108,2.685ZM29.245,50C17.412,50,3.785,26.846,3.785,12.85c0-5.04,1.735-8.638,5.119-10.4L13.866,0,21.9,15.306l-5.077,2.5c-3,1.608,5.019,17.55,8.242,16l5-2.456,7.95,15.333s-4.917,2.421-5.158,2.531a8.585,8.585,0,0,1-3.61.783"
									transform="translate(-3.785)"></path></svg>
								<p class="text">네스프레소 클럽 (080-734-1111)로 연락하여 분해 세척 및 디스케일링을
									접수 합니다.</p>
								<p></p>
							</dd>
							<dd>
								<label>Step 2</label>
								<h2 class="heading-2">비용 결제</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 49.751">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M10.12,40.23A21.766,21.766,0,1,1,39.64,9.521a21.765,21.765,0,1,1-29.5,30.738l-.021-.029ZM28.114,8.292A19.693,19.693,0,1,1,8.421,27.985,19.7,19.7,0,0,1,28.114,8.292ZM29.15,39.386H27.034V37.581c-4.857-.626-5.388-4.517-5.388-5.688h2.262c.052.84.325,3.677,4.523,3.677a4.865,4.865,0,0,0,3.012-.869,2.562,2.562,0,0,0,1.111-2.133c0-1.644-1.063-2.834-4.291-3.561-4.909-1.111-6.059-2.9-6.059-5.251,0-3.128,2.535-4.594,4.83-4.988V16.584H29.15v2.1c5.164.4,5.587,4.592,5.587,5.744H32.461c0-2.407-1.9-3.661-4.138-3.661s-3.843,1.1-3.843,2.919c0,1.619.91,2.415,4.133,3.221,3.9.981,6.217,2.282,6.217,5.558,0,3.615-3.128,4.961-5.68,5.168v1.75ZM35.058,7.353A19.689,19.689,0,0,0,7.77,35.736l-.008-.021a21.776,21.776,0,0,1,27.3-28.362Z"
									transform="translate(0.12)"></path></svg>
								<p class="text">안내된 수리 비용을 결제 합니다. 분해 세척 및 디스케일링 비용은 일반 유상
									수리비와 동일합니다.</p>
							</dd>
							<dd>
								<label>Step 3</label>
								<h2 class="heading-2">머신 픽업 준비</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink"
									viewBox="0 0 270 342"> <path fill-rule="evenodd"
									d="M257.937,190.519 L245.740,190.519 C246.924,196.343 247.496,202.270 247.447,208.208 C247.447,212.948 247.199,217.684 246.709,222.399 L246.500,224.307 L232.305,224.307 L228.903,214.350 L225.250,214.360 L225.292,239.019 L214.791,239.019 L214.791,293.996 L269.019,293.964 L222.253,341.903 L212.638,341.913 L211.648,341.913 L62.577,341.974 L61.734,341.984 L5.882,342.005 L5.820,193.650 L0.991,193.661 L0.981,178.981 L59.465,178.950 L59.455,159.332 L96.059,159.315 C71.846,147.883 61.873,126.532 52.973,102.323 C41.806,71.943 18.213,63.733 17.213,63.399 C15.002,62.659 13.803,60.279 14.542,58.080 C15.281,55.883 17.667,54.690 19.883,55.416 C21.038,55.795 48.302,65.080 60.933,99.440 C72.443,130.745 84.846,155.058 129.424,159.130 C129.586,157.675 129.804,156.374 130.082,155.218 C126.696,153.823 120.839,151.191 114.811,147.476 C101.915,139.525 94.842,130.778 93.790,121.479 C92.220,107.639 102.822,93.430 114.106,86.551 C121.163,82.247 127.671,81.383 131.961,84.181 C146.926,93.941 162.796,111.156 153.431,137.741 C150.186,146.954 145.764,149.743 142.535,151.780 C140.202,153.252 138.583,154.335 137.921,159.296 L141.000,159.294 C143.673,158.422 146.758,157.205 149.898,155.509 C161.075,149.472 167.633,140.480 169.392,128.785 C172.550,107.808 166.890,99.483 158.323,86.882 C157.304,85.384 156.256,83.841 155.188,82.229 C153.905,80.286 154.449,77.679 156.405,76.405 C158.361,75.131 160.989,75.671 162.272,77.612 C163.318,79.194 164.347,80.706 165.346,82.176 C174.325,95.384 181.417,105.816 177.773,130.028 C177.762,130.104 177.745,130.178 177.733,130.255 C177.737,130.413 177.755,130.569 177.740,130.730 C177.529,133.222 177.341,135.511 177.182,137.535 C181.980,133.150 187.801,126.064 189.409,116.536 C191.544,103.889 185.912,89.918 172.678,75.006 C170.930,73.799 170.324,71.472 171.360,69.571 C172.476,67.529 175.049,66.769 177.103,67.875 C178.900,68.840 180.366,69.595 181.642,70.251 C189.176,74.130 190.920,75.207 208.323,90.470 C215.048,96.369 219.228,98.869 221.638,99.923 C202.739,64.521 186.460,59.845 174.449,56.397 C171.964,55.685 169.618,55.011 167.445,54.123 C155.775,49.354 147.045,47.510 103.628,42.673 C61.746,38.002 42.666,11.798 39.266,6.591 C37.953,4.670 38.453,2.044 40.389,0.741 C42.326,-0.562 44.955,-0.070 46.267,1.851 L46.375,2.016 C48.237,4.865 65.678,29.977 104.574,34.315 C146.957,39.036 157.459,40.947 170.671,46.345 C172.416,47.059 174.449,47.642 176.802,48.317 C190.015,52.111 209.981,57.842 231.521,100.608 C231.915,101.388 232.054,102.267 231.920,103.128 C231.632,104.981 230.236,107.529 227.243,108.603 C226.348,108.925 225.382,109.088 224.342,109.088 C219.182,109.088 212.192,105.089 202.713,96.772 C198.006,92.645 194.509,89.611 191.765,87.303 C197.422,97.897 199.436,108.178 197.750,118.022 C195.651,130.266 188.279,139.014 182.377,144.251 C175.202,151.029 167.450,155.857 160.039,159.286 L214.760,159.261 L214.760,159.332 L225.250,159.321 L225.250,174.971 L231.910,174.971 C235.134,174.945 238.211,176.287 240.350,178.653 C242.281,180.862 243.723,183.439 244.585,186.223 L257.937,186.214 C259.148,186.215 260.129,187.177 260.130,188.365 C260.131,189.553 259.150,190.518 257.937,190.519 ZM59.703,185.886 L8.011,185.906 L8.011,188.040 L12.839,188.031 L12.914,335.068 L59.767,335.048 L59.703,185.886 ZM145.433,134.966 C151.588,117.492 145.659,103.180 127.308,91.211 C127.067,91.052 126.648,90.952 126.068,90.952 C124.563,90.952 121.970,91.627 118.541,93.717 C109.757,99.073 101.048,110.294 102.210,120.539 C103.649,133.252 124.101,143.834 133.991,147.737 C135.170,146.549 136.519,145.610 137.989,144.683 C140.649,143.006 143.159,141.421 145.433,134.966 ZM239.177,192.957 C239.031,192.110 238.823,191.314 238.624,190.530 L183.124,190.560 C178.385,192.173 173.524,193.422 168.586,194.293 C165.278,194.290 162.597,191.661 162.593,188.418 C162.590,185.169 165.273,182.534 168.586,182.531 C173.525,183.395 178.385,184.640 183.124,186.255 L238.623,186.223 C237.979,184.520 238.348,184.259 237.133,182.887 C235.830,181.395 233.913,180.552 231.909,180.592 L218.218,180.592 L218.218,166.257 L210.368,166.257 L210.368,166.185 L138.085,166.221 C130.115,167.658 124.919,167.432 125.206,167.146 C123.038,166.893 120.964,166.577 118.935,166.231 L66.484,166.257 L66.484,183.255 L66.183,183.255 L66.255,335.038 L211.647,334.987 L212.637,334.987 L219.069,334.978 L253.468,300.900 L209.997,300.931 L207.801,300.931 L207.770,232.092 L218.261,232.082 L218.219,207.435 L232.056,207.424 L235.448,217.371 L239.885,217.371 C239.946,216.790 240.010,216.126 240.050,215.321 C240.227,212.841 240.415,212.024 240.415,208.208 C240.474,203.098 240.060,197.994 239.177,192.957 ZM71.900,266.884 L198.109,266.884 L198.109,270.179 L71.900,270.179 L71.900,266.884 ZM71.900,209.443 L198.109,209.443 L198.109,212.743 L71.900,212.743 L71.900,209.443 ZM198.098,241.456 L71.900,241.456 L71.900,238.150 L198.098,238.150 L198.098,241.456 ZM198.098,298.892 L71.900,298.892 L71.900,295.601 L198.098,295.601 L198.098,298.892 Z"></path>
								</svg>
								<p class="text">머신 픽업을 준비 합니다. 운반중 파손과 분실의 위험이 있는 물통, 컵받침,
									캡슐 컨테이너를 분리한 후, 머신 본체만 일반 랩으로 랩핑합니다.</p>
							</dd>
							<dd>
								<label>Step 4</label>
								<h2 class="heading-2">머신 전달</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 64.229 40.593">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<g transform="translate(0.001 -0.314)">
								<g transform="translate(-0.001 0.314)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0 0)">
								<g transform="translate(0)">
								<g transform="translate(46.27)">
								<path class="a"
									d="M3.281,3.485A5.22,5.22,0,0,1,6.964,1.969h0a5.186,5.186,0,0,1,5.2,5.135,5.084,5.084,0,0,1-1.522,3.641,5.212,5.212,0,0,1-3.685,1.515H6.959a5.222,5.222,0,0,1-3.686-1.513,5.059,5.059,0,0,1,.009-7.262m3.66,10.439H6.96A6.782,6.782,0,0,0,11.938,2.412,6.92,6.92,0,0,0,6.964.314,6.824,6.824,0,0,0,2.1,2.293,6.717,6.717,0,0,0,.055,7.128a6.884,6.884,0,0,0,6.886,6.8"
									transform="translate(-0.055 -0.314)"></path></g>
								<g transform="translate(0 14.213)">
								<path class="a"
									d="M51.607,18.648c.053,0,.081,0,.088-.008a.484.484,0,0,1,.036.071c.353.857.718,1.708,1.084,2.56l.383.9H39.246a3.492,3.492,0,0,1,2.589-2.482c.755-.143,1.546-.214,2.31-.286.276-.025.552-.05.827-.078q1.317-.136,2.635-.266,2-.2,4-.409ZM11.039,22.153l.111-.26c.468-1.092.928-2.17,1.4-3.244q3.218.314,6.435.643l1.4.143.023,2.713ZM63.374.8A13.274,13.274,0,0,0,59.31.595a12.891,12.891,0,0,0-6.916,2.682,8.7,8.7,0,0,0-3.035,9.756c.323.954.735,1.888,1.132,2.792q.27.613.533,1.229l-7.211.725V3.977h-23.4v13.8l-7.2-.726,1.41-3.314a8.452,8.452,0,0,0,.7-2.908A8.638,8.638,0,0,0,11.84,3.307,13.2,13.2,0,0,0,.818.807,1,1,0,0,0,.132,1.2a.777.777,0,0,0-.112.614c.076.368.42.75,1.142.608A12.234,12.234,0,0,1,9.1,3.479,7.435,7.435,0,0,1,12.9,13.556c-1.239,2.705-2.405,5.5-3.532,8.191q-.745,1.785-1.5,3.562a1.071,1.071,0,0,0-.061.851.757.757,0,0,0,.443.4c.236.09.82.211,1.167-.6l.232-.54c.214-.493.428-.986.623-1.486a.237.237,0,0,1,.047-.087s.015-.034.135-.014q3.963.011,7.924.006h2.06V26.9H43.829V23.839h1.965c2.7.006,5.4,0,8.11-.022a.327.327,0,0,1,.032.065c.291.708.59,1.414.891,2.117A.869.869,0,0,0,56,26.557a.826.826,0,0,0,.39-1.187l-.12-.291c-.29-.7-.578-1.4-.875-2.09l-4.212-9.867a6.635,6.635,0,0,1-.48-4.141,7.749,7.749,0,0,1,3.737-5.1,11.933,11.933,0,0,1,8.617-1.468,1.115,1.115,0,0,0,.842-.115.756.756,0,0,0,.318-.508c.043-.238.047-.814-.841-.994Z"
									transform="translate(0.001 -0.524)"></path></g>
								<path class="a"
									d="M17.725,7.528a4.835,4.835,0,0,1-1.842,4.006,5.32,5.32,0,0,1-5.733.7A4.941,4.941,0,0,1,7.194,7.9Zm-5.277,6.843h.019a7.076,7.076,0,0,0,5-2.026,6.483,6.483,0,0,0,1.949-4.884h0c.67-.013,1.34-.038,2.011-.062l.413-.015a.822.822,0,0,0,.889-.835.758.758,0,0,0-.253-.557.967.967,0,0,0-.694-.223l-.246.007c-.752.024-1.5.047-2.256.09h-.071c-.054,0-.071-.006-.071,0a.325.325,0,0,1-.051-.111,6.954,6.954,0,0,0-7.859-4.562A6.736,6.736,0,0,0,5.514,8.268a6.879,6.879,0,0,0,6.935,6.1Z"
									transform="translate(-1.573 -0.531)"></path></g></g></g></g></g></g></g></svg>
								<p class="text">머신 분해 세척을 위한 주의사항*을 참고하여 머신을 포장한 후, 네스프레소 지정
									택배 기사님이 방문하시면 임대머신을 수령하고(신청한 경우), 점검이 필요한 머신을 기사님께 전달 합니다.</p>
							</dd>
							<dd>
								<label>Step 5</label>
								<h2 class="heading-2">분해 세척 및 점검</h2>
								<svg xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 60 60">
								<path fill-rule="evenodd" fill="rgb(0, 0, 0)"
									d="M52.129,59.148 C50.271,59.148 48.413,58.440 46.996,57.025 L23.370,33.422 C21.894,31.948 19.895,31.127 17.824,31.127 C17.625,31.127 17.424,31.134 17.224,31.150 C16.827,31.180 16.428,31.196 16.030,31.196 C12.098,31.196 8.165,29.699 5.167,26.702 C2.177,23.713 0.693,19.804 0.693,15.890 C0.693,14.415 0.904,12.940 1.324,11.512 L10.544,20.724 C10.865,20.793 11.194,20.827 11.530,20.827 C16.101,20.827 21.850,14.660 20.918,10.361 L11.698,1.149 C13.126,0.730 14.602,0.520 16.076,0.520 C19.995,0.520 23.908,2.002 26.903,4.991 C30.203,8.290 31.688,12.719 31.354,17.034 C31.179,19.313 32.010,21.560 33.628,23.175 L57.256,46.779 C58.631,48.153 59.340,49.944 59.378,51.745 C59.467,55.815 56.188,59.148 52.129,59.148 ZM56.216,47.817 L32.589,24.213 C30.665,22.293 29.681,19.635 29.888,16.922 C30.202,12.870 28.735,8.900 25.863,6.029 C23.253,3.424 19.777,1.989 16.076,1.989 C15.611,1.989 15.147,2.012 14.686,2.057 L21.957,9.322 L22.263,9.628 L22.355,10.050 C22.843,12.302 21.966,15.027 19.949,17.525 C17.609,20.423 14.305,22.295 11.530,22.295 C11.085,22.295 10.647,22.249 10.231,22.158 L9.810,22.066 L9.505,21.762 L2.232,14.495 C2.186,14.958 2.163,15.424 2.163,15.890 C2.163,19.586 3.599,23.057 6.206,25.664 C8.828,28.284 12.317,29.727 16.030,29.727 C16.389,29.727 16.753,29.713 17.110,29.686 C17.347,29.668 17.587,29.658 17.824,29.658 C20.275,29.658 22.675,30.652 24.410,32.384 L48.036,55.987 C49.129,57.078 50.582,57.680 52.129,57.680 C53.697,57.680 55.165,57.063 56.262,55.943 C57.358,54.823 57.943,53.344 57.909,51.777 C57.877,50.282 57.276,48.876 56.216,47.817 ZM52.047,54.265 C50.696,54.262 49.602,53.170 49.602,51.822 C49.602,50.472 50.696,49.379 52.047,49.379 C53.396,49.379 54.493,50.469 54.493,51.819 C54.493,53.170 53.396,54.265 52.047,54.265 ZM52.047,50.848 C51.509,50.848 51.072,51.285 51.072,51.822 C51.072,52.358 51.511,52.795 52.050,52.796 C52.585,52.796 53.023,52.358 53.023,51.819 C53.023,51.284 52.585,50.848 52.047,50.848 Z"></path>
								</svg>
								<p class="text">수리점에 머신이 입고 되면 입고 완료 문자가 발송되며, 분해 세척, 디스케일링
									및 소모부품등의 점검이 시작 됩니다.</p>
							</dd>
							<dd>
								<label>Step 6</label>
								<h2 class="heading-2">처리 완료</h2>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 41.667">
								<defs>
								<style>
.a {
	fill-rule: evenodd;
}
</style>
								</defs>
								<path class="a"
									d="M19.758,30.533l-1.481-1.45L12.96,34.515,9.754,31.49,8.3,32.967l4.688,4.45,6.771-6.883Zm0-10.417-1.481-1.45L12.96,24.1,9.754,21.073,8.3,22.55,12.987,27l6.771-6.883Zm0-10.417L18.277,8.25,12.96,13.681,9.754,10.656,8.3,12.133l4.688,4.45L19.758,9.7ZM41.667,33.25H25v2.083H41.667Zm0-10.417H25v2.083H41.667Zm0-10.417H25V14.5H41.667ZM50,2H0V43.667H50ZM47.917,41.583H2.083V4.083H47.917Z"
									transform="translate(0 -2)"></path></svg>
								<p class="text">분해 세척 및 점검이 완료 되면 점검 완료 및 머신 출고에 대한 안내 문자가
									발송 됩니다.</p>
							</dd>
						</dl>
						<h3>머신 분해 세척을 위한 주의사항*</h3>
						<p class="ref">* 포장 시, 매직랩을 사용할 경우 머신 외부에 매직랩 흔적이 남게 되오니 반드시
							일반랩으로 포장해 주시기 바랍니다.</p>
						<p class="ref">* 물통, 캡슐 컨테이너등은 분해 세척 및 디스케일링 시 교체되지 않으며, 네스프레소
							클럽(080-734-1111, 24시간, 365일/수신자 부담)을 통해 별도로 구매 가능합니다.</p>
						<p class="ref">* 분해 세척 및 디스케일링 이후 수령한 머신에서 물이나 커피 가루가 발견될 수
							있으나 이는 출고전 테스트를 위한 추출에서 발생한 것임을 알려 드립니다.</p>
					</div>
				</div>
			</div>
		</div>
		<script>
			var navi = $("#navi");
			var sticky = $(navi).offset().top;

			// navigation
			$('.menu2depth a').click(function() {
				$('.menu2depth a.active').removeClass('active');
				$(this).addClass('active');
				var contents = $(this).attr('id');
				$('#contents > div').removeClass('active');
				console.log($('#' + contents));
				$('.' + contents).addClass('active');
				window.scrollTo(0, sticky - 80);
			})

			function resizeMenu1() {
				console.log("menu1 resize");
				var menu1depth = [], getText = $('.menu1depth > a');
				getText.map(function(ele) {
					if (ele > 1) {
						$(this).text(($(this).text().substring(0, 6)));
					} else {
						$(this).text(($(this).text().substring(0, 8)));
					}
				})
			}

			$(window).on("load", function() {
				var url = window.location.href;

				var urlAux = url.split('?');
				if (url.split('?').length > 1) {
					var page = urlAux[1].split('&')[0];
					if (urlAux.length == 2) {
						$('.menu2depth a.active').removeClass('active');
						$('#contents > div').removeClass('active');
						$('#' + page).addClass('active');
						$('.' + page).addClass('active');
					}

				}
			})

			// adjust svg position for vertical
			if ($(window).width() > 767) {
				$('.menu2depth a > svg').map(function() {
					var temp = (60 - $(this).height()) / 2 + 'px';
					$(this).css({
						'margin-top' : temp,
						'margin-bottom' : temp
					});
				})
			} else {
				console.log("mobile resize menu");
				resizeMenu1();
			}

			window.onscroll = function() {
				if ($(window).width() > 767) {
					fixed();
				}
			}
			function fixed() {
				if (window.pageYOffset >= sticky) {
					$(navi).addClass("fixed");
				} else {
					$(navi).removeClass("fixed");
				}
			}

			$(window).resize(function() {
				if ($(window).width() < 768) {
					resizeMenu1();
				} else {
					$('.menu2depth a > svg').map(function() {
						var temp = (60 - $(this).height()) / 2 + 'px';
						$(this).css({
							'margin-top' : temp,
							'margin-bottom' : temp
						});
					})
				}
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