<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&display=swap" rel="stylesheet">
<link href="resources/css/nav.css" rel="stylesheet" type="text/css">
<link href="resources/css/product.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script>

	$(function() {
		$('document').ready(function() {
			$.ajax({
				url: 'productOne',
				data: {
					no : 1
				},
				dataType: 'json',
				success: function(json) {
					console.log(json)
					title = json.title
					category = json.category
					content = json.content
					price = json.price
					img = json.img
					memId = json.memId
					
					$("#category").append(category)
					$("#productTitle").append(title)
					$("#productContent").append(content)
					$("#priceNumber").append(price + " ")
				}
			})
		})
	})
	
</script>
<title>가지가지</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="login">
				<ul class="user">
					<li>로그인</li>
					<li id="line">|</li>
					<li>회원가입</li>
				</ul>
			</div>
			<div class="headerContent">
				<img src="resources/img/gazee_logo.png" id="logo">
				<ul class="menu">
					<li>마이페이지</li>
					<li>커뮤니티</li>
					<li>고객센터</li>
					<li>신고하기</li>
					<li><button id="sell">판매하기</button></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div class="product">
				<div id="productImg" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#productImg" data-bs-slide-to="0" class="active"></button>
						<button type="button" data-bs-target="#productImg" data-bs-slide-to="1"></button>
						<button type="button" data-bs-target="#productImg" data-bs-slide-to="2"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active" style="background-color: black; width: 100%; height: 400px;"></div>
						<div class="carousel-item" style="background-color: red; width: 100%; height: 400px;"></div>
						<div class="carousel-item" style="background-color: blue; width: 100%; height: 400px;"></div>
						<button class="carousel-control-prev" type="button" data-bs-target="#productImg" data-bs-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#productImg" data-bs-slide="next">
							<span class="carousel-control-next-icon"></span>
						</button>
					</div>
				</div>
				<div id="productInfo">
					<span id="category" style="color: #c2c2c2; margin: 0; font-size: 16px;"></span>
					<span id="productTitle" style="font-weight: 700; margin: 0; font-size: 30px;"></span>
					<p id="productContent" style="font-size: 14px; margin-top: 20px; line-height: 1.6em; color: #646464;"></p>
					<div id="price">
						<span><span id="priceNumber"></span>원</span>
					</div>
					<div class="buy">
						<button id="buyButton">구매신청하기</button>
					</div>
				</div>
			</div>
			<div class="sellerInfo">
				<span style="font-size: 20px;">판매자 정보</span>
				<div class="seller">
					<div id="profile" style="border-radius: 50%; background-color: gray; width: 80px; height: 80px; margin-right: 30px; margin-left: 10px;"></div>
					<div id="info">
						<span style="font-size: 16px;">닉네임</span>
						<span style="font-size: 14px;">서울시 영등포구</span>
					</div>
					<div class="sales">
						<span style="line-height: 50px;">누적 판매 횟수 <b>10회</b></span>
					</div>
				</div>
			</div>
			<div class="line"></div>
			<div class="relation">
				<span style="font-size: 20px; font-weight: 700;">이런 상품은 어때요?</span>
				<div class="relationProduct">
					<div class="rpInfo">
						<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;"></div>
						<div class="rpTitle">
							<span>아이폰 13 팝니다.</span>
						</div>
						<div class="rpPrice">
							<span><span style="font-size: 24px;">77,000 </span>원</span>
						</div>
					</div>
					<div class="rpInfo">
						<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;"></div>
						<div class="rpTitle">
							<span>아이폰 13 팝니다.</span>
						</div>
						<div class="rpPrice">
							<span><span style="font-size: 24px;">77,000 </span>원</span>
						</div>
					</div>
					<div class="rpInfo">
						<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;"></div>
						<div class="rpTitle">
							<span>아이폰 13 팝니다.</span>
						</div>
						<div class="rpPrice">
							<span><span style="font-size: 24px;">77,000 </span>원</span>
						</div>
					</div>
					<div class="rpInfo">
						<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;"></div>
						<div class="rpTitle">
							<span>아이폰 13 팝니다.</span>
						</div>
						<div class="rpPrice">
							<span><span style="font-size: 24px;">77,000 </span>원</span>
						</div>
					</div>
					<div class="rpInfo">
						<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;"></div>
						<div class="rpTitle">
							<span>아이폰 13 팝니다.</span>
						</div>
						<div class="rpPrice">
							<span><span style="font-size: 24px;">77,000 </span>원</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
		</div>
	</div>
</body>
</html>