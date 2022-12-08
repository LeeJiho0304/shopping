<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div class="container">
			<div class="row">		        
		        <div class="col-xl-4 col-md-4">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-th text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">${totalBoardNum}</h5>
		                    <p class="text-muted mb-0">총 게시물</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-4 col-md-4">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-file text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">${totalAnswerBoardNum}</h5>
		                    <p class="text-muted mb-0">답변 완료</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-4 col-md-4">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-file text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">${totalBoardNum-totalAnswerBoardNum}</h5>
		                    <p class="text-muted mb-0">답변 대기</p>
		                </div>
		            </div>
		        </div>
		        
		    </div>
		    <br/>
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
		                                    
		                                    <th scope="col">답변 관리</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            <c:forEach var ="qboard" items="${pageList}">
		                                <tr>	                                
		                                    <th scope="row">${qboard.qna_board_id}</th>		                                   
		                                    <td>
		                                    <!--  <a href="javaScript:function()">-->		                                   
		                                    	<a href="AddQnaAnswerController?qna_board_id=${qboard.qna_board_id}">
			                                    	${qboard.qna_board_title}</a>		                                  
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
		                                    	<div class="action">
		                                            <a href="AddQnaAnswerController?qna_board_id=${qboard.qna_board_id}" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="DeleteQnaAnswerController?qna_board_id=${qboard.qna_board_id}" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
		                                        </div>		                                    			                                    	
		                                    </td>
		                                </tr>
										</c:forEach>
										
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- end project-list -->
							
		                    <div class="pt-3">
		                    	
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
				
		            </div>
		        </div>
		    </div>
		    <!-- end row -->
		</div>
		</div>
