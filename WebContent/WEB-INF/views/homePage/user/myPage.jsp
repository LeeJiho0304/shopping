<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/homePage/myPage.css">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

		<script>
			
			function requestContent(url, loginId) {
				console.log(url);
				console.log(loginId);
				$.ajax({
					type: "get",
					url: url,
					data: {loginId: loginId},
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
								<span class="my-dep1">쇼핑 관리</span>
								<ul class="my-sub">
									<li>
										<a href="javascript:requestContent('${pageContext.request.contextPath}/user/OrderListController', '${loginId}')">주문 조회</a>
									</li>
								</ul>
							</li>
							<li>
								<span class="my-dep1">회원정보 관리</span>
								<ul class="my-sub">
									<li>
										<a href="javascript:requestContent('${pageContext.request.contextPath}/user/UpdateUserInfoController', '${loginId}')" class="my-dep2">회원정보 수정</a>
									</li>
									<li>
										<a href="javascript:requestContent('UpdateUserInfoController')" class="my-dep2">내가 쓴 리뷰</a>
									</li>
									<li>
										<a href="javascript:requestContent('UpdateUserInfoController')" class="my-dep2">내가 쓴 문의</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					
					<div class="lnb-contents" id="content">
						
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>