<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/js/homePage/myPage.js"></script>

<div class="cotainer">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card mt-5">
				<div class="card-header">리뷰 남기기</div>
				<div class="card-body">
					<form method="post" id="reviewForm" name="reviewForm" action="ReviewWriteController" enctype="multipart/form-data">
						<div class="review">
							<table >
								<tbody>
									<tr>
										<th >별점</th>
										<td>
											<fieldset class="ml-3">
										        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
										        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
										        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
										        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
										        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
										    </fieldset>
										</td>
									</tr>

									<tr>
										<th>제목</th>
										<td>
											<div class="titWrite ml-3">
												<input type="text" id="review_title" name="review_title" maxlength="51" value=""
													placeholder="제목을 입력해 주세요. (50자 이내)" style="width:400px">
											</div>
										</td>
									</tr>

									<tr>
										<th >리뷰내용</th>
										<td class="QnaTxt"><textarea class="ml-3" rows="8" cols="20" name="review_content" id="review_content"
												placeholder="문의 내용을 입력해 주세요. (500자 이내)" style="width:400px"></textarea>
										</td>
									</tr>
									<tr>
									<th>사진첨부</th>
										<td>
										<div class="container mt-3">
										    <div class="custom-file ml-3">
	                                        	<input type="file" class="form-control" id="reviewPhoto" name="reviewPhoto">
	                                        </div>
										</div>	
										</td>
									</tr>
									<tr>
										<th colspan="2">
											<div class="d-flex justify-content-center mt-3">
												<input type="hidden" name="product_id" value="${product_id}">
												<button type="submit" class="btn btn-secondary">등록</button>
												<button type="button" class="btn btn-secondary">취소</button>
											</div>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
