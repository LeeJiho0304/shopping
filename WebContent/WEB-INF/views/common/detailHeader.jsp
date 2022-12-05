<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shopping Mall</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  		 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
 		 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<style>
		nav {
			font-size:20px;
		}
		.card {
			width:300px;
			height:470px;
			margin-left: 10px;
			margin-right: 10px;
		}
		
		.card-header {
			background-color: white;
		}
		
			* {box-sizing: border-box}
		body {font-family: "Lato", sans-serif;}
		
		/* Style the tab */
		.tab {
		 overflow: hidden;
		  border: 1px solid #ccc;
		  background-color: #f1f1f1;
		}
		
		/* Style the buttons inside the tab */
		.tab button {
		    background-color: inherit;
			  float: left;
			  border: none;
			  outline: none;
			  cursor: pointer;
			  padding: 14px 16px;
			  transition: 0.3s;
			  font-size: 17px;
		}
		
		/* Change background color of buttons on hover */
		.tab button:hover {
		  background-color: #ddd;
		}
		
		/* Create an active/current "tab button" class */
		.tab button.active {
		  background-color: #ccc;
		}
		
		/* Style the tab content */
		.tabcontent {
		  float: top;
		  padding: 0px 12px;
		  border: 1px solid #ccc;
		  width: 70%;
		  border-left: none;
		  height: 300px;
		  display: none;
		}
		
		/* Clear floats after the tab */
		.clearfix::after {
		  content: "";
		  clear: both;
		  display: table;
		}
		ul, li {
			list-style: none;
		}
		
		.filterMenuItem {
		font-weight: 600;
		}
		.depth {
		font-weight: 100;
		}
		</style>
		<script>
			$(document).ready(function(){
	
				$('#TV .menu-sub').hide();
				$('#PC .menu-sub').hide();
				$('#Refrigerator .menu-sub').hide();
				$('#Airconditioner .menu-sub').hide();
				$('#Washingmachine .menu-sub').hide();
				
	
				$('.menu1').mouseover(function(){
					$('#TV .menu-sub').slideDown();
	
				});
				$('.menu2').mouseover(function(){
					$('#PC .menu-sub').slideDown();
	
				});
				$('.menu3').mouseover(function(){
					$('#Refrigerator .menu-sub').slideDown();
	
				});
				$('.menu4').mouseover(function(){
					$('#Airconditioner .menu-sub').slideDown();
	
				});
				$('.menu5').mouseover(function(){
					$('#Washingmachine .menu-sub').slideDown();
	
				});
				$('.menu1, .menu2, .menu3, .menu4, .menu5').mouseleave(function(){
					$('.menu-sub').hide();
				});
			});
		</script>
</head>
	<body>
	
	
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand" href="/shopping/product/productList.html"> <img src="../images/JH.png"
					width="35px" height="35px"/> 지호전자
				</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >

			<ul class="navbar-nav" >
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" ><i class="fa fa-user"></i></a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/shopping/user/loginForm.html">로그인</a> 
						<a class="dropdown-item" href="/shopping/user/joinForm.html">회원가입</a> 
						<a class="dropdown-item" href="/shopping/user/orderList.html">주문내역</a>
					</div>
				</li>

				<li class="nav-item"><a class="nav-link" href="/shopping/product/productList2.html"><i class="fa fa-shopping-cart"></i></a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-question-circle"></i></a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="background-color:white; font-color:black;">Search</button>
			</form>

		</div>
		</nav>
		<div class="tab">
			<button class="menu1">TV</button>
			<button class="menu2">PC</button>
			<button class="menu3">냉장고</button>
			<button class="menu4">에어컨</button>
			<button class="menu5">세탁기</button>
		</div>
			<ul id="TV">
				<li>
					<ul class="menu-sub">
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">OLED</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">벽걸이형</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">스탠드형</a><hr/>
					</li>
					</ul>
				</li>
			</ul>
			<ul id="PC">
				<li>
					<ul class="menu-sub">
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">노트북</a><hr/>
					</li>	
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">모니터</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">컴퓨터</a><hr/>
					</li>
					</ul>
				</li>
			</ul>
			<ul id="Refrigerator">
				<li>
					<ul class="menu-sub">
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">정수기형</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">양문형</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">일반형</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">김치냉장고</a><hr/>
					</li>
					</ul>
				</li>
			</ul>
			<ul id="Airconditioner">
				<li>
					<ul class="menu-sub">
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">스탠드형</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">이동식</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">벽걸이형</a><hr/>
					</li>
					</ul>
				</li>
			</ul>
			<ul id="Washingmachine">
				<li>
					<ul class="menu-sub">
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">통돌이</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">드럼</a><hr/>
					</li>
					<li>
						<a href="shopping/oder/orderList.html" class="my-dep2">워시타워</a><hr/>
					</li>
					</ul>
				</li>
			</ul>

	<div id="content" class="container-fluid border">
		<div class="row">
		<%@ include file="/WEB-INF/views/common/menu.jsp" %>