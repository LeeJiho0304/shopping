<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Main</title>
	<script>
		function Activity(category, list){
			this.category = category;
			this.list = list;
		}
		
		var category = new Array();
		category[0] = new Activity("1", ['1', '2', '3', '4']);
		category[1] = new Activity("2", ['1', '2', '3']);
		category[2] = new Activity("3", ['1', '2', '3']);
		category[3] = new Activity("4", ['1', '2', '3']);
		category[4] = new Activity("5", ['1', '2', '3']);
		
		function updateList(str) {
			var frm = document.myForm;
			var oriLen = frm.subcategory_id.length;
			var numCategory;
		
			for (var i = 0; i < category.length; i++) { 
				if (str == category[i].category) {
					numCategory = category[i].list.length;
					for (var j = 0; j < numCategory; j++)
						frm.subcategory_id.options[j] = new Option(category[i].list[j],category[i].list[j]);
					for (var j = numCategory; j < oriLen; j++)
						frm.subcategory_id.options[numCategory] = null;
				}
			}
		}
	</script>
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
                        <h1 class="h3 mb-0 text-gray-800">상품 추가</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-md-9">
	                        <div class="card card-primary">
	                            <div class="card-header">
	                                <h3 class="card-title">상품 등록</h3>
	                            </div>
	
	                            <form method="post" name="myForm" action="AddProductController" enctype="multipart/form-data">
	                                <div class="card-body">
	                                    <div class="form-group">
	                                        <label for="productName">제품 이름</label>
	                                        <input type="text" class="form-control" id="product_name" name="product_name" placeholder="제품 이름">
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="productPrice">제품 가격</label>
	                                        <input type="text" class="form-control" id="product_price" name="product_price" placeholder="제품 가격">
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="productCompany">제조사</label>
	                                        <input type="text" class="form-control" id="product_company" name="product_company" placeholder="제조사">
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="productCompany">제품 설명</label>
	                                        <input type="text" class="form-control" id="product_content" name="product_content" placeholder="제품 설명">
	                                    </div>
	                                    <div class="row">
											<div class="col-sm-6">
												<label>상품 카테고리</label>
												<div class="form-group">
													<div class="form-check">
														<input onClick="updateList(this.value)" class="form-check-input" type="radio" name="category_id" id="category1" value="1" checked>
														<label class="form-check-label" for="category1">냉장고</label>
													</div>
													<div class="form-check">
														<input onClick="updateList(this.value)" class="form-check-input" type="radio" name="category_id" id="category2" value="2">
														<label class="form-check-label" for="category2">TV</label>
													</div>
													<div class="form-check">
														<input onClick="updateList(this.value)" class="form-check-input" type="radio" name="category_id" id="category3" value="3">
														<label class="form-check-label" for="category3">세탁기</label>
													</div>
													<div class="form-check">
														<input onClick="updateList(this.value)" class="form-check-input" type="radio" name="category_id" id="category4" value="4">
														<label class="form-check-label" for="category4">에어컨</label>
													</div>
													<div class="form-check">
														<input onClick="updateList(this.value)" class="form-check-input" type="radio" name="category_id" id="category5" value="5">
														<label class="form-check-label" for="category5">PC</label>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
												<label>서브 카테고리</label>
													<select class="form-control fridgeSubCategory" name="subcategory_id" id="fridgeSubCategory">
													<option value="1">정수기형</option>
													<option value="2">양문형</option>
													<option value="3">일반형</option>
													<option value="4">김치냉장고</option>
													</select>
												</div>
											</div>
										</div>
	                                    <div class="form-group">
	                                        <label for="exampleInputFile">제품 이미지</label>
	                                        <div class="input-group">
	                                            <div class="custom-file">
	                                                <input type="file" class="form-control" id="productMainPhoto" name="productMainPhoto">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="form-group">
	                                        <label for="exampleInputFile">상세 내용 이미지</label>
	                                        <div class="input-group">
	                                            <div class="custom-file">
	                                                <input type="file" class="form-control" id="productDetailPhoto" name="productDetailPhoto">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
	                                </div>
	
	                                <div class="card-footer">
	                                    <button type="submit" class="btn btn-primary">Submit</button>
	                                </div>
	                            </form>
	                        </div>
	                    </div>
                    </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>