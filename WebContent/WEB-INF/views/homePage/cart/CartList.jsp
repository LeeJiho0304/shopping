<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<script>
	function ElectronicProducts(evt, ProductsName) {
		  var i, tabcontent, tablinks;
		  tabcontent = document.getElementsByClassName("tabcontent");
		  for (i = 0; i < tabcontent.length; i++) {
		    tabcontent[i].style.display = "none";
		  }
		  tablinks = documenst.getElementsByClassName("tablinks");
		  for (i = 0; i < tablinks.length; i++) {
		    tablinks[i].className = tablinks[i].className.replace(" active", "");
		  }
		  document.getElementById(ProductsName).style.display = "block";
		  evt.currentTarget.className += " active";
		}
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('product');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  });
		}
</script>

<section class="h-100 h-custom">
	<div class="container h-100 py-5">
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
							<tr>
								<td><input type='checkbox' name='product' />
									<br /></td>
								<td scope="row"><img src="ProductImgController?pid=${cartDto.product_id}" height=100px>

								</td>
								<td scope="row" class= "align-middle">

									<p>${pname}</p>

								</td>
								<td class= "align-middle" >${price}</td>
								<td class="align-middle">
									<div class="d-flex flex-row justify-content-center">

										<input id="form1" min="0" name="quantity" value="${cartDto.cart_detail_item_count}"
											type="number" class="form-control form-control-sm"
											style="width: 50px;" />
											
											<a href="#" class="btn btn-info m-0 p-0 " style="width: 50px; height:50">변경</a>

									</div>
								</td>
								<td class="align-middle">
									<p class="mb-0" style="font-weight: 500;">${cartDto.cart_detail_item_count * price}</p>
								</td>
							</tr>

							<tr
								style="background-color: #f2f2f2; border-bottom: 2px solid black;">
								<td></td>
								<td></td>
								<td></td>
								<td></td>

								<td>
									<p style="font-weight: 1000; font-size: 15px;">총 수량</p>
									<p style="font-weight: 500; font-size: 20px;">${cartDto.cart_detail_item_count}</p>
								</td>
								<td><p style="font-weight: 1000; font-size: 15px;">결제예정금액</p>
									<p style="font-weight: 500; color: red; font-size: 20px;">${cartDto.cart_detail_item_count * price}</p></td>
							</tr>

						</tbody>
					</table>
					<div class="row d-flex justify-content-end mb-3 mr-4">
						<a href="/shopping/product/productList2.html">

							<button class="w-btn  w-btn-gray" type="button">쇼핑 계속하기
							</button>
						</a>

						<!-- Button to Open the Modal -->
						<button type="button" class="w-btn w-btn-red">구매하기</button>

					</div>
				</div>



			</div>
		</div>
	</div>
</section>






<%@ include file="/WEB-INF/views/common/footer.jsp"%>