<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<section class="h-100 h-custom">
	<div class="container h-100 ">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col">
				<div class="container">

					<div class="main row ml-5">

						<h4>
							<a href="/shopping/product/productList.html">홈 </a> >
						</h4>

						<h4>
							<a href="/shopping/product/productList.html">tv</a>
						</h4>

					</div>
					<div class="row d-flex justify-content-center py-5">
						<div class="col-ml-5">
							<div class="card " style="height: 500px; width: 600px">
								<div class="card-body">
									<div class="login-img">
										<img
											src="https://demos6.softaculous.com/PrestaShop/img/preston-login@2x.png">
									</div>
									<div class="login-title text-center">
										<h1>로그인</h1>
									</div>
									<div class="login-form mt-4">
										<form method ="post" action="LoginController">
											<div class="form-row">
												<div class="form-group col-md-12">
													<input id="userId" name="userId" placeholder="아이디 "
														class="form-control" type="text">
												</div>
												<div class="form-group col-md-12">
													<input type="password" class="form-control" id="userPwd" name="userPwd"
														placeholder="비밀번호">
												</div>
											</div>
											<div class="form-row">
												<div class="form-group"></div>
											</div>
											<div class="form-row">
												<button type="submit" class="btn btn-danger btn-block">로그인</button>
											</div>

										</form>
									</div>
									<div class="logi-forgot text-right mt-2">
										<a href="#">회원이 아니신가요? </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




			</div>
		</div>
	</div>
</section>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>