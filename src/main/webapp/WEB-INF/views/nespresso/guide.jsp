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

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Tabs - Default functionality</title>


<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">

.focusGold {
	background: #e2b271;
}

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

.margin50 {
	margin-bottom: 50px;
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

#app #contents>div .section-header p {
	margin: 0 0 20px;
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
	padding: 5px 0 5px 15px;
	letter-spacing: 0.5px;
	line-height: 1.5;
	position: relative;
}

#app #contents>div ul>li:before {
	position: absolute;
	content: '-';
	left: 0px;
}

#app #contents>div ul>li>ul>li {
	padding: 0 0 0 15px;
}

#app #contents>div ul.depth1 {
	padding: 10px 0 0 20px;
}

#app #contents>div.active {
	display: block;
}

#app #contents>div .table {
	color: #000;
}

#app #contents>div .table .ref {
	padding: 5px 5px 0 0;
	font-size: 11px;
	text-align: right;
}

#app #contents>div table {
	font-size: 12px;
	width: 100%;
}

#app #contents>div table thead {
	border-top: 1px solid #000;
	background: #b4b4b4;
}

#app #contents>div table thead th {
	color: #fff;
}

#app #contents>div table thead th:last-child {
	border-right: none;
}

#app #contents>div table td {
	padding: 10px;
	text-align: center;
	vertical-align: middle;
	border-bottom: 1px solid #c4c4c4;
}

#app #contents>div table td:last-child {
	border-right: none;
}

#app #contents>div table th {
	padding: 10px;
	border-right: 1px solid #c4c4c4;
}

.warranty {
	background: #fff;
	color: #000;
}

.warranty .boxline {
	margin: 30px 0;
	border: 1px solid #333;
	padding: 30px;
}

.warranty .boxline>ul>li {
	padding: 10px 0 0;
}

.warranty .boxline>ul>li>ul>li:last-child {
	padding: 0 0 10px 5px;
}

.charge {
	background: #fff;
	color: #000;
}

.charge .diagram {
	display: flex;
	margin: 30px auto;
}

.charge .diagram div.circle {
	position: relative;
	border-radius: 50%;
	border: 1px solid #c8c8c8;
	display: block;
	text-align: center;
}

.charge .diagram div.circle span {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.charge .diagram div.expression {
	width: 50px;
	height: 50px;
	position: relative;
}

.charge .diagram div.expression span {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 50px;
	text-align: center;
}

.charge ul li {
	padding: 0 0 0 20px;
}

.charge p.ref {
	font-size: 12px;
}

.charge .table-none-pay th {
	background: #b4b4b4;
	color: #fff;
	border-top: 2px solid #000;
	border-bottom: 1px solid #c4c4c4;
	padding: 10px 0;
}

.charge .table-none-pay th:nth-child(1) {
	width: 30%;
	border-right: 1px solid #c4c4c4;
}

.charge .table-none-pay th:nth-child(2) {
	width: 30%;
	border-right: 1px solid #c4c4c4;
}

.charge .table-none-pay th:nth-child(3) {
	width: 40%;
}

.charge .table-none-pay tr {
	border-bottom: 1px solid #c4c4c4;
}

.charge .table-none-pay tr td {
	text-align: center;
	vertical-align: middle;
	padding: 10px;
}

.charge .table-none-pay tr td:nth-child(1) {
	width: calc(30% - 20px);
	border-right: 1px solid #c4c4c4;
}

.charge .table-none-pay tr td:nth-child(2) {
	width: calc(30% - 20px);
	border-right: 1px solid #c4c4c4;
}

.charge .table-none-pay tr td:nth-child(3) {
	width: calc(40% - 20px);
}

.charge .table-pay {
	border-top: 2px solid #000;
}

.charge .table-pay th, .charge .table-pay td {
	text-align: center;
	vertical-align: middle;
	border-bottom: 1px solid #c4c4c4;
	padding: 10px 0;
}

.charge .table-pay th {
	background: #b4b4b4;
	color: #fff;
	width: 30%;
	border-right: 1px solid #c4c4c4;
}

.charge .table-pay td ul {
	padding: 10px 0;
}

.charge .table-pay td ul li {
	text-align: left;
	padding: 0 0 5px 10px;
	margin: 0 0 0 10px;
}

.charge .table-product .table-product-title {
	font-weight: 800;
	padding: 15px 0 30px;
	font-size: 1.2rem;
	text-decoration: underline;
}

.charge .table-product {
	margin: 0 auto 50px;
}

.charge .table-product th {
	background-color: #b4b4b4;
	padding: 10px 0;
	vertical-align: middle;
}

.charge .table-product th:nth-child(1) {
	width: 6%;
}

.charge .table-product th:nth-child(2) {
	width: 10%;
}

.charge .table-product th:nth-child(3) {
	width: 42%;
}

.charge .table-product th:nth-child(4) {
	width: 10%;
}

.charge .table-product th:nth-child(5) {
	width: 8%;
}

.charge .table-product th:nth-child(6) {
	width: 10%;
}

.charge .table-product th:nth-child(7) {
	width: 10%;
}

.charge .table-product td {
	text-align: center;
	vertical-align: middle;
	padding: 10px 0;
	line-height: 1.4;
	border-right: 1px solid #c4c4c4;
}

.professional.table-product th:nth-child(1) {
	width: 5%;
}

.professional.table-product th:nth-child(2) {
	width: 5%;
}

.professional.table-product th:nth-child(3) {
	width: 10%;
}

.professional.table-product th:nth-child(4) {
	width: 16%;
}

.professional.table-product th:nth-child(5) {
	width: 10%;
}

.professional.table-product th:nth-child(6) {
	width: 10%;
}

.professional.table-product th:nth-child(7) {
	width: 10%;
}

.dispute {
	background: #fff;
	color: #000;
}

.dispute ul li {
	font-size: 14px;
	padding: 0 0 30px 10px;
	line-height: 1.5;
}

.dispute .disputeTable {
	margin: 0 0 30px;
}

.dispute .disputeTable ul>li {
	font-size: 12px;
}

.dispute .disputeTable th, .dispute .disputeTable td {
	padding: 10px 0;
	text-align: center;
	vertical-align: middle;
}

.dispute .disputeTable tr th {
	border-top: 2px solid #000;
	background: #b4b4b4;
	color: #fff;
}

.dispute .disputeTable tr th:nth-child(1) {
	width: 40%;
	border-right: 1px solid #c4c4c4;
	border-bottom: 1px solid #c4c4c4;
}

.dispute .disputeTable tr th:nth-child(2) {
	width: 40%;
	border-right: 1px solid #c4c4c4;
	border-bottom: 1px solid #c4c4c4;
}

.dispute .disputeTable tr th:nth-child(3) {
	width: 20%;
}

.dispute .disputeTable tr td:nth-child(1) {
	border-right: 1px solid #c4c4c4;
	border-bottom: 1px solid #c4c4c4;
}

.dispute .disputeTable tr td:nth-child(2) {
	border-right: 1px solid #c4c4c4;
	border-bottom: 1px solid #c4c4c4;
}

.dispute .disputeTable tr td:nth-child(3) {
	border-bottom: 1px solid #c4c4c4;
}

@media ( min-width : 320px) and (max-width: 767px) {
	font-size: 11px ;
          font-size: 11px ;
          .heading-1 {
		font-size: 25px;
	}
	.heading-2 {
		font-size: 20px;
	}
	.table {
		overflow-x: auto;
	}
	#kv {
		height: 100px !important;
	}
	#kv h1 {
		padding: 0;
		display: block !important;
		padding: 20px 0 !important;
		display: block;
		text-align: center;
		font-size: 30px !important;
		letter-spacing: 1px !important;
	}
	#navi .menu1depth {
		/*  white-space: nowrap; */
		overflow: hidden;
		padding: 10px 0;
	}
	#navi .menu1depth>a {
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
	#navi .menu1depth>a:hover {
		overflow: visible;
	}
	#navi .menu1depth.active .menu2depth {
		top: 40px;
		display: block !important;
	}
	#navi .menu2depth {
		display: none;
	}
	#navi .menu2depth a {
		color: #000;
		font-size: 11px;
	}
	#navi .menu2depth a svg {
		height: 20px;
		fill: #000;
	}
	#contents .wrapper {
		width: 80vw;
		max-width: 100%;
		margin: 0 auto;
		letter-spacing: 0.5px;
	}
	#contents ul.depth1 {
		padding: 10px 0 0 !important;
	}
	#contents .table {
		font-size: 14px;
	}
	#contents .table thead th {
		color: #fff !important;
	}
	.diagram .circle {
		width: 75px;
		height: 75px;
	}
}

@media ( min-width : 768px) and (max-width: 995px) {
	#navi .menu1depth {
		padding: 20px 0;
	}
	#navi .menu2depth {
		top: 80px;
	}
	#navi .menu2depth a {
		position: relative;
	}
	#navi .menu2depth svg {
		height: 40px;
	}
	#navi .menu2depth.active {
		position: relative;
	}
	#navi .menu2depth.active:after {
		position: absolute;
		width: 0;
		height: 0;
		border-left: 20px solid transparent;
		border-right: 20px solid transparent;
		border-top: 20px solid #986f38;
		content: '';
		bottom: 0px;
	}
	#navi.fixed {
		top: 80px;
	}
	#navi.fixed .menu1depth {
		padding: 10px 0;
	}
	#navi.fixed .menu1depth.active>a {
		padding: 10px 0;
	}
	#navi.fixed .menu1depth.active>a.active {
		background-color: #fff;
		color: #986f38;
		font-weight: 600;
	}
	#navi.fixed .menu1depth .menu2depth {
		top: 39px;
		padding: 5px 0;
		box-shadow: 0 4px 2px -2px #e9e9e9;
	}
	.wrapper {
		width: 90vw;
	}
	.table {
		overflow-x: auto;
	}
	.diagram .circle {
		width: 100px;
		height: 100px;
	}
	.diagram .expression {
		margin: 25px 0;
	}
}

@media ( min-width : 996px) {
	.wrapper {
		width: 996px;
	}
	#kv .wrapper {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
	#navi .menu1depth {
		padding: 20px 0;
	}
	#navi .menu2depth {
		top: 80px;
	}
	#navi .menu2depth a {
		position: relative;
	}
	#navi .menu2depth svg {
		height: 60px;
	}
	#navi .menu2depth.active {
		position: relative;
	}
	#navi .menu2depth.active:after {
		position: absolute;
		width: 0;
		height: 0;
		border-left: 20px solid transparent;
		border-right: 20px solid transparent;
		border-top: 20px solid #986f38;
		content: '';
		bottom: 0px;
	}
	#navi.fixed {
		top: 80px;
	}
	#navi.fixed .menu1depth {
		padding: 10px 0;
	}
	#navi.fixed .menu1depth.active>a {
		padding: 10px 0;
	}
	#navi.fixed .menu1depth.active>a.active {
		background-color: #fff;
		color: #986f38;
		font-weight: 600;
	}
	#navi.fixed .menu1depth .menu2depth {
		top: 39px;
		padding: 5px 0;
		box-shadow: 0 4px 2px -2px #e9e9e9;
	}
	#contents {
		background: #fff;
		padding: 120px 0 0;
	}
	#contents>div {
		padding: 50px 0;
	}
	.diagram .circle {
		width: 150px;
		height: 150px;
	}
	.diagram .expression {
		margin: 50px 0;
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
	<div id="block-8812319036917" class="free-html" data-label="">
		<div id="app">
			<div id="kv">
				<div class="wrapper">
					<h1>기술 지원 서비스</h1>
				</div>
			</div>
			<div id="navi">
				<div class="wrapper container-flex col4">
					<div class="menu1depth col active">
						<a href="<%=cp%>/guide.action">요금 및 보증 기간 안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col3 owl-carousel">
									<a id="warranty" class="col active">
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 61 55"	style="margin-top: 0px; margin-bottom: 0px;"> 
											<path fill-rule="evenodd" d="M59.000,54.227 L2.000,54.227 C1.172,54.227 0.500,53.549 0.500,52.713 L0.500,7.284 C0.500,6.448 1.172,5.770 2.000,5.770 L10.250,5.770 L10.250,2.287 C10.250,1.451 10.922,0.773 11.750,0.773 L17.000,0.773 C17.829,0.773 18.500,1.451 18.500,2.287 L18.500,5.770 L42.500,5.770 L42.500,2.287 C42.500,1.451 43.171,0.773 44.000,0.773 L49.250,0.773 C50.078,0.773 50.750,1.451 50.750,2.287 L50.750,5.770 L59.000,5.770 C59.828,5.770 60.500,6.448 60.500,7.284 L60.500,52.713 C60.500,53.549 59.828,54.227 59.000,54.227 ZM17.000,3.499 C17.000,2.830 16.463,2.287 15.800,2.287 L12.950,2.287 C12.287,2.287 11.750,2.830 11.750,3.499 L11.750,5.770 L17.000,5.770 L17.000,3.499 ZM49.250,3.499 C49.250,2.830 48.712,2.287 48.050,2.287 L45.200,2.287 C44.537,2.287 44.000,2.830 44.000,3.499 L44.000,5.770 L49.250,5.770 L49.250,3.499 ZM59.000,8.496 C59.000,7.827 58.462,7.284 57.800,7.284 L3.200,7.284 C2.537,7.284 2.000,7.827 2.000,8.496 L2.000,51.501 C2.000,52.170 2.537,52.713 3.200,52.713 L57.800,52.713 C58.462,52.713 59.000,52.170 59.000,51.501 L59.000,8.496 ZM55.309,15.159 L5.691,15.159 C5.309,15.159 5.000,14.850 5.000,14.469 L5.000,14.350 C5.000,13.968 5.309,13.659 5.691,13.659 L55.309,13.659 C55.691,13.659 56.000,13.968 56.000,14.350 L56.000,14.469 C56.000,14.850 55.691,15.159 55.309,15.159 ZM25.752,39.010 C26.389,38.534 26.707,37.777 26.707,36.738 C26.707,35.787 26.428,35.051 25.870,34.532 C25.311,34.012 24.500,33.752 23.436,33.752 C22.441,33.752 21.604,34.008 20.923,34.518 L20.688,34.307 L24.823,27.543 L19.144,27.543 L19.144,25.007 L29.481,25.007 L29.481,25.271 L25.425,31.903 C26.175,31.938 26.877,32.132 27.532,32.484 C28.186,32.837 28.718,33.374 29.128,34.096 C29.538,34.818 29.743,35.716 29.743,36.791 C29.743,38.623 29.171,40.014 28.029,40.965 C26.886,41.916 25.364,42.392 23.462,42.392 C22.502,42.392 21.617,42.295 20.806,42.101 C19.994,41.908 19.379,41.670 18.961,41.388 L18.961,38.402 C20.199,39.283 21.595,39.723 23.148,39.723 C24.247,39.723 25.115,39.486 25.752,39.010 ZM41.991,24.743 L41.991,42.128 L39.086,42.128 L39.086,28.468 L35.291,30.265 L35.291,27.676 L41.729,24.743 L41.991,24.743 Z"></path>
										</svg>
										<b>보증 기간 안내</b>
									</a> 
									<a id="charge" class="col">
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 60" style="margin-top: 0px; margin-bottom: 0px;"> 
											<path fill-rule="evenodd" d="M30.000,60.000 C13.431,60.000 -0.000,46.568 -0.000,30.000 C-0.000,13.431 13.431,-0.000 30.000,-0.000 C46.569,-0.000 60.000,13.431 60.000,30.000 C60.000,46.568 46.569,60.000 30.000,60.000 ZM30.000,1.500 C14.260,1.500 1.500,14.260 1.500,30.000 C1.500,45.740 14.260,58.500 30.000,58.500 C45.740,58.500 58.500,45.740 58.500,30.000 C58.500,14.260 45.740,1.500 30.000,1.500 ZM36.705,42.255 L36.255,42.255 L32.911,33.600 L27.257,33.600 L23.790,42.255 L23.340,42.255 L19.810,33.600 L15.000,33.600 L15.000,32.100 L19.198,32.100 L18.341,30.000 L15.000,30.000 L15.000,28.500 L17.729,28.500 L14.970,21.735 L17.625,21.735 L20.203,28.500 L27.196,28.500 L29.910,21.735 L30.360,21.735 L32.977,28.500 L39.791,28.500 L42.330,21.735 L44.895,21.735 L42.195,28.500 L45.000,28.500 L45.000,30.000 L41.596,30.000 L40.758,32.100 L45.000,32.100 L45.000,33.600 L40.159,33.600 L36.705,42.255 ZM23.610,37.440 L25.150,33.600 L22.147,33.600 L23.610,37.440 ZM20.775,30.000 L21.575,32.100 L25.752,32.100 L26.594,30.000 L20.775,30.000 ZM30.135,26.415 L29.300,28.500 L30.941,28.500 L30.135,26.415 ZM31.520,30.000 L28.699,30.000 L27.858,32.100 L32.331,32.100 L31.520,30.000 ZM36.435,37.440 L37.876,33.600 L34.950,33.600 L36.435,37.440 ZM33.557,30.000 L34.369,32.100 L38.439,32.100 L39.228,30.000 L33.557,30.000 Z"></path>
										</svg>
										<b>서비스 요금 안내</b>
									</a> 
									<a id="dispute" class="col">
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
											viewBox="0 0 60 42" style="margin-top: 0px; margin-bottom: 0px;"> 
											<path fill-rule="evenodd" d="M58.500,42.000 L1.500,42.000 C0.671,42.000 -0.000,41.328 -0.000,40.500 L-0.000,1.500 C-0.000,0.672 0.671,-0.000 1.500,-0.000 L58.500,-0.000 C59.328,-0.000 60.000,0.672 60.000,1.500 L60.000,40.500 C60.000,41.328 59.328,42.000 58.500,42.000 ZM58.500,2.700 C58.500,2.037 57.963,1.500 57.300,1.500 L2.700,1.500 C2.037,1.500 1.500,2.037 1.500,2.700 L1.500,39.300 C1.500,39.963 2.037,40.500 2.700,40.500 L57.300,40.500 C57.963,40.500 58.500,39.963 58.500,39.300 L58.500,2.700 ZM54.450,36.750 L33.450,36.750 C32.621,36.750 31.950,36.078 31.950,35.250 L31.950,31.853 C31.449,31.741 30.860,31.650 30.272,31.650 C29.702,31.650 29.135,31.738 28.650,31.846 L28.650,35.250 C28.650,36.078 27.978,36.750 27.150,36.750 L6.150,36.750 C5.321,36.750 4.650,36.078 4.650,35.250 L4.650,6.750 C4.650,5.921 5.321,5.250 6.150,5.250 L27.150,5.250 C27.978,5.250 28.650,5.921 28.650,6.750 L28.650,8.448 C29.138,8.338 29.711,8.250 30.285,8.250 C30.869,8.250 31.453,8.340 31.950,8.451 L31.950,6.750 C31.950,5.921 32.621,5.250 33.450,5.250 L54.450,5.250 C55.278,5.250 55.950,5.921 55.950,6.750 L55.950,35.250 C55.950,36.078 55.278,36.750 54.450,36.750 ZM28.650,30.348 C29.138,30.239 29.711,30.150 30.285,30.150 C30.869,30.150 31.453,30.241 31.950,30.351 L31.950,26.453 C31.449,26.341 30.860,26.250 30.272,26.250 C29.702,26.250 29.135,26.338 28.650,26.446 L28.650,30.348 ZM28.650,24.948 C29.138,24.839 29.711,24.750 30.285,24.750 C30.869,24.750 31.453,24.841 31.950,24.951 L31.950,20.903 C31.449,20.791 30.860,20.700 30.272,20.700 C29.702,20.700 29.135,20.788 28.650,20.896 L28.650,24.948 ZM30.285,19.200 C30.869,19.200 31.453,19.291 31.950,19.401 L31.950,15.503 C31.449,15.391 30.860,15.300 30.272,15.300 C29.702,15.300 29.135,15.388 28.650,15.496 L28.650,19.398 C29.138,19.289 29.711,19.200 30.285,19.200 ZM27.150,8.865 L27.150,7.950 C27.150,7.287 26.613,6.750 25.950,6.750 L7.350,6.750 C6.687,6.750 6.150,7.287 6.150,7.950 L6.150,34.050 C6.150,34.713 6.687,35.250 7.350,35.250 L25.950,35.250 C26.613,35.250 27.150,34.713 27.150,34.050 L27.150,32.235 C26.808,32.165 26.550,31.863 26.550,31.500 C26.550,31.137 26.808,30.835 27.150,30.765 L27.150,26.835 C26.808,26.765 26.550,26.463 26.550,26.100 C26.550,25.737 26.808,25.435 27.150,25.365 L27.150,21.285 C26.808,21.215 26.550,20.913 26.550,20.550 C26.550,20.187 26.808,19.885 27.150,19.815 L27.150,15.885 C26.808,15.815 26.550,15.513 26.550,15.150 C26.550,14.787 26.808,14.484 27.150,14.415 L27.150,10.335 C26.808,10.265 26.550,9.963 26.550,9.600 C26.550,9.237 26.808,8.934 27.150,8.865 ZM30.272,9.750 C29.702,9.750 29.135,9.838 28.650,9.946 L28.650,13.998 C29.138,13.888 29.711,13.800 30.285,13.800 C30.869,13.800 31.453,13.890 31.950,14.001 L31.950,9.953 C31.449,9.841 30.860,9.750 30.272,9.750 ZM54.450,7.950 C54.450,7.287 53.913,6.750 53.250,6.750 L34.650,6.750 C33.987,6.750 33.450,7.287 33.450,7.950 L33.450,8.865 C33.792,8.934 34.050,9.237 34.050,9.600 C34.050,9.963 33.792,10.265 33.450,10.335 L33.450,14.415 C33.792,14.484 34.050,14.787 34.050,15.150 C34.050,15.513 33.792,15.815 33.450,15.885 L33.450,19.815 C33.792,19.885 34.050,20.187 34.050,20.550 C34.050,20.913 33.792,21.215 33.450,21.285 L33.450,25.365 C33.792,25.435 34.050,25.737 34.050,26.100 C34.050,26.463 33.792,26.765 33.450,26.835 L33.450,30.765 C33.792,30.835 34.050,31.137 34.050,31.500 C34.050,31.863 33.792,32.165 33.450,32.235 L33.450,34.050 C33.450,34.713 33.987,35.250 34.650,35.250 L53.250,35.250 C53.913,35.250 54.450,34.713 54.450,34.050 L54.450,7.950 ZM52.350,25.050 L35.850,25.050 C35.436,25.050 35.100,24.714 35.100,24.300 C35.100,23.886 35.436,23.550 35.850,23.550 L52.350,23.550 C52.764,23.550 53.100,23.886 53.100,24.300 C53.100,24.714 52.764,25.050 52.350,25.050 ZM52.350,19.050 L35.850,19.050 C35.436,19.050 35.100,18.714 35.100,18.300 C35.100,17.886 35.436,17.550 35.850,17.550 L52.350,17.550 C52.764,17.550 53.100,17.886 53.100,18.300 C53.100,18.714 52.764,19.050 52.350,19.050 ZM52.350,12.900 L35.850,12.900 C35.436,12.900 35.100,12.564 35.100,12.150 C35.100,11.736 35.436,11.400 35.850,11.400 L52.350,11.400 C52.764,11.400 53.100,11.736 53.100,12.150 C53.100,12.564 52.764,12.900 52.350,12.900 ZM24.900,25.050 L8.400,25.050 C7.986,25.050 7.650,24.714 7.650,24.300 C7.650,23.886 7.986,23.550 8.400,23.550 L24.900,23.550 C25.314,23.550 25.650,23.886 25.650,24.300 C25.650,24.714 25.314,25.050 24.900,25.050 ZM24.900,19.050 L8.400,19.050 C7.986,19.050 7.650,18.714 7.650,18.300 C7.650,17.886 7.986,17.550 8.400,17.550 L24.900,17.550 C25.314,17.550 25.650,17.886 25.650,18.300 C25.650,18.714 25.314,19.050 24.900,19.050 ZM24.900,12.900 L8.400,12.900 C7.986,12.900 7.650,12.564 7.650,12.150 C7.650,11.736 7.986,11.400 8.400,11.400 L24.900,11.400 C25.314,11.400 25.650,11.736 25.650,12.150 C25.650,12.564 25.314,12.900 24.900,12.900 Z"></path>
										</svg>
										<b>소비자 분쟁 해결 기준</b>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="menu1depth col">
						<a href="<%=cp%>/mguide.action">머신 사용 안내</a>
						<div class="menu2depth">
							<div class="wrapper">
								<div class="container-flex col5">
									<a id="machine" class="col"><svg
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
						<a href="<%=cp%>/rguide.action">수리 서비스 신청/안내</a>
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
				<div id="warranty" class="warranty ">
					<div class="wrapper">
						<div class="section-header">
							<h2 class="heading-2">제품 품질보증 및 부품 보유기간 안내</h2>
						</div>
						<ul>
							<div class="section-header">
								<h2 class="heading-2">제품 품질보증</h2>
							</div>
							<li>네슬레코리아 유한책임회사 네스프레소 사업부(이하 '네스프레소'라 합니다)는 소비자기본법상의 일반적
								소비자분쟁해결기준 및 품목별 소비자분쟁해결기준에 의거 아래와 같이 제품 품질에 대한 보증을 실시합니다.</li>
							<li>본 품질보증서에서 정하지 아니한 사항은 소비자기본법, 소비자분쟁해결기준 등 관련법령에 따릅니다.</li>
						</ul>

						<div class="section-header">
							<h2 class="heading-2">제품 품질보증기간 산정 기준</h2>
						</div>
						<ul class="list">
							<li>제품 품질보증기간이라 함은 제조사 또는 제품 판매자가 제품의 하자 또는 채무불이행 등으로 인한
								소비자의 피해에 대하여 수리·교환·환급 또는 배상을 하거나, 계약의 해제·해지 및 이행 등을 하는 기간을 말합니다.</li>

							<li>제품 품질보증기간 동안의 수리·교환·환급에 드는 비용은 네스프레소가 부담합니다. 다만, 소비자의 취급
								잘못이나 천재지변으로 고장이나 손상이 발생한 경우와 제조자 및 제조자가 지정한 수리점·설치점이 아닌 자가
								수리·설치하여 제품이 변경되거나 손상된 경우에는 네스프레소가 비용을 부담하지 않습니다.</li>

							<li>제품 품질보증기간은 구입일자를 기산점으로 하여 산정하며 구입일자의 확인은 구매증빙을(영수증등)
								기준으로 합니다. 단 구매증빙이 없는 경우는 제조일로부터 6개월이 경과한 날로부터 보증기간을 계산합니다.</li>
						</ul>
						<div class="boxline">
							<p>다음의 경우는 제품 품질보증기간이 제한 됩니다.</p>
							<ul class="depth1 list">
								<li>
									<p>가정용 커피 머신을 영업용도로 사용하는 경우</p>
									<ul>
										<li>가정용 커피 머신은 일반 가정이나 매장, 사무실등의 직원 식당, 호텔/모텔등의 거주 형태의
											서비스를 제공하는 시설의 객실용 머신과 유사한 환경에서 사용되도록 만들어 졌습니다. 위와 다른 형태의 커피
											제품을 판매하는 목적의 영업 용도 (예. 까페, 만화방 등에서의 커피 음료 판매)로 사용할 경우 보증 기간이
											제한 됩니다.</li>
									</ul>
								</li>
								<li>정상적인 사용 환경이 아닌 곳에서 사용하는 경우
									<ul>
										<li>머신은 일상적인 환경(온도/기압 등)에서 사용토록 설계 되어 있습니다.</li>
										<li>차량, 선박등에 탑재하는등 정상적인 사용 환경이 아닌 곳에서 사용하는 경우</li>
									</ul>
								</li>
							</ul>
						</div>
						<ul class="list">
							<li>당사와의 계약을 통해 납품되는 제품의 보증은 그 계약 내용을 기준으로 합니다.</li>
						</ul>
						<div class="section-header">
							<h3 class="heading-3">제품별 품질보증기간</h3>
						</div>
						<div class="table">
							<table>
								<thead>
									<tr>
										<th>구분</th>
										<th>보증기간</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>가정용</td>
										<td>24개월</td>
										<td rowspan="2">제품 품질 보증 안내 및 소비자 분쟁 해결 기준에 근거 영업용 머신은 계약
											조건에 따라 변동 가능</td>
									</tr>
									<tr>
										<td>영업용(Pro Machine)</td>
										<td>12개월, Aguila는 24개월</td>
									</tr>
								</tbody>
							</table>
							<p class="ref">* 해외에서 구매하신 머신은 국내 서비스 기준을 적용하지 않으며 별도의 안내 참조</p>
						</div>


						<div class="section-header">
							<h3 class="heading-3">해외 구매 머신</h3>
						</div>
						<ul class="list">
							<li>네슬레코리아 유한책임회사 네스프레소 사업부를 통해 정식으로 수입, 판매한 제품 이외의 해외에서 수입
								또는 구매된 머신으로 정의합니다.</li>
							<li>해외 구매 머신의 경우, 네슬레코리아 유한책임회사 네스프레소 사업부에서 판매되는 머신과 동일한 사양을
								가진 제품에 한해서만 유상으로 수리 및 점검 서비스를 받으실 수 있습니다.</li>
							<li>상기 조건 외에도 국내 서비스 규정 등에 따른 기타 이유로 인해 수리가 불가할 수 있으니, 자세한
								사항은 네스프레소 클럽(080-734-1111)으로 문의하시기 바랍니다.</li>
						</ul>

						<div class="section-header">
							<h3 class="heading-3">부품 보유기간</h3>
						</div>
						<ul class="list">
							<li>품목별 부품 보유 기간 및 내용 연수는 홈페이지상의 소비자 분쟁 해결 기준 메뉴 참조</li>
						</ul>
					</div>
				</div>
				<div id="charge" class="charge active">
					<div class="wrapper">
						<div class="section-header">
							<h2 class="heading-2">서비스 요금 안내</h2>
						</div>
						<ul class="depth1">
							<li>서비스 요금은 정부에서 재정한 소비자 기본법을 기준으로 소정의 요금을 청구하고 있습니다.</li>
							<li>서비스 요금은 부품비 (고장 부위 및 사용 연한에 따른 소모성 부품 포함) + 수리비 (수리 공수)
								+ 택배 비용 + 임대 사용 비용 = 서비스 요금으로 구성되나, 고장 증상에 따른 수리비 책정이 아닌 머신의 권장
								소비자가격에 기준하여 일정 금액으로 책정하여 청구하고 있습니다. 머신별 서비스 요금은 아래 유상 수리 부분의 표를
								참고하십시오.<br>
							</li>
						</ul>
						<div class="diagram">
							<div class="circle">
								<span>부품비</span>
							</div>
							<div class="expression">
								<span>+</span>
							</div>
							<div class="circle">
								<span>수리비<br>(수리공수)
								</span>
							</div>
							<div class="expression">
								<span>+</span>
							</div>
							<div class="circle">
								<span>택배 비용</span>
							</div>
							<div class="expression">
								<span>+</span>
							</div>
							<div class="circle">
								<span>임대머신<br>(선택가능)
								</span>
							</div>
							<div class="expression">
								<span> = </span>
							</div>
							<div class="circle">
								<span>서비스 요금</span>
							</div>
						</div>
						<p>
							해외 구매 머신의 경우 네슬레코리아 유한책임회사 네스프레소 사업부에서 판매되는 머신과 동일한 사양의 머신에 한해서만
							유상으로 수리 및 점검 서비스를 받으실 수 있습니다.<br> 상기 조건 외에도 국내 서비스 규정 등에 따른
							기타 이유로 인해 수리가 불가할 수 있으니, 자세한 사항은 네스프레소 클럽으로 (080-734-1111) 문의하시기
							바랍니다.<br> 해외 구매 머신은 네슬레코리아 유한책임회사 네스프레소 사업부를 통해 정식으로 수입, 판매한
							제품 이외의 해외에서 수입 또는 구매된 머신으로 정의합니다.
						</p>
						<br>
						<p>
							<labe>부품비: 부품비는 제품의 고장을 수리하고, 머신의 사용 연한 및 상태에 따라 소모성 부품의
							교체에 소요되는 부품 가격을 말합니다.</labe>
						</p>
						<p>
							<lable>수리비: 수리 비용은 제품을 수리하는데 필요한 순수 기술료를 말합니다.</lable>
						</p>
						<p>
							<lablel>택배 비용: 수리를 위해 회원이 원하는 장소에서 수리점까지의 총 4회 택배 비용을
							말합니다. (4회: 임대 머신 및 수거 박스의 배송, 고장 머신의 수리점 입고, 고장 머신의 출고, 임대 머신 및
							수거 박스 회수)</lablel>
						</p>
						<p>
							<label>임대 머신 사용 비용</label>: 머신이 수리 되는 동안 제공되는 임대 머신 사용 비용입니다.
							원하시지 않을 경우 해당 비용(5천원)이 수리비에서 제외 됩니다.
						</p>
						<div class="section-header">
							<h2 class="heading-2">무상 수리</h2>
							<p>보증기간 이내에 정상적으로 사용한 상태에서 발생된 고장 또는 결함 또는 수리 이후 재고장 발생시 수리에
								대한 보증은 아래와 같이 적용 됩니다.</p>
						</div>
						<div class="table-none-pay">
							<table>
								<thead>
									<tr>
										<th>구분</th>
										<th>보증기간</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>가정용</td>
										<td>24개월</td>
										<td rowspan="2">제품 품질 보증 안내 및 소비자 분쟁 해결 기준에 근거 영업용 머신은 계약
											조건에 따라 변동 가능</td>
									</tr>
									<tr>
										<td>영업용(Promo machine)</td>
										<td>12개월, Aguila는 24개월</td>
									</tr>
									<tr>
										<td>수리된 머신</td>
										<td>머신의 잔여 보증 기간 혹은 경과한 경우 수리한 날로부터 6개월(동일 부위/동일 증상에 한함)</td>
										<td>유/무상으로 수리를 한 건(수리 일자 기준)</td>
									</tr>
									<tr>
										<td>수리 불가 등의 사유로 교환된 머신</td>
										<td>신규 구매한 머신과 동일 기간 적용</td>
										<td>소비자 분쟁 해결 기준에 근거</td>
									</tr>
								</tbody>
							</table>
							<p class="ref">* 에어로치노는 뚜껑, 우유 거품기, 휘스크, 베이스로 구성되어 있으며, 각 모듈의
								고장 발생시, 수리가 아닌 부품 교환으로 진행 됩니다.</p>
						</div>
						<div class="section-header">
							<h2 class="heading-2">유상 수리</h2>
							<p>유상 수리 적용항목</p>
						</div>
						<div class="table-pay">
							<table>
								<tbody>
									<tr>
										<th>보증기간</th>
										<td>무상 보증 기간 경과된 제품</td>
									</tr>
									<tr>
										<th>설치/철거</th>
										<td>이사나 가정내 제품 이동을 재 설치 및 외부기기 연결 요청의 건<br>홈쇼핑, 인터넷등
											자가 구매 후 제품 설치/연결 요청의 건
										</td>
									</tr>
									<tr>
										<th>천재지변</th>
										<td>천재지변(지진, 풍수해, 낙뢰, 해일 등)의 화재, 염해, 동파, 가스피해 등으로 고장시</td>
									</tr>
									<tr>
										<th>고객부주의</th>
										<td>
											<ul class="list">
												<li>사용자 과실로 인한 발생(동전/핀과 같은 이물질투입, 물통에 물이 아닌 물질(우유, 식초
													등) 투입</li>
												<li>사용설명서 내의 주의사항을 지키지 않아 고장 발생시, 네스프레소 서비스 센터 외 임의의
													수리, 개조로 인한 고장 발생시</li>
												<li>제품 내부의 먼지, 필터 막힘으로 인한 서비스 요청하는 건</li>
												<li>차단기/콘센트/멀티탭 불량, 전원 오인가, 전원 코드 미삽입 등 사전 확인없이 서비스
													요청하는 건</li>
												<li>단수, 수도 잠김 등으로 인한 서비스 요청하는 건</li>
												<li>제품 사용처 전압/전류, 수입/하수구, 실내 온도/별레 인입 등의 문제</li>
												<li>네스프레소 정품 캡슐이 아닌 호환 캡슐/청소 캡슐 사용으로 인한 고장</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>기타</th>
										<td>
											<ul>
												<li>정품고장이 아닌 고객 요청에 의한 제품 점검(보증기간 이내라도 유상 수리)<br>예)
													제품 이상 유무 점검, 제품의 분해 청소 혹은 디스케일링 요청<br>* 제품 점검이나 간단 조치
													방법은 서비스 홈페이지를 활용하시면 도움이 됩니다
												</li>
												<li></li>
												<li>B2B Pro 머신의 경우 초기 설치는 무상이나, 그 이후 고객의 요청에 의한 이동 설치는
													유상 처리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="section-header">
							<h3 class="heading-3">유상 수리 비용</h3>
						</div>
						<ul>
							<li>네스프레소는 유상 수리 비용을 머신의 권장 소비자 가격에 근거한 차등적 유상 수리 비용 프로그램으로
								운영하고 있습니다. 이는 고장 부위 이외의 사용 연한에 따른 소모성 부품의 교체 비용과 픽업 서비스 택배 비용,
								임대 머신 및 머신 수거 전용 박스의 유지 보수 그리고 수리 완료된 머신과 함께 제공되는 테이스팅 캡슐에 대한
								비용입니다. (유상 수리 회원에 한해, 네스프레소의 다양한 캡슐을 경험 하실 수 있도록 Tasting Kit를
								제공합니다)</li>
							<li>네스프레소는 수리 접수 시, 수리 비용의 선납을 기준으로 운영합니다. 이는 유상 수리 후 제품 미수령
								및 수리비 미지급등을 예방하기 위함입니다. 선납된 수리 비용은 입고 점검 후, 이상 없음으로 판명 시 일정 금액의
								택배 비용 (1만원) 을 차감한 후 환불 됩니다.</li>
						</ul>
						<div class="section-header">
							<h3 class="heading-3">유상 수리 적용항목</h3>
						</div>

						<div class="table-product table">
							<table>
								<thead>
									<tr>
										<th colspan="2">Category</th>
										<th>Sales Price Group</th>
										<th>모델명</th>
										<th>네스프레소코리아 판매 머신</th>
										<th>해외 머신</th>
										<th>현장 수리</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="6">가정용</td>
										<td rowspan="4">오리지널 라인</td>
										<td>A(400K KRW ↑)</td>
										<td>크리아티스타 플러스, 엑스퍼트 앤 밀크, 엑스퍼트, 라티시마 터치, 라티시마 플러스, 그랑
											라티시마</td>
										<td>75,000</td>
										<td>75,000</td>
										<td>불가</td>
									</tr>
									<tr>
										<td>B(300K KRW ↑)</td>
										<td>시티즈 앤 밀크, 라티시마원, 유밀크</td>
										<td>60,000</td>
										<td rowspan="3">60,000</td>
										<td rowspan="3">불가</td>
									</tr>
									<tr>
										<td>C(200K KRW ↑)</td>
										<td>시티즈, 픽시, 유</td>
										<td>40,000</td>
									</tr>
									<tr>
										<td>D(200K KRW ↓)</td>
										<td>에센자 미니, 이니시아</td>
										<td>30,000</td>
									</tr>
									<tr>
										<td colspan="2">버츄오라인</td>
										<td>버츄오플러스, 버츄오</td>
										<td>50,000</td>
										<td>80,000</td>
										<td>불가</td>
									</tr>
									<tr>
										<td colspan="2">바리스타 레시피 메이커</td>
										<td>바리스타 레시피 메이커</td>
										<td>부품 구매 문의</td>
										<td>부품 구매 문의</td>
										<td>불가</td>
									</tr>
									<!-- <tr>
              <td rowspan="3" colspan="3">영업용(Nespresso Pro)</td>
                        <td>ZN100</td>
                        <td>49,500</td>
                        <td>별도 협의</td>
                        <td rowspan="2">서울/경기:27,500원<br>지방:별도 협의</td>
                    </tr>
            <tr>
                        <td>CS220/CS223</td>
                        <td>55,000</td>
                        <td>별도 협의</td>
                    </tr>
            <tr>
                        <td>AGUILA</td>
                        <td>수리 증상별 청구</td>
                        <td>별도 협의</td>
              <td>지역별 차등 적용</td>
                    </tr> -->
									<tr>
										<td rowspan="2" colspan="3">에어로치노<br>(Aeroccino)
										</td>
										<td>Aeroccino3 및 앤 밀크로 구매 고객<br>(유밀크, 시티즈앤밀크 등)
										</td>
										<td>부품 구매 문의</td>
										<td>부품 구매 문의</td>
										<td>불가</td>
									</tr>
									<tr>
										<td>Aeroccino4</td>
										<td>부품 구매 문의</td>
										<td>부품 구매 문의</td>
										<td>불가</td>
									</tr>
								</tbody>
							</table>
							<p class="ref">* 해외 머신의 경우 국내 같은 모델의 권장 소비자 가격에 의해 수리비 그룹이
								적용되나 높은 유상 수리비 청구, 국내에 같은 모델이 판매되지 않는 머신일 경우 수리 불가</p>
						</div>

						<!-- 20200706 add it-->
						<div class="table-product table professional">
							<table>
								<thead>
									<tr>
										<th>Category</th>
										<th>모델명</th>
										<th>지역</th>
										<th>현장 수리<br>(1대/1회 출장비 포함)*
										</th>
										<th colspan="2">현장 수리 추가 비용 *<br>(동일장소 내, 2대 이상부터
											적용)
										</th>
										<th>택배 접수 *<br>(1대/운송비 포함)
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="10">네스프레소 프로페셔널</td>
										<td rowspan="3">Zenius</td>
										<td>서울 및 거점 도시 등</td>
										<td>82,500원</td>
										<td rowspan="3">대당 39,500원</td>
										<td rowspan="9">간단 조치<br>(캡슐 걸림 등)<br>대당
											22,000원
										</td>
										<td rowspan="2">미해당</td>
									</tr>
									<tr>
										<td>경기/ 인천 지역</td>
										<td>89,000원</td>
									</tr>
									<tr>
										<td>그 외 지역</td>
										<td>130,000원</td>
										<td>99,000 (일부지역)*</td>
									</tr>
									<tr>
										<td rowspan="3">Gemini</td>
										<td>서울 및 거점 도시 등</td>
										<td>92,500원</td>
										<td rowspan="3">대당 49,500원</td>
										<td rowspan="2">미해당</td>
									</tr>
									<tr>
										<td>경기/ 인천 지역</td>
										<td>99,000원</td>
									</tr>
									<tr>
										<td>그 외 지역</td>
										<td>140,000원</td>
										<td>110,000 (일부지역)*</td>
									</tr>
									<tr>
										<td rowspan="3">Tower Dispenser *</td>
										<td>서울 및 거점 도시 등</td>
										<td>92,500원</td>
										<td rowspan="3">대당 49,500원</td>
										<td rowspan="3">미해당</td>
									</tr>
									<tr>
										<td>경기/ 인천 지역</td>
										<td>99,000원</td>
									</tr>
									<tr>
										<td>그 외 지역</td>
										<td>140,000원</td>
									</tr>
									<tr>
										<td>Aguila/Momento</td>
										<td colspan="4">현장 진단 후 고장 증상 별 청구</td>
										<td>미해당</td>
									</tr>
								</tbody>
							</table>
							<p class="ref">* 부가세 포함</p>
							<p class="ref">* 자세한 사항은 네스프레소 프로페셔널 클럽으로 문의 바랍니다.</p>
							<p class="ref">* 네스프레소 프로페셔널 클럽 Tel: 080-734-1113 (24시간/
								365일, 수신자 부담)</p>
						</div>



					</div>
				</div>

				<div id="dispute" class="dispute">
					<div class="wrapper">
						<div class="section-header">
							<h2 class="heading-2">소비자분쟁해결기준 (공정거래위원회 고시)</h2>
						</div>
						<ul class="list">
							<li>제1조(목적) 이 고시는 소비자기본법 제16조 제2항과 같은 법 시행령 제8조 제3항의 규정에 의해
								일반적 소비자분쟁해결기준에 따라 품목별 소비자분쟁해결기준을 정함으로써 소비자와 사업자(이하 “분쟁당사자”라
								한다)간에 발생한 분쟁이 원활하게 해결될 수 있도록 구체적인 합의 또는 권고의 기준을 제시하는데 그 목적이 있다.</li>
							<li>제2조(피해구제청구)?분쟁당사자간에 합의가 이루어지지 않을 경우 분쟁당사자는 중앙행정기관의 장,
								시·도지사, 한국소비자원장 또는 소비자단체에게 그 피해구제를 청구할 수 있다.</li>
							<li>제3조(품목 및 보상기준)?이 고시에서 정하는 분쟁해결기준, 품질보증기간 및 부품보유기간, 품목별
								내용연수표는 각각 별표 Ⅰ, 별표 Ⅱ, 별표 Ⅲ과 같다.</li>
						</ul>
						<div class="section-header">
							<h3 class="heading-3">1. 분쟁해결기준(공산품)</h3>
						</div>
						<div class="disputeTable table">
							<table>
								<thead>
									<tr>
										<th>분쟁유형</th>
										<th>해결기준</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1. 구입 후 10일 이내에 정상적인 사용상태에서 발생한 성능·기능상의 하자로 중요한 수리를
											요할 때</td>
										<td>- 제품 교환 또는 구입가 환급</td>
										<td rowspan="22">
											<ul>
												<li>감가상각방법은 정액법에 의하되 내용년수는 품목별 내용년수표를(월할계산) 적용</li>
												<li>감가상각비 = (사용년수/내용연수)×구입가</li>
												<li>품질보증기간 이내에 동일하자에 대해 2회까지 수리하였으나 하자가 재발하는 경우 또는 여러부위
													하자에 대해 4회까지 수리하였으나 하자가 재발하는 경우는 수리 불가능한 것으로 본다.</li>
												<li>제조사가 리퍼 부품을 활용하여 수리한 경우, 수리한 날로부터 1년 이내에 소비자가 정상적으로
													사용하는 과정에서 그 수리한 부분에 고장이 재발하면 무상으로 수리함.
													<p>※ 리퍼부품 : 기존제품에서 회수된 부품으로 일정한 가공과정 등을 거침으로써 성능과 품질이
														신부품과 동등한 상태로 개선된 부품</p>
												</li>
												<li>설치보증기간 1년 내 하자시 설치업체에서 설치비 환불, 하자 발생 제품에 대한 손해배상</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>2. 구입 후 1개월 이내에 정상적인 사용상태에서 발생한 성능·기능상의 하자로 중요한 수리를
											요할 때</td>
										<td>- 제품 교환 또는 무상수리</td>
									</tr>
									<tr>
										<td colspan="2">3. 품질보증기간 이내에 정상적인 사용상태에서 발생한 성능·기능상의 하자</td>
									</tr>
									<tr>
										<td>1) 하자 발생시</td>
										<td>- 무상수리</td>
									</tr>
									<tr>
										<td>2) 수리 불가능시</td>
										<td>- 제품교환 또는 구입가 환급</td>
									</tr>
									<tr>
										<td>3) 교환 불가능시</td>
										<td>- 구입가 환급</td>
									</tr>
									<tr>
										<td>4) 동일 하자에 대하여 4회째 수리시
											<p>(2009년 1월 제품부터 3회째 수리시)</p>
										</td>
										<td>- 교환 또는 구입가 환급</td>
									</tr>
									<tr>
										<td>5) 여러 부위의 고장으로 총 5회째 수리시</td>
										<td>- 교환 또는 구입가 환급</td>
									</tr>
									<tr>
										<td>6) 교환된 제품이 1개월 이내에 중요한 수리를 요할 때</td>
										<td>- 구입가 환급</td>
									</tr>
									<tr>
										<td colspan="2">4. 소비자가 수리 의뢰한 제품을 사업자가 분실한 경우</td>
									</tr>
									<tr>
										<td>1) 품질보증기간 이내</td>
										<td>- 교환 또는 구입가 환급</td>
									</tr>
									<tr>
										<td>2) 품질보증기간 경과 후</td>
										<td>- 정액감가상각 금액에 10% 가산하여 환급(최고한도 : 구입가격)</td>
									</tr>
									<tr>
										<td colspan="2">5. 부품보유기간 이내에 수리용 부품을 보유하고 있지 않아 발생한 피해</td>
									</tr>
									<tr>
										<td colspan="2">1) 품질보증기간 이내</td>
									</tr>
									<tr>
										<td>- 정상 사용 중 성능·기능상의 하자로 인해 발생된 경우</td>
										<td>- 제품교환 또는 구입가 환급</td>
									</tr>
									<tr>
										<td>- 소비자의 고의·과실로 인한 고장인 경우</td>
										<td>- 유상수리에 해당하는 금액 징수 후 제품교환</td>
									</tr>
									<tr>
										<td colspan="2">2) 품질보증기간 경과 후</td>
									</tr>
									<tr>
										<td>- 2011년 12월 28일 이전 구입 제품</td>
										<td>- 정액감가상각한 금액에 100분의 10을 더하여 환급</td>
									</tr>
									<tr>
										<td>- 2011년 12월 28일 이후 구입 제품</td>
										<td>- 정액감가상각한 잔여 금액에 구입가의 5%를 가산하여 환급(감가상각한 잔여금액 &lt; 0
											이면, 0으로 계산)</td>
									</tr>
									<!-- 2016-10-25 추가 -->
									<tr>
										<td>- 2016년 10월 26일 이후 제조 제품</td>
										<td>- 정액감가상각한 잔여 금액에 구입가의 5%를 가산하여 환급</td>
									</tr>
									<!-- // 2016-10-25 추가 -->
									<tr>
										<td>6. 제품 구입시 운송과정에서 발생된 피해</td>
										<td>- 제품교환</td>
									</tr>
									<tr>
										<td>7. 사업자가 제품 설치 중 발생된 피해</td>
										<td>- 제품교환</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="section-header">
							<h2 class="heading-2">2. 품목별 부품보유기간 및 내용연수</h2>
						</div>
						<ul>
							<li>소비자 분쟁 해결 기준상의 &lt;별표 Ⅲ &gt; 품목별 품질 보증기간 및 부품 보유 기간에
								근거하나, 커피 머신의 경우 품목 구분이 별도로 되어 있지 않아 별도의 기간이 정하지 않은 경우로 구분하며, 유사
								품목에 따름을 근거로 해당 품목의 생산을 중단한 때부터 기산하여 5년 으로 정함</li>
							<li>부품 보유 기간의 기산점은 해당 제품의 제조일자를 기산점으로 합니다.</li>
						</ul>
					</div>
				</div>


			</div>
		</div>

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
        
        // adjust svg position for vertical
        if(window.innerWidth>767) {
          $('.menu2depth a > svg').map(function(){ var temp = (60 - $(this).height())/2+'px';$(this).css({'margin-top':temp,'margin-bottom':temp});})
        } else {
          resizeMenu1();
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
        
        window.onscroll = function() {if($(window).width()>767){fixed();}}
        function fixed() {
          if (window.pageYOffset >= sticky) {
            $(navi).addClass("fixed");
          } else {
            $(navi).removeClass("fixed");
          }
        }
        
        $(window).resize(function(){
        if($(window).width()<768){
          resizeMenu1();
        } else {
          $('.menu2depth a > svg').map(function(){ var temp = (60 - $(this).height())/2+'px';$(this).css({'margin-top':temp,'margin-bottom':temp});})
        }})
        
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