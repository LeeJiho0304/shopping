<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="cotainer">
	<div class="row justify-content-center">
		<div class="col-md-5 py-4">
			<div class="card">
				<div class="card-header">login</div>
				<div class="card-body">
					<form method="post" action="LoginController">
						<div class="form-row">
							<div class="form-group col-md-12">
								<input id="userId" name="userId" placeholder="아이디 "
									class="form-control" type="text">
							</div>
							<div class="form-group col-md-12">
								<input type="password" class="form-control" id="userPwd"
									name="userPwd" placeholder="비밀번호">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group"></div>
						</div>
						
						<hr class="mb-4">
						<div class="form-row">
							<button type="submit" class="btn btn-danger btn-block">로그인</button>
						</div>

					</form>
					<div class="logi-forgot text-right mt-2">
						<a href="#">회원이 아니신가요? </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>