<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:forEach items="${list}" var="bag">
	<div class="rpInfo">
		<div class="rpImage" style="width: 150px; height: 150px; background-color: #000;">
			<img src="resources/img/${bag.img}.jpg" style="width: 100%; height: 100%; object-fit:cover; opacity: 0.98;">
		</div>
			<div class="rpTitle">
				<span>${bag.title}</span>
			</div>
			<div class="rpPrice">
				<span><span style="font-size: 20px;">${bag.price} </span>원</span>
			</div>
		</div>
	</c:forEach>