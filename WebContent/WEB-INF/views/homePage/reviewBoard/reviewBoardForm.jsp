<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="cotainer">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">게시글 작성</div>
				<div class="card-body">
					<form id="reviewForm" name="reviewForm" action="ReveiwWriteController">
						<div class="review">
							<table >
								<tbody>
									<tr>
										<th >별점</th>
										<td>
											<div class="rating">
											  <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
											  <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label>
											  <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
											  <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
											  <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
											</div>
										</td>
									</tr>

									<tr>
										<th >제목</th>
										<td>
											<div class="titWrite">
												<input type="text" id="review_title" name=""review_title"" maxlength="51" value=""
													placeholder="제목을 입력해 주세요. (50자 이내)">

											</div>
										</td>
									</tr>

									<tr>
										<th >리뷰내용</th>
										<td class="QnaTxt"><textarea rows="8" cols="20" name="review_content" id="review_content"
												placeholder="문의 내용을 입력해 주세요. (500자 이내)"></textarea>
										</td>
									</tr>
									<tr>
									<th >사진첨부</th>
										<td>
										<div class="container mt-3">
										  
										    <div class="custom-file mb-3">
										      <input type="file" class="custom-file-input" id="customFile" name="filename">
										      <label class="custom-file-label" for="customFile">Choose file</label>
										    </div>
										    
										    <input type="file" id="myFile" name="filename2">
										  
										</div>	
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<button type="submit" class="btn btn-secondary">등록</button>
						<button type="button" class="btn btn-secondary">취소</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
