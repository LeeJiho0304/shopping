<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Main</title>
</head>
<body>
	<div id="wrapper">

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-cloumn">
	<%@ include file="/WEB-INF/views/admin/common/sidebar.jsp" %>
		<!-- Main Content -->
		<div id="content">
		<%@ include file="/WEB-INF/views/admin/common/topbar.jsp" %>
			
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">상품 목록</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-9 col-md-6 mb-4">
                            <div class="card m-2">
								
								<div class="card-body">
									<table class="table table-bordered">
									    <thead>
									    	<tr>
									    		<th>상품 id</th>
										        <th>이름</th>
										        <th>가격</th>
										        <th>별점</th>
										        <th>카테고리</th>
										        <th>서브 카테고리</th>
									      	</tr>
									    </thead>
									    <tbody>
									    	<c:forEach var="product" items="${productList}" >
										      	<tr>
										      		<td>${product.product_id}</td>
										        	<td>${product.product_name}</td>
										        	<td>${product.product_price}</td>
										        	<td>${product.product_totalpoint}</td>
										        	<td>${product.category_name}</td>
										        	<td>${product.subcategory_name}</td>
										        </tr>
									    	</c:forEach>
								    		<tr>
												<td colspan="6" class="text-center">
													<div>
														<a href="AdminProductListController?pageNo=1" class="btn btn-outline-primary btn-sm">처음</a>
														<c:if test="${pager.groupNo > 1}">
															<a href="AdminProductListController?pageNo=${pager.startPageNo-1}" class="btn btn-outline-info btn-sm">이전</a>
														</c:if>
														
														<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
															<c:if test="${pager.pageNo != i}">
																<a href="AdminProductListController?pageNo=${i}" class="btn btn-outline-success btn-sm">${i}</a>
															</c:if>
															<c:if test="${pager.pageNo == i}">
																<a href="AdminProductListControllerpageNo=${i}" class="btn btn-danger btn-sm">${i}</a>
															</c:if>
														</c:forEach>
														
														<c:if test="${pager.groupNo < pager.totalGroupNo}">
															<a href="AdminProductListController?pageNo=${pager.endPageNo+1}" class="btn btn-outline-info btn-sm">다음</a>
														</c:if>
														<a href="AdminProductListController?pageNo=${pager.totalPageNo}" class="btn btn-outline-primary btn-sm">맨끝</a>
													</div>
												</td>
											</tr>
									    </tbody>
									</table>
							 	</div>
							</div>
                        </div>
                    </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>