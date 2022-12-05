<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
									<div class="card-header"><img src="../images/티비4.png"></div>
										<div class="card-body">
										<h4>LG 올레드 오브제컬렉션</h4>
										<p>보지 않을 때도 계속되는 예술적 경험</p>
										<p>2,832,000원 ~ 9,400,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비5.png"></div>
									<div class="card-body">
										<h4>LG 올레드 evo</h4>
										<p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
										<p>1,750,0000원 ~ 41,800,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비6.png"></div>
									<div class="card-body">
										<h4>LG 올레드 TV</h4>
										<p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
										<p>1,390,000원 ~ 8,890,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비7.png"></div>
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
									<div class="card-header"><img src="../images/티비8.png"></div>
									<div class="card-body">
										<h4>LG 울트라 HD TV</h4>
										<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
										<p>890,000원 ~ 3,590,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비9.png"></div>
									<div class="card-body">
										<h4>LG 일반 LED TV</h4>
										<p>보는 즐거움이 다른 생생한 화질</p>
										<p>540,000원 ~ 640,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비10.png"></div>
									<div class="card-body">
										<h4>LG 나노셀 TV</h4>
										<p>나노 입자로 완성한 퓨어 컬러</p>
										<p>2,890,000원 ~ 4,090,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비11.png"></div>
									<div class="card-body">
										<h4>LG QNED TV(Mini LED)</h4>
										<p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
										<p>7,490,000원 ~ 12,000,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비5.png"></div>
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
									<div class="card-header"><img src="../images/티비8.png"></div>
									<div class="card-body">
										<h4>LG 울트라 HD TV</h4>
										<p>4K 울트라 화질이 보여주는 선명함의 차이</p>
										<p>890,000원 ~ 3,590,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비9.png"></div>
									<div class="card-body">
										<h4>LG 일반 LED TV</h4>
										<p>보는 즐거움이 다른 생생한 화질</p>
										<p>540,000원 ~ 640,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비10.png"></div>
									<div class="card-body">
										<h4>LG 나노셀 TV</h4>
										<p>나노 입자로 완성한 퓨어 컬러</p>
										<p>2,890,000원 ~ 4,090,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비11.png"></div>
									<div class="card-body">
										<h4>LG QNED TV(Mini LED)</h4>
										<p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
										<p>7,490,000원 ~ 12,000,000원</p>
									</div>
								</div>
							</td>
							<td>
								<div class="card">
									<div class="card-header"><img src="../images/티비5.png"></div>
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
<%@ include file="/WEB-INF/views/common/footer.jsp" %>