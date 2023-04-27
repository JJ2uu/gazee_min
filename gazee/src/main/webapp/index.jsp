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
					view = json.view
					memId = json.memId
					
					const arr = img.split(' ');

					console.log(Array.isArray(arr));
					console.log(arr);
					
					let active = document.getElementById('imgActive');
					
					active.innerHTML = "<img src='resources/img/" + arr[0] + "' style='width: 100%; height: 100%; opacity: 0.98; object-fit:cover;'>"
					
					for (var i = 1; i < arr.length-1; i++) {
						let divTag = document.createElement('div');
						divTag.className = "carousel-item";
						divTag.innerHTML = "<img src='resources/img/" + arr[i] + "' style='width: 100%; height: 100%; opacity: 0.98; object-fit:cover;'>"
							
						$("#imgTag").append(divTag);
					}
					
					$("#category").append(category)
					$("#productTitle").append(title)
					$("#productContent").append(content)
					$("#priceNumber").append(price + " ")
					$("#mem_id").append(memId)
					$("#view").append("누적 판매 횟수 <b>"+ view + "회</b>")
					
					<% session.setAttribute("id", "root");%>
					var session = "<%= session.getAttribute("id")%>";
					console.log(session);
					console.log(memId);
					console.log(session === memId)
			
					if (session !== null) {
						/* 상단 member 부분 */					
						let li1 = document.getElementById("login");
						let li2 = document.getElementById("line");
						let li3 = document.getElementById("join");
						
						li1.remove();
						li2.remove();
						li3.remove();

						let ul = document.getElementById("user");
						
						ul.innerHTML = "<li>" + session + " 님 반갑습니다.</li>" +
									   "<li>로그아웃</li>";
					}
					if (session === memId) {
						/* 구매신청버튼 */
						let button = document.getElementById('buyButton');
						button.remove();
						
						let buyDiv = document.getElementById("buyDiv");
						
						buyDiv.innerHTML = "<form action='edit'><input name='no' value='1' style='display:none;'><button id='edit' style='width: 160px; height: 50px; border-style: none; background-color: #693FAA; color: #fff;'>게시글 수정</button></form>"
											+ "<button id='delete' style='width: 160px; height: 50px; border-style: none; background-color: #000; color: #fff;'>게시글 삭제</button>";
																
					} // session === memId
				} // success
			}) // ajax
		}) // document
		
		$('document').ready(function() {
			$.ajax({
				url: 'productList',
				data: {
					category : '전자기기/휴대폰',
					no : 1
				},
				success: function(result) {
					$('.relationProduct').append(result);
				} // success
			}) // ajax
		}) // document
	})
</script>
<title>가지가지</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="member">
				<ul class="user" id="user">
					<li id="login">로그인</li>
					<li id="line">|</li>
					<li id="join">회원가입</li>
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
						<div id="imgTag">
							<div class="carousel-item active" id = "imgActive"></div>
						</div>
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
					<div id="buyDiv">
						<button id="buyButton">구매신청하기</button>
					</div>
				</div>
			</div>
			<div class="sellerInfo">
				<div class="sellerInfoDiv">
					<span style="font-size: 20px;">판매자 정보</span>
					<div class="seller">
						<div id="profile" style="width: 80px; height: 80px; margin-right: 30px; margin-left: 10px;">
							<img src="resources/img/profile.jpg" style="width: 100%; height: 100%; object-fit:cover; overflow: hidden; border-radius: 50%;">
						</div>
						<div id="info">
							<span style="font-size: 16px;" id = "mem_id"></span>
							<span style="font-size: 14px;">서울시 영등포구</span>
						</div>
						<div class="sales">
							<span style="line-height: 50px;" id="view"></span>
						</div>
					</div>
				</div>
				<div class="map" style="width: 450px;"></div>
			</div>
			<div class="line"></div>
			<div class="relation">
				<span style="font-size: 20px; font-weight: 700;">이런 상품은 어때요?</span>
				<div class="relationProduct"></div>
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