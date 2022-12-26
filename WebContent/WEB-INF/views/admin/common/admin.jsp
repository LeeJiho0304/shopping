<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Main</title>
	<style>
	.users-list>li {
	    float: left;
	    padding: 10px;
	    text-align: center;
	    width: 33%;
	    list-style: none;
	}
	
	.users-list {
		padding-left: 0; 
		list-style: none;
	}
	.users-list>li img {
	    border-radius: 50%;
	    height: auto;
	    max-width: 100%;
	}
	</style>
</head>
<body>
	<div id="wrapper">

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-cloumn">
	<%@ include file="sidebar.jsp" %>
		<!-- Main Content -->
		<div id="content">
		<%@ include file="topbar.jsp" %>
			
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Product List</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">상품 목록</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-table-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Add Product</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">상품 추가</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-cart-plus fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                add comment</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">문의 게시판</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-file-alt fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">order status
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">주문 관리</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-basket-shopping fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <!-- 팀원 -->
                        <div class="col-xl-8 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100">
	                            <div class="card-header d-flex flex-row align-items-center justify-content-between">
		                        	<h6 class="m-0 font-weight-bold text-primary">Team1 Members</h6>
		                        </div>
                                <div class="card-body">
                                    <div class="members pt-4 pb-2">
	                        		<ul class="users-list clearfix">
										<li>
										<i class="fas fa-user fa-4x"></i> <br/>
										<span>이지호</span>
										</li>

										<li>
										<i class="fas fa-user fa-4x"></i> <br/>
										<span>이연희</span>
										</li>
										
										<li>
										<i class="fas fa-user fa-4x"></i> <br/>
										<span>김지영</span>
										</li>
										
									</ul>
	                        	</div>
                                </div>
                            </div>
                        </div>
                    </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>