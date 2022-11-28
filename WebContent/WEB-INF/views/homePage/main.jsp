<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		<style>
		nav {
			font-size:20px;
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
		.card {
			width:295px;
			height:470px;
			margin-left: 10px;
			margin-right: 10px;
		}
		
		.card-header {
			background-color: white;
		}
		.card-header > img {
			width:250px;
		}
		ul, li {
			list-style: none;
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
		<nav class="navbar navbar-expand-lg navbar-light"">
			<a class="navbar-brand" href="/shopping/product/productList.html"> <img src="/shopping/resources/images/homePage/JH.png"
					width="35px" height="35px"/> OTI전자
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
						<a class="dropdown-item" href="/shopping/user/myPage.html">마이페이지</a>
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
						<a href="shopping/oder/orderList.html" class="my-dep2">모니터</a><hr/>
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
	
		


	<div id="demo" class="carousel slide" data-ride="carousel" data-interval="3000">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/shopping/resources/images/homePage/티비1.png" width="100%" height="600px">
				</div>
				<div class="carousel-item">
					<img src="/shopping/resources/images/homePage/티비2.png" width="100%" height="600px">
				</div>
				<div class="carousel-item">
					<img src="/shopping/resources/images/homePage/티비3.png" width="100%" height="600px">
				</div>
				
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> 
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
		<nav class="nav nav-pills nav-fill" width="100%">
			<a class="nav-item nav-link" href="/shopping/product/productList_tv.html">BEST TV</a> 
			<a class="nav-item nav-link" href="/shopping/product/productList_pc.html">BEST PC</a> 
			<a class="nav-item nav-link" href="/shopping/product/productList_refrigerator.html">BEST 냉장고</a> 
			<a class="nav-item nav-link" href="/shopping/product/productList_airconditioner.html">BEST 에어컨</a> 
			<a class="nav-item nav-link" href="/shopping/product/productList_washingmachine.html">BEST 세탁기</a>
		</nav>
		<table>
					<tbody class="table table-borderless">
						<tr>
							<td>
								<div class="card" onclick="location.href='/shopping/product/productDetail2.html'">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비4.png"></div>
										<div class="card-body">
										<h4>LG 올레드 오브제컬렉션</h4>
										<p>보지 않을 때도 계속되는 예술적 경험</p>
										<p>2,832,000원 ~ 9,400,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비6.png"></div>
									<div class="card-body">
										<h4>LG 올레드 TV</h4>
										<p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
										<p>1,390,000원 ~ 8,890,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비7.png"></div>
									<div class="card-body">
										<h4>LG 울트라 HD TV</h4>
										<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
										<p>890,000원 ~ 3,590,000원</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비8.png"></div>
									<div class="card-body">
										<h4>LG 울트라 HD TV</h4>
										<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
										<p>890,000원 ~ 3,590,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비9.png"></div>
									<div class="card-body">
										<h4>LG 일반 LED TV</h4>
										<p>보는 즐거움이 다른 생생한 화질</p>
										<p>540,000원 ~ 640,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비10.png"></div>
									<div class="card-body">
										<h4>LG 나노셀 TV</h4>
										<p>나노 입자로 완성한 퓨어 컬러</p>
										<p>2,890,000원 ~ 4,090,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비11.png"></div>
									<div class="card-body">
										<h4>LG QNED TV(Mini LED)</h4>
										<p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
										<p>7,490,000원 ~ 12,000,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비8.png"></div>
									<div class="card-body">
										<h4>LG 울트라 HD TV</h4>
										<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
										<p>890,000원 ~ 3,590,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비9.png"></div>
									<div class="card-body">
										<h4>LG 일반 LED TV</h4>
										<p>보는 즐거움이 다른 생생한 화질</p>
										<p>540,000원 ~ 640,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비10.png"></div>
									<div class="card-body">
										<h4>LG 나노셀 TV</h4>
										<p>나노 입자로 완성한 퓨어 컬러</p>
										<p>2,890,000원 ~ 4,090,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비11.png"></div>
									<div class="card-body">
										<h4>LG QNED TV(Mini LED)</h4>
										<p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
										<p>7,490,000원 ~ 12,000,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="/shopping/resources/images/homePage/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
					</table>
	</body>
</html>