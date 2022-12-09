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

		<table class="table table-border text-center bestProduct">
			<thead>
					<tr>
						<th>BEST TV</th>
						<th>BEST PC</th>
						<th>BEST 냉장고</th>
						<th>BEST 에어컨</th>
						<th>BEST 세탁기</th>
					</tr>
				</thead>
				<tbody >
					<tr>
						<td>
							<c:forEach var="i" begin="1" end="3" step="1" >
		                        <td>
		                            <div class="card " style="height:450px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${categoryProduct.product_id}'">
		                               <div class="card-header bg-white" style="height:310px;">
		                               
		                                  <img src="ProductImgController?pid=${bestFrige.product_id}" height=100%>
		                                  
		                               </div>
		                               <div class="card-body" style="height:140px;">
		                                  <p>${bestFrige.product_name}</p>		                             
		                                  <p>${bestFrige.product_price}</p>
		                               </div>
		                            </div>
		                        </td>
	                    	</c:forEach>	                        	                   
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
					
				</tbody>
		</table>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>