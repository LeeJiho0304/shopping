<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                        <h1 class="h3 mb-0 text-gray-800">상품 추가</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-md-9">
	                        <div class="card card-primary">
	                            <div class="card-header">
	                                <h3 class="card-title">상품 등록</h3>
	                            </div>
	
	                            <form>
	                                <div class="card-body">
	                                    <div class="form-group">
	                                        <label for="productName">제품 이름</label>
	                                        <input type="text" class="form-control" id="productName" placeholder="제품 이름">
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="productPrice">제품 가격</label>
	                                        <input type="text" class="form-control" id="productPrice" placeholder="제품 가격">
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="productCompany">제조사</label>
	                                        <input type="text" class="form-control" id="productCompany" placeholder="제조사">
	                                    </div>
	                                    <div class="row">
	                                    	
											<div class="col-sm-6">
												<label>상품 카테고리</label>
												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio" name="category" id="category1" value="fridge" checked>
														<label class="form-check-label" for="category1">냉장고</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="category" id="category2" value="tv">
														<label class="form-check-label" for="category2">TV</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="category" id="category3" value="washer">
														<label class="form-check-label" for="category3">세탁기</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="category" id="category4" value="aircon">
														<label class="form-check-label" for="category4">에어컨</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="category" id="category5" value="pc">
														<label class="form-check-label" for="category5">PC</label>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
												<label>서브 카테고리</label>
													<select class="form-control fridgeSubCategory" name="fridgeSubCategory" id="fridgeSubCategory">
													<option value="1">정수기형</option>
													<option value="2">양문형</option>
													<option value="3">일반형</option>
													<option value="4">김치냉장고</option>
													</select>
													
													<select class="form-control tvSubCategory" name="tvSubCategory" id="tvSubCategory">
													<option value="1">올레드</option>
													<option value="2">벽걸이형</option>
													<option value="3">스탠드형</option>
													</select>
													
													<select class="form-control washerSubCategory" name="washerSubCategory" id="washerSubCategory">
													<option value="1">통돌이</option>
													<option value="2">드럼</option>
													<option value="3">워시타워</option>
													</select>
													
													<select class="form-control airconSubCategory" name="airconSubCategory" id="airconSubCategory">
													<option value="1">스탠드형</option>
													<option value="2">이동식</option>
													<option value="3">벽걸이형</option>
													</select>
													
													<select class="form-control pcSubCategory" name="pcSubCategory" id="pcSubCategory">
													<option value="1">노트북</option>
													<option value="2">모니터</option>
													<option value="3">데스크톱</option>
													</select>
												</div>
												
											</div>
										</div>
	                                    <div class="form-group">
	                                        <label for="exampleInputFile">제품 이미지</label>
	                                        <div class="input-group">
	                                            <div class="custom-file">
	                                                <input type="file" class="custom-file-input" id="exampleInputFile">
	                                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
	                                            </div>
	                                            <div class="input-group-append">
	                                                <span class="input-group-text">Upload</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="form-group">
	                                        <label for="exampleInputFile">상세 내용 이미지</label>
	                                        <div class="input-group">
	                                            <div class="custom-file">
	                                                <input type="file" class="custom-file-input" id="exampleInputFile">
	                                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
	                                            </div>
	                                            <div class="input-group-append">
	                                                <span class="input-group-text">Upload</span>
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