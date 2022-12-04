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
		<link rel="stylesheet" href="/shopping/resources/css/homePage/orderList.css">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
		<script>
			function requestContent(url) {
				console.log(url);
				$(".contents-wrap").load(url);
			}
			
			/** 우편번호 찾기 */
			function execDaumPostcode() {
			    daum.postcode.load(function(){
			        new daum.Postcode({
			            oncomplete: function(data) {
			              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
			              $("#postcode").val(data.zonecode);
			              $("#address").val(data.roadAddress);
			            }
			        }).open();
			    });
			}
		</script>
	</head>
	<body>
		<div class="breadcrumb">
			<ul >
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
								<ul class="tabs">
									<li class="on"><a href="#tab1#CART">구매 내역<span class="count"
											id="basicCartTab"></span></a></li>
									<li><a href="#tab2#CARE">취소내역 <span class="count"
											id="rentalCareTabCount"></span></a></li>
								</ul>
							</div>
							
							<div class="list-wrap">
								<ul class="order-list" id="orderItmList">
									<li class="order-item" id="orderItm_0">
										<div class="item-image">
											<a href="/shopping/product/prouctDetail2.html"> <img src="/shopping/images/티비4.png" />
											</a>
										</div>
										<div class="product-info">
											<div class="category">
												<span>올레드 TV</span>
											</div>
											<div class="item-name">
												<a href="#">LG 올레드 오브제컬렉션</a>
											</div>
											<div class="quantity-wrap">
												<div class="quantity">
													<p>구매 수량: 1</p>
												</div>
											</div>
										</div>
										<div class="product-payment">
											<p class="total" id="paymentPrice0">2,937,000원</p>
											<button type="button" class="btn btn-primary" onClick="location.href='/shopping/Board4/ReviewBoardList4.html'">리뷰 남기기</button>
										</div>
									</li>
									<li class="order-item" id="orderItm_1">
										<div class="item-image">
											<a href="#"> <img src="/shopping/images/티비5.png" />
											</a>
										</div>
										<div class="product-info">
											<div class="category">
												<span>올레드 TV</span>
											</div>
											<div class="item-name">
												<a href="#">LG 올레드 오브제컬렉션</a>
											</div>
											<div class="quantity-wrap">
												<div class="quantity">
													<p>구매 수량: 1</p>
												</div>
											</div>
										</div>
										<div class="product-payment">
											<p class="total" id="paymentPrice1">2,937,000원</p>
											<button type="button" class="btn btn-primary" onClick="location.href='/shopping/Board4/ReviewBoardList4.html'">리뷰 남기기</button>
										</div>
									</li>
									<li class="order-item" id="orderItm_2">
										<div class="item-image">
											<a href="#"> <img src="/shopping/images/티비6.png" />
											</a>
										</div>
										<div class="product-info">
											<div class="category">
												<span>올레드 TV</span>
											</div>
											<div class="item-name">
												<a href="#">LG 올레드 오브제컬렉션</a>
											</div>
											<div class="quantity-wrap">
												<div class="quantity">
													<p>구매 수량: 1</p>
												</div>
											</div>
										</div>
										<div class="product-payment">
											<p class="total" id="paymentPrice2">2,937,000원</p>
											<button type="button" class="btn btn-primary" onClick="location.href='/shopping/Board4/ReviewBoardList4.html'">리뷰 남기기</button>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>