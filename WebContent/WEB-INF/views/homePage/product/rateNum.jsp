<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product Rating</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			* {
			  box-sizing: border-box;
			}
			
			.heading {
			  font-size: 25px;
			  margin-right: 25px;
			}
			
			.fa {
			  font-size: 25px;
			}
			
			.checked {
			  color: orange;
			}
			
			/* Three column layout */
			.side {
			  float: left;
			  width: 15%;
			  margin-top:10px;
			}
			
			.middle {
			  margin-top:10px;
			  float: left;
			  width: 70%;
			}
			
			/* Place text to the right */
			.right {
			  text-align: right;
			}
			
			/* Clear floats after the columns */
			.row:after {
			  content: "";
			  display: table;
			  clear: both;
			}
			
			/* The bar container */
			.bar-container {
			  width: 100%;
			  background-color: #f1f1f1;
			  text-align: center;
			  color: white;
			}
			
			/* Individual bars */
			.bar {height: 18px; background-color: #2196F3;}
					
			/* Responsive layout - make the columns stack on top of each other instead of next to each other */
			@media (max-width: 400px) {
			  .side, .middle {
			    width: 100%;
			  }
			  .right {
			    display: none;
			  }
			}
		</style>
	</head>
	<body>
		<br/>
		<span class="heading ml-4">상품 별점</span>
		
		<c:forEach var="i" begin="1" end="${avgRate}" step="1">
			<span class="fa fa-star checked"></span>		
		</c:forEach>
		<c:forEach var="i" begin="1" end="${5-avgRate}" step="1">
			<span class="fa fa-star"></span>		
		</c:forEach>
		<br/>
		<p class="ml-4">총 ${totalBoardNum} 개의 리뷰 중 평균 별점은 ${avgRate} 점입니다.</p>
		<hr style="border:3px solid #f1f1f1">
		
		<div class="row">
			<c:forEach var ="rate" items="${rateNum}" varStatus="status">
			  <div class="side">
			    <div class="text-center">${status.count} 점</div>
			  </div>
			  <div class="middle">
			    <div class="bar-container">
			      <div class="bar" style="width:${rate/totalBoardNum*100}%"></div>
			    </div>
			  </div>
			  <div class="side right">
			    <div class="text-center">${rate}</div>
			  </div>
			  </c:forEach>		  		
		</div>
		<br/>
	</body>
</html>