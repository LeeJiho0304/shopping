<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="${pageContext.request.contextPath}/resources/js/homePage/myPage.js"></script>
		
<div class="card-header">
   	 문의 게시판
</div>
<br/>
<div class="container">

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
                           <c:forEach var ="qboard" items="${myQnaList}">
                               <tr>	                                
                                   <th scope="row">${qboard.qna_board_id}</th>		                                   
                                   <td>
                                   <!--  <a href="javaScript:function()">-->
                                   <c:if test="${loginId == qboard.users_id}">
                                   	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}">
                                    	${qboard.qna_board_title}</a>
                                   </c:if>
                                   <c:if test="${loginId != qboard.users_id}">                                    	
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
                                       <div class="team">${qboard.users_id}
                                       </div>
                                   </td>
                                   
                                   <td>
                                   	<c:if test="${loginId == qboard.users_id}">
                                   		<div class="action">
                                           	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
                                           	<a href="QnaBoardDetailContoller?qna_board_id=${qboard.qna_board_id}" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
                                       	</div>
                                   	</c:if>
                                   	<c:if test="${loginId != qboard.users_id}">
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
                   		<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">상품 문의 작성</button> -->
                        
                  		 </div>
                    <div class="text-center">
					  <a onClick="listPage(1, ${pageContext.request.contextPath})" class="btn btn-outline-primary btn-sm">처음</a>
					  
					  <c:if test="${pager.groupNo > 1}">
					     <a onClick="listPage(${pager.startPageNo-1}, ${pageContext.request.contextPath})" class="btn btn-outline-info btn-sm">이전</a>
					  </c:if>
					  
					  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					     <c:if test="${pager.pageNo != i}">
					        <a onClick="listPage(${i}, ${pageContext.request.contextPath})" class="btn btn-outline-success btn-sm">${i}</a>
					     </c:if>
					     <c:if test="${pager.pageNo == i}">
					        <a onClick="listPage(${i}, ${pageContext.request.contextPath})" class="btn btn-danger btn-sm">${i}</a>
					     </c:if>
					  </c:forEach>
					  
					  <c:if test="${pager.groupNo < pager.totalGroupNo}">
					     <a onClick="listPage(${pager.endPageNo+1}, ${pageContext.request.contextPath})" class="btn btn-outline-info btn-sm">다음</a>
					  </c:if>
					  
					  <a onClick="listPage(${pager.totalPageNo}, ${pageContext.request.contextPath})" class="btn btn-outline-primary btn-sm">맨끝</a>
					
					</div>
                  </div>
			</div>
		</div>
        </div>
    </div>
</div>
<!-- end row -->
