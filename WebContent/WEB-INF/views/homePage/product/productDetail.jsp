<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script>
	function goCart(pid){
		var quantity = $("input[name=quantity]").val();
		console.log(quantity); 
		
		$.ajax({
			type: "GET",
			url: "CartController",
			data: {"pid":pid, "quantity":quantity }, 
			success: function(data) {				 
				if(data == 0){
					jQuery.noConflict();
					$('#failModal').show();
				}else{			
					jQuery.noConflict();
					$('#successModal').modal("show");
				}
			},
			error: function() {
				console.log("통신실패!");
			}
		});
	}
	function goOrder(pid){
	      var quantity = $("input[name=quantity]").val();
	      console.log(quantity); 
	      
	      $.ajax({
	         type: "GET",
	         url: "OrderController",
	         data: {"pid":pid, "quantity":quantity }, 
	         success: function(data) {
	              
	         },
	         error: function() {
	            console.log("통신실패!");
	         }
	      });
	   }
	
</script>



<div class="container  h-100" style="width: 1000px">
	<div
		class="row d-flex justify-content-center my-5 align-items-center h-100">
		<div class="col pb-3">
			<span class="sub-img"> <img
				src="ProductImgController?pid=${productDTO.product_id}" height=100%>
			</span>
		</div>


		<div class="col " style="justify-content: flex-end;">
			<div class=" border p-5 m-0">
				<div class="row">
					<div class="col-lg-12">
						<h4>
							<strong><span>${productDTO.product_name} </span></strong>
						</h4>
						<hr class="p-0 mb-3">

					</div>
					<div class="col-lg-12">
						<p class="m-0 p-0 price-pro">
							별점:
							<c:forEach var="i" begin="1" end="${avgRate}" step="1">
								<span class="fa fa-star checked"></span>
							</c:forEach>
							<c:if test="${(avgRate-intAvgRate)>=0.5}">
								<span class="fa fa-star-half-o" style="color: orange"></span>
							</c:if>
							<c:if
								test="${(avgRate-intAvgRate)<0.5 and (avgRate-intAvgRate)>0}">
								<span class="fa fa-star"></span>
							</c:if>
							<c:forEach var="i" begin="1" end="${5-avgRate}" step="1">
								<span class="fa fa-star"></span>
							</c:forEach>
							${avgRate}
						</p>
						<hr class="p-0 m-0">
					</div>
					<div class="col-lg-12 pt-2">
						<strong>가격: ${productDTO.product_price} </strong>

						<hr class="m-0 pt-2 mt-2">
					</div>
					<div class="col-lg-12">
						<p class="tag-section">
							<strong>${productDTO.product_company}</strong>
						</p>
					</div>
					<div class="col-lg-12">
						<h6>수량 :</h6>
						<input type="number" class="form-control text-center w-25"
							name="quantity" value="1" />
					</div>
					<div class="col-lg-12 mt-3">
						<c:if test="${loginId != null}">
							<div class="row">
								<div class="col-lg-6 pb-2">
									<button onClick="goCart(${productDTO.product_id})"
										class="btn btn-danger w-100">장바구니</button>
								</div>
								<div class="col-lg-6">
									<button onClick="goOrder(${productDTO.product_id})" class="btn btn-success w-100">바로 구매</button>
								</div>
							</div>
						</c:if>
						<c:if test="${loginId == null}">
							<div class="row">
								<div class="col-lg-6 pb-2">
									<a href="${pageContext.request.contextPath}/LoginController"
										class="nav-link btn btn-danger w-100">장바구니</a>
								</div>
								<div class="col-lg-6">
									<a href="${pageContext.request.contextPath}/LoginController"
										class="nav-link btn btn-success w-100">바로 구매</a>
								</div>
							</div>
						</c:if>

						<!-- insert 성공시 -->
						<div class="modal fade" id="successModal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										장바구니 담기 완료
										<button class="close" type="button" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">X</span>
										</button>
									</div>
									<div class="modal-body">장바구니 담기 완료되었습니다.</div>
									<div class="modal-footer">
										<a href="/shopping/product/cartDetail2.html">
											<button type="button" class="btn btn-danger"
												data-dismiss="modal" aria-label="Close">장바구니 가기</button>
										</a>
										
										<button type="button" class="btn btn-success"
											data-dismiss="modal" aria-label="Close">닫기</button>
										
									</div>

								</div>
							</div>
						</div>

						<!-- insert 실패시-->
						<div class="modal" id="failModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										오류!
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">&times;</button>
									</div>

									<div class="modal-body">장바구니 담기 실패</div>

									<div class="modal-footer">

										<button type="button" class="btn btn-danger"
											data-dismiss="modal">닫기</button>

									</div>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row sticky-top bg-white">
		<nav class="nav nav-pills nav-fill"
			style="border-bottom: 3px solid gray; width: 100%;">
			<a class="nav-item nav-link" href="#" style="color: gray">상품 정보</a> <a
				class="nav-item nav-link" href="#rate" style="color: gray">상품평</a> <a
				class="nav-item nav-link" href="#faq" style="color: gray">질문</a> <a
				class="nav-item nav-link" href="#" style="color: gray">배송</a>

		</nav>
	</div>
	
	<div class="row">
		<img src="DetailImgController?pid=${productDTO.product_id}" width=100%>
	</div>
	
	<div class="border" id="rate">
		<%@ include file="/WEB-INF/views/homePage/product/rateNum.jsp"%>
	</div>
	
	<div class="border" id="faq">
		<%@ include file="/WEB-INF/views/homePage/product/qnaFrequent.jsp"%>
	</div>
	
	<div>
		<div class="border text-right">
			다른 질문이 있으신가요?&emsp;&emsp;
			<c:if test="${loginId != null}">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">상품 문의 작성</button>
			</c:if>
			<c:if test="${loginId == null}">
				<button type="button" class="btn btn-primary" onclick="alert()">상품
					문의 작성</button>
			</c:if>
		</div>

	</div>
	<div class="border">배송</div>

</div>












<%@ include file="/WEB-INF/views/common/footer.jsp"%>