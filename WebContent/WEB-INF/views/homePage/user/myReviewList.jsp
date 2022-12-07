<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="card-header">
     	 	내가 쓴 리뷰
   		</div>
		<br/>
		<div class="container">
		    <div class="row">
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-archive text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1 text-info">★</h5>
		                    <p class="text-muted mb-0">리뷰 게시판</p>
		                </div>
		            </div>
		        </div>
		        
		        <div class="col-xl-3 col-md-6">
		            <div class="card">
		                <div class="card-body">
		                    <form>
		                        <div class="form-group mb-0">
		                            <label>검색</label>
		                            <div class="input-group mb-0">
		                                <input type="text" class="form-control" placeholder="검색어..." aria-describedby="project-search-addon" />
		                                <div class="input-group-append">
		                                    <button class="btn btn-danger" type="button" id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>
		        </div>
		    </div>
		    <!-- end row -->
		
		    <div class="row">
		        <div class="col-lg-12">
		            <div class="card">
		                <div class="card-body">
		                    <div class="table-responsive project-list">
		                        <table class="table project-table table-centered table-nowrap">
		                            <thead>
		                                <tr>
		                                    <th scope="col">No</th>
		                                    <th scope="col">제목</th>
		                                    <th scope="col">작성 일자</th>
		                                    <th scope="col">별점</th>
		                                    <th scope="col">작성자</th>
		                                    
		                                    <th scope="col">수정</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            <c:forEach var="review" items="${reviewList}">
		                                <tr>	                                
		                                    <th scope="row">${review.qna_board_id}</th>		                                   
		                                    <td><a href="QnaBoardDetailContoller">${review.qna_board_title}</a></td>
		                                    <td><fmt:formatDate value="${review.qna_board_date}" pattern = "yyyy.MM.dd"/></td>
		                                    <td>
		                                    	
		                                        	
		                                    </td>
		                                    <td>
		                                        <div class="team text-success">${review.users_id}
		                                        </div>
		                                    </td>
		                                    
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
										</c:forEach>
										
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- end project-list -->
							
		                    <div class="pt-3">
		                    	<div>
		                    		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">상품문의 글쓰기</button>
			                        <!--<ul class="pagination justify-content-end mb-0">
			                            <li class="page-item disabled">
			                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
			                            </li>
			                            <li class="page-item"><a class="page-link" href="#">1</a></li>
			                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
			                            <li class="page-item"><a class="page-link" href="#">3</a></li>
			                            <li class="page-item">
			                                <a class="page-link" href="#">다음</a>
			                            </li>
			                        </ul>-->
		                   		 </div>
			                    <div class="text-center">
			                    	 
				                     <a href="ReviewBoardListContoller?pageNo=1" class="btn btn-outline-primary btn-sm">처음</a>
				                     
				                     <c:if test="${pager.groupNo > 1}">
				                        <a href="ReviewBoardListContoller?pageNo=${pager.startPageNo-1}" class="btn btn-outline-info btn-sm">이전</a>
				                     </c:if>
				                     
				                     <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
				                        <c:if test="${pager.pageNo != i}">
				                           <a href="ReviewBoardListContoller?pageNo=${i}" class="btn btn-outline-success btn-sm">${i}</a>
				                        </c:if>
				                        <c:if test="${pager.pageNo == i}">
				                           <a href="ReviewBoardListContoller?pageNo=${i}" class="btn btn-danger btn-sm">${i}</a>
				                        </c:if>
				                     </c:forEach>
				                     
				                     <c:if test="${pager.groupNo < pager.totalGroupNo}">
				                        <a href="ReviewBoardListContoller?pageNo=${pager.endPageNo+1}" class="btn btn-outline-info btn-sm">다음</a>
				                     </c:if>
				                     
				                     <a href="ReviewBoardListContoller?pageNo=${pager.totalPageNo}" class="btn btn-outline-primary btn-sm">맨끝</a>
				                  
			                    </div>
		                    </div>
		                    <!-- The Modal -->
							<div class="modal fade" id="myModal">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
					
										<!-- Modal Header -->
										<div class="modal-header bg-secondary" >
											<h4 class="modal-title text-white">상품 문의 작성</h4>
											<button type="button" class="close btn-light"  data-dismiss="modal">&times;</button>
										</div>
					
										<!-- Modal body -->
										<div class="modal-body">
											<h4>문의 유형을 선택하시고, 내용을 작성해 주세요.</h4>
					
											<form id="frmQuestDetail" name="frmQuestDetail" method="get" action="QnaWriteContoller" enctype="multipart/form-data">
				
												<div class="qna">
													<table>
														<tbody>
															<tr>
																<th >문의유형</th>
																<td>
																	<input type="checkbox" id="product" checked>
				  													<label for="product">상품관련 문의</label><br>
				  													
				  													<input type="checkbox" id="delivery">
				  													<label for="delivery">배송관련 문의</label><br>
					
																</td>
															</tr>
					
															<tr>
																<th >제목</th>
																<td>
																	<div class="titWrite">
																		<input type="text" id="inquiryTitleName"
																			name="inquiryTitleName" maxlength="51"
																			placeholder="제목을 입력해 주세요. (50자 이내)">
					
																	</div>
																</td>
															</tr>
					
															<tr>
																<th >문의내용</th>
																<td class="QnaTxt"><textarea rows="8" cols="20"
																		name="inquiryContent" id="inquiryContent"
																		placeholder="문의 내용을 입력해 주세요. (500자 이내)"></textarea>
																</td>
															</tr>
					
														</tbody>
													</table>
												</div>
												<div class="qnaNoti">
													<p>개인정보 수집 및 이용에 대한 안내</p>
													<table >
														<tbody>
															<tr>
																<th>수집 항목</th>
																<td>휴대폰 번호 및 상품 Q&amp;A 제목, 문의 내용 등 개인이 직접 입력한 내용</td>
															</tr>
															<tr>
																<th >수집 목적</th>
																<td>문의 접수 및 결과 회신</td>
															</tr>
															<tr>
																<th >이용 기간</th>
																<td>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
																	단, 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 아래와 같이 관계 법령에서 정한 일정 기간 동안
																	개인정보를 보관할 수 있습니다.<br> - 소비자의 불만 또는 분쟁처리에 관한 기록 :
																	3년(전자상거래등에서의 소비자보호에 관한 법률)
																</td>
															</tr>
														</tbody>
													</table>
					
												</div>
													<!-- 로그인 아이디, 제품 아이디 넣기 -->	
													<!-- Modal footer -->
												<div class="modal-footer">
													<button type="submit" class="btn btn-secondary" data-dismiss="modal">등록</button>								
													<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>								
												</div>								
											</form>
										</div>
									</div>
								</div>
		                	</div>
		            </div>
		        </div>
		    </div>