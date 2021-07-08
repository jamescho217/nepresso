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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>공지사항</title>



<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/6.26.0/polyfill.min.js"></script>


<style type="text/css">
	
	#app {
		line-height: 1.4;
		font-size: 14px;
		letter-spacing: -0.5px;
		color: #000;
		position: relative;
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
	}
	
	#app #contents>div .heading-2 {
		padding: 30px 0;
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
	
	#app #contents app {
		padding: 0 0 50px;
	}
	
	#app #contents app article {
		width: 100%;
		margin: 0 auto;
	}
	
	#app #contents app article.is-collapsed {
		display: block;
		border: 1px solid #fff;
	}
	
	#app #contents app article.is-collapsed .content {
		display: block;
		position: fixed;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		width: 100vw;
		max-width: 100%;
		height: 100vh;
		background: rgba(0, 0, 0, 0.6);
		box-sizing: border-box;
		z-index: 999;
	}
	
	#app #contents app article.is-collapsed .content h2 {
		z-index: 999;
		line-height: 1.6;
		font-size: 1.2rem;
		padding: 0 0 .2rem;
	}
	
	#app #contents app article.is-collapsed .content .text {
		z-index: 999;
		position: absolute;
		overflow-y: auto;
		word-break: keep-all;
		line-height: 1.6;
		background: rgba(255, 255, 255, 1);
	}
	
	#app #contents app article.is-collapsed .content .text .close {
		position: absolute;
		top: 0px;
		right: 20px;
		font-size: 40px;
		cursor: pointer;
	}
	
	#app #contents app article .titleSection {
		display: flex;
		flex: 1 1 auto;
		justify-content: space-between;
		border-bottom: 1px solid #e4e4e4;
		flex-wrap: nowrap;
	}
	
	#app #contents app article .titleSection .title {
		cursor: pointer;
	}
	
	#app #contents app article .titleSection.notice {
		font-weight: bold;
	}
	
	#app #contents app article .titleSection>div {
		line-height: 1.4;
		font-size: 16px;
		padding: 10px;
		margin: 5px 0;
	}
	
	#app #contents app article .content {
		padding: 20px 10px;
		display: none;
	}
	
	#app #contents app article .content a {
		text-decoration: underline;
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
		#app #contents .wrapper {
			width: 90vw;
			max-width: 100%;
			margin: 0 auto;
			letter-spacing: -0.5px;
		}
		#app #contents .wrapper .titleSection {
			display: flex;
			flex: 1;
			align-items: space-between;
		}
		#app #contents .wrapper .titleSection .title {
			font-size: 11px;
			width: 75%;
		}
		#app #contents .wrapper .titleSection .date {
			width: 25%;
			font-size: 11px;
			text-align: right;
		}
		#app #contents .wrapper .content .text {
			width: 100vw;
			height: 100vh;
			padding: 60px 20px;
		}
		#app app {
			padding: 0 0 50px;
		}
		#app app article {
			width: 100%;
			margin: 0 auto;
		}
		#app app article.is-collapsed {
			display: block;
			border: 1px solid #fff;
		}
		#app app article.is-collapsed .content {
			display: block;
			position: fixed;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			width: 100%;
			height: 100%;
			background: #fff;
		}
		#app app article.is-collapsed .content .text {
			position: fixed;
			width: 100%;
			height: 100%;
			left: 0;
			top: 0;
			overflow-y: auto;
			word-break: keep-all;
			line-height: 1.6;
			background: #fff;
			padding: 10px;
		}
		#app app article.is-collapsed .content .text .close {
			position: absolute;
			top: 40px !important;
			right: 20px;
			font-size: 40px;
		}
	}
	
	@media ( min-width : 768px) and (max-width: 995px) {
		#app .wrapper {
			width: 90vw;
			margin: 0 auto;
		}
		#app #kv .wrapper {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
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
		#app #contents {
			background: #fff;
			padding: 120px 0 100px;
		}
		#app #contents>div {
			padding: 50px 0;
		}
	}
	
	@media ( min-width : 996px) {
		#app .wrapper {
			width: 996px;
		}
		#app #kv .wrapper {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
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
		#app #contents {
			background: #fff;
			padding: 120px 0 100px;
		}
		#app #contents>div {
			padding: 50px 0;
		}
		#app app {
			padding: 0 0 50px;
		}
		#app app article {
			width: 100%;
			margin: 0 auto;
		}
		#app app article.is-collapsed {
			display: block;
			border: 1px solid #fff;
		}
		#app app article.is-collapsed .content {
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			width: 100%;
			height: 100%;
			background: rgba(0, 0, 0, 0.6);
		}
		#app app article.is-collapsed .content .text {
			position: fixed;
			width: calc(50% - 100px);
			left: 50%;
			top: 50%;
			overflow-y: auto;
			word-break: keep-all;
			line-height: 1.6;
			transform: translate(-50%, -50%);
			background: rgba(255, 255, 255, 1);
			padding: 50px;
		}
		#app app article.is-collapsed .content .text .close {
			position: absolute;
			top: 0px;
			right: 20px;
			font-size: 40px;
		}
	}
</style>

<script type="text/javascript">
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
    
    
    var contents = [
          {
            "title":"네스프레소 유상 수리 비용 변경 안내",
            "content":"항상 네스프레소를 아껴주시는 회원님들께 감사의 말씀 드립니다. 수리 점검 후 이상 없음으로 판명 시 기존 일정 금액의 택배 비용으로 차감하던 금액이 기존 5천원에서 1만원으로 2021년 3월 8일부터 인상됨을 알려 드립니다. 그동안 수리 서비스에 영향을 미치는 제반 비용의 상승에도 불구하고 요금인상 없이 유지하여 왔으나, 모든 여건을 고려하여 요금 인상을 진행하게 되었습니다. 이점 회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소 코리아는 고객들이 기대하는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다.<br /><br /><a href='https://www.nespresso.com/kr/ko/technical-support-warranty?charge'>* 유상 수리 서비스 요금 변경 내용 확인</a>",
            "date":"2021-3-8"  
          },
          {
            "title":"네스프레소 프로페셔널 수리 서비스 요금 변경 안내",
            "content":"네스프레소 프로페셔널을 애용해주시는 회원님들께 감사의 말씀 드립니다. <br>2021년 2월 5일부터 네스프레소 프로페셔널 머신 수리 비용이 변경되는 점 안내 드립니다. <br />앞으로도 네스프레소 코리아는 만족할 수 있는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다. 변경 세부 사항은 하단의 표를 참고해 주시기 바랍니다.<br /><br /><a href='https://www.nespresso.com/kr/ko/technical-support-warranty?charge'>*수리 서비스 요금 변경 내용 확인</a>",
            "date":"2020-6-10"  
          },
          {
            "title":"네스프레소 프로페셔널 수리 서비스 요금 변경 안내", 
            "content":"항상 네스프레소 프로페셔널을 아껴주시는 회원님들께 감사의 말씀드립니다. <br>네스프레소 프로페셔널 머신의 수리 비용이 하기와 같이 2020년 7월 6일부터 조정 됨을 알려드립니다. <br>그동안 수리 서비스에 영향을 미치는 제반 비용의 상승에도 불구하고 수년 간 요금 인상 없이 유지하여 왔으나, 출장비 포함한 모든 여건을 고려하여 지역별로 적용하여 요금 인상을 진행하게 되었습니다.<br><br> 이점 회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소 코리아는 고객들이 기대하는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다.<br><br><a href='https://www.nespresso.com/kr/ko/technical-support-warranty?charge'>*수리 서비스 요금 변경 내용 확인</a>", 
            "date":"2020-6-10"  
          },
          {
            "title":"수리 서비스 요금 변경 안내", 
            "content":"항상 네스프레소를 아껴주시는 회원님들께 감사의 말씀 드립니다.<br>네스프레소 버츄오 라인의 수리 비용이 2020년 2월 22일부터 인상됨을 알려드립니다. <br>그동안 수리 서비스에 영향을 미치는 제반 비용의 상승에도 불구하고 요금인상 없이 유지하여 왔으나, 모든 여건을 고려하여 요금 인상을 진행하게 되었습니다. <br>이점 회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소 코리아는 고객들이 기대하는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다.<br><br><a href='https://www.nespresso.com/kr/ko/technical-support-warranty?charge'>*수리 서비스 요금 변경 내용 확인</a>", 
            "date":"2020-1-21"  
          }
        ];
    console.log(contents);
    Vue.component('notice-board', {
       data:function(){ return {
          collapsed: ''
        }},
        template:'<article ref="collapsible" v-bind:class="{\'is-collapsed\': collapsed }"><div class="titleSection"><div class="title" v-on:click="collapsed = !collapsed"><h3>{{ content.title }}</h3></div><div class="date">{{ content.date }}</div></div><div class="content"><div class="text"><h2>{{ content.title }}</h2><span class="close" @click="collapsed = !collapsed">&times;</span><p v-html="content.content"></p></div></div></article>',
      props: {
        content: Object,
        collapsed: Boolean
      },
      methods:{
        close:function(){
          collapsed = false;
        }
      }
    })
    
    var contents = new Vue({
        el:'app',
        data: function(){
          contents
        }
    })
</script>

<style type="text/css">
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.8); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background-color: #fefefe;
    margin: auto;
    padding: 50px;
    border: 1px solid #888;
    width: 60%;
}
.modal-content h1 {
    font-size: 19px;
    padding-bottom: 8px;
}
/* The Close Button */
.close {
    position: absolute;
    right: 20px;
    top: 0;
    font-size: 40px;
    color: #000;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
</head>
<body>

<!-- ------------------------------------------상단 시작---------------------------------------------------- -->
<c:import url="../header.jsp"></c:import>
<!-- ------------------------------------------상단 끝---------------------------------------------------- -->



	<main id="main"> <span id="a11y-main-area"
		class="visually-hidden" tabindex="-1">메인 컨텐츠를 보고 계십니다.</span>
	<div id="block-8812379100661" class="free-html" data-label="">
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
					</div>
					<div class="menu1depth col">
						<a href="<%=cp%>/mguide.action">머신 사용 안내</a>
					</div>
					<div class="menu1depth col">
						<a href="<%=cp%>/rguide.action">수리 서비스 신청/안내</a>
					</div>
					<div class="menu1depth col active">
						<a href="<%=cp%>/rguide.action">공지사항</a>
					</div>
				</div>
			</div>
			
<script type="text/javascript">

$(function() {
	 
	  $(document).ready(function() {
	 
	    $("#myBtn").click(function() {
	      $("#myModal").css({
	        "display": "block"
	      });
	    });
	 
	    $(".close").click(function() {
	      $("#myModal").css({
	        "display": "none"
	      });
	    });
	 
	    $("html").click(function(event) {
	      if (event.target.id === "myModal") {
	        $("#myModal").css({
	          "display": "none"
	        });
	      }
	    });
	 
	  });
	 
	});
	
$(function() {
	  $(document).ready(function() {
	 
	    $("#myBtn1").click(function() {
	      $("#myModal1").css({
	        "display": "block"
	      });
	    });
	    $(".close").click(function() {
	      $("#myModal1").css({
	        "display": "none"
	      });
	    });
	    $("html").click(function(event) {
	      if (event.target.id === "myModal1") {
	        $("#myModal1").css({
	          "display": "none"
	        }); }
	    });
	  });
	})
	
$(function() {
	  $(document).ready(function() {
	 
	    $("#myBtn2").click(function() {
	      $("#myModal2").css({
	        "display": "block"
	      });
	    });
	    $(".close").click(function() {
	      $("#myModal2").css({
	        "display": "none"
	      });
	    });
	    $("html").click(function(event) {
	      if (event.target.id === "myModal2") {
	        $("#myModal2").css({
	          "display": "none"
	        }); }
	    });
	  });
	})
	
$(function() {
	  $(document).ready(function() {
	 
	    $("#myBtn3").click(function() {
	      $("#myModal3").css({
	        "display": "block"
	      });
	    });
	    $(".close").click(function() {
	      $("#myModal3").css({
	        "display": "none"
	      });
	    });
	    $("html").click(function(event) {
	      if (event.target.id === "myModal3") {
	        $("#myModal3").css({
	          "display": "none"
	        }); }
	    });
	  });
	})

$(function() {
	  $(document).ready(function() {
	 
	    $("#myBtn4").click(function() {
	      $("#myModal4").css({
	        "display": "block"
	      });
	    });
	    $(".close").click(function() {
	      $("#myModal4").css({
	        "display": "none"
	      });
	    });
	    $("html").click(function(event) {
	      if (event.target.id === "myModal4") {
	        $("#myModal4").css({
	          "display": "none"
	        }); }
	    });
	  });
	})
	
</script>

			<div id="contents">
				<app>
				<div class="wrapper">
					<article>
					<div class="titleSection notice">
						<div class="title">제목</div>
						<div class="date">날짜</div>
					</div>
					</article>
					<!-- 반복 -->
					<c:forEach var="dto" items="${lists }">
					<article class="">
					<div class="titleSection">
						<div class="title" id="myBtn${dto.nnum }">
						<h3>${dto.nsubject }</h3>
						</div>
						<div class="date">${dto.ndate }</div>
					</div>
					<!-- 생성!! -->
					<div id="myModal${dto.nnum }" class="modal">
					  <!-- 내용 -->
					  <div id="modal-content" class="modal-content">
					    <span class="close">×</span>
					    <h1>${dto.nsubject }</h1>
					    <p>
							${dto.ncontent }
						</p>
					  </div>
					</div>
					</article>
					</c:forEach>
					
					<!-- 
					<article class="">
					<div class="titleSection">
						<div class="title" id="myBtn">
						<h3>네스프레소 유상 수리 비용 변경 안내</h3>
						</div>
						<div class="date">2020-3-8</div>
					</div>
					생성!!
					<div id="myModal" class="modal">
					  내용
					  <div id="modal-content" class="modal-content">
					    <span class="close">×</span>
					    <h1>네스프레소 유상 수리 비용 변경 안내</h1>
					    <p>
							항상 네스프레소를 아껴주시는 회원님들께 감사의 말씀 드립니다. 수리 점검 후 이상 없음으로 판명 시 기존 일정
							금액의 택배 비용으로 차감하던 금액이 기존 5천원에서 1만원으로 2021년 3월 8일부터 인상됨을 알려 드립니다.
							그동안 수리 서비스에 영향을 미치는 제반 비용의 상승에도 불구하고 요금인상 없이 유지하여 왔으나, 모든 여건을
							고려하여 요금 인상을 진행하게 되었습니다. 이점 회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소
							코리아는 고객들이 기대하는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다.<br>
							<br>
							<a href="https://www.nespresso.com/kr/ko/technical-support-warranty?charge">*
								유상 수리 서비스 요금 변경 내용 확인</a>
						</p>
					  </div>
					</div>
					</article>
					<article class="">
					<div class="titleSection">
						<div class="title" id="myBtn1">
							<h3>네스프레소 프로페셔널 수리 서비스 요금 변경 안내</h3>
						</div>
						<div class="date">2020-6-10</div>
					</div>
					<div id="myModal1" class="modal">
						<div id="modal-content" class="modal-content">
							<span class="close">×</span>
							<h1>네스프레소 프로페셔널 수리 서비스 요금 변경 안내</h1>
							<p>
								네스프레소 프로페셔널을 애용해주시는 회원님들께 감사의 말씀 드립니다. <br>2021년 2월 5일부터
								네스프레소 프로페셔널 머신 수리 비용이 변경되는 점 안내 드립니다. <br>앞으로도 네스프레소 코리아는
								만족할 수 있는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다. 변경 세부 사항은 하단의 표를 참고해 주시기
								바랍니다.<br>
								<br>
								<a href="https://www.nespresso.com/kr/ko/technical-support-warranty?charge">*수리
									서비스 요금 변경 내용 확인</a>
							</p>
						</div>
					</div>
					</article>
					<article class="">
					<div class="titleSection">
						<div class="title" id="myBtn2">
							<h3>네스프레소 프로페셔널 수리 서비스 요금 변경 안내</h3>
						</div>
						<div class="date">2020-6-10</div>
					</div>
					<div id="myModal2" class="modal">
						<div id="modal-content" class="modal-content">
							<span class="close">×</span>
							<h1>네스프레소 프로페셔널 수리 서비스 요금 변경 안내</h1>
							<p>항상 네스프레소 프로페셔널을 아껴주시는 회원님들께 감사의 말씀드립니다. <br>네스프레소 프로페셔널 머신의 수리 비용이 하기와 같이 2020년 7월 6일부터 조정 됨을 알려드립니다. <br>그동안 수리 서비스에 영향을 미치는 제반 비용의 상승에도 불구하고 수년 간 요금 인상 없이 유지하여 왔으나, 출장비 포함한 모든 여건을 고려하여 지역별로 적용하여 요금 인상을 진행하게 되었습니다.<br><br> 이점 회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소 코리아는 고객들이 기대하는 최상의 고객서비스 제공을 위해 항상 노력하겠습니다.<br><br><a href="https://www.nespresso.com/kr/ko/technical-support-warranty?charge">*수리 서비스 요금 변경 내용 확인</a></p>
						</div>
					</div>
					</article>
					<article class="">
					<div class="titleSection">
						<div class="title" id="myBtn3">
							<h3>수리 서비스 요금 변경 안내</h3>
						</div>
						<div class="date">2020-1-21</div>
					</div>
					<div id="myModal3" class="modal">
						<div id="modal-content" class="modal-content">
							<span class="close">×</span>
							<h1>수리 서비스 요금 변경 안내</h1>
							<p>
								항상 네스프레소를 아껴주시는 회원님들께 감사의 말씀 드립니다.<br>네스프레소 버츄오 라인의 수리 비용이
								2020년 2월 22일부터 인상됨을 알려드립니다. <br>그동안 수리 서비스에 영향을 미치는 제반 비용의
								상승에도 불구하고 요금인상 없이 유지하여 왔으나, 모든 여건을 고려하여 요금 인상을 진행하게 되었습니다. <br>이점
								회원님들의 너그러운 양해와 이해 부탁드리며, 앞으로도 네스프레소 코리아는 고객들이 기대하는 최상의 고객서비스 제공을
								위해 항상 노력하겠습니다.<br>
								<br>
								<a href="https://www.nespresso.com/kr/ko/technical-support-warranty?charge">*수리
									서비스 요금 변경 내용 확인</a>
							</p>
						</div>
					</div>
					</article> -->
				</div>
				</app>
			</div>
		</div>
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