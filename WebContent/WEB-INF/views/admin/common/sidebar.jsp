<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SideBar</title>
<!-- Custom fonts for this template-->
<link href="css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/shopping/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@200;400;500&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/981c920883.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/admin/AdminMainController">
			<div class="sidebar-brand-text mx-3">OTI전자<br>관리자 페이지</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/admin/AdminMainController"><span>Dashboard</span></a>
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Product</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<!-- Product -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
			aria-expanded="true" aria-controls="collapseTwo"> <span>상품</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">product</h6>
						<a class="collapse-item" href="${pageContext.request.contextPath}/admin/AdminProductListController">상품 목록</a> 
						<a class="collapse-item" href="${pageContext.request.contextPath}/admin/AddProductController">상품 추가</a>
					</div>
				</div>
		</li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<!-- Order -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
			aria-expanded="true" aria-controls="collapseUtilities"><span>주문</span>
			</a>
			<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Order</h6>
					<a class="collapse-item" href="admin_order_list">주문 상태 관리</a> 
				</div>
			</div>
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Board</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
			aria-expanded="true" aria-controls="collapsePages"><span>게시판</span>
			</a>
			<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Q & A</h6>
					<a class="collapse-item" href="admin_qna_list_form">Q&A 목록 및 답변</a>
					<div class="collapse-divider"></div>
					<h6 class="collapse-header">review</h6>
					<a class="collapse-item" href="admin_write_notice_form">리뷰 게시글 목록</a>
				</div>
			</div>
		</li>
		
		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMember"
			aria-expanded="true" aria-controls="collapsePages"> <span>Member</span>
			</a>
			<div id="collapseMember" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Member</h6>
					<a class="collapse-item" href="admin_member_list">Member List</a>
					<div class="collapse-divider"></div>
				</div>
			</div>
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

	</ul>
	<!-- End of Sidebar -->