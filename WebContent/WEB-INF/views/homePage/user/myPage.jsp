<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/homePage/myPage.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/homePage/reviewRating.css">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/homePage/myPage.js"></script>
		<script>
			/* $(function(){
				url = /shopping/user/OrderListController
				$.ajax({
					type: "get",
					url: url,
					data: {loginId: loginId},
					success: function(data) {
						$("#content").html(data);
					}
				});
			}); */
			
			function requestContent(url) {
				$.ajax({
					type: "get",
					url: url,
					success: function(data) {
						$("#content").html(data);
					}
				});
			}
			
			/** 우편번호 찾기 */
			function execDaumPostcode() {
				console.log("우편번호 클릭")
			    daum.postcode.load(function(){
			        new daum.Postcode({
			            oncomplete: function(data) {
			              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
			              $("#postcode").val(data.zonecode);
			              $("#address").val(data.roadAddress);
			            }
			        }).open();
			    });
			}
			
		</script>
		<style>
			.myPageUserInfo tr { 
				display: block; 
				float: left;
			}
			.myPageUserInfo th, .myPageUserInfo td { 
				display: block; 
			} 
			.myPageUserInfo:after {
				clear:both;
			} 
		</style>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="breadcrumb">
			<ul>
				<li>
					<a href="/shopping/product/main.html">
						<span>홈</span>
					</a> > 
				</li>
				<li>
					<strong>마이페이지</strong>
				</li>
			</ul>
		</div>
		<div class="contents mypage mypage-main-new">
		<div class="container">
			<div class="page-header"><h2 style="text-align: center;">마이페이지</h2></div>
			<div class="cont-wrap">
				<div class="lnb-wrap">
					<div class="lnb lnb-new">
						<ul class="mypage-lnb">
							<li>
								<span class="my-dep1"><b>쇼핑 관리</b></span>
								<ul class="my-sub">
									<li class="active">
										<a type="button" onclick="requestContent('OrderListController')" id="orderList">주문 조회</a>
									</li>
								</ul>
							</li>
							<li>
								<span class="my-dep1"><b>회원정보 관리</b></span>
								<ul class="my-sub">
									<li>
										<a type="button" onclick="requestContent('UpdateUserInfoController')" id="updateUserInfo">회원정보 수정</a>
									</li>
									<li>
										<a type="button" onclick="requestContent('MyReviewListController')" id="reviewList">내가 쓴 리뷰</a>
									</li>
									<li>
										<a type="button" onclick="requestContent('MyQnaListController')" id="qnaList">내가 쓴 문의</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					
					<!-- ajax 처리 부분 -->
					<div class="lnb-contents" id="content">
						<div class="container mt-4">
							<div class="row">
								<div class="border-bottom" style="width:100%"><span style="font-size: 30px"><b>${user.user_name} 님 </b></span><span style="font-size: 17px"> 반갑습니다.</span></div>
							</div>
							
		    				<div class="row">
		    					<div class="col-lg-12">
						            <div class="card mt-3">
						            	<div class="card-header"><span>회원정보</span></div>
						                <div class="card-body">
						                    <div style="width:100%">
												<table class="table myPageUserInfo" style="width:100%" >
													<tbody>
														<tr style="width:40%">
															<td rowspan='7' style="align: center;"><img src="${pageContext.request.contextPath}/resources/images/homePage/profile.png" width="250"></td>
														</tr>
														<tr style="width:15%">
															<th>ID</th>
															<th>이름</th>
															<th>email</th>
															<th>주소</th>
															<th>전화번호</th>
															<th>생년월일</th>
															<th>등급</th>
														</tr>
														<tr style="width:40%">
															<td>${user.user_id}</td>
															<td>${user.user_name}</td>
															<td>${user.user_email}</td>
															<td>${user.user_address}</td>
															<td>${user.user_phone}</td>
															<td>${user.user_birthday}</td>
															<td>${user.user_level}</td>
														</tr>
													</tbody>
												</table>	
											</div>
						                 </div>
						    		</div>  
		    					</div>
		    				</div>
		    			</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>