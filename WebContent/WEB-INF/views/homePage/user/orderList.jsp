<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/resources/js/homePage/myPage.js"></script>

<div class="tabs-wrap btn-type left">
	<ul class="tabs">
		<li class="on">구매 내역<span class="count" id="basicCartTab"></span></li>
	</ul>
</div>

<div class="list-wrap">
	<ul class="order-list" id="orderItmList">
		<c:forEach var="order" items="${orderList}">
			<li class="order-item" id="orderItm_0">
				<div class="item-image">
				<c:if test="${order.main_savedname !=null}">
					<a href="ProductDetailController?pid=${order.product_id}"> <img src="ProductImgController?pid=${order.product_id}" />
					</a>
				</c:if>
				</div>
				<div class="product-info">
					<div class="category">
						<span>카테고리</span>
					</div>
					<div class="item-name">
						<a href="ProductDetailController?pid=${order.product_id}" style="text-decoration-line: none;">${order.product_name}</a>
					</div>
					<div class="quantity-wrap">
						<div class="quantity">
							<p>구매 수량: 1</p>
						</div>
					</div>
				</div>
				<div class="product-payment">
					<p class="total" id="paymentPrice0">${order.orders_price}</p>
					<button type="button" class="btn btn-primary" onClick="reviewWrite(${order.product_id})">리뷰 남기기</button>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>

<div class="text-center">
  <a onClick="listPage(1, '${pageContext.request.contextPath}/user/OrderListController')" class="btn btn-outline-primary btn-sm">처음</a>
  
  <c:if test="${pager.groupNo > 1}">
     <a onClick="listPage(${pager.startPageNo-1}, '${pageContext.request.contextPath}/user/OrderListController')" class="btn btn-outline-info btn-sm">이전</a>
  </c:if>
  
  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
     <c:if test="${pager.pageNo != i}">
        <a onClick="listPage(${i}, '${pageContext.request.contextPath}/user/OrderListController')" class="btn btn-outline-success btn-sm">${i}</a>
     </c:if>
     <c:if test="${pager.pageNo == i}">
        <a onClick="listPage(${i}, '${pageContext.request.contextPath}/user/OrderListController')" class="btn btn-danger btn-sm">${i}</a>
     </c:if>
  </c:forEach>
  
  <c:if test="${pager.groupNo < pager.totalGroupNo}">
     <a onClick="listPage(${pager.endPageNo+1}, ${pageContext.request.contextPath})" class="btn btn-outline-info btn-sm">다음</a>
  </c:if>
  
  <a onClick="listPage(${pager.totalPageNo}, ${pageContext.request.contextPath})" class="btn btn-outline-primary btn-sm">맨끝</a>

</div>
