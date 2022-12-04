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
		<link rel="stylesheet" href="/shopping/resources/css/homePage/common.css">
		<style>
		/* Navbar container */
		.navbar  {
		  overflow: hidden;
		  background-color: #333;
		  font-family: Arial;
		}
		
		/* Links inside the navbar */
		.navbar a {
		  float: left;
		  font-size: 16px;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}
		
		/* The dropdown container */
		.dropdown {
		  float: left;
		  overflow: hidden;
		}
		
		/* Dropdown button */
		.dropdown .dropbtn {
		  font-size: 16px;
		  border: none;
		  outline: none;
		  color: white;
		  padding: 14px 16px;
		  background-color: inherit;
		  font: inherit; /* Important for vertical align on mobile phones */
		  margin: 0; /* Important for vertical align on mobile phones */
		}
		
		/* Add a red background color to navbar links on hover */
		.navbar a:hover, .dropdown:hover .dropbtn {
		  background-color: red;
		}
		
		/* Dropdown content (hidden by default) */
		.dropdown-content {
		  display: none;
		  position: absolute;
		  background-color: #f9f9f9;
		  width: 100%;
		  left: 0;
		  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		  z-index: 1;
		}
		
		/* Mega Menu header, if needed */
		.dropdown-content .header {
		  background: red;
		  padding: 16px;
		  color: white;
		}
		
		/* Show the dropdown menu on hover */
		.dropdown:hover .dropdown-content {
		  display: block;
		}
		
		/* Create three equal columns that floats next to each other */
		.column {
		  float: left;
		  width: 33.33%;
		  padding: 10px;
		  background-color: #ccc;
		  height: 250px;
		}
		
		/* Style links inside the columns */
		.column a {
		  float: none;
		  color: black;
		  padding: 16px;
		  text-decoration: none;
		  display: block;
		  text-align: left;
		}
		
		/* Add a background color on hover */
		.column a:hover {
		  background-color: #ddd;
		}
		
		/* Clear floats after the columns */
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}

	@media screen and (max-width: 600px) {
	  .column {
	    width: 100%;
	    height: auto;
	  }



		</style>
	</head>
	
	<body>
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand" href="/shopping/product/productList.html"> 
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
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" >
							<i class="fa fa-user"></i>
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/shopping/user/loginForm.html">로그인</a> 
							<a class="dropdown-item" href="/shopping/user/joinForm.html">회원가입</a> 
							<a class="dropdown-item" href="/shopping/user/myPage.html">마이페이지</a>
						</div>
					</li>
	
					<li class="nav-item">
						<a class="nav-link" href="/shopping/product/productList2.html">
							<i class="fa fa-shopping-cart"></i>
						</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="#">
							<i class="fa fa-question-circle"></i>
						</a>
					</li>
					
				</ul>
				
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="background-color:white; font-color:black;">Search</button>
				</form>
			</div>
		</nav>
	
	<div class="navbar menu">
	  <a href="#home">Home</a>
	  <a href="#news">News</a>
	  <div class="dropdown">
	    <button class="dropbtn">Dropdown
	      <i class="fa fa-caret-down"></i>
	    </button>
	    <div class="dropdown-content">
	      <div class="header">
	        <h2>Mega Menu</h2>
	      </div>
	      <div class="row menu">
	        <div class="column menu">
	          <h3>Category 1</h3>
	          <a href="#">Link 1</a>
	          <a href="#">Link 2</a>
	          <a href="#">Link 3</a>
	        </div>
	        <div class="column menu">
	          <h3>Category 2</h3>
	          <a href="#">Link 1</a>
	          <a href="#">Link 2</a>
	          <a href="#">Link 3</a>
	        </div>
	        <div class="column menu">
	          <h3>Category 3</h3>
	          <a href="#">Link 1</a>
	          <a href="#">Link 2</a>
	          <a href="#">Link 3</a>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
		