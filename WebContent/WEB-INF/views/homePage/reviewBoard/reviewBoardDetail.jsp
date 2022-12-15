<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="card-header mt-3">
    내가 쓴 리뷰
</div>
<br/>
<div class="container">
    <div class="row">
        <div class="col-md-7">
        	<div class="card">
        		<div class="card-body justify-content-center">
		            
		           <!-- / project-info-box -->
		
		            <div class="project-info-box">
		            	<h5><b>${review.product_name}</b></h5>
		            	<div class="mb-3"><a href="ProductDetailController?pid=${review.product_id}"><img src="ProductImgController?pid=${review.product_id}" height="150px"/></a></div>
		           		<p><b>게시물 번호:</b> ${review.review_board_id}</p>
		           		<p><b>제목:</b> ${review.review_board_title}</p>
		           		<p><b>내용:</b> ${review.review_board_content}</p>
		                <p><b>작성자:</b> ${review.users_id}</p>
		                <p><b>작성 일자:</b> <fmt:formatDate value="${review.review_board_date}" pattern="yyyy-MM-dd"/></p>			                
		                
		            </div><!-- / project-info-box -->
		
		            <div class="project-info-box mt-0 mb-4">
		                <p class="mb-0">
		                    <span class="fw-bold mr-10 va-middle hide-mobile">별점:</span>
		                    <c:forEach var="i" begin="1" end="${review.review_board_reviewpoint}"><span class="fa fa-star checked"></span> </c:forEach>
		                </p>
		            </div><!-- / project-info-box -->
		            <div class="d-flex justify-content-end mt-2"> 
		            	<button class="btn btn-info mr-2" data-toggle="modal" data-target="#reviewModal">수정하기 <i class="fa fa-pencil h5 m-0"></i></button>
		            	<button class="btn btn-info ">삭제하기 <i class="fa fa-remove h5 m-0"></i></button>
		            </div>
	    		</div>
        	</div>
        </div>
        
        <!-- Modal -->
        <div class="modal fade" id="reviewModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header bg-secondary" >
						<h4 class="modal-title text-white">리뷰 수정</h4>
						<button type="button" class="close btn-light"  data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">

						<form id="reviewForm" name="reviewForm" method="post" action="ReviewUpdateContoller" enctype="multipart/form-data">
							<div class="review">
								<table>
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
													<button type="submit" class="btn btn-secondary">수정</button>
													<button type="button" class="btn btn-secondary">취소</button>
												</div>
											</th>
										</tr>
									</tbody>
								</table>
							</div>
								
														
						</form>
							
					</div>
					<!-- Modal footer -->
				</div>
			</div>
    	</div>
    </div>
</div>

<div id="footer"></div>
