<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Success Cart Order</title>
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
					<strong>주문 결제 > 결제 완료</strong>
				</li>
			</ul>
		</div>
		<div class="contents mypage mypage-main-new">
		<div class="container">
			<div class="page-header"><h2 style="text-align: center;">결제 완료</h2></div>
			<div class="cont-wrap">
				<div class="lnb-wrap">
					<div class="lnb lnb-new">
						<ul class="mypage-lnb">
							<li>
								<span class="my-dep1">쇼핑 관리</span>
								<ul class="my-sub">
									<li>
										<a href="javascript:requestContent('${pageContext.request.contextPath}/views/homePage/user/orderList.html')">주문 조회</a>
										<a href="CartListController">장바구니 보기</a>
									</li>
								</ul>
							</li>							
						</ul>
					</div>
					
					<div class="lnb-contents" id="content">
						<div class="my-account">
							<div class="my-text">
								<span class="name">결제 성공!</span>
							</div>
						</div>						
						<div class="contents-wrap">
							<div class="tabs-wrap btn-type left">
								<b>제품 주문 및 결제가 완료되었습니다.</b>
								<p></p>
								<p>이용해 주셔서 감사합니다.</p>
							</div>
							
							<div class="list-wrap">

								 <article class="card">
			      				  <header class="card-header"> 주문 내역</header>
			        				<div class="card-body">
										<table class="table" style="width:100%" >
											<tbody>									
												<tr style="width:15%">
													<th></th>
													<th>제품명</th>
													<th>금액</th>
													<th>수량</th>
													<th>합계 금액</th>
												</tr>
												<tr style="width:40%">
												<c:forEach var ="productDTO" items="${product}">
										            <tr>
										              <td><span class="sub-img"> <img src="ProductImgController?pid=${productDTO.product_id}" height=50px></span></td>
													<td>${productDTO.product_name}</td>
													<td>\ <fmt:formatNumber value="${productDTO.product_price}" pattern="#,###"/></td>
													<td>&emsp;${productDTO.product_reserve}</td>
													<td>\ <fmt:formatNumber value="${productDTO.product_price*productDTO.product_reserve}" pattern="#,###"/></td>
													</tr>
													<c:set var= "sum" value="${sum+productDTO.product_price * productDTO.product_reserve}"/>
									            </c:forEach>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td>총 금액</td>
													<td>\ <fmt:formatNumber value="${sum}" pattern="#,###"/></td>
												</tr>
											</tbody>
										</table>	
									</div>
								</article>
								<br/>
								<article class="card">
			      				  <header class="card-header"> 배송지 정보</header>
			        				<div class="card-body">	
			        					<table class="table" style="width:100%" >
											<tbody>									
												<tr style="width:60%">											
													<th>배송지</th>
													<th>배송 상태</th>
												</tr>
												<tr style="width:35%">												
													<td>${order.orders_address}</td>
													<td>주문 완료</td>
												</tr>
											</tbody>
										</table>	
			        				
			        				</div>
			        			</article>
								<br/>
								<br/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>