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

	
			<div class="bestMenu">
				<div class="bestItem" style="text-align:center"><b>BEST 냉장고</b></div>
				<div class="bestItem" style="text-align:center"><b>BEST TV</b></div>
				<div class="bestItem" style="text-align:center"><b>BEST 에어컨</b></div>
				<div class="bestItem" style="text-align:center"><b>BEST 세탁기</b></div>
				<div class="bestItem" style="text-align:center"><b>BEST PC</b></div>
			</div>
		
		<table class="table text-center bestProduct">
			    
				<tbody>
	               <tr>
	                  <td>
	                     <c:forEach var="bestFrige" items="${bestFrige}">
                              <td>
                                  <div class="card " style="height:450px;width:350px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${bestFrige.product_id}'">
                                     <div class="card-header bg-white" style="height:310px; text-align:center;" >
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
	               </tr>
	               <tr>
	                  <td>
	                     <c:forEach var="bestTv" items="${bestTv}">
                              <td>
                                  <div class="card " style="height:450px;width:350px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${bestTv.product_id}'">
                                     <div class="card-header bg-white" style="height:310px; text-align:center;">
                                        <img src="ProductImgController?pid=${bestTv.product_id}" height=100%>
                                     </div>
                                     <div class="card-body" style="height:140px;">
                                        <p>${bestTv.product_name}</p>                                   
                                        <p>${bestTv.product_price}</p>
                                     </div>
                                  </div>
                              </td>
                          </c:forEach>                                                 
	                  </td>
	               </tr>
	               <tr>
	                  <td>
	                     <c:forEach var="bestWashing" items="${bestWashing}">
                              <td>
                                  <div class="card " style="height:450px;width:350px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${bestWashing.product_id}'">
                                     <div class="card-header bg-white" style="height:310px; text-align:center;">
                                        <img src="ProductImgController?pid=${bestWashing.product_id}" height=100%>
                                     </div>
                                     <div class="card-body" style="height:140px;">
                                        <p>${bestWashing.product_name}</p>                                   
                                        <p>${bestWashing.product_price}</p>
                                     </div>
                                  </div>
                              </td>
                          </c:forEach>                                                 
	                  </td>
	               </tr>
	               <tr>
	                  <td>
	                     <c:forEach var="bestAir" items="${bestAir}">
                              <td>
                                  <div class="card " style="height:450px;width:350px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${bestAir.product_id}'">
                                     <div class="card-header bg-white" style="height:310px; text-align:center;">
                                        <img src="ProductImgController?pid=${bestAir.product_id}" height=100%>
                                        
                                     </div>
                                     <div class="card-body" style="height:140px;">
                                        <p>${bestAir.product_name}</p>                                   
                                        <p>${bestAir.product_price}</p>
                                     </div>
                                  </div>
                              </td>
                          </c:forEach>                                                 
	                  </td>
	               </tr>
	               <tr>
	                  <td>
	                     <c:forEach var="bestPc" items="${bestPc}">
                              <td>
                                  <div class="card " style="height:450px;width:350px;" onclick="location.href='${pageContext.request.contextPath}/ProductDetailController?pid=${bestPc.product_id}'">
                                     <div class="card-header bg-white" style="height:310px; text-align: center;" >
                                        <img src="ProductImgController?pid=${bestPc.product_id}" height=100%>
                                     </div>
                                     <div class="card-body" style="height:140px;">
                                        <p>${bestPc.product_name}</p>                                   
                                        <p>${bestPc.product_price}</p>
                                     </div>
                                  </div>
                              </td>
                          </c:forEach>                                                 
	                  </td>
	               </tr>
	            </tbody>
		</table>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>