<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&display=swap" rel="stylesheet">
<link href="resources/css/nav.css" rel="stylesheet" type="text/css">
<link href="resources/css/product.css" rel="stylesheet" type="text/css">
<link href="resources/css/edit.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('document').ready(function() {
			$.ajax({
				url: 'productOne',
				data: {
					no : ${bag.no}
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
				} // success
			}) // ajax
		}) // document
		
		/* update */
		$("#update").click(function() {
			$.ajax({
				url: 'update',
				data: {
					no : ${bag.no},
					category : $("#categorySelect").val(),
					title : $("#title").val(),
					content : $("#productContent").val(),
					img : $("#file_name_input").val(),
					price : $("#priceEdit").val()
				},
				success : function(x) {
					if (x == 'index') {
						location.href = x + '.jsp'
					} else {
						alert('업로드 실패')
					}
				}
			})
		})
	})
	
	/* file업로드 */
	function fileUpload(){
		var fileInput = document.getElementsByClassName("ex_file");
		if(fileInput.length <= 3) {
			for( var i=0; i<fileInput.length; i++ ){
				if( fileInput[i].files.length > 0 ){
					for( var j = 0; j < fileInput[i].files.length; j++ ){
						$("#file_name_div").append(fileInput[i].files[j].name + " ");
						var img = "<img src='resources/img/" + fileInput[i].files[j].name + "' style='width: 100px; height: 100px; border: 1px solid rgba(212, 216, 229, .5);' >"
						$("#file_thumbnail").append(img)
						
						var fileNameStr = $("#file_name_div").text();
						$("#file_name_input").val(fileNameStr);
					}
				}
			}
		} else {
			alert('파일 업로드는 3개까지만 가능합니다.')
		}
	}

	/* 카테고리 */
	$('document').ready(function() {
		const sel = document.getElementById('categorySelect');
		var len = sel.options.length;
		var str2 = "${bag.category}";
		
		if (str2 == '전자기기/휴대폰') {
			var str = 'electronics';
		} else if (str2 == '가구') {
			var str = 'furniture';
		} else {
			var str = 'fashion';
		}
		console.log(str);
		
		for (let i=0; i<len; i++){  
		    if(sel.options[i].id == str){
		    	sel.options[i].selected = true;
		    }
		}
		
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
			<h3 style="font-weight: 700;">게시글 수정</h3>
				<div class="category_select">
					<span style="width: 60px">카테고리</span>
					<select id="categorySelect">
						<option>선택하세요.</option>
						<option value="전자기기/휴대폰" id="electronics">전자기기/휴대폰</option>
						<option value="가구" id="furniture">가구</option>
						<option value="패션" id="fashion">패션</option>
					</select>
				</div>
				<div class="write">
					<div style="display: flex; flex-flow: row; align-items: center; justify-content: space-between;">
						<span style="width: 60px; text-align: left;">제목</span>
						<input placeholder="제목을 입력하세요." id="title" value ="${bag.title}">
					</div>
					<div style="display: flex; flex-flow: row; align-items: center; justify-content: space-between;">
						<span style="width: 60px; text-align: left;">가격</span>
						<input placeholder="가격을 입력하세요." id="priceEdit" value ="${bag.price}">
					</div>
					<textarea rows="12" cols="40" placeholder="내용을 입력하세요." id="productContent">${bag.content}</textarea>
					<div class="file_upload">
						<label class="input-file-button" for="input-file">첨부파일</label>
						<input type="file" id="input-file" style="display:none;" class="ex_file" name="ex_file" onchange="fileUpload()" multiple>
						<div id="file_name_div"></div>
						<input id="file_name_input" value="" style="display:none;" name="">
					</div>
					<div id="file_thumbnail"></div>
				</div>
				<div class="upButton">
					<button id="update" type="submit">등록하기</button>
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