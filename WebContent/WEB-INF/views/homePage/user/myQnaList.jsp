<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="${pageContext.request.contextPath}/resources/js/homePage/myPage.js"></script>

		<div class="card-header mt-3">
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
		                                    <th scope="col">별점</th>
		                                    <th scope="col">작성자</th>
		                                    <th scope="col">수정/삭제</th>
		                                </tr>
		                            </thead>
		                            <tbody>
			                            <c:forEach var="review" items="${myReviewList}">
			                                <tr>	                                
			                                    <th scope="row">${review.review_board_id}</th>		                                   
			                                    <td><a href="ReviewDetailContoller">${review.review_board_title}</a></td>
			                                    <td><fmt:formatDate value="${review.review_board_date}" pattern="yyyy.MM.dd"/></td>
			                                    <td>
			                                    	<div class="team text-warning">
			                                    		<c:forEach var="i" begin="1" end="${review.review_board_reviewpoint}">★</c:forEach>
			                                        </div>
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
		                    		<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">상품문의 글쓰기</button> -->
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
									  <a onClick="orderListPage(1, ${pageContext.request.contextPath})" class="btn btn-outline-primary btn-sm">처음</a>
									  
									  <c:if test="${pager.groupNo > 1}">
									     <a onClick="orderListPage(${pager.startPageNo-1}, ${pageContext.request.contextPath})" class="btn btn-outline-info btn-sm">이전</a>
									  </c:if>
									  
									  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
									     <c:if test="${pager.pageNo != i}">
									        <a onClick="orderListPage(${i}, ${pageContext.request.contextPath})" class="btn btn-outline-success btn-sm">${i}</a>
									     </c:if>
									     <c:if test="${pager.pageNo == i}">
									        <a onClick="orderListPage(${i}, ${pageContext.request.contextPath})" class="btn btn-danger btn-sm">${i}</a>
									     </c:if>
									  </c:forEach>
									  
									  <c:if test="${pager.groupNo < pager.totalGroupNo}">
									     <a onClick="orderListPage(${pager.endPageNo+1}, ${pageContext.request.contextPath})" class="btn btn-outline-info btn-sm">다음</a>
									  </c:if>
									  
									  <a onClick="orderListPage(${pager.totalPageNo}, ${pageContext.request.contextPath})" class="btn btn-outline-primary btn-sm">맨끝</a>
									
									</div>
		                     </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		    