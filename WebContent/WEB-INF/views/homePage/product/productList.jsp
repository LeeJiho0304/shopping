<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
			width:320px;
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
			<div class="nav-side-menu col-xs-0 col-md-2"
				style="height: 3000px">
				<hr />
				<div class="InbGroup sticky-top" style="margin-top: 10px" >
					<div class="smartFilter" id="smartFilter">
						<div class="scroll" style="max-height: 100px;">
							<div class="filterMenu" id="divBrand">
								<div class="filterMenuItem">
									브랜드
									<hr />
									<div class="depth">
										<ul id="filterBrandList" class="list-unstyled">
											<li data-dic="1삼성전자" data-cnt="157">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_G10000" id="brnd_G10000"
														value="삼성전자_G10000" onclick=""><label
														for="brnd_G10000">삼성전자</label>(157)
												</div>
											</li>
											<li data-dic="2LG전자" data-cnt="138">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_G10020" id="brnd_G10020"
														value="LG전자_G10020"
														onclick="javascript:search.btn.brand('LG전자_G10020');"><label
														for="brnd_G10020">LG전자</label>(138)
												</div>
											</li>
											<li data-dic="2MIDOTECH" data-cnt="138">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_12336024"
														id="brnd_12336024" value="MIDOTECH_12336024"
														onclick="javascript:search.btn.brand('MIDOTECH_12336024');"><label
														for="brnd_12336024">MIDOTECH</label>(138)
													<hr />
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="filterMenu" id="divPrice">
								<div class="filterMenuItem">
									가격
									<hr />
									<ul class="depth list-unstyled" id="divSearchPrice">
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceAll"
													onclick="javascript:search.btn.checkedPrice(this.id,'','');"
													checked="checked" data-price="가격 전체"><label
													for="priceAll">전체</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMin"
													onclick="javascript:search.btn.checkedPrice(this.id,'110000','630000');"
													data-price="63만원이하"><label for="priceMin">63만원이하</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMinMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'630000','1100000');"
													data-price="63만원~110만원"><label for="priceMinMid">63만원~110만원</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'1100000','2100000');"
													data-price="110만원~210만원"><label for="priceMid">110만원~210만원</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMaxMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'2100000','3200000');"
													data-price="210만원이상"><label for="priceMaxMid">210만원이상</label>
												<hr />
											</div></li>
									</ul>

								</div>
							</div>
							<div class="filterMenu" id="divStar">
								<div class="filterMenuItem">
									별점
									<hr />
									<ul class="depth list-unstyled">
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRatingAll"
													onclick="javascript:search.btn.starSearch(this.id, '');">
												<label for="starRatingAll"> <span class="text">전체</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating1"
													onclick="javascript:search.btn.starSearch(this.id, '40');">
												<label for="starRating1">
													<div class="star_sc starSm">
														<span style="width: 80%;"></span>
													</div> <span class="text">4점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating2"
													onclick="javascript:search.btn.starSearch(this.id, '30');">
												<label for="starRating2">
													<div class="star_sc starSm">
														<span style="width: 60%;"></span>
													</div> <span class="text">3점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating3"
													onclick=""> <label for="starRating3">
													<div class="star_sc starSm">
														<span style="width: 40%;"></span>
													</div> <span class="text">2점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating4"
													onclick="javascript:search.btn.starSearch(this.id, '10');">
												<label for="starRating4">
													<div class="star_sc starSm">
														<span style="width: 20%;"></span>
													</div> <span class="text">1점 이상</span>
												</label><hr/>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="filterMenu" id="divComment">
								<div class="filterMenuItem">
									상품평
									<hr />
									<ul class="depth list-unstyled">
										<li><div class="inpRadio">
												<input type="radio" name="Comment" id="highComment"
													onclick="javascript:search.btn.checkedComment(this.id,'high');">
													<label for="highComment">많은 순</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="Comment" id="lowComment"
													onclick="javascript:search.btn.checkedComment(this.id,'low');">
													<label for="lowComment">적은 순</label>
												<hr />
											</div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="main col-xs-12 col-md-10 border">
			<div class = "row border" > 
					<h5><a href="/shopping/product/productList.html">홈 </a> 
					></h5>
					<h5><a href="/shopping/product/productList.html">	냉장고</a> 
					</h5>
					 
					   
				</div>
				<div class="row">
					<table>
						<tbody class="table table-borderless">
							<tr>
								<td><a href="/shopping/product/productDetail.html">
										<div class="card">
											<div class="card-header">
												<img src="../images/티비4.png">
											</div>
											<div class="card-body">
												<h4>LG 올레드 오브제컬렉션</h4>
												<p>보지 않을 때도 계속되는 예술적 경험</p>
												<p>2,832,000원 ~ 9,400,000원</p>
											</div>
										</div>
								</a></td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비5.png">
										</div>
										<div class="card-body">
											<h4>LG 올레드 evo</h4>
											<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
											<p>1,750,0000원 ~ 41,800,000원</p>
										</div>
									</div>
								</td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비6.png">
										</div>
										<div class="card-body">
											<h4>LG 올레드 TV</h4>
											<p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
											<p>1,390,000원 ~ 8,890,000원</p>
										</div>
									</div>
								</td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비7.png">
										</div>
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
										<div class="card-header">
											<img src="../images/티비8.png">
										</div>
										<div class="card-body">
											<h4>LG 울트라 HD TV</h4>
											<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
											<p>890,000원 ~ 3,590,000원</p>
										</div>
									</div>
								</td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비9.png">
										</div>
										<div class="card-body">
											<h4>LG 일반 LED TV</h4>
											<p>보는 즐거움이 다른 생생한 화질</p>
											<p>540,000원 ~ 640,000원</p>
										</div>
									</div>
								</td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비10.png">
										</div>
										<div class="card-body">
											<h4>LG 나노셀 TV</h4>
											<p>나노 입자로 완성한 퓨어 컬러</p>
											<p>2,890,000원 ~ 4,090,000원</p>
										</div>
									</div>
								</td>
								<td>
									<div class="card">
										<div class="card-header">
											<img src="../images/티비11.png">
										</div>
										<div class="card-body">
											<h4>LG QNED TV(Mini LED)</h4>
											<p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
											<p>7,490,000원 ~ 12,000,000원</p>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row center">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>

</body>
</html>