<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
 		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@200;400;500&family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
		<style>
		font-family: 'Hahmlet', serif;
		font-family: 'Nanum Gothic', sans-serif;
		
		.dropmenu{
			border:none;
			border:0px;
			margin:0px;
			padding:0px;
			font-size:18px;
		}
		
		.dropmenu ul{
			background:red;
			height:50px;
			list-style:none;
			margin:0;
			padding:0;
		}
		
		.dropmenu li{
			float:left;
			padding:0px;
		}
		
		.dropmenu li a{
			background: red;
			color:#fff;
			display:block;
			line-height:50px;
			margin:0px;
			padding:0px 20px;
			text-align:center;
			text-decoration:none;
		}
		
		.dropmenu li a:hover, .dropmenu ul li:hover a{
			background: rgb(31,31,31);
			color:#FFFFFF;
			text-decoration:none;
		}
		
		.dropmenu li ul{
			background: #FEBEBE;
			display:none; 
			height:auto;
			border:0px;
			position:absolute;
			width:200px;
			z-index:200;
			/*top:1em;
			/*left:0;*/
		}
		
		.dropmenu li:hover ul{
			display:block;
		}
		
		.dropmenu li li {
			background: rgb(171,171,171);
			display:block;
			float:none;
			margin:0px;
			padding:0px;
			width:200px;
		}
		
		.dropmenu li:hover li a{
			background:none;
		}
		
		.dropmenu li ul a{
			display:block;
			height:80px;
			font-size:14px;
			margin:0px;
			padding:0px 10px 0px 15px;
			text-align:left;
		}
		
		.dropmenu li ul a:hover, .dropmenu li ul li:hover a{
			background: red;
			border:0px;
			color:#ffffff;
			text-decoration:none;
		}
		
		.dropmenu p{
			clear:left;
		}
		</style>
	</head>
	
	<body>
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/MainController"> 
				<img src="/shopping/resources/images/homePage/JH.png" width="35px" height="35px"/> OTI전자
			</a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >

				<ul class="navbar-nav" >
					 <li class="nav-item">
               			 <c:if test="${loginId == null}">
								<a href="${pageContext.request.contextPath}/LoginController" class="nav-link">Login</a>
						</c:if>
					
						<c:if test="${loginId != null}">
							<a href="${pageContext.request.contextPath}/LogoutController" class="nav-link">Logout</a>
						</c:if>
            		</li>
            		<c:if test="${loginId == null}">
						<li class="nav-item">
			                <a class="nav-link" href="${pageContext.request.contextPath}/JoinController">Register</a>
			            </li>
		            </c:if>
		            <c:if test="${loginId != null}">
			            <li class="nav-item">
							<a class="nav-link" href="/shopping/product/productList2.html">
								<i class="fa fa-user"></i>
							</a>
						</li>
					</c:if>
					<c:if test="${loginId != null}">
						<li class="nav-item">
							<a class="nav-link" href="/shopping/product/productList2.html">
								<i class="fa fa-shopping-cart"></i>
							</a>
						</li>
					</c:if>
					<c:if test="${loginId != null}">
						<li class="nav-item">
							<a class="nav-link" href="#">
								<i class="fa fa-question-circle"></i>
							</a>
						</li>
					</c:if>
					
				</ul>
				
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="background-color:white; font-color:black;">Search</button>
				</form>
			</div>
		</nav>
	
		 <div class="dropmenu"  style=" z-index: 10;">
			<ul>
			 <li><a href="#" id="current">냉장고</a>
				  <ul>
				     <li><a href="${pageContext.request.contextPath}/ProducCategorytListController?categoryId=1&subCategoryId=1">양문형</a></li>
				     <li><a href="#">정수기형</a></li>
				     <li><a href="#">일반형</a></li>
				     <li><a href="#">김치냉장고</a></li>
				  </ul>
			 </li>
			 <li><a href="#" id="current">TV</a>
				  <ul>
				     <li><a href="#">OLED</a></li>
				     <li><a href="#">벽걸이형</a></li>
				     <li><a href="#">스탠드형</a></li>
				  </ul>
			 </li>
			 <li><a href="#" id="current">에어컨</a>
				  <ul>
				     <li><a href="#">스탠드형</a></li>
				     <li><a href="#">이동식</a></li>
				     <li><a href="#">벽걸이형</a></li>
				  </ul>
			 </li>
			 <li><a href="#" id="current">세탁기</a>
				  <ul>
				     <li><a href="#">통돌이</a></li>
				     <li><a href="#">드럼</a></li>
				     <li><a href="#">워시타워</a></li>
				  </ul>
			 </li>
			 <li><a href="#" id="current">PC</a>
				  <ul>
				     <li><a href="#">노트북</a></li>
				     <li><a href="#">모니터</a></li>
				     <li><a href="#">컴퓨터</a></li>
				  </ul>
			 </li>
			</ul>
		</div>
