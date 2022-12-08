<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QnA Board</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

		<style>
			body{
			    background:#f3f3f3;
			    margin-top:20px;
			    color: #616f80;
			}
			.card {
			    border: none;
			    margin-bottom: 24px;
			    -webkit-box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			    box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			}
			
			.avatar-xs {
			    height: 2.3rem;
			    width: 2.3rem;
			}
			
			#myModal table {
				width:100%;
			}
			#myModal th {
				width:20%; 
			}
			.qna tr, .qna td, .qnaNoti tr, .qnaNoti td {
				border: 1px solid #ccc;
			}
			#inquiryTitleName{
				width:100%;
			}
			#myModal textarea {
				width:100%;
			}
		</style>
	</head>
	<body>
		<div class="card-header">
     	 	문의 게시판
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
		                    <p class="text-muted mb-0">문의 게시판</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-th text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">2483</h5>
		                    <p class="text-muted mb-0">총 게시물 수</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-file text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">06</h5>
		                    <p class="text-muted mb-0">인기 게시물</p>
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
		                                    <th scope="col">답변 여부</th>
		                                    <th scope="col">작성자</th>
		                                    
		                                    <th scope="col">수정</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            <c:forEach var ="qboard" items="${pageList}">
		                                <tr>	                                
		                                    <th scope="row">${qboard.qna_board_id}</th>		                                   
		                                    <td>
		                                    <!--  <a href="javaScript:function()">-->
		                                    <c:if test="${qboard.users_id == 'Check'}"><!--loginId}">-->
		                                    	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}">
			                                    	${qboard.qna_board_title}</a>
		                                    </c:if>
		                                    <c:if test="${qboard.users_id != 'Check'}"><!--loginId}">-->	                                    	
			                                    	${qboard.qna_board_title}
		                                    </c:if>
			                                    </td>
		                                    <td><fmt:formatDate value="${qboard.qna_board_date}" pattern = "yyyy.MM.dd"/></td>
		                                    <td>
		                                        
		                                        	<c:if test="${qboard.qna_board_answer == 'Y'}"> 
		                                        		<span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 답변 완료</span>
		                                        	</c:if>
		                                        	<c:if test="${qboard.qna_board_answer == 'N'}"> 
		                                        		<span class="text-warning font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 답변 대기</span>
		                                        	</c:if>
		                                        	
		                                    </td>
		                                    <td>
		                                        <div class="team text-success">${qboard.users_id}
		                                        </div>
		                                    </td>
		                                    
		                                    <td>
		                                    	<c:if test="${qboard.users_id == 'Check'}"><!--loginId}">--> 
		                                    		<div class="action">
		                                            	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
		                                        	</div>
		                                    	</c:if>
		                                    	<c:if test="${qboard.users_id != 'Check'}"><!--loginId}">-->	
		                                    		<div class="action">
		                                            	<a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            	<a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
		                                        	</div>
		                                    	</c:if>
		                                        
		                                    </td>
		                                </tr>
										</c:forEach>
										
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- end project-list -->
							
		                    <div class="pt-3">
		                    	<div>
		                    		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">상품 문의 작성</button>
			                        
		                   		 </div>
			                    <div class="text-center">
			                    	 
				                     <a href="QnaBoardListContoller?pageNo=1" class="btn btn-outline-primary btn-sm">처음</a>
				                     
				                     <c:if test="${pager.groupNo > 1}">
				                        <a href="QnaBoardListContoller?pageNo=${pager.startPageNo-1}" class="btn btn-outline-info btn-sm">이전</a>
				                     </c:if>
				                     
				                     <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
				                        <c:if test="${pager.pageNo != i}">
				                           <a href="QnaBoardListContoller?pageNo=${i}" class="btn btn-outline-success btn-sm">${i}</a>
				                        </c:if>
				                        <c:if test="${pager.pageNo == i}">
				                           <a href="QnaBoardListContoller?pageNo=${i}" class="btn btn-danger btn-sm">${i}</a>
				                        </c:if>
				                     </c:forEach>
				                     
				                     <c:if test="${pager.groupNo < pager.totalGroupNo}">
				                        <a href="QnaBoardListContoller?pageNo=${pager.endPageNo+1}" class="btn btn-outline-info btn-sm">다음</a>
				                     </c:if>
				                     
				                     <a href="QnaBoardListContoller?pageNo=${pager.totalPageNo}" class="btn btn-outline-primary btn-sm">맨끝</a>
				                  
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
															<th >문의 유형</th>
															<td>
																<input type="checkbox" id="product" checked>
			  													<label for="product">상품 관련 문의</label><br>
			  													
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
															<th >문의 내용</th>
															<td class="QnaTxt"><textarea rows="8" cols="20"
																	name="inquiryContent" id="inquiryContent"
																	placeholder="문의 내용을 입력해 주세요. (500자 이내)"></textarea>
																	<input type="hidden" name="inquiryUid" id="inquiryUid" value="Check" > <!--  "${loginId}">-->
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
															<td>원칙적으로, 개인정보 수집 및 이용 목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
																단, 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 아래와 같이 관계 법령에서 정한 일정 기간 동안
																개인정보를 보관할 수 있습니다.<br> - 소비자의 불만 또는 분쟁처리에 관한 기록 :
																3년(전자상거래등에서의 소비자보호에 관한 법률)
															</td>
														</tr>
													</tbody>
												</table>
				
											</div>
												<!-- 로그인 아이디, 제품 아이디 넣기 -->	
												
											<div class="modal-footer">
												<button type="submit" class="btn btn-secondary">등록</button>						
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>								
											</div>								
										</form>
				
									</div>
									<!-- Modal footer -->
		
								</div>
							</div>
		                </div>
		            </div>
		        </div>
		    </div>
		    <!-- end row -->
		</div>
		</div>
	</body>
</html>