<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="resources/css/nav.css" rel="stylesheet" type="text/css">
<title>가지가지</title>
<style>
	.product {
		width: 1000px;
		display: flex;
		flex-flow: row;
		margin: 0 auto;
	}
	#productImg {
		width: 500px;
		height: 500px;
		background-color: blue;
	}
	#productInfo {
		width: 500px;
		height: 500px;
		background-color: black;
	}
	.sellerInfo {
		width: 1000px;
		height: 200px;
		background-color: gray;
		margin: 0 auto;
	}
	
	.relation {
		width: 1000px;
		height: 300px;
		background-color: black;
		margin: 0 auto;
	}
</style>
</head>
<body>
<div id = "wrap">
	<div id = "header">
		<div id = "login">
			<ul class = "user">
				<li>로그인</li>
				<li id = "line">|</li>
				<li>회원가입</li>
			</ul>
		</div>
		<div class = "headerContent">
			<img src="resources/img/gazee_logo.png" id = "logo">
			<ul class = "menu">
				<li>마이페이지</li>
				<li>커뮤니티</li>
				<li>고객센터</li>
				<li>신고하기</li>
				<li><button id = "sell">판매하기</button></li>
			</ul>
		</div>
	</div>
	<div id = "content">
	<div class = "product">
		<div id = "productImg"></div>
		<div id = "productInfo"></div>
	</div>
	<div class = "sellerInfo"></div>
	<div class = "relation"></div>
	</div>
	<div id = "footer">
		<div>
			<p>Copyrightⓒ 2023. gazee. All rights reserved.</p>
		</div>
	</div>
</div>
</body>
</html>