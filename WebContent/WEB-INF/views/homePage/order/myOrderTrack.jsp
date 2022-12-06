<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/homePage/myPage.css">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
		<script>
			function requestContent(url) {
				console.log(url);
				$(".contents-wrap").load(url);
			}

		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="breadcrumb">
			<ul>
				<li>
					<a href="/shopping/product/main.html">
						<span>홈</span>
					</a> > 
				</li>
				<li>
					<strong>마이페이지</strong>
				</li>
			</ul>
		</div>
		<div class="contents mypage mypage-main-new">
		<div class="container">
			<div class="page-header"><h2 style="text-align: center;">마이페이지</h2></div>
			<div class="cont-wrap">
				<div class="lnb-wrap">
					<div class="lnb lnb-new">
						<ul class="mypage-lnb">
							<li>
								<span class="my-dep1">쇼핑 관리</span>
								<ul class="my-sub">
									<li>
										<a href="javascript:requestContent('${pageContext.request.contextPath}/views/homePage/user/orderList.html')">주문 조회</a>
									</li>
								</ul>
							</li>
							<li>
								<span class="my-dep1">회원정보 관리</span>
								<ul class="my-sub">
									<li>
										<a href="javascript:requestContent('${pageContext.request.contextPath}/views/homePage/user/updateUser.html')" class="my-dep2">회원정보 수정</a>
									</li>
									<li>
										<a href="/shopping/Board4/ReviewBoardList4.html" class="my-dep2">내가 쓴 리뷰</a>
									</li>
									<li>
										<a href="/shopping/Board4/QnABoardList4.html" class="my-dep2">내가 쓴 문의</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					
					<div class="lnb-contents" id="content">
						<div class="my-account">
							<div class="my-text">
								<span class="name">이지호님</span>
							</div>
						</div>
						
						<div class="contents-wrap">
							<div class="tabs-wrap btn-type left">
								주문 조회
							</div>
							
							<div class="list-wrap">
							
							
							
							<%@ include file="orderTrack.jsp" %>
							
							
							
							
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>