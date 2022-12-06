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
		/* Add a black background color to the top navigation */
.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Add an active class to highlight the current page */
.active {
  background-color: #04AA6D;
  color: white;
}

/* Hide the link that should open and close the topnav on small screens */
.topnav .icon {
  display: none;
}

/* Dropdown container - needed to position the dropdown content */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Style the dropdown button to fit inside the topnav */
.dropdown .dropbtn {
  font-size: 17px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

/* Style the dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Style the links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a dark background on topnav links and the dropdown button on hover */
.topnav a:hover, .dropdown:hover .dropbtn {
  background-color: #555;
  color: white;
}

/* Add a grey background to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

/* Show the dropdown menu when the user moves the mouse over the dropdown button */
.dropdown:hover .dropdown-content {
  display: block;
}

/* When the screen is less than 600 pixels wide, hide all links, except for the first one ("Home"). Show the link that contains should open and close the topnav (.icon) */
@media screen and (max-width: 600px) {
  .topnav a:not(:first-child), .dropdown .dropbtn {
    display: none;
  }
  .topnav a.icon {
    float: right;
    display: block;
  }
}

/* The "responsive" class is added to the topnav with JavaScript when the user clicks on the icon. This class makes the topnav look good on small screens (display the links vertically instead of horizontally) */
@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive a.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  .topnav.responsive .dropdown {float: none;}
  .topnav.responsive .dropdown-content {position: relative;}
  .topnav.responsive .dropdown .dropbtn {
    display: block;
    width: 100%;
    text-align: left;
  }
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
		<div class="topnav" id="myTopnav">
		    <a href="#home" class="active">Home</a>
		    <a href="#news">News</a>
		    <a href="#contact">Contact</a>
		    <div class="dropdown">
		    <button class="dropbtn">Dropdown
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		        <a href="#">Link 1</a>
		        <a href="#">Link 2</a>
		        <a href="#">Link 3</a>
		    </div>
		  </div>
		  <a href="#about">About</a>
		  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
	  </div>
	
		