<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&display=swap" rel="stylesheet">
<link href="resources/css/nav.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
		height: 400px;
	}
	#productInfo {
		width: 500px;
		height: 400px;
		padding: 40px 80px;
		text-align: left;
	}
	.sellerInfo {
		width: 1000px;
		margin: 0 auto;
		padding: 50px;
		text-align: left;
	}
	.relation {
		width: 1000px;
		height: 300px;
		margin: 0 auto;
	}
	.buy {
		margin-top: 50px;
	}
	#buyButton {
		width: 150px;
		height: 50px;
		border-radius: 15px;
		border-style: none;
		background-color: #693FAA;
		color: #fff;
	}
	.seller {
		display: flex;
		align-items: center;
		margin-top: 24px;
	}
	#info {
		display: flex;
		flex-flow: column;
	}
	.sales {
		width: 200px;
		height: 50px;
		margin-left: 30px;
		border: 1px solid rgba(212,216,229,.5);
		border-radius: 5px;
		background-color: rgba(212,216,229,.25);
		text-align: center;
		color: #7b8994;
	}
	.line {
		width: 1000px;
		height: 1px;
		margin: 0 auto;
		background-color: #dee2e6;
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
			<div id = "productImg" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
				    <button type="button" data-bs-target="#productImg" data-bs-slide-to="0" class="active"></button>
				    <button type="button" data-bs-target="#productImg" data-bs-slide-to="1"></button>
				    <button type="button" data-bs-target="#productImg" data-bs-slide-to="2"></button>
	  			</div>
				<div class="carousel-inner">
					<div class = "carousel-item active" style = "background-color: black; width: 100%; height: 400px;"></div>
					<div class = "carousel-item" style = "background-color: red; width: 100%; height: 400px;"></div>
					<div class = "carousel-item" style = "background-color: blue; width: 100%; height: 400px;"></div>
					<button class="carousel-control-prev" type="button" data-bs-target="#productImg" data-bs-slide="prev">
		   		 		<span class="carousel-control-prev-icon"></span>
		  			</button>
		  			<button class="carousel-control-next" type="button" data-bs-target="#productImg" data-bs-slide="next">
		    			<span class="carousel-control-next-icon"></span>
		  			</button>
				</div>
	  		</div>
			<div id = "productInfo">
				<span id = "category" style ="color: #c2c2c2; margin: 5px 0; font-size: 16px;">전자기기/휴대폰</span>
				<h2 style = "font-weight: 700; margin: 5px 0;">아이폰 13 프로 팝니다.</h2>
				<p style = "font-size: 14px; margin: 20px 0; line-height: 1.6em; color: #646464;">
					아이폰13 블랙팝니다.<br>서브용으로 사용하던 폰입니다.<br> 찍힌 곳은 없고 아주 작게 두 곳 사진 확인해주세요. <br>액정 보호필름 부착되어있습니다.
				</p>
				<div class ="buy">
					<button id = "buyButton">구매신청하기</button>
				</div>
			</div>
		</div>
	<div class = "sellerInfo">
		<span style = "font-size: 20px;">판매자 정보</span>
		<div class ="seller">
			<div id="profile" style="border-radius: 50%; background-color: gray; width: 100px; height: 100px; margin-right: 30px;"></div>
			<div id = "info">
				<span style="font-size: 16px;">닉네임</span>
				<span style="font-size: 14px;">서울시 영등포구</span>
			</div>
			<div class ="sales">
				<span style = "line-height: 50px;">누적 판매 횟수 <b>10회</b></span>
			</div>
		</div>
	</div>
	<div class = "line"></div>
	<div class = "relation"></div>
	</div>
</div>
	<div id = "footer">
		<div>
			<p style = "margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
		</div>
	</div>
</body>
</html>