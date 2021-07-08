<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coffeegram</title>

	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
		
	<!-- Style -->
	<link rel="stylesheet" href="/nespresso/resources/static/css/style.css">
	<link rel="stylesheet" href="/nespresso/resources/static/css/story.css">
	<link rel="stylesheet" href="/nespresso/resources/static/css/popular.css">
	<link rel="stylesheet" href="/nespresso/resources/static/css/profile.css">
	<link rel="stylesheet" href="/nespresso/resources/static/css/upload.css">
	<link rel="stylesheet" href="/nespresso/resources/static/css/update.css">
	<link rel="shortcut icon" href="/nespresso/resources/static/images/insta.svg">
	<!-- Fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
	<header class="header">
		<div class="container">
			<a href="#" class="logo">
				<img src="/nespresso/resources/static/images/logo.jpg" alt="">
			</a>
			
			<script type="text/javascript">
			function sendIt() {
				var f = document.searchForm;
				
				str=f.searchValue.value;
				if(str==""){
					alert("검색어를 입력하세요!");
					return;
				}
				
				f.action="/nespresso/board/searchUser";
				f.submit();
			}
			</script>
			
			<form action="" method="post" name="searchForm">
			<div class="search">
			    <input type="text" name="searchValue" placeholder="검색어 입력">
			    <button onclick="sendIt()">검색</button>
			</div>
			</form>
			
			<nav class="navi">
				<ul class="navi-list">
					<li class="navi-item"><a href="/nespresso/board/profile?pageUserEmail=${sessionScope.userSession.email }">
							<i class="far fa-user"></i>
						</a></li>
					<li class="navi-item"><a href="/nespresso/board/popular">
							<i class="far fa-compass"></i>
						</a></li>
					<li class="navi-item"><a href="#">
							<i class="far fa-heart"></i>
						</a></li>
				</ul>
			</nav>
		</div>
	</header>