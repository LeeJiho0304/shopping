<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div id="cartContent" class="container h-100 py-5">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col">

				<div class="table-responsive">
					<table class="table" style="text-align:center">
						<thead>
							<tr style="border-top: 2px solid black">

								<th scope="col"><input type='checkbox' name='product'
									value='selectall' onclick='selectAll(this)' /></th>
								<th colspan="2" style="text-align:center">상품 목록</th>
								<th scope="col" style="text-align:center">상품가격</th>
								<th scope="col" style="text-align:center">수량</th>
								<th scope="col" style="text-align:center">주문가격</th>
							</tr>
						</thead>
						<tbody>
							
							<c:set var = "sum" value = "0" />
							<c:set var = "sum1" value = "0" />
								
									<c:forEach var="cart" items="${cartList}" begin="0" end="${fn:length(cartList)}" step="1"> 
										<tr>
											<td><input type='checkbox' name='product' value="${cart.cart_detail_id}" /><br /></td>
											<td scope="row"><img src="ProductImgController?pid=${cart.product_id}" height=100px>
			
											</td>
											<td scope="row" class= "align-middle">
			
												<p>${cart.product_name}</p>
			
											</td>
											<td class= "align-middle" >${cart.product_price}</td>
											<td class="align-middle">
												<div class="d-flex flex-row justify-content-center">			
													<input  type="number" class="form-control form-control-sm" name="quantity" value="${cart.cart_detail_item_count}"
														style="width: 50px;" />
														
														<button onClick="updateCount(${cart.cart_detail_id})" class="btn btn-info m-0 p-0">변경</button>	
												</div>
											</td>
											<td class="align-middle">
												<p class="mb-0" style="font-weight: 500;">${cart.cart_detail_item_count * cart.product_price}</p>
											</td>
										</tr>
										<c:set var= "sum" value="${sum + cart.cart_detail_item_count}"/>	
										<c:set var= "sum1" value="${sum1 + cart.cart_detail_item_count * cart.product_price}"/>
									</c:forEach>
								
							

							<tr style="background-color: #f2f2f2; border-bottom: 2px solid black;">
								<td></td>
								<td></td>
								<td></td>
								<td></td>

								<td>
								
									<p style="font-weight: 1000; font-size: 15px;">총 수량</p>
									<p style="font-weight: 500; font-size: 20px;"><c:out value="${sum}"/></p>
								</td>
								<td><p style="font-weight: 1000; font-size: 15px;">결제예정금액</p>
									<p style="font-weight: 500; color: red; font-size: 20px;"><c:out value="${sum1}"/></p></td>
							</tr>

						</tbody>
					</table>
					<div class="row d-flex justify-content-end mb-3 mr-4">
						
						<a href="CartController">
							<button onclick="deleteCart()" class="btn btn-info" type="button">체크 목록 삭제</button>
						</a>
					
						<!-- Button to Open the Modal -->
						<button type="button" class="btn btn-danger">체크 목록 구매</button>

					</div>
				</div>



			</div>
		</div>
	</div>
